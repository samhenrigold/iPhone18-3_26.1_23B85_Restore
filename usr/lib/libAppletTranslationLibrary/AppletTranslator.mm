@interface AppletTranslator
+ (BOOL)appletCacheUpdated:(id)updated serialNumber:(id)number isdSequenceCounter:(id)counter transceiver:(id)transceiver error:(id *)error;
+ (BOOL)configureSEWithPassInformation:(id)information transceiver:(id)transceiver limitedToAID:(id)d seHasActivatedApplets:(BOOL *)applets skipAllActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error;
+ (BOOL)configureSEWithPassInformation:(id)information transceiver:(id)transceiver limitedToPassUniqueIdentifiers:(id)identifiers seHasActivatedApplets:(BOOL *)applets skipAllActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error;
+ (BOOL)getCurrentInMetroStatus:(id *)status;
+ (BOOL)isLegacyApplet:(id)applet withPackage:(id)package withModule:(id)module;
+ (BOOL)setPlasticCardMode:(BOOL)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module serialNumber:(id)number transceiver:(id)transceiver error:(id *)error;
+ (_DWORD)dumpState;
+ (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getATLDelegate;
+ (id)getAppletStateAndHistory:(id)history withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)processEndOfTransaction:(id)transaction withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)userDefaults;
+ (uint64_t)isInternalBuild;
+ (void)cleanup;
+ (void)deregisterForCleanup:(uint64_t)cleanup;
+ (void)initLibrary:(id)library;
+ (void)initLibraryWithDelegate:(id)delegate;
+ (void)registerForCleanup:(uint64_t)cleanup;
@end

@implementation AppletTranslator

+ (void)initLibrary:(id)library
{
  +[AppletConfigurationData init];
  if (initLibrary__onceToken != -1)
  {
    +[AppletTranslator initLibrary:];
  }
}

+ (_DWORD)dumpState
{
  v21[21] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3 = +[AppletTranslator userDefaults];
  v21[0] = @"debug.logging";
  v21[1] = @"debug.slalom";
  v21[2] = @"debug.dreamworks";
  v21[3] = @"debug.wulu";
  v21[4] = @"debug.calypso";
  v21[5] = @"debug.hcievent.logging";
  v21[6] = @"debug.skip.configure.express";
  v21[7] = @"debug.enable.customer.behavior";
  v21[8] = @"debug.express.skip.compat.check";
  v21[9] = @"debug.setG.forApplets";
  v21[10] = @"debug.express.logging";
  v21[11] = @"debug.express.forceslowmode";
  v21[12] = @"debug.maMetadataQueryTimeInterval";
  v21[13] = @"config";
  v21[14] = @"nextMetadataCheck";
  v21[15] = @"catalogDownloadStartedOn";
  v21[16] = @"assetDownloadStartedOn";
  v21[17] = @"debug.currentCompatibilityVersion";
  v21[18] = @"deviceClasses";
  v21[19] = @"_CompatibilityVersion";
  v21[20] = @"_ContentVersion";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:21];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v3 objectForKey:{v11, v16}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:0];
  v14 = malloc_type_calloc(1uLL, [v13 length] + 200, 0x1000040BEF03554uLL);
  *v14 = 1;
  v14[1] = [v13 length];
  __strlcpy_chk();
  memcpy(v14 + 50, [v13 bytes], objc_msgSend(v13, "length"));

  return v14;
}

+ (void)initLibraryWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&delegate, delegate);
  +[AppletConfigurationData init];
  if (initLibraryWithDelegate__onceToken != -1)
  {
    +[AppletTranslator initLibraryWithDelegate:];
  }
}

