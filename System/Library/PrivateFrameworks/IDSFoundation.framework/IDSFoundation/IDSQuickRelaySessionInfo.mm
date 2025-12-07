@interface IDSQuickRelaySessionInfo
- (int64_t)parseSessionInfo:(id)info;
@end

@implementation IDSQuickRelaySessionInfo

- (int64_t)parseSessionInfo:(id)info
{
  v282 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  Value = 0;
  if (infoCopy && @"qat")
  {
    Value = CFDictionaryGetValue(infoCopy, @"qat");
  }

  unsignedIntValue = [Value unsignedIntValue];
  self->_allocateType = unsignedIntValue;
  if (unsignedIntValue - 5 > 0xFFFFFFFB)
  {
    v18 = 0;
    if (infoCopy && @"qsat")
    {
      v18 = CFDictionaryGetValue(infoCopy, @"qsat");
    }

    [v18 doubleValue];
    self->_allocateTime = v19;
    if (v19 <= 0.0)
    {
      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "failed to get allocate-time from sessionInfo.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-time from sessionInfo.", v31, v32, v33, v34, v35, v249);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-time from sessionInfo.", v36, v37, v38, v39, v251);
          }
        }
      }

      v17 = 28;
    }

    else if (infoCopy && @"U" && (v20 = CFDictionaryGetValue(infoCopy, @"U"), (v273 = v20) != 0))
    {
      objc_storeStrong(&self->_allocateRequestID, v20);
      if (@"qrsi" && (v21 = CFDictionaryGetValue(infoCopy, @"qrsi"), (v22 = v21) != 0))
      {
        v271 = v22;
        objc_storeStrong(&self->_relaySessionID, v21);
        if (@"qrst" && (v23 = CFDictionaryGetValue(infoCopy, @"qrst"), (v24 = v23) != 0))
        {
          v268 = v24;
          objc_storeStrong(&self->_relaySessionToken, v23);
          if (@"qrsk" && (v25 = CFDictionaryGetValue(infoCopy, @"qrsk"), (v26 = v25) != 0))
          {
            v267 = v26;
            objc_storeStrong(&self->_relaySessionKey, v25);
            if (@"qr-software-id" && (v27 = CFDictionaryGetValue(infoCopy, @"qr-software-id"), (v28 = v27) != 0))
            {
              v266 = v28;
              objc_storeStrong(&self->_softwareData, v27);
              if (@"qrp")
              {
                v29 = CFDictionaryGetValue(infoCopy, @"qrp");
              }

              else
              {
                v29 = 0;
              }

              unsignedShortValue = [v29 unsignedShortValue];
              if (unsignedShortValue)
              {
                v278 = -1431655766;
                if (@"qrip" && (v92 = unsignedShortValue, (v93 = CFDictionaryGetValue(infoCopy, @"qrip")) != 0))
                {
                  v264 = v93;
                  [v93 getBytes:&v278 length:4];
                  *&self->_serverAddress.ss_len = 528;
                  *&self->_serverAddress.__ss_pad1[2] = v278;
                  v94 = __rev16(v92);
                  *self->_serverAddress.__ss_pad1 = v94;
                  if (@"qipp")
                  {
                    v95 = CFDictionaryGetValue(infoCopy, @"qipp");
                  }

                  else
                  {
                    v95 = 0;
                  }

                  self->_ipPreference = [v95 unsignedCharValue];
                  if (@"qrhpp")
                  {
                    v116 = CFDictionaryGetValue(infoCopy, @"qrhpp");
                  }

                  else
                  {
                    v116 = 0;
                  }

                  unsignedShortValue2 = [v116 unsignedShortValue];
                  v118 = unsignedShortValue2;
                  *&self->_highPriorityServerAddressIPv6.__ss_pad2[8] = 0;
                  *self->_highPriorityServerAddressIPv6.__ss_pad2 = 0;
                  *&self->_highPriorityServerAddressIPv6.ss_len = 0u;
                  *&self->_highPriorityServerAddress.ss_len = 0u;
                  if (unsignedShortValue2)
                  {
                    *&self->_highPriorityServerAddress.ss_len = 528;
                    *&self->_highPriorityServerAddress.__ss_pad1[2] = v278;
                    *self->_highPriorityServerAddress.__ss_pad1 = __rev16(unsignedShortValue2);
                  }

                  else
                  {
                    v119 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v119, OS_LOG_TYPE_DEFAULT, "failed to get high priority relay-port from sessionInfo.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"failed to get high priority relay-port from sessionInfo.", v120, v121, v122, v123, v124, v249);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get high priority relay-port from sessionInfo.", v125, v126, v127, v128, v249);
                        }
                      }
                    }
                  }

                  if (@"qrip6" && (v129 = CFDictionaryGetValue(infoCopy, @"qrip6")) != 0)
                  {
                    v265 = v129;
                    if ([v129 length] == 16)
                    {
                      *&self->_serverAddressIPv6.ss_len = 0;
                      self->_serverAddressIPv6.__ss_align = 0;
                      *&self->_serverAddressIPv6.__ss_pad2[8] = 0;
                      *self->_serverAddressIPv6.__ss_pad2 = 0;
                      *&self->_serverAddressIPv6.ss_len = 7708;
                      *self->_serverAddressIPv6.__ss_pad1 = v94;
                      v130 = v265;
                      *&self->_serverAddressIPv6.__ss_align = *[v265 bytes];
                      v131 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                      {
                        v132 = *self->_serverAddressIPv6.__ss_pad1;
                        *buf = 67109120;
                        LODWORD(v281) = v132;
                        _os_log_impl(&dword_1A7AD9000, v131, OS_LOG_TYPE_DEFAULT, "QR IPv6 port number: %d", buf, 8u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          _IDSLogTransport(@"GL", @"IDS", @"QR IPv6 port number: %d", v133, v134, v135, v136, v137, *self->_serverAddressIPv6.__ss_pad1);
                          if (_IDSShouldLog(0))
                          {
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"QR IPv6 port number: %d", v138, v139, v140, v141, *self->_serverAddressIPv6.__ss_pad1);
                          }
                        }
                      }

                      if (v118)
                      {
                        *&self->_highPriorityServerAddressIPv6.ss_len = 7708;
                        *self->_highPriorityServerAddressIPv6.__ss_pad1 = __rev16(v118);
                        v142 = v265;
                        *&self->_highPriorityServerAddressIPv6.__ss_align = *[v265 bytes];
                      }
                    }

                    else
                    {
                      v177 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                      {
                        v178 = [v265 length];
                        *buf = 134217984;
                        v281 = v178;
                        _os_log_impl(&dword_1A7AD9000, v177, OS_LOG_TYPE_DEFAULT, "QR IPv6 address length is: %lu != 16", buf, 0xCu);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          v179 = [v265 length];
                          _IDSLogTransport(@"GL", @"IDS", @"QR IPv6 address length is: %lu != 16", v180, v181, v182, v183, v184, v179);
                          if (_IDSShouldLog(0))
                          {
                            v185 = [v265 length];
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"QR IPv6 address length is: %lu != 16", v186, v187, v188, v189, v185);
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v143 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v143, OS_LOG_TYPE_DEFAULT, "No IPV6 relay-address from sessionInfo.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"No IPV6 relay-address from sessionInfo.", v144, v145, v146, v147, v148, v249);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"No IPV6 relay-address from sessionInfo.", v149, v150, v151, v152, v249);
                        }
                      }
                    }

                    v265 = 0;
                  }

                  if (@"qv")
                  {
                    v153 = CFDictionaryGetValue(infoCopy, @"qv");
                  }

                  else
                  {
                    v153 = 0;
                  }

                  unsignedCharValue = [v153 unsignedCharValue];
                  if (unsignedCharValue)
                  {
                    self->_protocolVersion = unsignedCharValue;
                    if (@"qids" && (v155 = CFDictionaryGetValue(infoCopy, @"qids"), (v262 = v155) != 0))
                    {
                      objc_storeStrong(&self->_idsSessionID, v155);
                      if (@"qrpr")
                      {
                        v156 = CFDictionaryGetValue(infoCopy, @"qrpr");
                      }

                      else
                      {
                        v156 = 0;
                      }

                      self->_relayServerProviderType = [v156 unsignedIntValue];
                      v190 = @"qrep";
                      if (@"qrep")
                      {
                        v190 = CFDictionaryGetValue(infoCopy, @"qrep");
                      }

                      objc_storeStrong(&self->_reportingDataBlob, v190);
                      if (@"qri")
                      {
                        v191 = CFDictionaryGetValue(infoCopy, @"qri");
                      }

                      else
                      {
                        v191 = 0;
                      }

                      self->_participantID = [v191 unsignedLongLongValue];
                      if (@"IsInitiator")
                      {
                        v192 = CFDictionaryGetValue(infoCopy, @"IsInitiator");
                      }

                      else
                      {
                        v192 = 0;
                      }

                      self->_isInitiator = [v192 BOOLValue];
                      if (@"link-protocol")
                      {
                        v193 = CFDictionaryGetValue(infoCopy, @"link-protocol");
                      }

                      else
                      {
                        v193 = 0;
                      }

                      self->_linkProtocol = [v193 intValue];
                      if (@"ls")
                      {
                        v194 = CFDictionaryGetValue(infoCopy, @"ls");
                      }

                      else
                      {
                        v194 = 0;
                      }

                      self->_linkSuggestion = [v194 unsignedCharValue];
                      if (@"lc")
                      {
                        v195 = CFDictionaryGetValue(infoCopy, @"lc");
                      }

                      else
                      {
                        v195 = 0;
                      }

                      self->_linkScore = [v195 unsignedCharValue];
                      if (@"und2")
                      {
                        v196 = CFDictionaryGetValue(infoCopy, @"und2");
                      }

                      else
                      {
                        v196 = 0;
                      }

                      self->_uplinkNackDisabled = [v196 BOOLValue];
                      if (@"h2fdv2")
                      {
                        v197 = CFDictionaryGetValue(infoCopy, @"h2fdv2");
                      }

                      else
                      {
                        v197 = 0;
                      }

                      self->_h2FallbackDisabled = [v197 BOOLValue];
                      if (@"tled")
                      {
                        v198 = CFDictionaryGetValue(infoCopy, @"tled");
                      }

                      else
                      {
                        v198 = 0;
                      }

                      self->_transportLayerEncryptionDisabled = [v198 BOOLValue];
                      if (@"ipdd")
                      {
                        v199 = CFDictionaryGetValue(infoCopy, @"ipdd");
                      }

                      else
                      {
                        v199 = 0;
                      }

                      self->_ipDiscoveryDisabled = [v199 BOOLValue];
                      v200 = @"qrexp";
                      if (@"qrexp")
                      {
                        v200 = CFDictionaryGetValue(infoCopy, @"qrexp");
                      }

                      objc_storeStrong(&self->_qrSessionExperiments, v200);
                      v201 = @"qptp";
                      if (@"qptp")
                      {
                        v201 = CFDictionaryGetValue(infoCopy, @"qptp");
                      }

                      objc_storeStrong(&self->_pskTransportParameters, v201);
                      v202 = @"qph3";
                      if (@"qph3")
                      {
                        v202 = CFDictionaryGetValue(infoCopy, @"qph3");
                      }

                      objc_storeStrong(&self->_pskH3Settings, v202);
                      if (@"x-internal")
                      {
                        v203 = CFDictionaryGetValue(infoCopy, @"x-internal");
                      }

                      else
                      {
                        v203 = 0;
                      }

                      self->_isInternal = [v203 BOOLValue];
                      if (@"idscel")
                      {
                        v204 = CFDictionaryGetValue(infoCopy, @"idscel");
                      }

                      else
                      {
                        v204 = 0;
                      }

                      self->_ftPowerOptimizationEnabled = [v204 BOOLValue];
                      if (@"qal")
                      {
                        v205 = CFDictionaryGetValue(infoCopy, @"qal");
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v263 = v205;
                      v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [v206 addObjectsFromArray:v263];
                      array = [MEMORY[0x1E695DF70] array];
                      v276 = 0u;
                      v277 = 0u;
                      v274 = 0u;
                      v275 = 0u;
                      obj = v206;
                      v207 = 0;
                      v208 = [obj countByEnumeratingWithState:&v274 objects:v279 count:16];
                      if (v208)
                      {
                        v272 = *v275;
                        do
                        {
                          for (i = 0; i != v208; ++i)
                          {
                            if (*v275 != v272)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v210 = 0;
                            v211 = *(*(&v274 + 1) + 8 * i);
                            if (@"qri" && v211)
                            {
                              v210 = CFDictionaryGetValue(*(*(&v274 + 1) + 8 * i), @"qri");
                            }

                            v212 = v210;
                            v213 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v212, "unsignedLongLongValue")}];
                            if (!v207)
                            {
                              v207 = objc_alloc_init(MEMORY[0x1E695DF70]);
                            }

                            if (v207 && v213)
                            {
                              CFArrayAppendValue(v207, v213);
                            }

                            if ([v212 unsignedLongLongValue] == self->_participantID)
                            {
                              v214 = 0;
                              if (v211 && @"tP")
                              {
                                v214 = CFDictionaryGetValue(v211, @"tP");
                              }

                              v215 = v214;
                              self->_isPseudoParticipant = MEMORY[0x1AC563170]();
                            }

                            v216 = [(__CFDictionary *)v211 objectForKeyedSubscript:@"t"];
                            if (v216)
                            {
                              v217 = [IDSPushToken pushTokenWithData:v216];
                              [array addObject:v217];
                            }
                          }

                          v208 = [obj countByEnumeratingWithState:&v274 objects:v279 count:16];
                        }

                        while (v208);
                      }

                      objc_storeStrong(&self->_allocatedPushTokens, array);
                      if (v207 || self->_allocateType != 3)
                      {
                        objc_storeStrong(&self->_allParticipantIDs, v207);
                        v228 = [(__CFArray *)v207 description];
                        cut_dispatch_log_queue();
                        if (@"default-local-device-cbuuid")
                        {
                          v229 = CFDictionaryGetValue(infoCopy, @"default-local-device-cbuuid");
                        }

                        else
                        {
                          v229 = 0;
                        }

                        v230 = v229;
                        v231 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v230];
                        defaultDeviceLocalCBUUID = self->_defaultDeviceLocalCBUUID;
                        self->_defaultDeviceLocalCBUUID = v231;

                        if (@"default-remote-device-cbuuid")
                        {
                          v233 = CFDictionaryGetValue(infoCopy, @"default-remote-device-cbuuid");
                        }

                        else
                        {
                          v233 = 0;
                        }

                        v234 = v233;
                        v235 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v234];
                        defaultDeviceRemoteCBUUID = self->_defaultDeviceRemoteCBUUID;
                        self->_defaultDeviceRemoteCBUUID = v235;

                        v237 = @"qgid";
                        if (@"qgid")
                        {
                          v237 = CFDictionaryGetValue(infoCopy, @"qgid");
                        }

                        objc_storeStrong(&self->_groupID, v237);
                        v238 = @"qsgid";
                        if (@"qsgid")
                        {
                          v238 = CFDictionaryGetValue(infoCopy, @"qsgid");
                        }

                        objc_storeStrong(&self->_stableGroupID, v238);
                        v239 = @"stream-info-published-streams";
                        if (@"stream-info-published-streams")
                        {
                          v239 = CFDictionaryGetValue(infoCopy, @"stream-info-published-streams");
                        }

                        objc_storeStrong(&self->_publishedStreams, v239);
                        v240 = @"stream-info-subscribed-streams";
                        if (@"stream-info-subscribed-streams")
                        {
                          v240 = CFDictionaryGetValue(infoCopy, @"stream-info-subscribed-streams");
                        }

                        objc_storeStrong(&self->_subscribedStreams, v240);
                        if (@"stream-info-generation-counter")
                        {
                          v241 = CFDictionaryGetValue(infoCopy, @"stream-info-generation-counter");
                        }

                        else
                        {
                          v241 = 0;
                        }

                        self->_generationCounter = [v241 unsignedIntValue];
                        if (@"stream-info-max-concurrent-streams")
                        {
                          v242 = CFDictionaryGetValue(infoCopy, @"stream-info-max-concurrent-streams");
                        }

                        else
                        {
                          v242 = 0;
                        }

                        self->_maxConcurrentStreams = [v242 unsignedIntValue];
                        v243 = @"participant-data-key";
                        if (@"participant-data-key")
                        {
                          v243 = CFDictionaryGetValue(infoCopy, @"participant-data-key");
                        }

                        objc_storeStrong(&self->_avcDataBlob, v243);
                        v244 = @"quic-exchange-provider-key";
                        if (@"quic-exchange-provider-key")
                        {
                          v244 = CFDictionaryGetValue(infoCopy, @"quic-exchange-provider-key");
                        }

                        objc_storeStrong(&self->_quicMaterialExchangeProvider, v244);
                        if (@"gl-option-session-is-user-participant-initiated")
                        {
                          v245 = CFDictionaryGetValue(infoCopy, @"gl-option-session-is-user-participant-initiated");
                        }

                        else
                        {
                          v245 = 0;
                        }

                        self->_sessionIsNonUserParticipantInitiated = [v245 unsignedIntValue] != 0;
                        if (@"gl-option-session-hand-off-over-qr-enabled")
                        {
                          v246 = CFDictionaryGetValue(infoCopy, @"gl-option-session-hand-off-over-qr-enabled");
                        }

                        else
                        {
                          v246 = 0;
                        }

                        self->_handOffOverQREnabled = [v246 BOOLValue];
                        if (@"gl-option-call-type")
                        {
                          v247 = CFDictionaryGetValue(infoCopy, @"gl-option-call-type");
                        }

                        else
                        {
                          v247 = 0;
                        }

                        self->_callType = [v247 unsignedIntValue];

                        v17 = 0;
                      }

                      else
                      {
                        v218 = OSLogHandleForTransportCategory();
                        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1A7AD9000, v218, OS_LOG_TYPE_DEFAULT, "failed to get recipient participant-id list.", buf, 2u);
                        }

                        if (os_log_shim_legacy_logging_enabled())
                        {
                          if (_IDSShouldLogTransport())
                          {
                            _IDSLogTransport(@"GL", @"IDS", @"failed to get recipient participant-id list.", v219, v220, v221, v222, v223, v249);
                            if (_IDSShouldLog(0))
                            {
                              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get recipient participant-id list.", v224, v225, v226, v227, v261);
                            }
                          }
                        }

                        v17 = 31;
                      }
                    }

                    else
                    {
                      v157 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_1A7AD9000, v157, OS_LOG_TYPE_DEFAULT, "failed to get ids-session-id from sessionInfo.", buf, 2u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          _IDSLogTransport(@"GL", @"IDS", @"failed to get ids-session-id from sessionInfo.", v158, v159, v160, v161, v162, v249);
                          if (_IDSShouldLog(0))
                          {
                            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get ids-session-id from sessionInfo.", v163, v164, v165, v166, v259);
                          }
                        }
                      }

                      v17 = 25;
                    }
                  }

                  else
                  {
                    v167 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1A7AD9000, v167, OS_LOG_TYPE_DEFAULT, "invalid QR protocol version.", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"invalid QR protocol version.", v168, v169, v170, v171, v172, v249);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid QR protocol version.", v173, v174, v175, v176, v260);
                        }
                      }
                    }

                    v17 = 13;
                  }
                }

                else
                {
                  v96 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1A7AD9000, v96, OS_LOG_TYPE_DEFAULT, "failed to get relay-address from sessionInfo.", buf, 2u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-address from sessionInfo.", v97, v98, v99, v100, v101, v249);
                      if (_IDSShouldLog(0))
                      {
                        _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-address from sessionInfo.", v102, v103, v104, v105, v257);
                      }
                    }
                  }

                  v17 = 4;
                }
              }

              else
              {
                v106 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A7AD9000, v106, OS_LOG_TYPE_DEFAULT, "failed to get relay-port from sessionInfo.", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-port from sessionInfo.", v107, v108, v109, v110, v111, v249);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-port from sessionInfo.", v112, v113, v114, v115, v258);
                    }
                  }
                }

                v17 = 5;
              }

              v90 = v266;
            }

            else
            {
              v80 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A7AD9000, v80, OS_LOG_TYPE_DEFAULT, "failed to get software-data from sessionInfo.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"failed to get software-data from sessionInfo.", v81, v82, v83, v84, v85, v249);
                  if (_IDSShouldLog(0))
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get software-data from sessionInfo.", v86, v87, v88, v89, v256);
                  }
                }
              }

              v90 = 0;
              v17 = 29;
            }
          }

          else
          {
            v70 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A7AD9000, v70, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-key from sessionInfo.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-key from sessionInfo.", v71, v72, v73, v74, v75, v249);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-key from sessionInfo.", v76, v77, v78, v79, v255);
                }
              }
            }

            v17 = 3;
          }
        }

        else
        {
          v60 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-token from sessionInfo.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-token from sessionInfo.", v61, v62, v63, v64, v65, v249);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-token from sessionInfo.", v66, v67, v68, v69, v254);
              }
            }
          }

          v17 = 2;
        }
      }

      else
      {
        v50 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "failed to get relay-session-id from sessionInfo.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to get relay-session-id from sessionInfo.", v51, v52, v53, v54, v55, v249);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get relay-session-id from sessionInfo.", v56, v57, v58, v59, v253);
            }
          }
        }

        v17 = 1;
      }
    }

    else
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "failed to get allocate-request-id from sessionInfo.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-request-id from sessionInfo.", v41, v42, v43, v44, v45, v249);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-request-id from sessionInfo.", v46, v47, v48, v49, v252);
          }
        }
      }

      v17 = 12;
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "failed to get allocate-type from sessionInfo.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get allocate-type from sessionInfo.", v8, v9, v10, v11, v12, v249);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get allocate-type from sessionInfo.", v13, v14, v15, v16, v250);
        }
      }
    }

    v17 = 27;
  }

  return v17;
}

@end