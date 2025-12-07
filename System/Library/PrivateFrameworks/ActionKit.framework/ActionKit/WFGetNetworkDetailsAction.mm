@interface WFGetNetworkDetailsAction
- (id)outputContentClasses;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetNetworkDetailsAction

- (id)outputContentClasses
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFNetworkDetailsNetwork"];
  value = [v3 value];
  if ([value isEqualToString:@"Wi-Fi"])
  {
    v5 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFWiFiDetail"];
    value2 = [v5 value];
    if (([value2 isEqualToString:@"TX Rate"] & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"RX Rate") & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"RSSI") & 1) != 0 || (objc_msgSend(value2, "isEqualToString:", @"Noise") & 1) != 0 || objc_msgSend(value2, "isEqualToString:", @"Channel Number"))
    {
      v26[0] = objc_opt_class();
      v7 = v26;
    }

    else
    {
      v25 = objc_opt_class();
      v7 = &v25;
    }

    outputContentClasses2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

    goto LABEL_23;
  }

  if ([value isEqualToString:@"Cellular"])
  {
    v5 = [(WFGetNetworkDetailsAction *)self parameterStateForKey:@"WFCellularDetail"];
    value3 = [v5 value];
    if ([value3 isEqualToString:@"Is Roaming Abroad"])
    {
      v24 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v24;
    }

    else if ([value3 isEqualToString:@"Number of Signal Bars"])
    {
      v23 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v23;
    }

    else
    {
      if (([value3 isEqualToString:@"Carrier Name"] & 1) == 0 && (objc_msgSend(value3, "isEqualToString:", @"Country Code") & 1) == 0 && !objc_msgSend(value3, "isEqualToString:", @"Radio Technology"))
      {
        v15 = getWFActionsLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v19 = "[WFGetNetworkDetailsAction outputContentClasses]";
          v20 = 2112;
          v21 = value3;
          _os_log_impl(&dword_23DE30000, v15, OS_LOG_TYPE_FAULT, "%s Unexpected cellularSubject: %@", buf, 0x16u);
        }

        v17.receiver = self;
        v17.super_class = WFGetNetworkDetailsAction;
        outputContentClasses = [(WFGetNetworkDetailsAction *)&v17 outputContentClasses];
        goto LABEL_22;
      }

      v22 = objc_opt_class();
      v10 = MEMORY[0x277CBEA60];
      v11 = &v22;
    }

    outputContentClasses = [v10 arrayWithObjects:v11 count:1];
LABEL_22:
    outputContentClasses2 = outputContentClasses;

LABEL_23:
    goto LABEL_24;
  }

  v12 = getWFActionsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v19 = "[WFGetNetworkDetailsAction outputContentClasses]";
    v20 = 2112;
    v21 = value;
    _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_FAULT, "%s Unexpected subject: %@", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = WFGetNetworkDetailsAction;
  outputContentClasses2 = [(WFGetNetworkDetailsAction *)&v16 outputContentClasses];