+ (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__onceToken != -1)
  {
    +[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:];
  }

  if (parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint == 1)
  {
    bytes = [eventCopy bytes];
    v19 = [eventCopy length];
    LogBinary(OS_LOG_TYPE_DEFAULT, "+[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:]", 85, bytes, v19, @"AID: %@ HCI:", v20, v21, appletCopy);
  }

  v22 = [ATLGetDecoder getDecoderForApplet:appletCopy withPackage:packageCopy withModule:moduleCopy];
  if (v22)
  {
    if (transceiverCopy)
    {
      v23 = [TransceiverWrapper withTransceiver:transceiverCopy];
    }

    else
    {
      v23 = 0;
    }

    v34 = [v22 parseHCIEvent:eventCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:v23 withError:error];

    if (!error)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = ATLLogObject(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = appletCopy;
      v54 = 2112;
      v55 = packageCopy;
      v56 = 2112;
      v57 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    v47 = appletCopy;
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@"];
    v26 = v25;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v48[0] = *MEMORY[0x277CCA450];
        v48[1] = v29;
        v49[0] = v25;
        v49[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v49;
        v32 = v48;
        v33 = 2;
      }

      else
      {
        v50 = *MEMORY[0x277CCA450];
        v51 = v25;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v51;
        v32 = &v50;
        v33 = 1;
      }

      v35 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      *error = [v28 errorWithDomain:@"ATL" code:2 userInfo:v35];
    }

    v34 = 0;
    if (!error)
    {
      goto LABEL_21;
    }
  }

  if (*error)
  {
    bytes2 = [eventCopy bytes];
    v37 = [eventCopy length];
    LogBinary(OS_LOG_TYPE_ERROR, "+[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:]", 108, bytes2, v37, @"Failed to parse HCI event:", v38, v39, v47);
    goto LABEL_30;
  }

LABEL_21:
  if (!v34)
  {
    goto LABEL_30;
  }

  v40 = [v34 objectForKeyedSubscript:@"EventType"];
  if ([v40 isEqualToString:@"StartEvent"])
  {
  }

  else
  {
    v42 = [v34 objectForKeyedSubscript:@"EventType"];
    v43 = [v42 isEqualToString:@"EndEvent"];

    if (!v43)
    {
      v44 = ATLLogObject(v41);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v34 objectForKeyedSubscript:@"EventType"];
        *buf = 138543362;
        v53 = v45;
        _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "ATL generated event = %{public}@", buf, 0xCu);
      }

      goto LABEL_29;
    }
  }

  v44 = ATLLogObject(v41);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v34;
    _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "ATL generated event = %{public}@", buf, 0xCu);
  }

LABEL_29:

LABEL_30:

  return v34;
}

void __94__AppletTranslator_parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((+[AppletTranslator isInternalBuild]& 1) != 0)
  {
    v3 = +[AppletTranslator userDefaults];
    parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint = [v3 BOOLForKey:@"debug.hcievent.logging"];
  }

  else
  {
    parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint = 0;
  }
}

