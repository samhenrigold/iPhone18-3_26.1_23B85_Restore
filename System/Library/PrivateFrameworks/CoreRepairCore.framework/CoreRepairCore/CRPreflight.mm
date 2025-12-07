@interface CRPreflight
- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob;
- (id)_getVersionInfo:(id)info;
- (id)_sendBAARequest:(id)request proxySettings:(id)settings withError:(id *)error;
- (id)componentsWithPrimaryKeys:(id)keys;
- (id)requestBAACertificates:(id)certificates apticket:(id)apticket proxySettings:(id)settings withError:(id *)error;
- (id)sha256Data:(id)data;
- (id)sign:(id)sign keyBlob:(id)blob;
- (void)challengeStrongComponents:(id)components withReply:(id)reply;
- (void)issueRepairCert:(id)cert withReply:(id)reply;
- (void)queryRepairDeltaWithReply:(id)reply;
@end

@implementation CRPreflight

- (id)componentsWithPrimaryKeys:(id)keys
{
  v56 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v4 = +[CRFDRDeviceController sharedSingleton];
  getHandlerForDevice = [v4 getHandlerForDevice];

  v5 = [keysCopy mutableCopy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v55 count:16];
  v8 = v6;
  if (!v7)
  {
LABEL_33:

    goto LABEL_34;
  }

  v9 = v7;
  v33 = 0;
  v10 = *v47;
  v28 = *v47;
  v29 = v6;
  do
  {
    v11 = 0;
    v30 = v9;
    do
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v46 + 1) + 8 * v11);
      if (([v12 isEqualToString:{@"SrvP", v28, v29}] & 1) == 0)
      {
        v31 = v11;
        v13 = [v6 objectForKeyedSubscript:v12];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v13;
        v37 = [v13 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v37)
        {
          v36 = *v43;
          v34 = v12;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v43 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v15 = [getHandlerForDevice spcWithComponent:v12 withIdentifier:*(*(&v42 + 1) + 8 * i)];
              v16 = [CRDeviceMap getKeysWithSPC:v15];
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v38 objects:v53 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v39;
                while (2)
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v39 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v38 + 1) + 8 * j);
                    if ([CRFDRUtils isPrimaryDataClassSupported:v22])
                    {
                      v23 = [v5 objectForKeyedSubscript:v22];

                      if (!v23)
                      {
                        v24 = AMFDRSealingMapCopyInstanceForClass();
                        if (v24)
                        {
                          v25 = v24;
                          v52 = v24;
                          v33 = 1;
                          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                          objc_msgSend_setObject_forKeyedSubscript_(v5);

                          goto LABEL_24;
                        }
                      }
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v38 objects:v53 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }

LABEL_24:
                v12 = v34;
              }
            }

            v37 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v37);
        }

        v10 = v28;
        v6 = v29;
        v9 = v30;
        v11 = v31;
      }

      ++v11;
    }

    while (v11 != v9);
    v9 = [v6 countByEnumeratingWithState:&v46 objects:v55 count:16];
  }

  while (v9);

  if (v33)
  {
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v5;
      _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "Updated unsealed: %@", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_34:

  return v5;
}

