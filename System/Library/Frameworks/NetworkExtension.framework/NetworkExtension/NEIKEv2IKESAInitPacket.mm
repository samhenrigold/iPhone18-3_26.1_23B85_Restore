@interface NEIKEv2IKESAInitPacket
+ (NSObject)createIKESAInitForInitiatorIKESA:(uint64_t)a;
+ (NSObject)createIKESAInitResponse:(unint64_t)response errorCode:(void *)code errorData:;
- (uint64_t)validateSAInitAsInitiator:(void *)initiator;
- (uint64_t)validateSAInitAsResponder:(void *)responder errorCodeToSend:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IKESAInitPacket

+ (NSObject)createIKESAInitForInitiatorIKESA:(uint64_t)a
{
  v218 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    *buf = 136315138;
    v215 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v80 = "%s called with null ikeSA";
    goto LABEL_40;
  }

  preferredKEMProtocol = [(NEIKEv2IKESA *)v2 preferredKEMProtocol];

  if (!preferredKEMProtocol)
  {
    initOutbound = ne_log_obj();
    if (!os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
LABEL_25:
      v76 = 0;
      goto LABEL_65;
    }

    *buf = 136315138;
    v215 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v80 = "%s called with null ikeSA.preferredKEMProtocol";
LABEL_40:
    _os_log_fault_impl(&dword_1BA83C000, initOutbound, OS_LOG_TYPE_FAULT, v80, buf, 0xCu);
    goto LABEL_25;
  }

  initOutbound = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initOutbound];
  if (!initOutbound)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v77 = "[[NEIKEv2IKESAInitPacket alloc] initOutbound:] failed";
    goto LABEL_32;
  }

  v7 = objc_getProperty(v2, v5, 280, 1);

  if (v7)
  {
    v9 = objc_getProperty(v2, v8, 280, 1);
    v10 = [NEIKEv2NotifyPayload createNotifyPayloadType:v9 data:?];
    objc_setProperty_atomic(initOutbound, v11, v10, 88);

    v13 = objc_getProperty(initOutbound, v12, 88, 1);

    if (!v13)
    {
      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v77 = "[NEIKEv2NotifyPayload createNotifyPayloadType:NEIKEv2NotifyTypeCookie] failed";
      goto LABEL_32;
    }
  }

  v14 = objc_alloc_init(NEIKEv2IKESAPayload);
  objc_setProperty_atomic(initOutbound, v15, v14, 96);

  v17 = objc_getProperty(v2, v16, 80, 1);
  proposals = [v17 proposals];
  v20 = objc_getProperty(initOutbound, v19, 96, 1);
  v22 = v20;
  if (v20)
  {
    objc_setProperty_atomic(v20, v21, proposals, 32);
  }

  v24 = objc_getProperty(initOutbound, v23, 96, 1);
  isValid = [(NEIKEv2Payload *)v24 isValid];

  if ((isValid & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v215 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.sa.isValid";
    goto LABEL_37;
  }

  v26 = objc_alloc_init(NEIKEv2KeyExchangePayload);
  objc_setProperty_atomic(initOutbound, v27, v26, 104);

  preferredKEMProtocol2 = [(NEIKEv2IKESA *)v2 preferredKEMProtocol];
  v31 = objc_getProperty(initOutbound, v30, 104, 1);
  v33 = v31;
  if (v31)
  {
    objc_setProperty_atomic(v31, v32, preferredKEMProtocol2, 32);
  }

  v35 = objc_getProperty(v2, v34, 160, 1);
  v36 = v35;
  if (v35)
  {
    v37 = *(v35 + 2);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v40 = objc_getProperty(initOutbound, v39, 104, 1);
  v42 = v40;
  if (v40)
  {
    objc_setProperty_atomic(v40, v41, v38, 40);
  }

  v44 = objc_getProperty(initOutbound, v43, 104, 1);
  isValid2 = [(NEIKEv2Payload *)v44 isValid];

  if ((isValid2 & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v215 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.ke.isValid";
    goto LABEL_37;
  }

  v46 = objc_alloc_init(NEIKEv2NoncePayload);
  objc_setProperty_atomic(initOutbound, v47, v46, 112);

  v49 = objc_getProperty(v2, v48, 128, 1);
  v51 = objc_getProperty(initOutbound, v50, 112, 1);
  v53 = v51;
  if (v51)
  {
    objc_setProperty_atomic(v51, v52, v49, 32);
  }

  v55 = objc_getProperty(initOutbound, v54, 112, 1);
  isValid3 = [(NEIKEv2Payload *)v55 isValid];

  if ((isValid3 & 1) == 0)
  {
    p_super = ne_log_obj();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    *buf = 136315138;
    v215 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitForInitiatorIKESA:]";
    v77 = "%s called with null packet.nonce.isValid";
LABEL_37:
    v78 = p_super;
    v79 = 12;
    goto LABEL_38;
  }

  v58 = objc_getProperty(v2, v57, 80, 1);
  redirectedFromServer = [v58 redirectedFromServer];

  if (redirectedFromServer)
  {
    v61 = objc_alloc_init(NEIKEv2NotifyPayload);
    p_super = &v61->super.super;
    if (v61)
    {
      v61->_notifyType = 16408;
    }

    v64 = objc_getProperty(v2, v62, 80, 1);
    redirectedFromServer2 = [v64 redirectedFromServer];
    addressFamily = [redirectedFromServer2 addressFamily];

    v68 = objc_getProperty(v2, v67, 80, 1);
    redirectedFromServer3 = [v68 redirectedFromServer];
    v70 = redirectedFromServer3;
    if (addressFamily == 2)
    {
      address = [redirectedFromServer3 address];

      buf[0] = 1;
      v207[0] = 4;
      v72 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:6];
      [v72 appendBytes:buf length:1];
      [v72 appendBytes:v207 length:1];
      v73 = address + 4;
      v74 = v72;
      v75 = 4;
    }

    else
    {
      addressFamily2 = [redirectedFromServer3 addressFamily];

      if (addressFamily2 != 30)
      {
LABEL_50:
        if ([(NEIKEv2Packet *)initOutbound addNotifyPayload:?])
        {

          goto LABEL_52;
        }

        v117 = ne_log_obj();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "[packet addNotifyPayload:redirectFromPayload] failed", buf, 2u);
        }

        goto LABEL_63;
      }

      v86 = objc_getProperty(v2, v85, 80, 1);
      redirectedFromServer4 = [v86 redirectedFromServer];
      address2 = [redirectedFromServer4 address];

      buf[0] = 2;
      v207[0] = 16;
      v72 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:18];
      [v72 appendBytes:buf length:1];
      [v72 appendBytes:v207 length:1];
      v73 = address2 + 8;
      v74 = v72;
      v75 = 16;
    }

    [v74 appendBytes:v73 length:v75];
    if (p_super)
    {
      objc_setProperty_atomic(p_super, v89, v72, 40);
    }

    goto LABEL_50;
  }

  v81 = objc_getProperty(v2, v60, 80, 1);
  allowRedirect = [v81 allowRedirect];

  if (!allowRedirect || [(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
  {
LABEL_52:
    initiatorSPI = [(NEIKEv2IKESA *)v2 initiatorSPI];
    responderSPI = [(NEIKEv2IKESA *)v2 responderSPI];
    v94 = objc_getProperty(v2, v93, 64, 1);
    p_super = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v94];

    if (![(NEIKEv2Packet *)initOutbound addNotification:p_super data:?])
    {
      v101 = ne_log_obj();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
      }

      v76 = 0;
      goto LABEL_146;
    }

    initiatorSPI2 = [(NEIKEv2IKESA *)v2 initiatorSPI];
    responderSPI2 = [(NEIKEv2IKESA *)v2 responderSPI];
    v100 = objc_getProperty(v2, v99, 72, 1);
    v101 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v100];

    if ([(NEIKEv2Packet *)initOutbound addNotification:v101 data:?])
    {
      if ([(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
      {
        v103 = objc_getProperty(v2, v102, 88, 1);
        authenticationProtocol = [v103 authenticationProtocol];

        if (authenticationProtocol)
        {
          v106 = objc_getProperty(v2, v105, 88, 1);
          authenticationProtocol2 = [v106 authenticationProtocol];

          v109 = objc_getProperty(v2, v108, 80, 1);
          extraSupportedSignatureHashes = [v109 extraSupportedSignatureHashes];
          v111 = [NEIKEv2Crypto copySignHashDataForSet:extraSupportedSignatureHashes authentication:authenticationProtocol2];

          if ([authenticationProtocol2 isSecurePassword])
          {
            v113 = objc_getProperty(v2, v112, 88, 1);
            remoteAuthentication = [v113 remoteAuthentication];
            v115 = [authenticationProtocol2 isEqual:remoteAuthentication];

            if (v115)
            {
              *buf = bswap32([authenticationProtocol2 securePasswordMethod]) >> 16;
              v116 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:2];
              if ([(NEIKEv2Packet *)initOutbound addNotification:v116 data:?])
              {

                goto LABEL_86;
              }

              v184 = ne_log_obj();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
              {
                *v207 = 0;
                _os_log_fault_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeSecurePasswordMethods] failed", v207, 2u);
              }
            }

            else
            {
              v116 = ne_log_obj();
              if (!os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
              {
LABEL_142:

                goto LABEL_143;
              }

              v184 = objc_getProperty(v2, v183, 88, 1);
              remoteAuthentication2 = [v184 remoteAuthentication];
              *buf = 138412546;
              v215 = authenticationProtocol2;
              v216 = 2112;
              v217 = remoteAuthentication2;
              _os_log_fault_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_FAULT, "Local authentication %@ is GSPM but doesn't match remote authentication %@", buf, 0x16u);
            }

            goto LABEL_142;
          }
        }

        else
        {
          v187 = v101;
          authenticationProtocol2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v203 = 0u;
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          v121 = objc_getProperty(v2, v120, 80, 1);
          proposals2 = [v121 proposals];

          v123 = [proposals2 countByEnumeratingWithState:&v203 objects:v213 count:16];
          if (v123)
          {
            v124 = v123;
            v125 = *v204;
            do
            {
              for (i = 0; i != v124; ++i)
              {
                if (*v204 != v125)
                {
                  objc_enumerationMutation(proposals2);
                }

                v127 = *(*(&v203 + 1) + 8 * i);
                if (v127)
                {
                  v127 = v127[18];
                }

                v128 = v127;
                [authenticationProtocol2 addObject:v128];
              }

              v124 = [proposals2 countByEnumeratingWithState:&v203 objects:v213 count:16];
            }

            while (v124);
          }

          v130 = objc_getProperty(v2, v129, 80, 1);
          extraSupportedSignatureHashes2 = [v130 extraSupportedSignatureHashes];
          v111 = [NEIKEv2Crypto copySignHashDataForSet:extraSupportedSignatureHashes2 authenticationSet:authenticationProtocol2];

          v101 = v187;
        }

LABEL_86:

        if (v111 && ![(NEIKEv2Packet *)initOutbound addNotification:v111 data:?])
        {
          authenticationProtocol2 = ne_log_obj();
          if (!os_log_type_enabled(authenticationProtocol2, OS_LOG_TYPE_FAULT))
          {
LABEL_143:

            goto LABEL_144;
          }

          *buf = 0;
          v181 = "[packet addNotification:NEIKEv2NotifyTypeSignatureHashAlgorithms] failed";
        }

        else
        {
          v133 = objc_getProperty(v2, v132, 80, 1);
          requestPPK = [v133 requestPPK];

          if (!requestPPK || [(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
          {
            v186 = v111;
            v188 = v101;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v136 = objc_getProperty(v2, v135, 80, 1);
            proposals3 = [v136 proposals];

            v138 = [proposals3 countByEnumeratingWithState:&v199 objects:v212 count:16];
            if (v138)
            {
              v139 = v138;
              v140 = *v200;
              while (2)
              {
                for (j = 0; j != v139; ++j)
                {
                  if (*v200 != v140)
                  {
                    objc_enumerationMutation(proposals3);
                  }

                  additionalKEMProtocols = [*(*(&v199 + 1) + 8 * j) additionalKEMProtocols];

                  if (additionalKEMProtocols && ![(NEIKEv2Packet *)initOutbound addNotification:0 data:?])
                  {
                    v182 = ne_log_obj();
                    if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v182, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeIntermediateExchangeSupported] failed", buf, 2u);
                    }

                    v76 = 0;
                    goto LABEL_131;
                  }
                }

                v139 = [proposals3 countByEnumeratingWithState:&v199 objects:v212 count:16];
                if (v139)
                {
                  continue;
                }

                break;
              }
            }

            v197 = 0u;
            v198 = 0u;
            v195 = 0u;
            v196 = 0u;
            v144 = objc_getProperty(v2, v143, 80, 1);
            customIKESAInitVendorPayloads = [v144 customIKESAInitVendorPayloads];

            obj = customIKESAInitVendorPayloads;
            v146 = [customIKESAInitVendorPayloads countByEnumeratingWithState:&v195 objects:v211 count:16];
            if (v146)
            {
              v147 = v146;
              v148 = *v196;
              do
              {
                for (k = 0; k != v147; ++k)
                {
                  if (*v196 != v148)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v150 = *(*(&v195 + 1) + 8 * k);
                  v151 = objc_alloc_init(NEIKEv2VendorIDPayload);
                  vendorData = [v150 vendorData];
                  if (v151)
                  {
                    objc_setProperty_atomic(v151, v152, vendorData, 32);
                  }

                  v155 = objc_getProperty(initOutbound, v154, 120, 1);

                  if (v155)
                  {
                    v157 = objc_getProperty(initOutbound, v156, 120, 1);
                    v158 = [v157 arrayByAddingObject:v151];
                    objc_setProperty_atomic(initOutbound, v159, v158, 120);
                  }

                  else
                  {
                    v210 = v151;
                    v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
                    objc_setProperty_atomic(initOutbound, v160, v157, 120);
                  }
                }

                v147 = [obj countByEnumeratingWithState:&v195 objects:v211 count:16];
              }

              while (v147);
            }

            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            v162 = objc_getProperty(v2, v161, 80, 1);
            customIKESAInitPayloads = [v162 customIKESAInitPayloads];

            obja = customIKESAInitPayloads;
            v164 = [customIKESAInitPayloads countByEnumeratingWithState:&v191 objects:v209 count:16];
            if (v164)
            {
              v165 = v164;
              v166 = *v192;
              do
              {
                v167 = 0;
                do
                {
                  if (*v192 != v166)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v168 = *(*(&v191 + 1) + 8 * v167);
                  v169 = objc_alloc_init(NEIKEv2CustomPayload);
                  customType = [v168 customType];
                  if (v169)
                  {
                    v169->_customType = customType;
                    customData = [v168 customData];
                    objc_setProperty_atomic(v169, v172, customData, 40);
                  }

                  else
                  {
                    customData = [v168 customData];
                  }

                  v174 = objc_getProperty(initOutbound, v173, 56, 1);

                  if (v174)
                  {
                    v176 = objc_getProperty(initOutbound, v175, 56, 1);
                    v177 = [v176 arrayByAddingObject:v169];
                    objc_setProperty_atomic(initOutbound, v178, v177, 56);
                  }

                  else
                  {
                    v208 = v169;
                    v176 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v208 count:1];
                    objc_setProperty_atomic(initOutbound, v179, v176, 56);
                  }

                  ++v167;
                }

                while (v165 != v167);
                v180 = [obja countByEnumeratingWithState:&v191 objects:v209 count:16];
                v165 = v180;
              }

              while (v180);
            }

            v76 = initOutbound;
LABEL_131:
            v111 = v186;
            v101 = v188;
            goto LABEL_145;
          }

          authenticationProtocol2 = ne_log_obj();
          if (!os_log_type_enabled(authenticationProtocol2, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_143;
          }

          *buf = 0;
          v181 = "[packet addNotification:NEIKEv2NotifyTypeUsePPK] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, authenticationProtocol2, OS_LOG_TYPE_FAULT, v181, buf, 2u);
        goto LABEL_143;
      }

      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v119 = "[packet addNotification:NEIKEv2NotifyTypeIKEv2FragmentationSupported] failed";
        goto LABEL_75;
      }
    }

    else
    {
      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v119 = "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed";
LABEL_75:
        _os_log_fault_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_FAULT, v119, buf, 2u);
      }
    }

LABEL_144:
    v76 = 0;
LABEL_145:

LABEL_146:
    goto LABEL_64;
  }

  p_super = ne_log_obj();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v77 = "[packet addNotification:NEIKEv2NotifyTypeRedirectSupported] failed";