+ (uint64_t)isInternalBuild
{
  objc_opt_self();
  if (isInternalBuild_onceToken != -1)
  {
    +[AppletTranslator isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

+ (id)userDefaults
{
  objc_opt_self();
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.stockholm.atl"];

  return v2;
}

+ (id)getAppletStateAndHistory:(id)history withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:historyCopy withPackage:packageCopy withModule:moduleCopy];
  if (v15)
  {
    [TransceiverWrapper withTransceiver:transceiverCopy];
    v44 = v49 = 0;
    v16 = [v15 getAppletStateAndHistory:? withApplet:? withPackage:? withModule:? withError:?];
    v17 = 0;
    v18 = v17;
    if (v17 || !v16)
    {
      v37 = ATLLogObject(v17);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v56 = historyCopy;
        v57 = 2112;
        v58 = packageCopy;
        v59 = 2112;
        v60 = moduleCopy;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to query AID %@ PID %@ MID %@", buf, 0x20u);
      }

      v29 = v44;
      [v44 dumpAPDUs:&__block_literal_global_892];
      if (error)
      {
        v38 = v18;
        v39 = 0;
        *error = v18;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v19 = [v16 objectForKeyedSubscript:@"ATLInternal"];

      if (v19)
      {
        v20 = [v16 mutableCopy];
        [v20 removeObjectForKey:@"ATLInternal"];

        v16 = v20;
      }

      v21 = [v16 objectForKeyedSubscript:@"State"];
      v22 = [v21 objectForKeyedSubscript:@"TransactionInProgress"];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v24)
      {
        v42 = v15;
        v43 = transceiverCopy;
        v25 = *v46;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v23);
            }

            if ([*(*(&v45 + 1) + 8 * i) hasPrefix:@"TransitMetro"])
            {
              v24 = 1;
              goto LABEL_25;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v15 = v42;
        transceiverCopy = v43;
      }

      v40 = +[_TtC24AppletTranslationLibrary17MetroStateMonitor shared];
      [v40 consumeStateWithAid:historyCopy newState:v24];

      v16 = v16;
      v39 = v16;
      v29 = v44;
    }
  }

  else
  {
    v27 = ATLLogObject(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v56 = historyCopy;
      v57 = 2112;
      v58 = packageCopy;
      v59 = 2112;
      v60 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", historyCopy, packageCopy, moduleCopy];
    v29 = moduleCopy;
    if (!error)
    {
      v39 = 0;
      goto LABEL_33;
    }

    v30 = *error;
    v31 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v51[0] = *MEMORY[0x277CCA450];
      v51[1] = v32;
      v52[0] = moduleCopy;
      v52[1] = v30;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v52;
      v35 = v51;
      v36 = 2;
    }

    else
    {
      v53 = *MEMORY[0x277CCA450];
      v54 = moduleCopy;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v54;
      v35 = &v53;
      v36 = 1;
    }

    v18 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    [v31 errorWithDomain:@"ATL" code:2 userInfo:v18];
    *error = v39 = 0;
  }

LABEL_33:

  return v39;
}