- (void)queryRepairDeltaWithReply:(id)reply
{
  v66 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = objc_opt_new();
  v53 = 0;
  v6 = [CRFDRUtils findUnsealedDataWithError:&v53];
  v7 = v53;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CRFDRUtils(ComponentState) *)v8 hasMesaUnsealedData:v10];
    }

    v17 = 0;
    goto LABEL_46;
  }

  if ([v6 count])
  {
    if (+[CRFDRUtils isRepairASIDSupported])
    {
      v18 = [(CRPreflight *)self componentsWithPrimaryKeys:v6];

      v6 = v18;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = v6;
    v40 = [v10 countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (!v40)
    {
      v17 = 1;
      goto LABEL_45;
    }

    v20 = *v50;
    *&v19 = 136315650;
    v38 = v19;
    v43 = v8;
    v44 = replyCopy;
    v42 = v10;
    v39 = *v50;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v41 = v21;
        v22 = *(*(&v49 + 1) + 8 * v21);
        v23 = [v10 objectForKeyedSubscript:v22, v38];
        v24 = AMFDRSealingMapCopyAssemblyIdentifierForClass();
        v25 = handleForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v38;
          v60 = "[CRPreflight queryRepairDeltaWithReply:]";
          v61 = 2112;
          v62 = v22;
          v63 = 2112;
          v64 = v24;
          _os_log_debug_impl(&dword_1CEDC5000, v25, OS_LOG_TYPE_DEBUG, "%s: key: %@, asid: %@", buf, 0x20u);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v26 = v23;
        v27 = [v26 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (!v27)
        {
          goto LABEL_35;
        }

        v28 = v27;
        v29 = *v46;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v31 dataUsingEncoding:4];
              v33 = [v32 base64EncodedStringWithOptions:0];

              if (!v24)
              {
                goto LABEL_29;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v37 = handleForCategory(0);
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  [(CRPreflight *)buf queryRepairDeltaWithReply:v31, &v60, v37];
                }

                v17 = 0;
                v10 = v42;
                v8 = v43;
                v6 = v42;
                replyCopy = v44;
                goto LABEL_46;
              }

              v33 = [v31 base64EncodedStringWithOptions:0];
              if (!v24)
              {
LABEL_29:
                v54[0] = @"key";
                v54[1] = @"identifier";
                v55[0] = v22;
                v55[1] = v33;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
                [v5 addObject:v35];
                goto LABEL_33;
              }
            }

            v34 = [v24 stringByReplacingOccurrencesOfString:@"-" withString:{@", "}];
            v35 = v34;
            if (v34)
            {
              v56[0] = @"key";
              v56[1] = @"identifier";
              v57[0] = v22;
              v57[1] = v33;
              v56[2] = @"asid";
              v57[2] = v34;
              v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
              [v5 addObject:v36];
            }

            else
            {
              v36 = handleForCategory(0);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v60 = v24;
                _os_log_error_impl(&dword_1CEDC5000, v36, OS_LOG_TYPE_ERROR, "Failed to change asid format: %@", buf, 0xCu);
              }
            }

LABEL_33:
          }

          v28 = [v26 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

LABEL_35:

        v21 = v41 + 1;
        v8 = v43;
        replyCopy = v44;
        v10 = v42;
        v20 = v39;
      }

      while (v41 + 1 != v40);
      v17 = 1;
      v40 = [v42 countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (!v40)
      {
LABEL_45:
        v6 = v10;
        goto LABEL_46;
      }
    }
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "No delta components found", buf, 2u);
  }

  v17 = 1;
LABEL_46:

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v17, v5, v8);
  }
}