LABEL_32:
    v78 = p_super;
    v79 = 2;
LABEL_38:
    _os_log_fault_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_FAULT, v77, buf, v79);
  }

LABEL_63:
  v76 = 0;
LABEL_64:

LABEL_65:

  return v76;
}

+ (NSObject)createIKESAInitResponse:(unint64_t)response errorCode:(void *)code errorData:
{
  v6 = a2;
  codeCopy = code;
  objc_opt_self();
  v8 = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initResponse:v6];
  if (v8)
  {
    v9 = v8;
    if ([(NEIKEv2Packet *)v8 addNotification:response data:codeCopy])
    {
      v9 = v9;
      v10 = v9;
      goto LABEL_11;
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "[packet addNotification:data:] failed", v14, 2u);
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKESAInitPacket alloc] initResponse:] failed", buf, 2u);
    }

    v9 = 0;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (uint64_t)validateSAInitAsInitiator:(void *)initiator
{
  v388 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!initiator)
  {
    v54 = 0;
    goto LABEL_53;
  }

  if (!v3)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    buf = 136315138;
    v381 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null ikeSA";
    goto LABEL_23;
  }

  if ((v3[9] & 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    buf = 136315138;
    v381 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null ikeSA.isInitiator";
    goto LABEL_23;
  }

  v6 = objc_getProperty(initiator, v4, 128, 1);

  if (!v6)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
LABEL_51:
      v54 = 0;
      goto LABEL_52;
    }

    buf = 136315138;
    v381 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsInitiator:]";
    v18 = "%s called with null self.originalPacket";