+ (BOOL)appletCacheUpdated:(id)updated serialNumber:(id)number isdSequenceCounter:(id)counter transceiver:(id)transceiver error:(id *)error
{
  v125 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  numberCopy = number;
  counterCopy = counter;
  transceiverCopy = transceiver;
  v95 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(updatedCopy, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v11 = updatedCopy;
  v12 = [v11 countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v111;
    v15 = 0x277CBE000uLL;
    v16 = &unk_2843C7670;
    v89 = v11;
    v99 = *v111;
    do
    {
      v17 = 0;
      do
      {
        if (*v111 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v110 + 1) + 8 * v17);
        v19 = v16;
        v101 = [*(v15 + 2872) dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v20 = [&unk_2843C7688 countByEnumeratingWithState:&v106 objects:v123 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v107;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v107 != v22)
              {
                objc_enumerationMutation(&unk_2843C7688);
              }

              v24 = *(*(&v106 + 1) + 8 * i);
              v25 = [v18 objectForKeyedSubscript:v24];

              if (!v25)
              {
                v46 = ATLLogObject(v26);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v120 = v18;
                  v121 = 2112;
                  v122 = v24;
                  _os_log_impl(&dword_22EEF5000, v46, OS_LOG_TYPE_ERROR, "Applet %@ missing prop %@", buf, 0x16u);
                }

                v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Applet %@ missing prop %@", v18, v24];
                v31 = counterCopy;
                if (error)
                {
                  v48 = *error;
                  v49 = MEMORY[0x277CCA9B8];
                  v40 = numberCopy;
                  v37 = v89;
                  if (*error)
                  {
                    v50 = *MEMORY[0x277CCA7E8];
                    v115[0] = *MEMORY[0x277CCA450];
                    v115[1] = v50;
                    v51 = v47;
                    v116[0] = v47;
                    v116[1] = v48;
                    v52 = MEMORY[0x277CBEAC0];
                    v53 = v116;
                    v54 = v115;
                    v55 = 2;
                  }

                  else
                  {
                    v117 = *MEMORY[0x277CCA450];
                    v118 = v47;
                    v51 = v47;
                    v52 = MEMORY[0x277CBEAC0];
                    v53 = &v118;
                    v54 = &v117;
                    v55 = 1;
                  }

                  v84 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:v55];
                  *error = [v49 errorWithDomain:@"ATL" code:6 userInfo:v84];

                  v45 = 0;
                  v28 = v89;
                  v47 = v51;
                }

                else
                {
                  v45 = 0;
                  v37 = v89;
                  v28 = v89;
                  v40 = numberCopy;
                }

                goto LABEL_62;
              }

              v27 = [v18 objectForKeyedSubscript:v24];
              [v101 setObject:v27 forKeyedSubscript:v24];
            }

            v21 = [&unk_2843C7688 countByEnumeratingWithState:&v106 objects:v123 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        [v95 addObject:v101];

        ++v17;
        v11 = v89;
        v14 = v99;
        v15 = 0x277CBE000;
        v16 = v19;
      }

      while (v17 != v13);
      v13 = [v89 countByEnumeratingWithState:&v110 objects:v124 count:16];
    }

    while (v13);
  }

  v28 = v95;
  v30 = +[HashHelper hashHelper];
  v31 = counterCopy;
  v32 = [(HashHelper *)v30 addData:counterCopy];
  v33 = +[AppletConfigurationData dataHash];
  v34 = [(HashHelper *)v32 addData:v33];
  v35 = [(HashHelper *)v34 addArray:v28];
  getHash = [(HashHelper *)v35 getHash];

  v37 = getHash;
  v39 = +[AppletTranslator userDefaults];
  v40 = numberCopy;
  asHexString = [numberCopy asHexString];
  v101 = v39;
  v42 = [v39 objectForKey:asHexString];

  v87 = v42;
  v43 = [getHash isEqual:v42];
  if (v43)
  {
    v44 = ATLLogObject(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "No changes to either configuration or SE, bailing out", buf, 2u);
    }

    v45 = 1;
  }

  else
  {
    v90 = getHash;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v28 = v28;
    v56 = [v28 countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = @"lifecycleState";
      v59 = &unk_2843C7118;
      v60 = *v103;
      v88 = v28;
      v94 = *v103;
      while (2)
      {
        v61 = 0;
        v93 = v57;
        do
        {
          if (*v103 != v60)
          {
            objc_enumerationMutation(v28);
          }

          v62 = *(*(&v102 + 1) + 8 * v61);
          v63 = [v62 objectForKeyedSubscript:v58];
          v64 = [v63 isEqual:v59];

          if (v64)
          {
            v66 = [v62 objectForKeyedSubscript:@"identifier"];
            v67 = [v62 objectForKeyedSubscript:@"moduleIdentifier"];
            v68 = [v62 objectForKeyedSubscript:@"packageIdentifier"];
            v100 = [TransceiverWrapper withTransceiver:transceiverCopy];
            v69 = [ATLGetDecoder getDecoderForApplet:v66 withPackage:v68 withModule:v67];
            v70 = v69;
            if (v69 && [v69 conformsToProtocol:&unk_2843CC850] && (v71 = objc_msgSend(v70, "supportsPlasticCardMode:withApplet:withPackage:withModule:", v100, v66, v68, v67), (v71 & 1) == 0))
            {
              v81 = ATLLogObject(v71);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v120 = v66;
                _os_log_impl(&dword_22EEF5000, v81, OS_LOG_TYPE_DEFAULT, "Plastic card mode not supported for %@", buf, 0xCu);
              }
            }

            else
            {
              v72 = [AppletConfigurationData scriptForModule:v67];
              if (v72)
              {
                v96 = v68;
                v73 = v59;
                v74 = v58;
                v75 = [MEMORY[0x277CBEA90] dataWithHexString:v66];
                v76 = SelectByNameCmd(v75);
                v77 = [v100 transceiveAndCheckSW:v76 error:error];

                if (!v77 || (v78 = [v100 applyScript:v72 error:error], !v78) || error && *error)
                {
                  v85 = ATLLogObject(v78);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v120 = v66;
                    _os_log_impl(&dword_22EEF5000, v85, OS_LOG_TYPE_ERROR, "Failed executing script on AID %@", buf, 0xCu);
                  }

                  [v100 dumpAPDUs:&__block_literal_global_935];
                  v28 = v88;

                  v45 = 0;
                  v31 = counterCopy;
                  v40 = numberCopy;
                  v37 = v90;
                  goto LABEL_61;
                }

                v79 = ATLLogObject(v78);
                v58 = v74;
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v120 = v66;
                  _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_DEFAULT, "Successfully executed script on AID %@", buf, 0xCu);
                }

                v28 = v88;
                v59 = v73;
                v68 = v96;
              }

              else
              {
                v79 = ATLLogObject(0);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v120 = v67;
                  _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_DEFAULT, "No script for MID %@", buf, 0xCu);
                }
              }

              v57 = v93;
            }

            v60 = v94;
          }

          else
          {
            v66 = ATLLogObject(v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v80 = [v62 objectForKeyedSubscript:v58];
              *buf = 138412290;
              v120 = v80;
              _os_log_impl(&dword_22EEF5000, v66, OS_LOG_TYPE_DEFAULT, "Ignore LC %@", buf, 0xCu);
            }
          }

          ++v61;
        }

        while (v57 != v61);
        v82 = [v28 countByEnumeratingWithState:&v102 objects:v114 count:16];
        v57 = v82;
        if (v82)
        {
          continue;
        }

        break;
      }
    }

    v40 = numberCopy;
    asHexString2 = [numberCopy asHexString];
    v37 = v90;
    [v101 setObject:v90 forKey:asHexString2];

    [v101 synchronize];
    v45 = 1;
    v31 = counterCopy;
  }

