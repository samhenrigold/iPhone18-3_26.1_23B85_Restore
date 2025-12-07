@interface CUKeychainItem(RPIdentity)
- (uint64_t)updateWithRPIdentity:()RPIdentity revisionUpdate:error:;
@end

@implementation CUKeychainItem(RPIdentity)

- (uint64_t)updateWithRPIdentity:()RPIdentity revisionUpdate:error:
{
  v7 = a3;
  metadata = [self metadata];
  selfCopy = self;
  secrets = [self secrets];
  CFArrayGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  accessGroups = [v7 accessGroups];
  v12 = v10;
  v13 = v12;
  v275 = v12;
  v256 = a5;
  if (accessGroups == v12)
  {

    goto LABEL_6;
  }

  if ((v12 == 0) != (accessGroups != 0))
  {
    v14 = [accessGroups isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v17 = [metadata mutableCopy];
  v18 = v17;
  if (v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v15 setObject:accessGroups forKeyedSubscript:@"accessGroups"];
  v16 = 0x80000;
LABEL_12:
  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  accountAltDSID = [v7 accountAltDSID];
  v276 = v19;
  v274 = accountAltDSID;
  if (![accountAltDSID length])
  {
    goto LABEL_25;
  }

  v21 = accountAltDSID;
  v22 = v19;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_25;
  }

  if ((v22 == 0) != (v21 != 0))
  {
    v24 = [v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_25;
    }

    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    v25 = [metadata mutableCopy];
    v26 = v25;
    if (v25)
    {
      v15 = v25;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_24:
  [v15 setObject:v21 forKeyedSubscript:@"accountAltDSID"];
  v16 = v16 | 0x2000000;
LABEL_25:
  CFStringGetTypeID();
  v27 = CFDictionaryGetTypedValue();
  accountID = [v7 accountID];
  v272 = accountID;
  v273 = v27;
  if (![accountID length])
  {
    goto LABEL_38;
  }

  v29 = accountID;
  v30 = v27;
  v31 = v30;
  if (v29 == v30)
  {

    goto LABEL_38;
  }

  if ((v30 == 0) != (v29 != 0))
  {
    v32 = [v29 isEqual:v30];

    if (v32)
    {
      goto LABEL_38;
    }

    if (v15)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (!v15)
  {
LABEL_33:
    v33 = [metadata mutableCopy];
    v34 = v33;
    if (v33)
    {
      v15 = v33;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_37:
  [v15 setObject:v29 forKeyedSubscript:@"accountID"];
  v16 = v16 | 0x2000;
LABEL_38:
  CFStringGetTypeID();
  v35 = CFDictionaryGetTypedValue();
  contactID = [v7 contactID];
  v270 = contactID;
  v271 = v35;
  if (![contactID length])
  {
    goto LABEL_51;
  }

  v37 = contactID;
  v38 = v35;
  v39 = v38;
  if (v37 == v38)
  {

    goto LABEL_51;
  }

  if ((v38 == 0) != (v37 != 0))
  {
    v40 = [v37 isEqual:v38];

    if (v40)
    {
      goto LABEL_51;
    }

    if (v15)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (!v15)
  {
LABEL_46:
    v41 = [metadata mutableCopy];
    v42 = v41;
    if (v41)
    {
      v15 = v41;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_50:
  [v15 setObject:v37 forKeyedSubscript:@"contactID"];
  v16 = v16 | 0x8000;
LABEL_51:
  dateAcknowledged = [v7 dateAcknowledged];
  CFDateGetTypeID();
  v44 = CFDictionaryGetTypedValue();
  v45 = dateAcknowledged;
  v46 = v44;
  v47 = v45;
  v268 = v46;
  if (v45 == v46)
  {

    goto LABEL_63;
  }

  if ((v45 != 0) != (v46 == 0))
  {
    v48 = v46;
    v49 = [v45 isEqual:v46];

    if (v49)
    {
      goto LABEL_63;
    }

    if (v15)
    {
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  if (!v15)
  {
LABEL_58:
    v50 = [metadata mutableCopy];
    v51 = v50;
    if (v50)
    {
      v15 = v50;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_62:
  [v15 setObject:v47 forKeyedSubscript:@"dateAck"];
  v16 = v16 | 2;
LABEL_63:
  dateAdded = [v7 dateAdded];
  v277 = dateAdded;
  v269 = v47;
  if (!dateAdded)
  {
    goto LABEL_77;
  }

  v53 = dateAdded;
  CFDateGetTypeID();
  v54 = CFDictionaryGetTypedValue();
  v55 = v53;
  v56 = v54;
  v57 = v56;
  if (v55 == v56)
  {
  }

  else
  {
    if (!v56)
    {

      if (!v15)
      {
LABEL_71:
        v59 = [metadata mutableCopy];
        v60 = v59;
        if (v59)
        {
          v15 = v59;
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }
      }

LABEL_75:
      [v15 setObject:v55 forKeyedSubscript:@"dateAdded"];
      v16 = v16 | 2;
      goto LABEL_76;
    }

    v58 = [v55 isEqual:v56];

    if ((v58 & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }
  }

LABEL_76:

LABEL_77:
  dateRemoved = [v7 dateRemoved];
  CFDateGetTypeID();
  v62 = CFDictionaryGetTypedValue();
  v63 = dateRemoved;
  v64 = v62;
  v65 = v64;
  v266 = v64;
  v267 = v63;
  if (v63 == v64)
  {

    if (v63)
    {
      goto LABEL_81;
    }

LABEL_83:
    v278 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v278 addObject:@"dateRemoved"];
    goto LABEL_94;
  }

  if ((v63 != 0) != (v64 == 0))
  {
    v66 = [v63 isEqual:v64];

    if (v66)
    {
      if (v63)
      {
LABEL_81:
        v278 = 0;
        goto LABEL_94;
      }

      goto LABEL_83;
    }
  }

  else
  {
  }

  if (v63)
  {
    if (!v15)
    {
      v67 = [metadata mutableCopy];
      v68 = v67;
      if (v67)
      {
        v15 = v67;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }
    }

    [v15 setObject:v63 forKeyedSubscript:@"dateRemoved"];
    v278 = 0;
  }

  else
  {
    v278 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v278 addObject:@"dateRemoved"];
  }

  v16 = v16 | 2;
LABEL_94:
  dateRequested = [v7 dateRequested];
  CFDateGetTypeID();
  v70 = CFDictionaryGetTypedValue();
  v71 = dateRequested;
  v72 = v70;
  v265 = v72;
  if (v71 == v72)
  {

    if (v71)
    {
      goto LABEL_115;
    }

    goto LABEL_100;
  }

  if ((v71 != 0) != (v72 == 0))
  {
    v73 = v72;
    v74 = [v71 isEqual:v72];

    if (v74)
    {
      if (v71)
      {
        goto LABEL_115;
      }

LABEL_100:
      v75 = v278;
      if (!v278)
      {
        v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v278 = v75;
      [v75 addObject:@"dateReq"];
      goto LABEL_115;
    }
  }

  else
  {
  }

  if (v71)
  {
    if (!v15)
    {
      v76 = [metadata mutableCopy];
      v77 = v76;
      if (v76)
      {
        v15 = v76;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }
    }

    [v15 setObject:v71 forKeyedSubscript:@"dateReq"];
  }

  else
  {
    v78 = v278;
    if (!v278)
    {
      v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v278 = v78;
    [v78 addObject:@"dateReq"];
  }

  v16 = v16 | 2;
LABEL_115:
  deviceIRKData = [v7 deviceIRKData];
  v264 = deviceIRKData;
  if ([deviceIRKData length] != 16)
  {
    v280 = 0;
    goto LABEL_129;
  }

  CFDataGetTypeID();
  v80 = CFDictionaryGetTypedValue();
  v81 = deviceIRKData;
  v82 = v80;
  v83 = v82;
  if (v81 != v82)
  {
    v258 = v7;
    v84 = v15;
    v85 = v71;
    v86 = accessGroups;
    if ((v81 != 0) != (v82 == 0))
    {
      v87 = [v81 isEqual:v82];

      if (v87)
      {
        v280 = 0;
LABEL_127:
        accessGroups = v86;
        v71 = v85;
        v15 = v84;
        v7 = v258;
        goto LABEL_128;
      }
    }

    else
    {
    }

    v88 = secrets;
    v89 = [secrets mutableCopy];
    v90 = v89;
    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v280 = v91;
    [v91 setObject:v81 forKeyedSubscript:@"dIRK"];
    v16 = v16 | 4;
    secrets = v88;
    goto LABEL_127;
  }

  v280 = 0;
LABEL_128:

LABEL_129:
  edPKData = [v7 edPKData];
  v263 = edPKData;
  if ([edPKData length] == 32)
  {
    CFDataGetTypeID();
    v93 = CFDictionaryGetTypedValue();
    v94 = edPKData;
    v95 = v93;
    v96 = v95;
    if (v94 != v95)
    {
      if ((v94 != 0) != (v95 == 0))
      {
        v97 = [v94 isEqual:v95];

        if (v97)
        {
          goto LABEL_142;
        }
      }

      else
      {
      }

      v98 = v280;
      if (!v280)
      {
        v259 = v7;
        v99 = metadata;
        v100 = v15;
        v101 = v16;
        v16 = v71;
        v102 = accessGroups;
        v103 = secrets;
        v104 = [secrets mutableCopy];
        v105 = v104;
        if (v104)
        {
          v106 = v104;
        }

        else
        {
          v106 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v98 = v106;
        secrets = v103;
        accessGroups = v102;
        v71 = v16;
        LODWORD(v16) = v101;
        v15 = v100;
        metadata = v99;
        v7 = v259;
      }

      v280 = v98;
      [v98 setObject:v94 forKeyedSubscript:@"edPK"];
      v16 = v16 | 8;
      goto LABEL_142;
    }

LABEL_142:
  }

  edSKData = [v7 edSKData];
  v262 = edSKData;
  if ([edSKData length] == 32 || !edSKData && +[RPIdentity _sepBackedIdentityEnabled](RPIdentity, "_sepBackedIdentityEnabled"))
  {
    CFDataGetTypeID();
    v108 = CFDictionaryGetTypedValue();
    v109 = edSKData;
    v110 = v108;
    v111 = v110;
    if (v109 != v110)
    {
      if ((v109 != 0) != (v110 == 0))
      {
        v112 = [v109 isEqual:v110];

        if (v112)
        {
          goto LABEL_159;
        }
      }

      else
      {
      }

      v113 = v280;
      if (!v280)
      {
        v260 = v7;
        v114 = metadata;
        v115 = v15;
        v116 = v16;
        v16 = v71;
        v117 = accessGroups;
        v118 = secrets;
        v119 = [secrets mutableCopy];
        v120 = v119;
        if (v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v113 = v121;
        secrets = v118;
        accessGroups = v117;
        v71 = v16;
        LODWORD(v16) = v116;
        v15 = v115;
        metadata = v114;
        v7 = v260;
      }

      v280 = v113;
      [v113 setObject:v109 forKeyedSubscript:@"edSK"];
      v16 = v16 | 0x10;
      goto LABEL_159;
    }

LABEL_159:
  }

  Int64 = CFDictionaryGetInt64();
  featureFlags = [v7 featureFlags];
  if (!featureFlags || (v124 = featureFlags, featureFlags == Int64))
  {
    v125 = v277;
  }

  else
  {
    v125 = v277;
    if (!v15)
    {
      v126 = [metadata mutableCopy];
      v127 = v126;
      if (v126)
      {
        v15 = v126;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v125 = v277;
    }

    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v124];
    [v15 setObject:v128 forKeyedSubscript:@"ff"];

    v16 = v16 | 0x400;
  }

  identifier = [v7 identifier];
  v261 = identifier;
  if (identifier)
  {
    v136 = identifier;
    identifier2 = [selfCopy identifier];
    v138 = v136;
    v139 = identifier2;
    v140 = v139;
    if (v138 == v139)
    {

      goto LABEL_180;
    }

    if (v139)
    {
      v141 = [v138 isEqual:v139];

      if (v141)
      {
LABEL_180:
        idsDeviceID = [v7 idsDeviceID];
        v255 = idsDeviceID;
        if (!idsDeviceID)
        {
          goto LABEL_197;
        }

        v144 = idsDeviceID;
        v145 = v138;
        if (v144 != v145)
        {
          v146 = [v144 isEqual:v145];

          if (v146)
          {
            goto LABEL_197;
          }

          CFStringGetTypeID();
          v147 = CFDictionaryGetTypedValue();
          v145 = v144;
          v148 = v147;
          v144 = v148;
          if (v145 != v148)
          {
            if (v148)
            {
              v149 = [v145 isEqual:v148];

              if (v149)
              {
                goto LABEL_196;
              }
            }

            else
            {
            }

            if (!v15)
            {
              v150 = [metadata mutableCopy];
              v151 = v150;
              if (v150)
              {
                v15 = v150;
              }

              else
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }
            }

            [v15 setObject:v145 forKeyedSubscript:@"idsDeviceID"];
            v16 = v16 | 0x40;
            goto LABEL_196;
          }
        }

LABEL_196:
LABEL_197:
        CFStringGetTypeID();
        v152 = CFDictionaryGetTypedValue();
        mediaRemoteID = [v7 mediaRemoteID];
        v253 = mediaRemoteID;
        v254 = v152;
        if (![mediaRemoteID length])
        {
          goto LABEL_210;
        }

        v154 = mediaRemoteID;
        v155 = v152;
        v156 = v155;
        if (v154 == v155)
        {

          goto LABEL_210;
        }

        if ((v155 == 0) != (v154 != 0))
        {
          v157 = [v154 isEqual:v155];

          if (v157)
          {
            goto LABEL_210;
          }

          if (v15)
          {
            goto LABEL_209;
          }
        }

        else
        {

          if (v15)
          {
LABEL_209:
            [v15 setObject:v154 forKeyedSubscript:@"mediaRemoteID"];
            v16 = v16 | 0x10000;
LABEL_210:
            CFStringGetTypeID();
            v160 = CFDictionaryGetTypedValue();
            mediaRouteID = [v7 mediaRouteID];
            v251 = mediaRouteID;
            v252 = v160;
            if (![mediaRouteID length])
            {
              goto LABEL_223;
            }

            v162 = mediaRouteID;
            v163 = v160;
            v164 = v163;
            if (v162 == v163)
            {

              goto LABEL_223;
            }

            if ((v163 == 0) != (v162 != 0))
            {
              v165 = [v162 isEqual:v163];

              if (v165)
              {
                goto LABEL_223;
              }

              if (v15)
              {
                goto LABEL_222;
              }
            }

            else
            {

              if (v15)
              {
LABEL_222:
                [v15 setObject:v162 forKeyedSubscript:@"mediaRouteID"];
                v16 = v16 | 0x20000;
LABEL_223:
                CFStringGetTypeID();
                v168 = CFDictionaryGetTypedValue();
                model = [v7 model];
                v249 = model;
                v250 = v168;
                if (![model length])
                {
                  goto LABEL_236;
                }

                v170 = model;
                v171 = v168;
                v172 = v171;
                if (v170 == v171)
                {

                  goto LABEL_236;
                }

                if ((v171 == 0) != (v170 != 0))
                {
                  v173 = [v170 isEqual:v171];

                  if (v173)
                  {
                    goto LABEL_236;
                  }

                  if (v15)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {

                  if (v15)
                  {
LABEL_235:
                    [v15 setObject:v170 forKeyedSubscript:@"model"];
                    v16 = v16 | 0x80;
LABEL_236:
                    name = [selfCopy name];
                    name2 = [v7 name];
                    v247 = name2;
                    v248 = name;
                    if (![name2 length])
                    {
                      goto LABEL_244;
                    }

                    v178 = name2;
                    v179 = name;
                    v180 = v179;
                    if (v178 == v179)
                    {

                      goto LABEL_244;
                    }

                    if ((v179 == 0) != (v178 != 0))
                    {
                      v181 = [v178 isEqual:v179];

                      if (v181)
                      {
LABEL_244:
                        CFStringGetTypeID();
                        v182 = CFDictionaryGetTypedValue();
                        sendersKnownAlias = [v7 sendersKnownAlias];
                        v245 = sendersKnownAlias;
                        v246 = v182;
                        if (![sendersKnownAlias length])
                        {
                          goto LABEL_257;
                        }

                        v184 = sendersKnownAlias;
                        v185 = v182;
                        v186 = v185;
                        if (v184 == v185)
                        {

                          goto LABEL_257;
                        }

                        if ((v185 == 0) != (v184 != 0))
                        {
                          v187 = [v184 isEqual:v185];

                          if (v187)
                          {
                            goto LABEL_257;
                          }

                          if (v15)
                          {
                            goto LABEL_256;
                          }
                        }

                        else
                        {

                          if (v15)
                          {
LABEL_256:
                            [v15 setObject:v184 forKeyedSubscript:@"ska"];
                            v16 = v16 | 0x40000;
LABEL_257:
                            objc_opt_class();
                            v190 = NSDictionaryGetNSArrayOfClass();
                            allUsedSendersKnownAliases = [v7 allUsedSendersKnownAliases];
                            v192 = v190;
                            v193 = v192;
                            if (allUsedSendersKnownAliases == v192)
                            {
                            }

                            else
                            {
                              if ((v192 == 0) == (allUsedSendersKnownAliases != 0))
                              {

                                if (!v15)
                                {
LABEL_264:
                                  v195 = [metadata mutableCopy];
                                  v196 = v195;
                                  if (v195)
                                  {
                                    v15 = v195;
                                  }

                                  else
                                  {
                                    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }
                                }

LABEL_268:
                                [v15 setObject:allUsedSendersKnownAliases forKeyedSubscript:@"allUsedSKAs"];
                                v16 = v16 | 0x1000000;
                                goto LABEL_269;
                              }

                              v194 = [allUsedSendersKnownAliases isEqual:v192];

                              if ((v194 & 1) == 0)
                              {
                                if (!v15)
                                {
                                  goto LABEL_264;
                                }

                                goto LABEL_268;
                              }
                            }

LABEL_269:
                            v197 = [v7 type] - 1;
                            v142 = v276;
                            if (v197 >= 0xF || ((0x48FFu >> v197) & 1) == 0)
                            {
                              if (v256)
                              {
                                type = [v7 type];
                                *v256 = RPErrorF(4294960540, "Unknown identity type (%d)", v203, v204, v205, v206, v207, v208, type);
                              }

                              v16 = 1;
                              goto LABEL_332;
                            }

                            v243 = accessGroups;
                            v257 = secrets;
                            v198 = off_1E7C947F0[v197];
                            type2 = [selfCopy type];
                            v200 = type2;
                            if (v198 == type2)
                            {
                            }

                            else if (!type2 || (v201 = [(__CFString *)v198 isEqual:type2], v200, v200, (v201 & 1) == 0))
                            {
                              [selfCopy setType:v198];
                              v16 = v16 | 0x200;
                            }

                            v209 = CFDictionaryGetInt64();
                            userAdded = [v7 userAdded];
                            secrets = v257;
                            if (((userAdded ^ (v209 == 0)) & 1) == 0)
                            {
                              v211 = userAdded;
                              if (!v15)
                              {
                                v212 = [metadata mutableCopy];
                                v213 = v212;
                                if (v212)
                                {
                                  v15 = v212;
                                }

                                else
                                {
                                  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                }

                                secrets = v257;
                              }

                              v214 = [MEMORY[0x1E696AD98] numberWithBool:v211];
                              [v15 setObject:v214 forKeyedSubscript:@"userAdded"];

                              v16 = v16 | 0x4000;
                            }

                            btIRKData = [v7 btIRKData];
                            v242 = btIRKData;
                            if ([btIRKData length] != 16)
                            {
LABEL_300:
                              btAddress = [v7 btAddress];
                              v241 = btAddress;
                              if ([btAddress length] != 7)
                              {
                                goto LABEL_314;
                              }

                              CFDataGetTypeID();
                              v225 = CFDictionaryGetTypedValue();
                              v226 = btAddress;
                              v227 = v225;
                              v228 = v227;
                              if (v226 != v227)
                              {
                                if ((v226 != 0) != (v227 == 0))
                                {
                                  v229 = [v226 isEqual:v227];

                                  if (v229)
                                  {
                                    goto LABEL_313;
                                  }
                                }

                                else
                                {
                                }

                                v230 = v280;
                                if (!v280)
                                {
                                  v231 = [v257 mutableCopy];
                                  v282 = v231;
                                  if (v231)
                                  {
                                    v232 = v231;
                                  }

                                  else
                                  {
                                    v232 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }

                                  v230 = v232;
                                }

                                v280 = v230;
                                [v230 setObject:v226 forKeyedSubscript:@"bAdd"];
                                v16 = v16 | 0x800000;
                                goto LABEL_313;
                              }

LABEL_313:
                              secrets = v257;
LABEL_314:
                              if (a4 && v16)
                              {
                                [v7 setRevisionID:{objc_msgSend(v7, "revisionID") + 1}];
                              }

                              Int64Ranged = CFDictionaryGetInt64Ranged();
                              revisionID = [v7 revisionID];
                              if (revisionID == Int64Ranged)
                              {
                                accessGroups = v243;
                              }

                              else
                              {
                                v235 = revisionID;
                                accessGroups = v243;
                                if (!v15)
                                {
                                  v236 = [metadata mutableCopy];
                                  v237 = v236;
                                  if (v236)
                                  {
                                    v15 = v236;
                                  }

                                  else
                                  {
                                    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }

                                  secrets = v257;
                                }

                                v238 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v235];
                                [v15 setObject:v238 forKeyedSubscript:@"revisionID"];
                              }

                              v142 = v276;
                              if (v15)
                              {
                                [selfCopy setMetadata:v15];
                              }

                              if (v278)
                              {
                                [selfCopy setRemovedMetadata:?];
                              }

                              if (v280)
                              {
                                [selfCopy setSecrets:?];
                              }

LABEL_332:
                              v125 = v277;
                              goto LABEL_333;
                            }

                            CFDataGetTypeID();
                            v216 = CFDictionaryGetTypedValue();
                            v217 = btIRKData;
                            v218 = v216;
                            v219 = v218;
                            if (v217 != v218)
                            {
                              if ((v217 != 0) != (v218 == 0))
                              {
                                v220 = [v217 isEqual:v218];

                                if (v220)
                                {
                                  goto LABEL_299;
                                }
                              }

                              else
                              {
                              }

                              v221 = v280;
                              if (!v280)
                              {
                                v222 = [v257 mutableCopy];
                                v281 = v222;
                                if (v222)
                                {
                                  v223 = v222;
                                }

                                else
                                {
                                  v223 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                }

                                v221 = v223;
                              }

                              v280 = v221;
                              [v221 setObject:v217 forKeyedSubscript:@"bIRK"];
                              v16 = v16 | 0x400000;
                              goto LABEL_299;
                            }

LABEL_299:
                            secrets = v257;
                            goto LABEL_300;
                          }
                        }

                        v188 = [metadata mutableCopy];
                        v189 = v188;
                        if (v188)
                        {
                          v15 = v188;
                        }

                        else
                        {
                          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        }

                        goto LABEL_256;
                      }
                    }

                    else
                    {
                    }

                    [selfCopy setName:v178];
                    v16 = v16 | 0x100;
                    goto LABEL_244;
                  }
                }

                v174 = [metadata mutableCopy];
                v175 = v174;
                if (v174)
                {
                  v15 = v174;
                }

                else
                {
                  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                }

                goto LABEL_235;
              }
            }

            v166 = [metadata mutableCopy];
            v167 = v166;
            if (v166)
            {
              v15 = v166;
            }

            else
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            goto LABEL_222;
          }
        }

        v158 = [metadata mutableCopy];
        v159 = v158;
        if (v158)
        {
          v15 = v158;
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        goto LABEL_209;
      }
    }

    else
    {
    }

    [selfCopy setIdentifier:v138];
    v16 = v16 | 0x20;
    goto LABEL_180;
  }

  if (v256)
  {
    *v256 = RPErrorF(4294960588, "No identifier", v130, v131, v132, v133, v134, v135, v240);
  }

  v16 = 1;
  v142 = v276;
LABEL_333:

  return v16;
}

@end