LABEL_23:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v18, &buf, 0xCu);
    goto LABEL_51;
  }

  if (![(NEIKEv2Packet *)initiator hasErrors])
  {
    goto LABEL_16;
  }

  v378 = 0u;
  v379 = 0u;
  v376 = 0u;
  v377 = 0u;
  v9 = objc_getProperty(initiator, v8, 64, 1);
  v10 = [v9 countByEnumeratingWithState:&v376 objects:v387 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v377;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v377 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v376 + 1) + 8 * i);
      if (v14 && (v14[4] - 1) <= 0x3FFE)
      {
        copyError = [(NEIKEv2NotifyPayload *)*(*(&v376 + 1) + 8 * i) copyError];
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412546;
          v381 = copyShortDescription;
          v382 = 2112;
          v383 = copyError;
          _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "%@ Initiator init received notify error %@", &buf, 0x16u);
        }

        if (v14[4] == 17)
        {
          v27 = objc_getProperty(v14, v26, 40, 1);
          v28 = v27;
          if (v27)
          {
            LOWORD(buf) = 0;
            [v27 getBytes:&buf length:2];
            v29 = [NEIKEv2KEMProtocol alloc];
            v30 = [(NEIKEv2KEMProtocol *)v29 initWithMethod:bswap32(buf) >> 16];
            objc_setProperty_atomic(v5, v31, v30, 144);
          }

          else
          {
            [(NEIKEv2IKESA *)v5 setState:copyError error:?];
          }
        }

        else
        {
          [(NEIKEv2IKESA *)v5 setState:copyError error:?];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v376 objects:v387 count:16];
  }

  while (v11);
LABEL_15:

LABEL_16:
  if ([(NEIKEv2Packet *)initiator hasNotification:?])
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription2 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription2;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Received notify server redirect", &buf, 0xCu);
    }

    Error = NEIKEv2CreateError(5);
    goto LABEL_20;
  }

  v19 = objc_getProperty(initiator, v15, 88, 1);

  if (v19)
  {
    Property = objc_getProperty(initiator, v20, 88, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v22, 40, 1);
    }

    copyError = Property;
    objc_setProperty_atomic(v5, v24, copyError, 280);
    goto LABEL_50;
  }

  v32 = objc_getProperty(initiator, v20, 40, 1);
  value = [v32 value];

  if (!value)
  {
    v56 = ne_log_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription3 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription3;
      _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "%@ Received no remote SPI on SA_INIT", &buf, 0xCu);
    }

    Error = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received no remote SPI on SA_INIT", v57, v58, v59, v60, v61, v62, v63, v360);
LABEL_20:
    v9 = Error;
    [(NEIKEv2IKESA *)v5 setState:Error error:?];
    goto LABEL_51;
  }

  v35 = objc_getProperty(initiator, v34, 40, 1);
  [(NEIKEv2IKESA *)v5 assignRemoteSPI:v35];

  v37 = objc_getProperty(initiator, v36, 128, 1);
  objc_setProperty_atomic(v5, v38, v37, 320);

  objc_setProperty_atomic(initiator, v39, 0, 128);
  v41 = objc_getProperty(initiator, v40, 96, 1);
  v43 = v41;
  if (v41)
  {
    v41 = objc_getProperty(v41, v42, 32, 1);
  }

  v9 = v41;

  if ([v9 count]!= 1)
  {
    v64 = ne_log_obj();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription4 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v168 = [v9 count];
      buf = 138412546;
      v381 = copyShortDescription4;
      v382 = 1024;
      LODWORD(v383) = v168;
      _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@ Received %u SA proposals, require 1", &buf, 0x12u);
    }

    v65 = [v9 count];
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Invalid SA proposal count %u", v66, v67, v68, v69, v70, v71, v72, v65);
    [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];
    v54 = 0;
    goto LABEL_127;
  }

  ErrorPeerInvalidSyntax = [v9 firstObject];
  if (([(NEIKEv2IKESAProposal *)ErrorPeerInvalidSyntax isAValidResponse]& 1) == 0)
  {
    v74 = ne_log_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription5 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v381 = copyShortDescription5;
      v382 = 2112;
      v383 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v74, OS_LOG_TYPE_ERROR, "%@ Received invalid SA proposal %@", &buf, 0x16u);
    }

    v82 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received invalid SA proposal", v75, v76, v77, v78, v79, v80, v81, v360);
    [(NEIKEv2IKESA *)v5 setState:v82 error:?];
    v54 = 0;
    goto LABEL_126;
  }

  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  v47 = objc_getProperty(v5, v46, 80, 1);
  proposals = [v47 proposals];

  v49 = [proposals countByEnumeratingWithState:&v372 objects:v386 count:16];
  if (!v49)
  {
LABEL_47:

LABEL_92:
    v147 = ne_log_obj();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription6 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v182 = objc_getProperty(v5, v181, 80, 1);
      proposals2 = [v182 proposals];
      buf = 138412802;
      v381 = copyShortDescription6;
      v382 = 2112;
      v383 = ErrorPeerInvalidSyntax;
      v384 = 2112;
      v385 = proposals2;
      _os_log_error_impl(&dword_1BA83C000, v147, OS_LOG_TYPE_ERROR, "%@ Received proposal %@ does not match config %@", &buf, 0x20u);
    }

    v82 = objc_getProperty(v5, v148, 80, 1);
    proposals3 = [v82 proposals];
    v156 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received proposal %@ does not match config %@", v149, v150, v151, v152, v153, v154, v155, ErrorPeerInvalidSyntax);
    [(NEIKEv2IKESA *)v5 setState:v156 error:?];
LABEL_95:

LABEL_124:
    v54 = 0;
    goto LABEL_125;
  }

  v50 = v49;
  v51 = *v373;