LABEL_61:
  v47 = v87;
LABEL_62:

  return v45;
}

+ (BOOL)setPlasticCardMode:(BOOL)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module serialNumber:(id)number transceiver:(id)transceiver error:(id *)error
{
  modeCopy = mode;
  v81[1] = *MEMORY[0x277D85DE8];
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  numberCopy = number;
  transceiverCopy = transceiver;
  if (modeCopy)
  {
    [AppletConfigurationData plasticCardScriptForModule:moduleCopy];
  }

  else
  {
    [AppletConfigurationData scriptForModule:moduleCopy];
  }
  v19 = ;
  v21 = v19;
  if (v19)
  {
    v68 = v19;
    v22 = +[AppletTranslator userDefaults];
    v67 = numberCopy;
    asHexString = [numberCopy asHexString];
    [v22 removeObjectForKey:asHexString];

    [v22 synchronize];
    v69 = transceiverCopy;
    v24 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v25 = [ATLGetDecoder getDecoderForApplet:appletCopy withPackage:packageCopy withModule:moduleCopy];
    v26 = v25;
    if (v25 && [v25 conformsToProtocol:&unk_2843CC850] && (v27 = objc_msgSend(v26, "supportsPlasticCardMode:withApplet:withPackage:withModule:", v24, appletCopy, packageCopy, moduleCopy), (v27 & 1) == 0))
    {
      v55 = ATLLogObject(v27);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = appletCopy;
        _os_log_impl(&dword_22EEF5000, v55, OS_LOG_TYPE_ERROR, "Plastic card mode not supported for %@", buf, 0xCu);
      }

      appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plastic card mode not supported for %@", appletCopy];
      v36 = appletCopy;
      v21 = v68;
      if (!error)
      {
        v41 = 0;
        goto LABEL_32;
      }

      v57 = *error;
      v58 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v59 = *MEMORY[0x277CCA7E8];
        v74[0] = *MEMORY[0x277CCA450];
        v74[1] = v59;
        v75[0] = appletCopy;
        v75[1] = v57;
        v60 = MEMORY[0x277CBEAC0];
        v61 = v75;
        v62 = v74;
        v63 = 2;
      }

      else
      {
        v76 = *MEMORY[0x277CCA450];
        v77 = appletCopy;
        v60 = MEMORY[0x277CBEAC0];
        v61 = &v77;
        v62 = &v76;
        v63 = 1;
      }

      v65 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:v63];
      *error = [v58 errorWithDomain:@"ATL" code:2 userInfo:v65];
    }

    else
    {
      v28 = appletCopy;
      v29 = packageCopy;
      v66 = v28;
      v30 = [MEMORY[0x277CBEA90] dataWithHexString:?];
      v31 = SelectByNameCmd(v30);
      v32 = [v24 transceiveAndCheckSW:v31 error:error];

      if (v32)
      {
        v33 = [v24 applyScript:v68 error:error];
        v34 = @"disabling";
        if (modeCopy)
        {
          v34 = @"enabling";
        }

        v35 = v34;
        v36 = v35;
        if (v33 && (!error || !*error))
        {
          v37 = ATLLogObject(v35);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v71 = v36;
            v72 = 2112;
            v73 = v66;
            _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_DEFAULT, "Success %@ plastic card mode on AID %@", buf, 0x16u);
          }

          v38 = [MEMORY[0x277CBEA90] dataWithHexString:@"A00000015143525300"];
          v39 = SelectByNameCmd(v38);
          v40 = [v24 transceiveAndCheckSW:v39 error:0];
          v41 = v40 != 0;

          v43 = ATLLogObject(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v71) = v40 != 0;
            _os_log_impl(&dword_22EEF5000, v43, OS_LOG_TYPE_INFO, "Selected CRS: %d", buf, 8u);
          }

          packageCopy = v29;
          appletCopy = v66;
          goto LABEL_31;
        }
      }

      else
      {
        v53 = @"disabling";
        if (modeCopy)
        {
          v53 = @"enabling";
        }

        v35 = v53;
        v36 = v35;
      }

      packageCopy = v29;
      v54 = ATLLogObject(v35);
      appletCopy = v66;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v71 = v36;
        v72 = 2112;
        v73 = v66;
        _os_log_impl(&dword_22EEF5000, v54, OS_LOG_TYPE_ERROR, "Failed %@ plastic card mode on AID %@", buf, 0x16u);
      }

      [v24 dumpAPDUs:&__block_literal_global_949];
    }

    v41 = 0;