- (void)issueRepairCert:(id)cert withReply:(id)reply
{
  v81 = *MEMORY[0x1E69E9840];
  certCopy = cert;
  replyCopy = reply;
  v62 = 0;
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v78 = "[CRPreflight issueRepairCert:withReply:]";
    v79 = 2112;
    v80 = certCopy;
    _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "%s parameters: %@", buf, 0x16u);
  }

  if (!certCopy)
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_19;
  }

  v9 = [certCopy objectForKeyedSubscript:@"miniPreflight"];
  if (v9 && (v10 = v9, [certCopy objectForKeyedSubscript:@"miniPreflight"], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, v10, (isKindOfClass & 1) != 0))
  {
    v13 = [certCopy objectForKeyedSubscript:@"miniPreflight"];
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v15 = [certCopy objectForKeyedSubscript:@"socksHost"];
  if (v15 && (v16 = v15, [certCopy objectForKeyedSubscript:@"socksHost"], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v18 = objc_opt_isKindOfClass(), v17, v16, (v18 & 1) != 0))
  {
    v19 = [certCopy objectForKeyedSubscript:@"socksHost"];
  }

  else
  {
    v19 = 0;
  }

  v20 = [certCopy objectForKeyedSubscript:@"socksPort"];
  if (!v20)
  {
LABEL_18:
    v23 = 0;
    if (bOOLValue)
    {
      goto LABEL_36;
    }

LABEL_19:
    v24 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
    v59 = v20;
    if (v24)
    {
      v25 = v24;
      if (v19 && v20 && (v26 = AMAuthInstallSetSOCKSProxyInformation(), v26))
      {
        v58 = v19;
        v27 = MEMORY[0x1E696ABC0];
        v73 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to enable SOCKS proxy: %d", v26];
        v74 = v28;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v74;
        v31 = &v73;
      }

      else
      {
        if (!+[CRPersonalizationManager shouldPersonalizeWithSSOByDefault]|| (v32 = [CRPersonalizationManager enableSSO:v25], !v32))
        {
          v40 = +[CRFDRUtils hasUnsealedComponentRequireOSUpdate];
          v41 = [CRPersonalizationManager initWithAuthInstallObj:v25];
          v61 = 0;
          v42 = [v41 getRepairTicket:&v62 useRepairAudience:!v40 error:&v61];
          v43 = v61;

          if (!v42 || v43)
          {
            v58 = v19;
            v52 = MEMORY[0x1E696ABC0];
            v69 = *MEMORY[0x1E696A578];
            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get repair ticket: %@", v43];
            v70 = v53;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            v34 = [v52 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v54];

            v38 = 0;
            v39 = 0;
            v23 = 0;
            goto LABEL_43;
          }

          v20 = v59;
          goto LABEL_33;
        }

        v58 = v19;
        v27 = MEMORY[0x1E696ABC0];
        v71 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to enable SSO: %d", v32];
        v72 = v28;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v72;
        v31 = &v71;
      }

      v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
      v34 = [v27 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v33];
    }

    else
    {
      v58 = v19;
      v35 = MEMORY[0x1E696ABC0];
      v75 = *MEMORY[0x1E696A578];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get auth ref"];
      v76 = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v34 = [v35 errorWithDomain:@"com.apple.corerepair" code:-85 userInfo:v37];
    }

    v38 = 0;
    v39 = 0;
    v23 = 0;
LABEL_42:
    v43 = 0;
    goto LABEL_43;
  }

  v21 = [certCopy objectForKeyedSubscript:@"socksPort"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if ((v22 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_18;
  }

  v20 = [certCopy objectForKeyedSubscript:@"socksPort"];
  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  v23 = 0;
  if (v19 && v20)
  {
    v67[0] = @"socksHost";
    v67[1] = @"socksPort";
    v68[0] = v19;
    v68[1] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
  }

LABEL_36:
  v44 = objc_alloc_init(CRRIK);
  v58 = v19;
  v59 = v20;
  if (!v44)
  {
    v47 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v66 = @"Create RIK failed";
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v34 = [v47 errorWithDomain:@"com.apple.corerepair" code:-75 userInfo:v48];

    v38 = 0;
    v39 = 0;
    goto LABEL_42;
  }

  v38 = v44;
  v60 = 0;
  v39 = [(CRPreflight *)self requestBAACertificates:v44 apticket:v62 proxySettings:v23 withError:&v60];
  v45 = v60;
  v43 = v45;
  if (v39 && !v45)
  {
    v34 = 0;
    v46 = 1;
    if (!replyCopy)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v45)
  {
    domain = [v45 domain];
    v51 = [domain isEqual:@"com.apple.corerepair"];

    if (v51)
    {
      v34 = v43;
      v46 = 0;
      v43 = v34;
      if (!replyCopy)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  v55 = MEMORY[0x1E696ABC0];
  v63 = *MEMORY[0x1E696A578];
  v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to request BAA: %@", v43, v58, v20];
  v64 = v56;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v34 = [v55 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v57];

LABEL_43:
  v46 = 0;
  if (replyCopy)
  {
LABEL_44:
    keyBlob = [(CRRIK *)v38 keyBlob];
    replyCopy[2](replyCopy, v46, keyBlob, v39, v34);
  }

LABEL_45:
  AMSupportSafeRelease();
}

- (void)challengeStrongComponents:(id)components withReply:(id)reply
{
  v73[2] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  replyCopy = reply;
  v7 = objc_opt_new();
  v52 = +[CRComponentSigning sharedInstance];
  if (componentsCopy)
  {
    v8 = [componentsCopy objectForKeyedSubscript:@"challenges"];
    if (v8)
    {
      v9 = [componentsCopy objectForKeyedSubscript:@"challenges"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [componentsCopy objectForKeyedSubscript:@"challenges"];
      }

      else
      {
        v8 = 0;
      }
    }

    v12 = [componentsCopy objectForKeyedSubscript:@"socksHost"];
    if (v12 && (v13 = v12, [componentsCopy objectForKeyedSubscript:@"socksHost"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v15 = objc_opt_isKindOfClass(), v14, v13, (v15 & 1) != 0))
    {
      v16 = [componentsCopy objectForKeyedSubscript:@"socksHost"];
    }

    else
    {
      v16 = 0;
    }

    v11 = [componentsCopy objectForKeyedSubscript:@"socksPort"];
    v50 = v16;
    if (v11)
    {
      v17 = [componentsCopy objectForKeyedSubscript:@"socksPort"];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if (v18)
      {
        v19 = [componentsCopy objectForKeyedSubscript:@"socksPort"];
        v11 = v19;
        if (v16 && v19)
        {
          v20 = v19;
          v72[0] = @"SOCKSHost";
          v72[1] = @"SOCKSPort";
          v73[0] = v16;
          v73[1] = v19;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
          v11 = v20;
          [CRPersonalizationManager setSOCKSInfo:v21];
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
    v50 = 0;
    v8 = 0;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v8;
  v22 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (!v22)
  {
    v41 = 0;
    v42 = 1;
    v43 = v50;
    goto LABEL_69;
  }

  v23 = v22;
  v47 = v11;
  v48 = replyCopy;
  v49 = componentsCopy;
  v24 = *v60;
LABEL_19:
  v25 = 0;
  while (1)
  {
    if (*v60 != v24)
    {
      objc_enumerationMutation(obj);
    }

    v26 = *(*(&v59 + 1) + 8 * v25);
    v57 = 0;
    cf = 0;
    v56 = 0;
    v27 = [v26 objectForKeyedSubscript:@"key"];
    v28 = [v26 objectForKeyedSubscript:@"nonce"];
    v29 = v28;
    if (v27)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_55;
    }

    if ([v27 isEqual:@"vcrt"])
    {
      v31 = [(CRPreflight *)self sha256Data:v29];
      [v52 vcrtSign:v31 outSignature:&cf outDeviceNonce:&v57 outError:&v56];

LABEL_28:
      v32 = 1;
      goto LABEL_34;
    }

    if ([v27 isEqual:@"bcrt"])
    {
      [v52 bcrtSign:v29 outSignature:&cf outDeviceNonce:0 outError:&v56];
    }

    else
    {
      if (![v27 isEqual:@"tcrt"])
      {
        if (![v27 isEqual:@"prpc"])
        {
          v39 = handleForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(CRPreflight *)&buf challengeStrongComponents:v55 withReply:v39];
          }

          goto LABEL_54;
        }

        [v52 prpcSign:v29 outSignature:&cf outDeviceNonce:&v57 outError:&v56];
        goto LABEL_28;
      }

      [v52 tcrtSign:v29 outSignature:&cf outDeviceNonce:0 outError:&v56];
    }

    v32 = 0;
LABEL_34:
    v33 = cf;
    if (!cf)
    {
      v34 = handleForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(bytes) = 138412290;
        *(&bytes + 4) = v27;
        _os_log_error_impl(&dword_1CEDC5000, v34, OS_LOG_TYPE_ERROR, "Failed to get strong component signature: %@", &bytes, 0xCu);
      }

      bytes = 0uLL;
      v70 = 0;
      v33 = CFDataCreate(0, &bytes, 20);
      cf = v33;
    }

    v35 = v57;
    if (v57)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    if (v36 == 1)
    {
      v37 = handleForCategory(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LODWORD(bytes) = 138412290;
        *(&bytes + 4) = v27;
        _os_log_error_impl(&dword_1CEDC5000, v37, OS_LOG_TYPE_ERROR, "Failed to get strong component nonce: %@", &bytes, 0xCu);
      }

      bytes = 0uLL;
      v70 = 0;
      v35 = CFDataCreate(0, &bytes, 20);
      v57 = v35;
      v33 = cf;
    }

    if (!v33)
    {
      goto LABEL_65;
    }

    v38 = v35 ? 0 : v32;
    if (v38 == 1)
    {
      break;
    }

    if (v32)
    {
      v65[0] = @"key";
      v65[1] = @"signature";
      v66[0] = v27;
      v66[1] = v33;
      v65[2] = @"deviceNonce";
      v66[2] = v35;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
    }

    else
    {
      v63[0] = @"key";
      v63[1] = @"signature";
      v64[0] = v27;
      v64[1] = v33;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    }

    [v7 addObject:v39];
LABEL_54:

LABEL_55:
    if (v23 == ++v25)
    {
      v40 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
      v23 = v40;
      if (!v40)
      {
        v41 = 0;
        v42 = 1;
        replyCopy = v48;
        componentsCopy = v49;
        v43 = v50;
        goto LABEL_68;
      }

      goto LABEL_19;
    }
  }

  CFRelease(v33);
  v35 = v57;
LABEL_65:
  componentsCopy = v49;
  v43 = v50;
  if (v35)
  {
    CFRelease(v35);
  }

  v44 = MEMORY[0x1E696ABC0];
  v67 = *MEMORY[0x1E696A578];
  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to challenge strong component: %@", v27];
  v68 = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v41 = [v44 errorWithDomain:@"com.apple.corerepair" code:-42 userInfo:v46];

  v42 = 0;
  replyCopy = v48;
LABEL_68:
  v11 = v47;
LABEL_69:

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v42, v7, v41);
  }
}

- (id)sign:(id)sign keyBlob:(id)blob
{
  signCopy = sign;
  blobCopy = blob;
  if (blobCopy)
  {
    if (signCopy)
    {
      v8 = [[CRRIK alloc] initWithKeyBlob:blobCopy];
      if (v8)
      {
        p_super = &v8->super;
        v10 = [(CRPreflight *)self sha256Data:signCopy];
        if (v10)
        {
          v11 = v10;
          v12 = [p_super sign:v10];

          goto LABEL_16;
        }

        v13 = handleForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CRPreflight sign:keyBlob:];
        }
      }

      else
      {
        p_super = handleForCategory(0);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [CRPreflight sign:keyBlob:];
        }
      }
    }

    else
    {
      p_super = handleForCategory(0);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [CRPreflight sign:keyBlob:];
      }
    }
  }

  else
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)verify:(id)verify signature:(id)signature keyBlob:(id)blob
{
  verifyCopy = verify;
  signatureCopy = signature;
  blobCopy = blob;
  if (!blobCopy)
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

    goto LABEL_12;
  }

  v11 = [[CRRIK alloc] initWithKeyBlob:blobCopy];
  if (!v11)
  {
    p_super = handleForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

    goto LABEL_12;
  }

  p_super = &v11->super;
  v13 = [(CRPreflight *)self sha256Data:verifyCopy];
  if (!v13)
  {
    v16 = handleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight sign:keyBlob:];
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [p_super verify:v13 signature:signatureCopy];