LABEL_41:
  v52 = 0;
  while (1)
  {
    if (*v373 != v51)
    {
      objc_enumerationMutation(proposals);
    }

    v53 = *(*(&v372 + 1) + 8 * v52);
    if (([(NEIKEv2IKESAProposal *)v53 matchesLocalProposal:0 preferRemoteProposal:?]& 1) != 0)
    {
      break;
    }

    if (v50 == ++v52)
    {
      v50 = [proposals countByEnumeratingWithState:&v372 objects:v386 count:16];
      if (v50)
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }
  }

  v82 = v53;

  if (!v82)
  {
    goto LABEL_92;
  }

  v84 = [(NEIKEv2IKESAProposal *)v82 copyFromRemote:0 preferRemoteProposal:?];
  objc_setProperty_atomic(v5, v85, v84, 96);

  v87 = objc_getProperty(v5, v86, 96, 1);
  if (!v87)
  {
    v157 = ne_log_obj();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription7 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v381 = copyShortDescription7;
      v382 = 2112;
      v383 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v157, OS_LOG_TYPE_ERROR, "%@ Could not set chosen proposal values %@", &buf, 0x16u);
    }

    v165 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Could not set chosen proposal values %@", v158, v159, v160, v161, v162, v163, v164, ErrorPeerInvalidSyntax);
    goto LABEL_123;
  }

  v89 = objc_getProperty(v5, v88, 96, 1);
  v91 = v89;
  if (v89)
  {
    v89 = objc_getProperty(v89, v90, 136, 1);
  }

  v92 = v89;

  if (v92 && ([(NEIKEv2Packet *)initiator hasNotification:?]& 1) == 0)
  {
    v335 = ne_log_obj();
    if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription8 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v381 = copyShortDescription8;
      v382 = 2112;
      v383 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v335, OS_LOG_TYPE_ERROR, "%@ Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@ ", &buf, 0x16u);
    }

    v165 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", v336, v337, v338, v339, v340, v341, v342, ErrorPeerInvalidSyntax);
    goto LABEL_123;
  }

  v94 = objc_getProperty(initiator, v93, 104, 1);

  if (!v94)
  {
    v169 = ne_log_obj();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription9 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription9;
      _os_log_error_impl(&dword_1BA83C000, v169, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", &buf, 0xCu);
    }

    v177 = @"Did not receive KE payload";
    goto LABEL_122;
  }

  v96 = objc_getProperty(initiator, v95, 104, 1);
  v98 = v96;
  if (v96)
  {
    v96 = objc_getProperty(v96, v97, 32, 1);
  }

  v99 = v96;

  if (!v99)
  {
    v179 = ne_log_obj();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription10 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription10;
      _os_log_error_impl(&dword_1BA83C000, v179, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", &buf, 0xCu);
    }

    v177 = @"Did not receive method in KE payload";
    goto LABEL_122;
  }

  v101 = objc_getProperty(initiator, v100, 104, 1);
  v103 = v101;
  if (v101)
  {
    v101 = objc_getProperty(v101, v102, 40, 1);
  }

  v104 = v101;

  if (!v104)
  {
    v184 = ne_log_obj();
    if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription11 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription11;
      _os_log_error_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", &buf, 0xCu);
    }

    v177 = @"Did not receive data in KE payload";
    goto LABEL_122;
  }

  v106 = objc_getProperty(initiator, v105, 104, 1);
  v108 = v106;
  if (v106)
  {
    v106 = objc_getProperty(v106, v107, 32, 1);
  }

  v109 = v106;
  selfb = [v109 method];
  v111 = objc_getProperty(v5, v110, 96, 1);
  kemProtocol = [(NEIKEv2IKESAProposal *)v111 kemProtocol];
  method = [kemProtocol method];

  if (selfb != method)
  {
    v185 = ne_log_obj();
    v186 = &OBJC_IVAR___NEFilterFlow__direction;
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      v366 = v82;
      copyShortDescription12 = [(NEIKEv2Packet *)initiator copyShortDescription];
      v304 = objc_getProperty(initiator, v303, 104, 1);
      v306 = v304;
      if (v304)
      {
        v304 = objc_getProperty(v304, v305, 32, 1);
      }

      selfc = v304;
      method2 = [selfc method];
      v309 = objc_getProperty(v5, v308, 96, 1);
      kemProtocol2 = [(NEIKEv2IKESAProposal *)v309 kemProtocol];
      method3 = [kemProtocol2 method];
      buf = 138412802;
      v381 = copyShortDescription12;
      v382 = 2048;
      v383 = method2;
      v384 = 2048;
      v385 = method3;
      _os_log_error_impl(&dword_1BA83C000, v185, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu)", &buf, 0x20u);

      v82 = v366;
      v186 = &OBJC_IVAR___NEFilterFlow__direction;
    }

    v188 = objc_getProperty(initiator, v187, v186[585], 1);
    proposals3 = v188;
    if (v188)
    {
      v188 = objc_getProperty(v188, v189, 32, 1);
    }

    v156 = v188;
    method4 = [v156 method];
    v192 = objc_getProperty(v5, v191, 96, 1);
    kemProtocol3 = [(NEIKEv2IKESAProposal *)v192 kemProtocol];
    [kemProtocol3 method];
    v202 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu)", v195, v196, v197, v198, v199, v200, v201, method4);
    [(NEIKEv2IKESA *)v5 setState:v202 error:?];

    goto LABEL_95;
  }

  v116 = objc_getProperty(initiator, v115, 104, 1);
  v118 = v116;
  if (v116)
  {
    v116 = objc_getProperty(v116, v117, 40, 1);
  }

  v119 = v116;
  objc_setProperty_atomic(v5, v120, v119, 152);

  v122 = objc_getProperty(initiator, v121, 112, 1);

  if (!v122)
  {
    v203 = ne_log_obj();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription13 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription13;
      _os_log_error_impl(&dword_1BA83C000, v203, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", &buf, 0xCu);
    }

    v177 = @"Did not receive NONCE payload";
    goto LABEL_122;
  }

  v124 = objc_getProperty(initiator, v123, 112, 1);
  v126 = v124;
  if (v124)
  {
    v124 = objc_getProperty(v124, v125, 32, 1);
  }

  v127 = v124;

  if (!v127)
  {
    v205 = ne_log_obj();
    if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription14 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412290;
      v381 = copyShortDescription14;
      _os_log_error_impl(&dword_1BA83C000, v205, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", &buf, 0xCu);
    }

    v177 = @"Did not receive NONCE data";
LABEL_122:
    v165 = NEIKEv2CreateErrorPeerInvalidSyntax(v177, v170, v171, v172, v173, v174, v175, v176, v360);
LABEL_123:
    proposals3 = v165;
    [(NEIKEv2IKESA *)v5 setState:v165 error:?];
    goto LABEL_124;
  }

  v129 = objc_getProperty(v5, v128, 80, 1);
  strictNonceSizeChecks = [v129 strictNonceSizeChecks];

  v365 = v82;
  if (!strictNonceSizeChecks)
  {
    goto LABEL_133;
  }

  v132 = objc_getProperty(initiator, v131, 112, 1);
  v134 = v132;
  if (v132)
  {
    v132 = objc_getProperty(v132, v133, 32, 1);
  }

  v135 = v132;
  v136 = [v135 length];

  self = v136;
  if ((v136 - 257) <= 0xFFFFFFFFFFFFFF0ELL)
  {
    v138 = ne_log_obj();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription15 = [(NEIKEv2Packet *)initiator copyShortDescription];
      buf = 138412546;
      v381 = copyShortDescription15;
      v382 = 2048;
      v383 = v136;
      _os_log_error_impl(&dword_1BA83C000, v138, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", &buf, 0x16u);
    }

    proposals3 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v139, v140, v141, v142, v143, v144, v145, v136);
    [(NEIKEv2IKESA *)v5 setState:proposals3 error:?];
    goto LABEL_132;
  }

  v208 = objc_getProperty(v5, v137, 96, 1);
  prfProtocol = [(NEIKEv2IKESAProposal *)v208 prfProtocol];
  nonceSize = [prfProtocol nonceSize];

  if (self >= nonceSize)
  {
LABEL_133:
    v223 = objc_getProperty(initiator, v131, 112, 1);
    v225 = v223;
    if (v223)
    {
      v223 = objc_getProperty(v223, v224, 32, 1);
    }

    v226 = v223;
    objc_setProperty_atomic(v5, v227, v226, 136);

    selfa = [(NEIKEv2Packet *)initiator copyNotification:?];
    if (selfa)
    {
      v229 = objc_getProperty(selfa, v228, 40, 1);
      v230 = [NEIKEv2Crypto copySignHashSetForData:v229];
      objc_storeStrong((v5 + 112), v230);
    }

    v231 = objc_getProperty(v5, v228, 88, 1);
    authenticationProtocol = [v231 authenticationProtocol];
    isSecurePassword = [authenticationProtocol isSecurePassword];

    if (isSecurePassword)
    {
      v234 = [(NEIKEv2Packet *)initiator copyNotification:?];
      if (!v234)
      {
        v346 = ne_log_obj();
        if (os_log_type_enabled(v346, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription16 = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412290;
          v381 = copyShortDescription16;
          _os_log_error_impl(&dword_1BA83C000, v346, OS_LOG_TYPE_ERROR, "%@ Did not receive secure password methods notify", &buf, 0xCu);
        }

        v264 = @"Did not receive secure password methods notify";
LABEL_183:
        v314 = NEIKEv2CreateErrorPeerInvalidSyntax(v264, v257, v258, v259, v260, v261, v262, v263, v360);
        [(NEIKEv2IKESA *)v5 setState:v314 error:?];

        goto LABEL_184;
      }

      v236 = v234;
      v237 = objc_getProperty(v234, v235, 40, 1);
      if ([v237 length] == 2)
      {
        v371 = 0;
        [v237 getBytes:&v371 length:2];
        v238 = [NEIKEv2AuthenticationProtocol alloc];
        v239 = [(NEIKEv2AuthenticationProtocol *)v238 initWithSecurePassword:bswap32(v371) >> 16];
        v241 = objc_getProperty(v5, v240, 88, 1);
        authenticationProtocol2 = [v241 authenticationProtocol];
        v243 = [(NEIKEv2AuthenticationProtocol *)v239 isEqual:authenticationProtocol2];

        if (v243)
        {
          objc_storeStrong((v5 + 104), v239);

          goto LABEL_142;
        }

        v291 = ne_log_obj();
        if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription17 = [(NEIKEv2Packet *)initiator copyShortDescription];
          v325 = objc_getProperty(v5, v324, 88, 1);
          authenticationProtocol3 = [v325 authenticationProtocol];
          buf = 138412802;
          v381 = copyShortDescription17;
          v382 = 2112;
          v383 = v239;
          v384 = 2112;
          v385 = authenticationProtocol3;
          _os_log_error_impl(&dword_1BA83C000, v291, OS_LOG_TYPE_ERROR, "%@ Secure password method %@ does not match configured %@", &buf, 0x20u);
        }

        v293 = objc_getProperty(v5, v292, 88, 1);
        authenticationProtocol4 = [v293 authenticationProtocol];
        v301 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Secure password method %@ does not match configured %@", v294, v295, v296, v297, v298, v299, v300, v239);
        [(NEIKEv2IKESA *)v5 setState:v301 error:?];
      }

      else
      {
        v347 = ne_log_obj();
        if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription18 = [(NEIKEv2Packet *)initiator copyShortDescription];
          v359 = [v237 length];
          buf = 138412546;
          v381 = copyShortDescription18;
          v382 = 2048;
          v383 = v359;
          _os_log_error_impl(&dword_1BA83C000, v347, OS_LOG_TYPE_ERROR, "%@ Secure password methods notify has incorrect length %zu != sizeof(uint16_t)", &buf, 0x16u);
        }

        v348 = [v237 length];
        v356 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Secure password methods notify has incorrect length %zu != sizeof(uint16_t)", v349, v350, v351, v352, v353, v354, v355, v348);
        [(NEIKEv2IKESA *)v5 setState:v356 error:?];
      }

LABEL_184:
      v54 = 0;
LABEL_191:
      proposals3 = selfa;
      goto LABEL_192;
    }