LABEL_31:
    v21 = v68;
LABEL_32:

    numberCopy = v67;
LABEL_41:

    transceiverCopy = v69;
    goto LABEL_42;
  }

  v44 = ATLLogObject(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v71 = moduleCopy;
    _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_ERROR, "No plastic card configuration for %@", buf, 0xCu);
  }

  moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No plastic card configuration for %@", moduleCopy];
  v22 = moduleCopy;
  if (error)
  {
    v69 = transceiverCopy;
    v46 = *error;
    v47 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v48 = *MEMORY[0x277CCA7E8];
      v78[0] = *MEMORY[0x277CCA450];
      v78[1] = v48;
      v79[0] = moduleCopy;
      v79[1] = v46;
      v49 = MEMORY[0x277CBEAC0];
      v50 = v79;
      v51 = v78;
      v52 = 2;
    }

    else
    {
      v80 = *MEMORY[0x277CCA450];
      v81[0] = moduleCopy;
      v49 = MEMORY[0x277CBEAC0];
      v50 = v81;
      v51 = &v80;
      v52 = 1;
    }

    v24 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:v52];
    [v47 errorWithDomain:@"ATL" code:2 userInfo:v24];
    *error = v41 = 0;
    goto LABEL_41;
  }

  v41 = 0;
LABEL_42:

  return v41;
}