LABEL_24:

  return outputContentClasses2;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v189 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  selfCopy = self;
  v118 = [(WFGetNetworkDetailsAction *)self parameterValueForKey:@"WFNetworkDetailsNetwork" ofClass:objc_opt_class()];
  if (![v118 isEqualToString:@"Wi-Fi"])
  {
    if (![v118 isEqualToString:@"Cellular"])
    {
      goto LABEL_87;
    }

    v163 = 0;
    v164 = &v163;
    v165 = 0x2050000000;
    v5 = getCTTelephonyNetworkInfoClass_softClass;
    v166 = getCTTelephonyNetworkInfoClass_softClass;
    if (!getCTTelephonyNetworkInfoClass_softClass)
    {
      v176 = MEMORY[0x277D85DD0];
      v177 = 3221225472;
      v178 = __getCTTelephonyNetworkInfoClass_block_invoke;
      v179 = &unk_278C222B8;
      v180 = &v163;
      __getCTTelephonyNetworkInfoClass_block_invoke(&v176);
      v5 = v164[3];
    }

    v6 = v5;
    _Block_object_dispose(&v163, 8);
    v120 = objc_alloc_init(v5);
    v163 = 0;
    v164 = &v163;
    v165 = 0x2050000000;
    v7 = getCoreTelephonyClientClass_softClass;
    v166 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      v176 = MEMORY[0x277D85DD0];
      v177 = 3221225472;
      v178 = __getCoreTelephonyClientClass_block_invoke;
      v179 = &unk_278C222B8;
      v180 = &v163;
      __getCoreTelephonyClientClass_block_invoke(&v176);
      v7 = v164[3];
    }

    v8 = v7;
    _Block_object_dispose(&v163, 8);
    v9 = [v7 alloc];
    v135 = [v9 initWithQueue:MEMORY[0x277D85CD0]];
    v149 = 0;
    v10 = [v135 getActiveContexts:&v149];
    v11 = v149;
    subscriptions = [v10 subscriptions];
    v13 = [subscriptions if_map:&__block_literal_global_5806];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    obj = v13;
    v134 = [obj countByEnumeratingWithState:&v145 objects:v162 count:16];
    if (!v134)
    {
LABEL_86:

      [(WFGetNetworkDetailsAction *)selfCopy finishRunningWithError:v11];
      goto LABEL_87;
    }

    v133 = *v146;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v146 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v145 + 1) + 8 * v14);
      v144 = v11;
      v16 = [v135 getLocalizedOperatorName:v15 error:&v144];
      v17 = v144;

      v18 = [(WFGetNetworkDetailsAction *)selfCopy parameterValueForKey:@"WFCellularDetail" ofClass:objc_opt_class()];
      v137 = [objc_alloc(MEMORY[0x277CFC290]) initWithDisplayedCarrierName:v16];
      if ([v18 isEqualToString:@"Carrier Name"])
      {
        uppercaseString = v16;
        if (!uppercaseString)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (![v18 isEqualToString:@"Radio Technology"])
      {
        break;
      }

      v20 = [getCTServiceDescriptorClass() descriptorWithSubscriptionContext:v15];
      identifier = [v20 identifier];

      serviceCurrentRadioAccessTechnology = [v120 serviceCurrentRadioAccessTechnology];
      v131 = [serviceCurrentRadioAccessTechnology objectForKeyedSubscript:identifier];

      if (v131)
      {
        v129 = v131;
        v163 = 0;
        v164 = &v163;
        v165 = 0x2020000000;
        v22 = getCTRadioAccessTechnologyGPRSSymbolLoc_ptr;
        v166 = getCTRadioAccessTechnologyGPRSSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyGPRSSymbolLoc_ptr)
        {
          v176 = MEMORY[0x277D85DD0];
          v177 = 3221225472;
          v178 = __getCTRadioAccessTechnologyGPRSSymbolLoc_block_invoke;
          v179 = &unk_278C222B8;
          v180 = &v163;
          v23 = CoreTelephonyLibrary();
          v24 = dlsym(v23, "CTRadioAccessTechnologyGPRS");
          *(v180->info + 24) = v24;
          getCTRadioAccessTechnologyGPRSSymbolLoc_ptr = *(v180->info + 24);
          v22 = v164[3];
        }

        _Block_object_dispose(&v163, 8);
        if (!v22)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v92 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyGPRS(void)"];
          [currentHandler handleFailureInFunction:v92 file:@"WFGetNetworkDetailsAction.m" lineNumber:29 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v25 = *v22;
        v163 = v25;
        v176 = @"GPRS";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v26 = getCTRadioAccessTechnologyEdgeSymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyEdgeSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyEdgeSymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyEdgeSymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v27 = CoreTelephonyLibrary();
          v28 = dlsym(v27, "CTRadioAccessTechnologyEdge");
          *(v156[1] + 24) = v28;
          getCTRadioAccessTechnologyEdgeSymbolLoc_ptr = *(v156[1] + 24);
          v26 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v26)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyEdge(void)"];
          [currentHandler2 handleFailureInFunction:v94 file:@"WFGetNetworkDetailsAction.m" lineNumber:30 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v29 = *v26;
        v164 = v29;
        v177 = @"Edge";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v30 = getCTRadioAccessTechnologyWCDMASymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyWCDMASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyWCDMASymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyWCDMASymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v31 = CoreTelephonyLibrary();
          v32 = dlsym(v31, "CTRadioAccessTechnologyWCDMA");
          *(v156[1] + 24) = v32;
          getCTRadioAccessTechnologyWCDMASymbolLoc_ptr = *(v156[1] + 24);
          v30 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v30)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyWCDMA(void)"];
          [currentHandler3 handleFailureInFunction:v96 file:@"WFGetNetworkDetailsAction.m" lineNumber:31 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v128 = *v30;
        v165 = v128;
        v178 = @"WCDMA";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v33 = getCTRadioAccessTechnologyHSDPASymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyHSDPASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyHSDPASymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyHSDPASymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v34 = CoreTelephonyLibrary();
          v35 = dlsym(v34, "CTRadioAccessTechnologyHSDPA");
          *(v156[1] + 24) = v35;
          getCTRadioAccessTechnologyHSDPASymbolLoc_ptr = *(v156[1] + 24);
          v33 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v33)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyHSDPA(void)"];
          [currentHandler4 handleFailureInFunction:v98 file:@"WFGetNetworkDetailsAction.m" lineNumber:32 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v127 = *v33;
        v166 = v127;
        v179 = @"HSDPA";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v36 = getCTRadioAccessTechnologyHSUPASymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyHSUPASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyHSUPASymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyHSUPASymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v37 = CoreTelephonyLibrary();
          v38 = dlsym(v37, "CTRadioAccessTechnologyHSUPA");
          *(v156[1] + 24) = v38;
          getCTRadioAccessTechnologyHSUPASymbolLoc_ptr = *(v156[1] + 24);
          v36 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v36)
        {
          currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
          v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyHSUPA(void)"];
          [currentHandler5 handleFailureInFunction:v100 file:@"WFGetNetworkDetailsAction.m" lineNumber:33 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v126 = *v36;
        v167 = v126;
        v180 = @"HSUPA";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v39 = getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyCDMA1xSymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v40 = CoreTelephonyLibrary();
          v41 = dlsym(v40, "CTRadioAccessTechnologyCDMA1x");
          *(v156[1] + 24) = v41;
          getCTRadioAccessTechnologyCDMA1xSymbolLoc_ptr = *(v156[1] + 24);
          v39 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v39)
        {
          currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
          v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMA1x(void)"];
          [currentHandler6 handleFailureInFunction:v102 file:@"WFGetNetworkDetailsAction.m" lineNumber:34 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v125 = *v39;
        v168 = v125;
        v181 = @"CDMA 1x";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v42 = getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v43 = CoreTelephonyLibrary();
          v44 = dlsym(v43, "CTRadioAccessTechnologyCDMAEVDORev0");
          *(v156[1] + 24) = v44;
          getCTRadioAccessTechnologyCDMAEVDORev0SymbolLoc_ptr = *(v156[1] + 24);
          v42 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v42)
        {
          currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
          v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORev0(void)"];
          [currentHandler7 handleFailureInFunction:v104 file:@"WFGetNetworkDetailsAction.m" lineNumber:35 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v124 = *v42;
        v169 = v124;
        v182 = @"CDMA EV-DO Rev 0";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v45 = getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v46 = CoreTelephonyLibrary();
          v47 = dlsym(v46, "CTRadioAccessTechnologyCDMAEVDORevA");
          *(v156[1] + 24) = v47;
          getCTRadioAccessTechnologyCDMAEVDORevASymbolLoc_ptr = *(v156[1] + 24);
          v45 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v45)
        {
          currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
          v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORevA(void)"];
          [currentHandler8 handleFailureInFunction:v106 file:@"WFGetNetworkDetailsAction.m" lineNumber:36 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v123 = *v45;
        v170 = v123;
        v183 = @"CDMA EV-DO Rev A";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v48 = getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v49 = CoreTelephonyLibrary();
          v50 = dlsym(v49, "CTRadioAccessTechnologyCDMAEVDORevB");
          *(v156[1] + 24) = v50;
          getCTRadioAccessTechnologyCDMAEVDORevBSymbolLoc_ptr = *(v156[1] + 24);
          v48 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v48)
        {
          currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
          v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyCDMAEVDORevB(void)"];
          [currentHandler9 handleFailureInFunction:v108 file:@"WFGetNetworkDetailsAction.m" lineNumber:37 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v122 = *v48;
        v171 = v122;
        v184 = @"CDMA EV-DO Rev B";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v51 = getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyeHRPDSymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v52 = CoreTelephonyLibrary();
          v53 = dlsym(v52, "CTRadioAccessTechnologyeHRPD");
          *(v156[1] + 24) = v53;
          getCTRadioAccessTechnologyeHRPDSymbolLoc_ptr = *(v156[1] + 24);
          v51 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v51)
        {
          currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
          v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyeHRPD(void)"];
          [currentHandler10 handleFailureInFunction:v110 file:@"WFGetNetworkDetailsAction.m" lineNumber:38 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v54 = *v51;
        v172 = v54;
        v185 = @"HRPD";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v55 = getCTRadioAccessTechnologyLTESymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyLTESymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyLTESymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyLTESymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v56 = CoreTelephonyLibrary();
          v57 = dlsym(v56, "CTRadioAccessTechnologyLTE");
          *(v156[1] + 24) = v57;
          getCTRadioAccessTechnologyLTESymbolLoc_ptr = *(v156[1] + 24);
          v55 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v55)
        {
          currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
          v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyLTE(void)"];
          [currentHandler11 handleFailureInFunction:v112 file:@"WFGetNetworkDetailsAction.m" lineNumber:39 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v58 = *v55;
        v173 = v58;
        v186 = @"LTE";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v59 = getCTRadioAccessTechnologyNRNSASymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyNRNSASymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyNRNSASymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyNRNSASymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v60 = CoreTelephonyLibrary();
          v61 = dlsym(v60, "CTRadioAccessTechnologyNRNSA");
          *(v156[1] + 24) = v61;
          getCTRadioAccessTechnologyNRNSASymbolLoc_ptr = *(v156[1] + 24);
          v59 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v59)
        {
          currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
          v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyNRNSA(void)"];
          [currentHandler12 handleFailureInFunction:v114 file:@"WFGetNetworkDetailsAction.m" lineNumber:40 description:{@"%s", dlerror(), inputCopy}];

          goto LABEL_101;
        }

        v121 = v25;
        v62 = *v59;
        v174 = v62;
        v187 = @"5G NR NSA";
        v157 = 0;
        v158 = &v157;
        v159 = 0x2020000000;
        v63 = getCTRadioAccessTechnologyNRSymbolLoc_ptr;
        v160 = getCTRadioAccessTechnologyNRSymbolLoc_ptr;
        if (!getCTRadioAccessTechnologyNRSymbolLoc_ptr)
        {
          v152 = MEMORY[0x277D85DD0];
          v153 = 3221225472;
          v154 = __getCTRadioAccessTechnologyNRSymbolLoc_block_invoke;
          v155 = &unk_278C222B8;
          v156 = &v157;
          v64 = CoreTelephonyLibrary();
          v65 = dlsym(v64, "CTRadioAccessTechnologyNR");
          *(v156[1] + 24) = v65;
          getCTRadioAccessTechnologyNRSymbolLoc_ptr = *(v156[1] + 24);
          v63 = v158[3];
        }

        _Block_object_dispose(&v157, 8);
        if (!v63)
        {
          currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
          v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCTRadioAccessTechnologyNR(void)"];
          [currentHandler13 handleFailureInFunction:v116 file:@"WFGetNetworkDetailsAction.m" lineNumber:41 description:{@"%s", dlerror(), inputCopy}];

LABEL_101:
          __break(1u);
        }

        v175 = *v63;
        v188 = @"5G NR";
        v66 = MEMORY[0x277CBEAC0];
        v67 = v175;
        v68 = [v66 dictionaryWithObjects:&v176 forKeys:&v163 count:13];

        uppercaseString = [v68 objectForKeyedSubscript:v129];
        if (!uppercaseString)
        {
          uppercaseString = [v129 stringByReplacingOccurrencesOfString:@"CTRadioAccessTechnology" withString:&stru_2850323E8];
        }
      }

      else
      {
        uppercaseString = 0;
      }

LABEL_68:
      if (uppercaseString)
      {
        goto LABEL_69;
      }

LABEL_70:
      v11 = v17;

      if (v134 == ++v14)
      {
        v90 = [obj countByEnumeratingWithState:&v145 objects:v162 count:16];
        v134 = v90;
        if (!v90)
        {
          goto LABEL_86;
        }

        goto LABEL_10;
      }
    }

    if ([v18 isEqualToString:@"Country Code"])
    {
      v143 = v17;
      v69 = [v135 copyMobileCountryCode:v15 error:&v143];
      v70 = v143;

      if (v69)
      {
        v142 = v70;
        v71 = [v135 copyMobileSubscriberIsoCountryCode:v69 error:&v142];
        v72 = v142;

        uppercaseString = [v71 uppercaseString];

        v70 = v72;
      }

      else
      {
        uppercaseString = 0;
      }

LABEL_80:
      v17 = v70;
      if (!uppercaseString)
      {
        goto LABEL_70;
      }

LABEL_69:
      v78 = MEMORY[0x277CFC300];
      networkLocation = [MEMORY[0x277CFC318] networkLocation];
      v161 = v137;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
      v81 = [v78 configurationWithOrigin:networkLocation disclosureLevel:1 disclosureWarnings:v80];

      v82 = [MEMORY[0x277CFC2F8] itemWithObject:uppercaseString privacyConfiguration:v81];
      output = [(WFGetNetworkDetailsAction *)selfCopy output];
      [output addItem:v82];

      goto LABEL_70;
    }

    if ([v18 isEqualToString:@"Is Roaming Abroad"])
    {
      v141 = v17;
      v73 = [v135 copyServingPlmn:v15 error:&v141];
      v70 = v141;

      if ([v73 BOOLValue])
      {
        v140 = v70;
        v74 = [v135 copyIsInHomeCountry:v15 error:&v140];
        v75 = v140;

        bOOLValue = [v74 BOOLValue];
        v77 = bOOLValue ^ 1u;
        v70 = v75;
      }

      else
      {
        v77 = 0;
      }

      uppercaseString = [MEMORY[0x277CCABB0] numberWithBool:v77];
      goto LABEL_80;
    }

    if (![v18 isEqualToString:@"Number of Signal Bars"])
    {
      goto LABEL_70;
    }

    v84 = [getCTServiceDescriptorClass() descriptorWithSubscriptionContext:v15];
    v139 = v17;
    v85 = [v135 getPublicSignalStrength:v84 error:&v139];
    v86 = v139;

    if (v85)
    {
      v138 = v86;
      v87 = [v135 copyServingPlmn:v15 error:&v138];
      v17 = v138;

      bOOLValue2 = [v87 BOOLValue];
      if (bOOLValue2)
      {
        displayBars = [v85 displayBars];
LABEL_84:
        uppercaseString = displayBars;

        goto LABEL_68;
      }
    }

    else
    {
      v17 = v86;
    }

    displayBars = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    goto LABEL_84;
  }

  v4 = [(WFGetNetworkDetailsAction *)self parameterValueForKey:@"WFWiFiDetail" ofClass:objc_opt_class()];
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __56__WFGetNetworkDetailsAction_runAsynchronouslyWithInput___block_invoke;
  v150[3] = &unk_278C19AA8;
  v150[4] = self;
  v151 = v4;
  v119 = v4;
  [WFWiFiSettingsClient createClientWithCompletionHandler:v150];

LABEL_87:
}

void __56__WFGetNetworkDetailsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([*(a1 + 40) isEqualToString:@"Network Name"])
    {
      v8 = [v7 networkName];
      v9 = objc_alloc(MEMORY[0x277CFC500]);
      v10 = [v7 networkName];
      v11 = [v9 initWithDisplayedNetworkName:v10];

      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if ([*(a1 + 40) isEqualToString:@"BSSID"])
    {
      v8 = [v7 BSSID];
      v12 = objc_opt_new();
      goto LABEL_8;
    }

    if ([*(a1 + 40) isEqualToString:@"TX Rate"])
    {
      v13 = [v7 txRate];
    }

    else if ([*(a1 + 40) isEqualToString:@"RX Rate"])
    {
      v13 = [v7 rxRate];
    }

    else if ([*(a1 + 40) isEqualToString:@"RSSI"])
    {
      v13 = [v7 RSSI];
    }

    else if ([*(a1 + 40) isEqualToString:@"Noise"])
    {
      v13 = [v7 noise];
    }

    else
    {
      if ([*(a1 + 40) isEqualToString:@"Hardware MAC Address"])
      {
        v8 = [v7 hardwareMACAddress];
        v21 = [v7 hardwareMACAddress];
        v22 = [v21 length];

        if (v22)
        {
          v12 = [objc_alloc(MEMORY[0x277CFC438]) initWithDisplayedMACAddress:v8];
LABEL_8:
          v11 = v12;
          if (!v8)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }

LABEL_19:
        v11 = 0;
        if (!v8)
        {
LABEL_23:
          [*(a1 + 32) finishRunningWithError:0];

          goto LABEL_24;
        }

LABEL_20:
        v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
        v15 = v14;
        if (v11)
        {
          [v14 addObject:v11];
        }

        v16 = MEMORY[0x277CFC300];
        v17 = [MEMORY[0x277CFC318] networkLocation];
        v18 = [v16 configurationWithOrigin:v17 disclosureLevel:1 disclosureWarnings:v15];

        v19 = [MEMORY[0x277CFC2F8] itemWithObject:v8 privacyConfiguration:v18];
        v20 = [*(a1 + 32) output];
        [v20 addItem:v19];

        goto LABEL_23;
      }

      if ([*(a1 + 40) isEqualToString:@"Channel Number"])
      {
        v13 = [v7 channel];
      }

      else
      {
        if (![*(a1 + 40) isEqualToString:@"Wi-Fi Standard"])
        {
          v23 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v24 = *(a1 + 40);
            v25 = 136315394;
            v26 = "[WFGetNetworkDetailsAction runAsynchronouslyWithInput:]_block_invoke";
            v27 = 2112;
            v28 = v24;
            _os_log_impl(&dword_23DE30000, v23, OS_LOG_TYPE_FAULT, "%s Unexpected WFWiFiDetailKey %@ in WFGetNetworkDetailsAction", &v25, 0x16u);
          }

          v8 = 0;
          v11 = 0;
          goto LABEL_23;
        }

        v13 = [v7 wifiStandard];
      }
    }

    v8 = v13;
    goto LABEL_19;
  }

  [*(a1 + 32) finishRunningWithError:a3];
LABEL_24:
}

@end