LABEL_142:
    if ([(NEIKEv2Packet *)initiator hasNotification:?]&& (*(v5 + 13) & 1) == 0)
    {
      *(v5 + 10) = 1;
      v244 = ne_log_obj();
      if (os_log_type_enabled(v244, OS_LOG_TYPE_DEBUG))
      {
        copyShortDescription19 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v381 = copyShortDescription19;
        _os_log_debug_impl(&dword_1BA83C000, v244, OS_LOG_TYPE_DEBUG, "%@ IKEv2 fragmentation supported", &buf, 0xCu);
      }
    }

    if ([(NEIKEv2Packet *)initiator hasNotification:?])
    {
      v245 = ne_log_obj();
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
      {
        copyShortDescription20 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v381 = copyShortDescription20;
        _os_log_debug_impl(&dword_1BA83C000, v245, OS_LOG_TYPE_DEBUG, "%@ Childless IKEv2 supported", &buf, 0xCu);
      }

      v247 = objc_getProperty(v5, v246, 80, 1);
      requestChildlessSA = [v247 requestChildlessSA];

      if (requestChildlessSA)
      {
        *(v5 + 23) = 1;
      }
    }

    if ([(NEIKEv2Packet *)initiator hasNotification:?])
    {
      v250 = objc_getProperty(v5, v249, 80, 1);
      requestPPK = [v250 requestPPK];

      if (requestPPK)
      {
        *(v5 + 24) = 1;
        v252 = ne_log_obj();
        if (os_log_type_enabled(v252, OS_LOG_TYPE_INFO))
        {
          copyShortDescription21 = [(NEIKEv2Packet *)initiator copyShortDescription];
          buf = 138412290;
          v381 = copyShortDescription21;
          _os_log_impl(&dword_1BA83C000, v252, OS_LOG_TYPE_INFO, "%@ PPK use requested", &buf, 0xCu);
        }

LABEL_161:
        v363 = [(NEIKEv2Packet *)initiator copyNotification:?];
        v364 = [(NEIKEv2Packet *)initiator copyNotification:?];
        if (!v363 || !v364)
        {
          goto LABEL_190;
        }

        initiatorSPI = [(NEIKEv2IKESA *)v5 initiatorSPI];
        responderSPI = [(NEIKEv2IKESA *)v5 responderSPI];
        v270 = objc_getProperty(v5, v269, 72, 1);
        v271 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v270];

        initiatorSPI2 = [(NEIKEv2IKESA *)v5 initiatorSPI];
        responderSPI2 = [(NEIKEv2IKESA *)v5 responderSPI];
        v277 = objc_getProperty(v5, v276, 64, 1);
        v278 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v277];

        v280 = objc_getProperty(v363, v279, 40, 1);
        LOBYTE(v277) = [v271 isEqualToData:v280];

        if ((v277 & 1) == 0)
        {
          *(v5 + 15) = 1;
          v282 = ne_log_obj();
          if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
          {
            copyShortDescription22 = [(NEIKEv2Packet *)initiator copyShortDescription];
            buf = 138412290;
            v381 = copyShortDescription22;
            _os_log_debug_impl(&dword_1BA83C000, v282, OS_LOG_TYPE_DEBUG, "%@ Detected incoming NAT", &buf, 0xCu);
          }
        }

        v283 = objc_getProperty(v364, v281, 40, 1);
        v284 = [v278 isEqualToData:v283];

        if ((v284 & 1) == 0)
        {
          *(v5 + 14) = 1;
          v286 = ne_log_obj();
          if (os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG))
          {
            copyShortDescription23 = [(NEIKEv2Packet *)initiator copyShortDescription];
            buf = 138412290;
            v381 = copyShortDescription23;
            _os_log_debug_impl(&dword_1BA83C000, v286, OS_LOG_TYPE_DEBUG, "%@ Detected outgoing NAT", &buf, 0xCu);
          }
        }

        v287 = objc_getProperty(v5, v285, 80, 1);
        if ([v287 disableSwitchToNATTPorts])
        {
        }

        else
        {
          v315 = objc_getProperty(v5, v288, 88, 1);
          if ([v315 negotiateMOBIKE] & 1) != 0 || (*(v5 + 15))
          {
          }

          else
          {
            v321 = *(v5 + 14);

            if ((v321 & 1) == 0)
            {
              goto LABEL_189;
            }
          }

          [(NEIKEv2IKESA *)v5 switchToNATTraversalPorts];
        }