+ (BOOL)configureSEWithPassInformation:(id)information transceiver:(id)transceiver limitedToAID:(id)d seHasActivatedApplets:(BOOL *)applets skipAllActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  behaviorCopy = behavior;
  activationsCopy = activations;
  informationCopy = information;
  transceiverCopy = transceiver;
  dCopy = d;
  if (+[AppletTranslator isInternalBuild])
  {
    v19 = +[AppletTranslator userDefaults];
    v20 = [v19 BOOLForKey:@"debug.skip.configure.express"];
    if (v20)
    {
      v21 = ATLLogObject(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "!!! Skipping configuration and returning success due to debug pref !!!", buf, 2u);
      }

      LOBYTE(v22) = 1;
      goto LABEL_18;
    }
  }

  v21 = [TransceiverWrapper withTransceiver:transceiverCopy];
  v30 = 0;
  v22 = [_TtC24AppletTranslationLibrary11ExpressMode applyConfiguration:informationCopy toSecureElement:v21 inSessionWithAID:dCopy hasActivatedApplets:applets performActivations:!activationsCopy useLegacyBehavior:behaviorCopy error:&v30];
  v19 = v30;
  v23 = ATLLogObject(v19);
  v24 = v23;
  if (v22 && v19 == 0)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_INFO, "Express config successfully set", v28, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Failed to set express mode configuration!", v29, 2u);
    }

    [v21 dumpAPDUs:&__block_literal_global_955];
    if (error)
    {
      v26 = v19;
      *error = v19;
    }
  }

LABEL_18:

  return v22;
}

+ (BOOL)configureSEWithPassInformation:(id)information transceiver:(id)transceiver limitedToPassUniqueIdentifiers:(id)identifiers seHasActivatedApplets:(BOOL *)applets skipAllActivations:(BOOL)activations useLegacyBehavior:(BOOL)behavior error:(id *)error
{
  behaviorCopy = behavior;
  activationsCopy = activations;
  informationCopy = information;
  transceiverCopy = transceiver;
  identifiersCopy = identifiers;
  if (+[AppletTranslator isInternalBuild])
  {
    v19 = +[AppletTranslator userDefaults];
    v20 = [v19 BOOLForKey:@"debug.skip.configure.express"];
    if (v20)
    {
      v21 = ATLLogObject(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v21, OS_LOG_TYPE_ERROR, "!!! Skipping configuration and returning success due to debug pref !!!", buf, 2u);
      }

      LOBYTE(v22) = 1;
      goto LABEL_18;
    }
  }

  v21 = [TransceiverWrapper withTransceiver:transceiverCopy];
  v30 = 0;
  v22 = [_TtC24AppletTranslationLibrary11ExpressMode applyAssertionConfiguration:informationCopy toSecureElement:v21 inSessionWithPassUniqueIDs:identifiersCopy hasActivatedApplets:applets performActivations:!activationsCopy useLegacyBehavior:behaviorCopy error:&v30];
  v19 = v30;
  v23 = ATLLogObject(v19);
  v24 = v23;
  if (v22 && v19 == 0)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_INFO, "Express config successfully set", v28, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Failed to set express mode configuration!", v29, 2u);
    }

    [v21 dumpAPDUs:&__block_literal_global_960];
    if (error)
    {
      v26 = v19;
      *error = v19;
    }
  }

LABEL_18:

  return v22;
}

+ (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:propertiesCopy withPackage:packageCopy withModule:moduleCopy];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 GetAppletProperties:propertiesCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  }

  else
  {
    v20 = @"Supported";
    v21[0] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  v18 = v17;

  return v18;
}