LABEL_13:
  return v15;
}

- (id)sha256Data:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [dataCopy length];
  if ((v4 - 1) > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    CC_SHA256([dataCopy bytes], v4, &v7);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:32];
  }

  return v5;
}

- (id)requestBAACertificates:(id)certificates apticket:(id)apticket proxySettings:(id)settings withError:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  certificatesCopy = certificates;
  apticketCopy = apticket;
  settingsCopy = settings;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v52 = apticketCopy;
  if (!certificatesCopy)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

    goto LABEL_18;
  }

  attestationBlob = [certificatesCopy attestationBlob];
  if (!attestationBlob)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

LABEL_18:

    v29 = 0;
    v27 = 0;
    v32 = 0;
    v16 = 0;
    v14 = 0;
LABEL_19:
    v24 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  v14 = attestationBlob;
  pubKeyBlob = [certificatesCopy pubKeyBlob];
  if (!pubKeyBlob)
  {
    v35 = handleForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight requestBAACertificates:apticket:proxySettings:withError:];
    }

    v29 = 0;
    v27 = 0;
    v32 = 0;
    v16 = 0;
    goto LABEL_19;
  }

  v16 = pubKeyBlob;
  selfCopy = self;
  if (apticketCopy)
  {
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [apticketCopy base64EncodedStringWithOptions:0];
      *buf = 138477827;
      v57 = v18;
      _os_log_impl(&dword_1CEDC5000, v17, OS_LOG_TYPE_DEFAULT, "repairticket: %{private}@", buf, 0xCu);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v12);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v12);
  objc_msgSend_setObject_forKeyedSubscript_(v12);
  objc_msgSend_setObject_forKeyedSubscript_(v12);
  v19 = *MEMORY[0x1E6999EE0];
  v55[0] = *MEMORY[0x1E6999F08];
  v55[1] = v19;
  v20 = *MEMORY[0x1E6999EF8];
  v55[2] = *MEMORY[0x1E6999EF0];
  v55[3] = v20;
  v55[4] = *MEMORY[0x1E6999EE8];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
  objc_msgSend_setObject_forKeyedSubscript_(v12);

  v54[1] = 0;
  v22 = DeviceIdentityCreateClientCertificateRequest();
  v23 = 0;
  v24 = v23;
  if (!v22 || v23)
  {
    v36 = handleForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [(CRPreflight *)v24 requestBAACertificates:v36 apticket:v37 proxySettings:v38 withError:v39, v40, v41, v42];
    }

    v29 = 0;
    v27 = 0;
    v32 = 0;
    goto LABEL_20;
  }

  errorCopy = error;
  v25 = MGGetBoolAnswer();
  v26 = @"corerepaird-SB";
  if (v25)
  {
    v26 = @"corerepaird-CB";
  }

  v27 = v26;
  v28 = selfCopy;
  v29 = [(CRPreflight *)selfCopy _getVersionInfo:v22];
  if (v29)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v29, v27];
    [v22 setValue:v30 forHTTPHeaderField:@"User-Agent"];
  }

  else
  {
    [v22 setValue:v27 forHTTPHeaderField:@"User-Agent"];
  }

  if (os_variant_has_internal_content())
  {
    v43 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v44 = [(CRUserDefaults *)v43 stringForKey:@"HumbugURL"];
    if (v44)
    {
      v45 = handleForCategory(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v44;
        _os_log_impl(&dword_1CEDC5000, v45, OS_LOG_TYPE_DEFAULT, "Overriding serverUrlString: %@", buf, 0xCu);
      }

      v46 = [MEMORY[0x1E695DFF8] URLWithString:v44];
      [v22 setURL:v46];
    }

    if ([(CRUserDefaults *)v43 BOOLForKey:@"DumpAttestationPayload"])
    {
      hTTPBody = [v22 HTTPBody];
      [hTTPBody writeToFile:@"/tmp/baa_request" atomically:1];
    }

    v28 = selfCopy;
  }

  v54[0] = 0;
  v32 = [(CRPreflight *)v28 _sendBAARequest:v22 proxySettings:settingsCopy withError:v54];
  v48 = v54[0];
  v24 = v48;
  if (v32 && !v48)
  {
    v32 = v32;
    v33 = v32;
    goto LABEL_21;
  }

  if (!errorCopy)
  {
LABEL_20:
    v33 = 0;
    goto LABEL_21;
  }

  v49 = v48;
  v33 = 0;
  *errorCopy = v24;