LABEL_189:
        v316 = objc_getProperty(v364, v289, 40, 1);
        objc_setProperty_atomic(v5, v317, v316, 504);

LABEL_190:
        v54 = 1;
        goto LABEL_191;
      }

      v313 = ne_log_obj();
      if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription24 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v381 = copyShortDescription24;
        _os_log_error_impl(&dword_1BA83C000, v313, OS_LOG_TYPE_ERROR, "%@ PPK use requested but PPK use is not configured", &buf, 0xCu);
      }

      v264 = @"PPK use requested but PPK use is not configured";
    }

    else
    {
      v254 = objc_getProperty(v5, v249, 88, 1);
      ppkMandatory = [v254 ppkMandatory];

      if (!ppkMandatory)
      {
        goto LABEL_161;
      }

      v256 = ne_log_obj();
      if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription25 = [(NEIKEv2Packet *)initiator copyShortDescription];
        buf = 138412290;
        v381 = copyShortDescription25;
        _os_log_error_impl(&dword_1BA83C000, v256, OS_LOG_TYPE_ERROR, "%@ PPK use not requested but PPK use is mandatory", &buf, 0xCu);
      }

      v264 = @"PPK use not requested but PPK use is mandatory";
    }

    goto LABEL_183;
  }

  v212 = ne_log_obj();
  if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription26 = [(NEIKEv2Packet *)initiator copyShortDescription];
    v329 = objc_getProperty(v5, v328, 96, 1);
    prfProtocol2 = [(NEIKEv2IKESAProposal *)v329 prfProtocol];
    buf = 138412802;
    v381 = copyShortDescription26;
    v382 = 2048;
    v383 = self;
    v384 = 2112;
    v385 = prfProtocol2;
    _os_log_error_impl(&dword_1BA83C000, v212, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", &buf, 0x20u);
  }

  proposals3 = objc_getProperty(v5, v213, 96, 1);
  prfProtocol3 = [(NEIKEv2IKESAProposal *)proposals3 prfProtocol];
  v222 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v215, v216, v217, v218, v219, v220, v221, self);
  [(NEIKEv2IKESA *)v5 setState:v222 error:?];

LABEL_132:
  v54 = 0;
LABEL_192:
  v82 = v365;
LABEL_125:

LABEL_126:
LABEL_127:

LABEL_52:
LABEL_53:

  return v54;
}

- (uint64_t)validateSAInitAsResponder:(void *)responder errorCodeToSend:
{
  v274 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (v5 && (v5[9] & 1) != 0)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v268 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsResponder:errorCodeToSend:]";
    v109 = "%s called with null !ikeSA.isInitiator";
    goto LABEL_70;
  }

  v8 = objc_getProperty(self, v6, 128, 1);

  if (!v8)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315138;
    v268 = "[NEIKEv2IKESAInitPacket(Exchange) validateSAInitAsResponder:errorCodeToSend:]";
    v109 = "%s called with null self.originalPacket";