+ (id)processEndOfTransaction:(id)transaction withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:transactionCopy withPackage:packageCopy withModule:moduleCopy];
  if (v15)
  {
    v16 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v17 = [v15 processEndOfTransaction:v16 withApplet:transactionCopy withPackage:packageCopy withModule:moduleCopy withError:error];

    if (v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = ATLLogObject(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v37 = transactionCopy;
      v38 = 2112;
      v39 = packageCopy;
      v40 = 2112;
      v41 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", transactionCopy, packageCopy, moduleCopy];
    v21 = moduleCopy;
    if (error)
    {
      v22 = *error;
      v23 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v32[0] = *MEMORY[0x277CCA450];
        v32[1] = v24;
        v33[0] = moduleCopy;
        v33[1] = v22;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v33;
        v27 = v32;
        v28 = 2;
      }

      else
      {
        v34 = *MEMORY[0x277CCA450];
        v35 = moduleCopy;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v35;
        v27 = &v34;
        v28 = 1;
      }

      v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v23 errorWithDomain:@"ATL" code:2 userInfo:v29];
    }
  }

  v30 = ATLLogObject(v18);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = transactionCopy;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Failed to process End of Transaction: %@", buf, 0xCu);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

+ (BOOL)isLegacyApplet:(id)applet withPackage:(id)package withModule:(id)module
{
  packageCopy = package;
  if ([packageCopy hasPrefix:@"A00000068001"])
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [packageCopy substringFromIndex:{objc_msgSend(packageCopy, "length") - 4}];
    v8 = [v6 dataWithHexString:v7];

    v9 = ReadU16BE([v8 bytes]) < 0x621;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)cleanup
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allObjects = [statefulDecoders allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v7 + 1) + 8 * v6++) cleanup];
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v20 = [ATLGetDecoder getDecoderForApplet:dataCopy withPackage:packageCopy withModule:moduleCopy];
  v21 = v20;
  if (v20 && (v20 = [v20 conformsToProtocol:&unk_2843CADF8], v20))
  {
    v22 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v23 = [v21 getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:v22 withError:error];
  }

  else
  {
    v24 = ATLLogObject(v20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = dataCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Service Provider Opaque Data is not supported for %@", buf, 0xCu);
    }

    dataCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider Opaque Data is not supported for %@", dataCopy];
    v26 = dataCopy;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v29 = *MEMORY[0x277CCA7E8];
        v36[0] = *MEMORY[0x277CCA450];
        v36[1] = v29;
        v37[0] = dataCopy;
        v37[1] = v27;
        v30 = MEMORY[0x277CBEAC0];
        v31 = v37;
        v32 = v36;
        v33 = 2;
      }

      else
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = dataCopy;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v39;
        v32 = &v38;
        v33 = 1;
      }

      v34 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      *error = [v28 errorWithDomain:@"ATL" code:2 userInfo:v34];
    }

    v23 = 0;
  }

  return v23;
}

+ (BOOL)getCurrentInMetroStatus:(id *)status
{
  v3 = +[_TtC24AppletTranslationLibrary17MetroStateMonitor shared];
  inMetro = [v3 inMetro];

  return inMetro;
}

+ (id)getATLDelegate
{
  objc_opt_self();
  v2 = delegate;

  return v2;
}

void __44__AppletTranslator_Private__isInternalBuild__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  isInternalBuild_isInternal = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    v2 = +[AppletTranslator userDefaults];
    isInternalBuild_isInternal = [v2 BOOLForKey:@"debug.enable.customer.behavior"] ^ 1;
  }

  v3 = ATLLogObject(has_internal_diagnostics);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = isInternalBuild_isInternal;
    _os_log_impl(&dword_22EEF5000, v3, OS_LOG_TYPE_INFO, "Allowing internal diagnostics? %d", v4, 8u);
  }
}

+ (void)registerForCleanup:(uint64_t)cleanup
{
  v5 = a2;
  objc_opt_self();
  v2 = statefulDecoders;
  if (!statefulDecoders)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = statefulDecoders;
    statefulDecoders = v3;

    v2 = statefulDecoders;
  }

  [v2 addObject:v5];
}

+ (void)deregisterForCleanup:(uint64_t)cleanup
{
  v2 = a2;
  objc_opt_self();
  if ([statefulDecoders containsObject:v2])
  {
    [statefulDecoders removeObject:v2];
  }
}

@end