LABEL_21:

  return v33;
}

- (id)_sendBAARequest:(id)request proxySettings:(id)settings withError:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  settingsCopy = settings;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v9 = objc_opt_new();
  if (requestCopy)
  {
    if (settingsCopy)
    {
      v10 = [settingsCopy objectForKeyedSubscript:@"socksHost"];
      v11 = v10 == 0;

      if (!v11)
      {
        v12 = [settingsCopy objectForKeyedSubscript:@"socksHost"];
        objc_msgSend_setObject_forKeyedSubscript_(v9);
      }

      v13 = [settingsCopy objectForKeyedSubscript:@"socksPort"];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [settingsCopy objectForKeyedSubscript:@"socksPort"];
        objc_msgSend_setObject_forKeyedSubscript_(v9);
      }
    }

    v16 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CoreRepairCoreNetworkXPCService"];
    v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BD86E8];
    [v16 setRemoteObjectInterface:v17];

    [v16 resume];
    v18 = dispatch_semaphore_create(0);
    v19 = objc_autoreleasePoolPush();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke;
    v37[3] = &unk_1E83B3E78;
    v39 = &v44;
    v20 = v18;
    v38 = v20;
    v21 = [v16 remoteObjectProxyWithErrorHandler:v37];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke_2;
    v31[3] = &unk_1E83B3EA0;
    v34 = &v50;
    v35 = &v44;
    v36 = &v40;
    v22 = v20;
    v32 = v22;
    v23 = v16;
    v33 = v23;
    [v21 sendBAARequest:requestCopy options:v9 withReply:v31];

    objc_autoreleasePoolPop(v19);
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v24 = v45[5];
      if (v24 || *(v41 + 6) != 200)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request BAA failed with status: %d error: %@", *(v41 + 6), v24];
        v26 = v25;
        v27 = MEMORY[0x1E696ABC0];
        if (*(v41 + 6) == 429)
        {
          v58 = *MEMORY[0x1E696A578];
          v59[0] = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
          [v27 errorWithDomain:@"com.apple.corerepair" code:-94 userInfo:v28];
        }

        else
        {
          v56 = *MEMORY[0x1E696A578];
          v57 = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [v27 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v28];
        }
        *error = ;
      }
    }

    v29 = v51[5];
  }

  else
  {
    v23 = handleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CRPreflight _sendBAARequest:proxySettings:withError:];
    }

    v29 = 0;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return v29;
}