LABEL_70:
    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v109, buf, 0xCu);
    goto LABEL_77;
  }

  if ([(NEIKEv2Packet *)self hasErrors])
  {
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    if (self)
    {
      Property = objc_getProperty(self, v10, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;
    v13 = [v12 countByEnumeratingWithState:&v263 objects:v273 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v264;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v264 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v263 + 1) + 8 * i);
          if (v17 && v17[1].isa - 1 <= 0x3FFE)
          {
            copyError = [(NEIKEv2NotifyPayload *)v17 copyError];
            v111 = ne_log_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412546;
              v268 = copyShortDescription;
              v269 = 2112;
              v270 = copyError;
              _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "%@ Responder init received notify error %@", buf, 0x16u);
            }

            [(NEIKEv2IKESA *)v7 setState:copyError error:?];
            goto LABEL_77;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v263 objects:v273 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = objc_getProperty(self, v10, 32, 1);
  value = [v18 value];

  if (value)
  {
    v21 = objc_getProperty(self, v20, 32, 1);
    [(NEIKEv2IKESA *)v7 assignRemoteSPI:v21];

    v24 = objc_getProperty(self, v22, 128, 1);
    if (v7)
    {
      objc_setProperty_atomic(v7, v23, v24, 320);
    }

    objc_setProperty_atomic(self, v25, 0, 128);
    v27 = objc_getProperty(self, v26, 96, 1);
    v29 = v27;
    if (v27)
    {
      v27 = objc_getProperty(v27, v28, 32, 1);
    }

    v12 = v27;

    if (v7)
    {
      v31 = objc_getProperty(v7, v30, 80, 1);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    proposals = [v32 proposals];

    if ([v12 count])
    {
      if (v7)
      {
        v35 = objc_getProperty(v7, v34, 80, 1);
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;
      v37 = +[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:](NEIKEv2IKESAProposal, proposals, v12, [v36 preferInitiatorProposalOrder]);
      objc_setProperty_atomic(v7, v38, v37, 96);

      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
        if (v7)
        {
          v42 = objc_getProperty(v7, v40, 96, 1);
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;
        *buf = 138412802;
        v268 = copyShortDescription2;
        v269 = 2112;
        v270 = v43;
        v271 = 2112;
        v272 = v12;
        _os_log_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_INFO, "%@ Choosing SA proposal %@ from %@", buf, 0x20u);
      }

      if (v7)
      {
        v45 = objc_getProperty(v7, v44, 96, 1);
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        if (v7)
        {
          v48 = objc_getProperty(v7, v47, 96, 1);
          v50 = v48;
          if (v48)
          {
            v48 = objc_getProperty(v48, v49, 136, 1);
          }
        }

        else
        {
          v50 = 0;
          v48 = 0;
        }

        v51 = v48;

        if (v51 && ([(NEIKEv2Packet *)self hasNotification:?]& 1) == 0)
        {
          v242 = ne_log_obj();
          if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
            if (v7)
            {
              v255 = objc_getProperty(v7, v253, 96, 1);
            }

            else
            {
              v255 = 0;
            }

            v256 = v255;
            *buf = 138412546;
            v268 = copyShortDescription3;
            v269 = 2112;
            v270 = v256;
            _os_log_error_impl(&dword_1BA83C000, v242, OS_LOG_TYPE_ERROR, "%@ Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", buf, 0x16u);
          }

          if (v7)
          {
            v244 = objc_getProperty(v7, v243, 96, 1);
          }

          else
          {
            v244 = 0;
          }

          v134 = v244;
          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Chosen proposal requires IKE_INTERMEDIATE but peer does not support it %@", v245, v246, v247, v248, v249, v250, v251, v134);
          [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];

          goto LABEL_96;
        }

        v53 = objc_getProperty(self, v52, 104, 1);

        if (v53)
        {
          v55 = objc_getProperty(self, v54, 104, 1);
          v57 = v55;
          if (v55)
          {
            v55 = objc_getProperty(v55, v56, 32, 1);
          }

          v58 = v55;

          if (v58)
          {
            v60 = objc_getProperty(self, v59, 104, 1);
            v62 = v60;
            if (v60)
            {
              v60 = objc_getProperty(v60, v61, 40, 1);
            }

            v63 = v60;

            if (v63)
            {
              v65 = objc_getProperty(self, v64, 104, 1);
              v67 = v65;
              if (v65)
              {
                v65 = objc_getProperty(v65, v66, 32, 1);
              }

              v68 = v65;
              method = [v68 method];
              v262 = proposals;
              if (v7)
              {
                v71 = objc_getProperty(v7, v69, 96, 1);
              }

              else
              {
                v71 = 0;
              }

              v72 = v71;
              kemProtocol = [(NEIKEv2IKESAProposal *)v72 kemProtocol];
              method2 = [kemProtocol method];

              if (method == method2)
              {
                v77 = objc_getProperty(self, v76, 104, 1);
                v79 = v77;
                proposals = v262;
                if (v77)
                {
                  v77 = objc_getProperty(v77, v78, 40, 1);
                }

                v81 = v77;
                if (v7)
                {
                  objc_setProperty_atomic(v7, v80, v81, 152);
                }

                v83 = objc_getProperty(self, v82, 112, 1);

                if (v83)
                {
                  v85 = objc_getProperty(self, v84, 112, 1);
                  v87 = v85;
                  if (v85)
                  {
                    v85 = objc_getProperty(v85, v86, 32, 1);
                  }

                  v88 = v85;

                  if (v88)
                  {
                    if (v7)
                    {
                      v90 = objc_getProperty(v7, v89, 80, 1);
                    }

                    else
                    {
                      v90 = 0;
                    }

                    v91 = v90;
                    strictNonceSizeChecks = [v91 strictNonceSizeChecks];

                    if (strictNonceSizeChecks)
                    {
                      v94 = objc_getProperty(self, v93, 112, 1);
                      v96 = v94;
                      if (v94)
                      {
                        v94 = objc_getProperty(v94, v95, 32, 1);
                      }

                      v97 = v94;
                      v98 = [v97 length];

                      if (v98 - 257 <= 0xFFFFFFFFFFFFFF0ELL)
                      {
                        v100 = ne_log_obj();
                        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription4 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412546;
                          v268 = copyShortDescription4;
                          v269 = 2048;
                          v270 = v98;
                          _os_log_error_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", buf, 0x16u);
                        }

                        v108 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v101, v102, v103, v104, v105, v106, v107, v98);
                        goto LABEL_110;
                      }

                      if (v7)
                      {
                        v154 = objc_getProperty(v7, v99, 96, 1);
                      }

                      else
                      {
                        v154 = 0;
                      }

                      v155 = v154;
                      prfProtocol = [(NEIKEv2IKESAProposal *)v155 prfProtocol];
                      nonceSize = [prfProtocol nonceSize];

                      if (v98 < nonceSize)
                      {
                        v159 = ne_log_obj();
                        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
                          if (v7)
                          {
                            v238 = objc_getProperty(v7, v236, 96, 1);
                          }

                          else
                          {
                            v238 = 0;
                          }

                          v239 = v238;
                          prfProtocol2 = [(NEIKEv2IKESAProposal *)v239 prfProtocol];
                          *buf = 138412802;
                          v268 = copyShortDescription5;
                          v269 = 2048;
                          v270 = v98;
                          v271 = 2112;
                          v272 = prfProtocol2;
                          _os_log_error_impl(&dword_1BA83C000, v159, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x20u);
                        }

                        if (v7)
                        {
                          v161 = objc_getProperty(v7, v160, 96, 1);
                        }

                        else
                        {
                          v161 = 0;
                        }

                        v151 = v161;
                        prfProtocol3 = [(NEIKEv2IKESAProposal *)v151 prfProtocol];
                        v170 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v163, v164, v165, v166, v167, v168, v169, v98);
                        [(NEIKEv2IKESA *)v7 setState:v170 error:?];

                        goto LABEL_111;
                      }
                    }

                    v171 = objc_getProperty(self, v93, 112, 1);
                    v173 = v171;
                    if (v171)
                    {
                      v171 = objc_getProperty(v171, v172, 32, 1);
                    }

                    v174 = v171;
                    objc_setProperty_atomic(v7, v175, v174, 136);

                    v176 = [(NEIKEv2Packet *)self copyNotification:?];
                    v178 = v176;
                    if (v176)
                    {
                      v179 = objc_getProperty(v176, v177, 40, 1);
                      v180 = [NEIKEv2Crypto copySignHashSetForData:v179];
                      objc_storeStrong((v7 + 112), v180);
                    }

                    v181 = [(NEIKEv2Packet *)self copyNotification:?];
                    v182 = [(NEIKEv2IKESA *)v7 selectSecurePasswordMethod:v181];
                    objc_storeStrong((v7 + 104), v182);

                    if ([(NEIKEv2Packet *)self hasNotification:?]&& (*(v7 + 13) & 1) == 0)
                    {
                      *(v7 + 10) = 1;
                      v183 = ne_log_obj();
                      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                      {
                        copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v268 = copyShortDescription6;
                        _os_log_debug_impl(&dword_1BA83C000, v183, OS_LOG_TYPE_DEBUG, "%@ IKEv2 fragmentation supported", buf, 0xCu);
                      }
                    }

                    if (![(NEIKEv2Packet *)self hasNotification:?])
                    {
LABEL_136:
                      v191 = [(NEIKEv2Packet *)self copyNotification:?];
                      v192 = [(NEIKEv2Packet *)self copyNotification:?];
                      v194 = v192;
                      if (!v191 || !v192)
                      {
                        goto LABEL_153;
                      }

                      v259 = v178;
                      v261 = v181;
                      initiatorSPI = [(NEIKEv2IKESA *)v7 initiatorSPI];
                      v197 = objc_getProperty(v7, v196, 72, 1);
                      v198 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:0 address:v197];

                      initiatorSPI2 = [(NEIKEv2IKESA *)v7 initiatorSPI];
                      v202 = objc_getProperty(v7, v201, 64, 1);
                      v203 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:0 address:v202];

                      v205 = objc_getProperty(v191, v204, 40, 1);
                      v260 = v198;
                      LOBYTE(v202) = [v198 isEqualToData:v205];

                      if ((v202 & 1) == 0)
                      {
                        *(v7 + 15) = 1;
                        v207 = ne_log_obj();
                        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
                        {
                          copyShortDescription7 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412290;
                          v268 = copyShortDescription7;
                          _os_log_debug_impl(&dword_1BA83C000, v207, OS_LOG_TYPE_DEBUG, "%@ Detected incoming NAT", buf, 0xCu);
                        }
                      }

                      v208 = objc_getProperty(v194, v206, 40, 1);
                      v209 = [v203 isEqualToData:v208];

                      v178 = v259;
                      if ((v209 & 1) == 0)
                      {
                        *(v7 + 14) = 1;
                        v211 = ne_log_obj();
                        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
                        {
                          copyShortDescription8 = [(NEIKEv2Packet *)self copyShortDescription];
                          *buf = 138412290;
                          v268 = copyShortDescription8;
                          _os_log_debug_impl(&dword_1BA83C000, v211, OS_LOG_TYPE_DEBUG, "%@ Detected outgoing NAT", buf, 0xCu);
                        }
                      }

                      v212 = objc_getProperty(v7, v210, 80, 1);
                      if ([v212 disableSwitchToNATTPorts])
                      {
                      }

                      else
                      {
                        v214 = objc_getProperty(v7, v213, 88, 1);
                        if ([v214 negotiateMOBIKE] & 1) != 0 || (*(v7 + 15))
                        {
                        }

                        else
                        {
                          v230 = *(v7 + 14);

                          if ((v230 & 1) == 0)
                          {
                            goto LABEL_152;
                          }
                        }

                        [(NEIKEv2IKESA *)v7 switchToNATTraversalPorts];
                      }

LABEL_152:

                      v181 = v261;
                      proposals = v262;
LABEL_153:

                      v120 = 1;
                      goto LABEL_98;
                    }

                    v185 = objc_getProperty(v7, v184, 80, 1);
                    requestPPK = [v185 requestPPK];

                    if (requestPPK)
                    {
                      *(v7 + 24) = 1;
                      v187 = ne_log_obj();
                      if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
                      {
                        copyShortDescription9 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v268 = copyShortDescription9;
                        v189 = "%@ PPK use requested";
LABEL_134:
                        _os_log_impl(&dword_1BA83C000, v187, OS_LOG_TYPE_INFO, v189, buf, 0xCu);
                      }
                    }

                    else
                    {
                      v187 = ne_log_obj();
                      if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
                      {
                        copyShortDescription9 = [(NEIKEv2Packet *)self copyShortDescription];
                        *buf = 138412290;
                        v268 = copyShortDescription9;
                        v189 = "%@ PPK use requested but PPK use is not configured";
                        goto LABEL_134;
                      }
                    }

                    goto LABEL_136;
                  }

                  v150 = ne_log_obj();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription10 = [(NEIKEv2Packet *)self copyShortDescription];
                    *buf = 138412290;
                    v268 = copyShortDescription10;
                    _os_log_error_impl(&dword_1BA83C000, v150, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", buf, 0xCu);
                  }

                  v148 = @"Did not receive NONCE data";
                }

                else
                {
                  v140 = ne_log_obj();
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription11 = [(NEIKEv2Packet *)self copyShortDescription];
                    *buf = 138412290;
                    v268 = copyShortDescription11;
                    _os_log_error_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", buf, 0xCu);
                  }

                  v148 = @"Did not receive NONCE payload";
                }

                v108 = NEIKEv2CreateErrorPeerInvalidSyntax(v148, v141, v142, v143, v144, v145, v146, v147, v257);
LABEL_110:
                v151 = v108;
                [(NEIKEv2IKESA *)v7 setState:v108 error:?];
LABEL_111:

                goto LABEL_97;
              }

              v136 = ne_log_obj();
              proposals = v262;
              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription12 = [(NEIKEv2Packet *)self copyShortDescription];
                v218 = objc_getProperty(self, v217, 104, 1);
                v220 = v218;
                if (v218)
                {
                  v218 = objc_getProperty(v218, v219, 32, 1);
                }

                v221 = v218;
                method3 = [v221 method];
                if (v7)
                {
                  v224 = objc_getProperty(v7, v222, 96, 1);
                }

                else
                {
                  v224 = 0;
                }

                v225 = v224;
                kemProtocol2 = [(NEIKEv2IKESAProposal *)v225 kemProtocol];
                method4 = [kemProtocol2 method];
                *buf = 138412802;
                v268 = copyShortDescription12;
                v269 = 2048;
                v270 = method3;
                v271 = 2048;
                v272 = method4;
                _os_log_error_impl(&dword_1BA83C000, v136, OS_LOG_TYPE_ERROR, "%@ Received KE method %zu does not match KE method %zu in SA proposal", buf, 0x20u);

                proposals = v262;
              }

              if (responder)
              {
                v120 = 0;
                *responder = 17;
                goto LABEL_98;
              }