intptr_t __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Network XPC call failed";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.corerepair" code:-76 userInfo:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __55__CRPreflight__sendBAARequest_proxySettings_withError___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(*(a1 + 64) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidate];
}

- (id)_getVersionInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  allHTTPHeaderFields = [info allHTTPHeaderFields];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = allHTTPHeaderFields;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "Original Headers: %@", buf, 0xCu);
  }

  v5 = [allHTTPHeaderFields objectForKeyedSubscript:@"User-Agent"];
  if (v5)
  {
    v22 = 0;
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^.*\\(MobileActivation-.*?\\)" options:0 error:&v22];
    v7 = v22;
    v8 = v7;
    if (!v6 || v7)
    {
      v10 = handleForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CRPreflight *)v8 _getVersionInfo:v10, v14, v15, v16, v17, v18, v19];
      }
    }

    else
    {
      v9 = [v6 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v10 = v9;
      if (v9)
      {
        range = [v9 range];
        v13 = [v5 substringWithRange:{range, v12}];
LABEL_17:

        goto LABEL_18;
      }

      v20 = handleForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CRPreflight _getVersionInfo:];
      }
    }

    v13 = 0;
    goto LABEL_17;
  }

  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CRPreflight _getVersionInfo:];
  }

  v13 = 0;
LABEL_18:

  return v13;
}

@end