LABEL_97:
              v120 = 0;
LABEL_98:

              goto LABEL_99;
            }

            v133 = ne_log_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription13 = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412290;
              v268 = copyShortDescription13;
              _os_log_error_impl(&dword_1BA83C000, v133, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", buf, 0xCu);
            }

            v129 = @"Did not receive data in KE payload";
          }

          else
          {
            v132 = ne_log_obj();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription14 = [(NEIKEv2Packet *)self copyShortDescription];
              *buf = 138412290;
              v268 = copyShortDescription14;
              _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", buf, 0xCu);
            }

            v129 = @"Did not receive method in KE payload";
          }
        }

        else
        {
          v131 = ne_log_obj();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription15 = [(NEIKEv2Packet *)self copyShortDescription];
            *buf = 138412290;
            v268 = copyShortDescription15;
            _os_log_error_impl(&dword_1BA83C000, v131, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", buf, 0xCu);
          }

          v129 = @"Did not receive KE payload";
        }
      }

      else
      {
        v130 = ne_log_obj();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription16 = [(NEIKEv2Packet *)self copyShortDescription];
          *buf = 138412290;
          v268 = copyShortDescription16;
          _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, "%@ No matching proposal found", buf, 0xCu);
        }

        if (responder)
        {
          *responder = 14;
        }

        v129 = @"No matching proposal found";
      }
    }

    else
    {
      v121 = ne_log_obj();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription17 = [(NEIKEv2Packet *)self copyShortDescription];
        *buf = 138412290;
        v268 = copyShortDescription17;
        _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, "%@ Received no SA proposals", buf, 0xCu);
      }

      v129 = @"Received no SA proposals";
    }

    v134 = NEIKEv2CreateErrorPeerInvalidSyntax(v129, v122, v123, v124, v125, v126, v127, v128, v257);
    [(NEIKEv2IKESA *)v7 setState:v134 error:?];
LABEL_96:

    goto LABEL_97;
  }

  v112 = ne_log_obj();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription18 = [(NEIKEv2Packet *)self copyShortDescription];
    *buf = 138412290;
    v268 = copyShortDescription18;
    _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ Received no remote SPI on SA_INIT", buf, 0xCu);
  }

  v12 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received no remote SPI on SA_INIT", v113, v114, v115, v116, v117, v118, v119, v257);
  [(NEIKEv2IKESA *)v7 setState:v12 error:?];
LABEL_77:
  v120 = 0;
LABEL_99:

  return v120;
}

- (void)filloutPayloads
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 138412546;
    v33 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        type = [v10 type];
        if (type <= 39)
        {
          if (type == 33)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!self)
              {
                goto LABEL_48;
              }

              v18 = 96;
              goto LABEL_27;
            }

            v25 = ne_log_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:
              copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
              typeDescription = [v10 typeDescription];
              *buf = v33;
              v42 = copyShortDescription;
              v43 = 2112;
              v44 = typeDescription;
              _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);
            }

LABEL_34:

            goto LABEL_48;
          }

          if (type == 34)
          {
            if (!self)
            {
              goto LABEL_48;
            }

            v18 = 104;
LABEL_27:
            objc_setProperty_atomic(self, v12, v10, v18);
            goto LABEL_48;
          }
        }

        else
        {
          switch(type)
          {
            case '(':
              if (!self)
              {
                goto LABEL_48;
              }

              v18 = 112;
              goto LABEL_27;
            case ')':
              v14 = v10;
              if (self && objc_getProperty(self, v19, 64, 1))
              {
                v22 = [objc_getProperty(self v20];
                goto LABEL_36;
              }

              v40 = v14;
              v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
              if (self)
              {
LABEL_36:
                objc_setProperty_atomic(self, v21, v22, 64);
              }

              if (v14 && self && v14[4] == 16390)
              {
                objc_setProperty_atomic(self, v28, v14, 88);
              }

              goto LABEL_47;
            case '+':
              v14 = v10;
              if (self && objc_getProperty(self, v13, 120, 1))
              {
                v17 = [objc_getProperty(self v15];
LABEL_42:
                v29 = 120;
                selfCopy2 = self;
                v31 = v17;
                goto LABEL_45;
              }

              v39 = v14;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
              if (self)
              {
                goto LABEL_42;
              }

              goto LABEL_46;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v14 = v10;
        if (self && objc_getProperty(self, v23, 56, 1))
        {
          v17 = [objc_getProperty(self v24];
LABEL_44:
          selfCopy2 = self;
          v31 = v17;
          v29 = 56;
LABEL_45:
          objc_setProperty_atomic(selfCopy2, v16, v31, v29);
          goto LABEL_46;
        }

        v38 = v14;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        if (self)
        {
          goto LABEL_44;
        }

LABEL_46:

LABEL_47:
LABEL_48:
        ++v9;
      }

      while (v7 != v9);
      v32 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v45 count:16];
      v7 = v32;
    }

    while (v32);
  }
}

- (void)gatherPayloads
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    if (objc_getProperty(self, v3, 88, 1))
    {
      [v11 addObject:{objc_getProperty(self, v4, 88, 1)}];
    }

    if (objc_getProperty(self, v4, 96, 1))
    {
      [v11 addObject:{objc_getProperty(self, v5, 96, 1)}];
    }

    if (objc_getProperty(self, v5, 104, 1))
    {
      [v11 addObject:{objc_getProperty(self, v6, 104, 1)}];
    }

    if (objc_getProperty(self, v6, 112, 1))
    {
      [v11 addObject:{objc_getProperty(self, v7, 112, 1)}];
    }

    [v11 addObjectsFromArray:{objc_getProperty(self, v7, 120, 1)}];
    [v11 addObjectsFromArray:{objc_getProperty(self, v8, 64, 1)}];
    Property = objc_getProperty(self, v9, 56, 1);
  }

  else
  {
    [v11 addObjectsFromArray:0];
    [v11 addObjectsFromArray:0];
    Property = 0;
  }

  [v11 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v11];
}

@end