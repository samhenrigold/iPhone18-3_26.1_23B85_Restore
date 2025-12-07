@interface PLProcessPortMap
+ (id)sharedInstance;
- (PLProcessPortMap)init;
- (id)dictFromNetPortInfo:(net_port_info *)info;
- (id)getLookupKeys:(id)keys;
- (id)pidAndProcessNameForDestAddress:(id)address withDestPort:(id)port withSourceAddress:(id)sourceAddress withSourcePort:(id)sourcePort withProtocol:(id)protocol;
- (void)clearPortMap;
- (void)clearPortMapInternal;
- (void)dealloc;
- (void)reconstructPortMap;
- (void)reconstructPortMapInternal;
@end

@implementation PLProcessPortMap

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLProcessPortMap_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_portMap;

  return v2;
}

uint64_t __34__PLProcessPortMap_sharedInstance__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v1 = objc_opt_new();
  sharedInstance_portMap = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (PLProcessPortMap)init
{
  v11.receiver = self;
  v11.super_class = PLProcessPortMap;
  v2 = [(PLProcessPortMap *)&v11 init];
  v3 = v2;
  if (v2)
  {
    strictLookupMap = v2->_strictLookupMap;
    v2->_strictLookupMap = 0;

    lenientLookupMap = v3->_lenientLookupMap;
    v3->_lenientLookupMap = 0;

    localPortOnlyLookupMap = v3->_localPortOnlyLookupMap;
    v3->_localPortOnlyLookupMap = 0;

    ipAddrLookupMap = v3->_ipAddrLookupMap;
    v3->_ipAddrLookupMap = 0;

    v8 = [PLUtilities workQueueForClass:objc_opt_class()];
    workQueue = v3->_workQueue;
    v3->_workQueue = v8;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLProcessPortMap;
  [(PLProcessPortMap *)&v2 dealloc];
}

- (void)reconstructPortMap
{
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PLProcessPortMap_reconstructPortMap__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

- (void)clearPortMap
{
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PLProcessPortMap_clearPortMap__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

- (id)pidAndProcessNameForDestAddress:(id)address withDestPort:(id)port withSourceAddress:(id)sourceAddress withSourcePort:(id)sourcePort withProtocol:(id)protocol
{
  addressCopy = address;
  portCopy = port;
  sourceAddressCopy = sourceAddress;
  sourcePortCopy = sourcePort;
  protocolCopy = protocol;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke;
  block[3] = &unk_279A5BE08;
  block[4] = self;
  v26 = protocolCopy;
  v27 = addressCopy;
  v28 = sourceAddressCopy;
  v30 = sourcePortCopy;
  v31 = &v32;
  v29 = portCopy;
  v18 = sourcePortCopy;
  v19 = portCopy;
  v20 = sourceAddressCopy;
  v21 = addressCopy;
  v22 = protocolCopy;
  dispatch_async_and_wait(workQueue, block);

  v23 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) strictLookupMap];

  if (!v2)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2;
      v145[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v145[4] = v3;
      if (protocolKey_block_invoke_defaultOnce != -1)
      {
        dispatch_once(&protocolKey_block_invoke_defaultOnce, v145);
      }

      if (protocolKey_block_invoke_classDebugEnabled == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"reconstructing the port map"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:92];

        v10 = PLLogCommon(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    [*(a1 + 32) reconstructPortMapInternal];
  }

  v11 = [*(a1 + 40) isEqualToString:@"ESP"];
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  if (v11)
  {
    v14 = [v12 keyForIPAddrLookup:v13 withSourceAddress:*(a1 + 56)];
    v15 = [*(a1 + 32) ipAddrLookupMap];
    v16 = [v15 objectForKeyedSubscript:v14];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80;
      v144[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v144[4] = v19;
      if (protocolKey_block_invoke_defaultOnce_78 != -1)
      {
        dispatch_once(&protocolKey_block_invoke_defaultOnce_78, v144);
      }

      if (protocolKey_block_invoke_classDebugEnabled_79 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ESP protocol key %@ and pid and process %@", v14, *(*(*(a1 + 80) + 8) + 40)];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:100];

        v26 = PLLogCommon(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_90:

        goto LABEL_91;
      }
    }

    goto LABEL_91;
  }

  v14 = [v12 keyFromAddress:v13 withPort:*(a1 + 64) withSourceAddress:*(a1 + 56) withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87;
    v143[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v143[4] = v27;
    if (protocolKey_block_invoke_defaultOnce_85 != -1)
    {
      dispatch_once(&protocolKey_block_invoke_defaultOnce_85, v143);
    }

    if (protocolKey_block_invoke_classDebugEnabled_86 == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"looking up %@", v14];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:104];

      v34 = PLLogCommon(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v35 = objc_opt_class();
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93;
    v142[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v142[4] = v35;
    if (protocolKey_block_invoke_defaultOnce_91 != -1)
    {
      dispatch_once(&protocolKey_block_invoke_defaultOnce_91, v142);
    }

    if (protocolKey_block_invoke_classDebugEnabled_92 == 1)
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = [*(a1 + 32) strictLookupMap];
      v38 = [v36 stringWithFormat:@"strictLookupMap=%@", v37];

      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v41 = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:105];

      v44 = PLLogCommon(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v45 = [*(a1 + 32) strictLookupMap];
  v46 = [v45 objectForKeyedSubscript:v14];
  v47 = *(*(a1 + 80) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v46;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    if ([*(a1 + 32) isAddressIPV4:*(a1 + 48)])
    {
      v57 = @"0.0.0.0";
    }

    else
    {
      v57 = @"::";
    }

    v50 = [*(a1 + 32) keyFromAddress:v57 withPort:*(a1 + 64) withSourceAddress:v57 withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v58 = objc_opt_class();
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99;
      v141[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v141[4] = v58;
      if (protocolKey_block_invoke_defaultOnce_97 != -1)
      {
        dispatch_once(&protocolKey_block_invoke_defaultOnce_97, v141);
      }

      if (protocolKey_block_invoke_classDebugEnabled_98 == 1)
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"The search key is %@", v50];
        v60 = MEMORY[0x277D3F178];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v62 = [v61 lastPathComponent];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v60 logMessage:v59 fromFile:v62 fromFunction:v63 fromLineNumber:119];

        v65 = PLLogCommon(v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v66 = [*(a1 + 32) strictLookupMap];
    v67 = [v66 objectForKeyedSubscript:v50];
    v68 = *(*(a1 + 80) + 8);
    v69 = *(v68 + 40);
    *(v68 + 40) = v67;

    if (!v67)
    {
      v70 = [*(a1 + 32) keyFromAddress:@"*" withPort:*(a1 + 64) withSourceAddress:@"*" withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];

      v71 = [*(a1 + 32) strictLookupMap];
      v72 = [v71 objectForKeyedSubscript:v70];
      v73 = *(*(a1 + 80) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v50 = v70;
    }

    v75 = *(*(*(a1 + 80) + 8) + 40);
    v76 = [MEMORY[0x277D3F180] debugEnabled];
    if (v75)
    {
      if (!v76)
      {
        goto LABEL_82;
      }

      v77 = objc_opt_class();
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123;
      v137[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v137[4] = v77;
      if (protocolKey_block_invoke_defaultOnce_121 != -1)
      {
        dispatch_once(&protocolKey_block_invoke_defaultOnce_121, v137);
      }

      if (protocolKey_block_invoke_classDebugEnabled_122 != 1)
      {
        goto LABEL_82;
      }

      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wild card match succeeded!"];
      v78 = MEMORY[0x277D3F178];
      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v80 = [v79 lastPathComponent];
      v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v78 logMessage:v56 fromFile:v80 fromFunction:v81 fromLineNumber:143];

      v83 = PLLogCommon(v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      if (v76)
      {
        v84 = objc_opt_class();
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105;
        v140[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v140[4] = v84;
        if (protocolKey_block_invoke_defaultOnce_103 != -1)
        {
          dispatch_once(&protocolKey_block_invoke_defaultOnce_103, v140);
        }

        if (protocolKey_block_invoke_classDebugEnabled_104 == 1)
        {
          v85 = MEMORY[0x277CCACA8];
          v86 = [*(a1 + 32) lenientLookupMap];
          v87 = [v85 stringWithFormat:@"Lenient Map = %@", v86];

          v88 = MEMORY[0x277D3F178];
          v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
          v90 = [v89 lastPathComponent];
          v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
          [v88 logMessage:v87 fromFile:v90 fromFunction:v91 fromLineNumber:128];

          v93 = PLLogCommon(v92);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v56 = [*(a1 + 32) keyForlenientLookup:*(a1 + 48) withPort:*(a1 + 64) withProtocol:*(a1 + 40)];
      v94 = [*(a1 + 32) lenientLookupMap];
      v95 = [v94 objectForKeyedSubscript:v56];
      v96 = *(*(a1 + 80) + 8);
      v97 = *(v96 + 40);
      *(v96 + 40) = v95;

      v98 = *(*(*(a1 + 80) + 8) + 40);
      v99 = [MEMORY[0x277D3F180] debugEnabled];
      if (v98)
      {
        if (!v99)
        {
          goto LABEL_81;
        }

        v100 = objc_opt_class();
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117;
        v138[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v138[4] = v100;
        if (protocolKey_block_invoke_defaultOnce_115 != -1)
        {
          dispatch_once(&protocolKey_block_invoke_defaultOnce_115, v138);
        }

        if (protocolKey_block_invoke_classDebugEnabled_116 != 1)
        {
          goto LABEL_81;
        }

        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"3 tuple match succeeded!"];
        v101 = MEMORY[0x277D3F178];
        v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v103 = [v102 lastPathComponent];
        v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v101 logMessage:v83 fromFile:v103 fromFunction:v104 fromLineNumber:140];

        v106 = PLLogCommon(v105);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }

      else
      {
        if (v99)
        {
          v107 = objc_opt_class();
          v139[0] = MEMORY[0x277D85DD0];
          v139[1] = 3221225472;
          v139[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111;
          v139[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v139[4] = v107;
          if (protocolKey_block_invoke_defaultOnce_109 != -1)
          {
            dispatch_once(&protocolKey_block_invoke_defaultOnce_109, v139);
          }

          if (protocolKey_block_invoke_classDebugEnabled_110 == 1)
          {
            v108 = MEMORY[0x277CCACA8];
            v109 = [*(a1 + 32) localPortOnlyLookupMap];
            v110 = [v108 stringWithFormat:@"Local Port Only Map =%@", v109];

            v111 = MEMORY[0x277D3F178];
            v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
            v113 = [v112 lastPathComponent];
            v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
            [v111 logMessage:v110 fromFile:v113 fromFunction:v114 fromLineNumber:135];

            v116 = PLLogCommon(v115);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        v83 = [*(a1 + 32) keyForlocalPortLookup:*(a1 + 64) withProtocol:*(a1 + 40)];
        v106 = [*(a1 + 32) localPortOnlyLookupMap];
        v117 = [v106 objectForKeyedSubscript:v83];
        v118 = *(*(a1 + 80) + 8);
        v119 = *(v118 + 40);
        *(v118 + 40) = v117;
      }
    }

LABEL_81:
LABEL_82:

    goto LABEL_83;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v49 = objc_opt_class();
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129;
    v136[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v136[4] = v49;
    if (protocolKey_block_invoke_defaultOnce_127 != -1)
    {
      dispatch_once(&protocolKey_block_invoke_defaultOnce_127, v136);
    }

    if (protocolKey_block_invoke_classDebugEnabled_128 == 1)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"5 tuple match succeeded!"];
      v51 = MEMORY[0x277D3F178];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v53 = [v52 lastPathComponent];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:146];

      v56 = PLLogCommon(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_81;
    }
  }

LABEL_83:
  if (!*(*(*(a1 + 80) + 8) + 40) && [MEMORY[0x277D3F180] debugEnabled])
  {
    v120 = objc_opt_class();
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135;
    v135[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v135[4] = v120;
    if (protocolKey_block_invoke_defaultOnce_133 != -1)
    {
      dispatch_once(&protocolKey_block_invoke_defaultOnce_133, v135);
    }

    if (protocolKey_block_invoke_classDebugEnabled_134 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"lookup failed at all stages. Protocol %@ Dest Port %@", *(a1 + 40), *(a1 + 64)];
      v121 = MEMORY[0x277D3F178];
      v122 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v123 = [v122 lastPathComponent];
      v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v121 logMessage:v20 fromFile:v123 fromFunction:v124 fromLineNumber:150];

      v26 = PLLogCommon(v125);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_90;
    }
  }

LABEL_91:

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v126 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v126;
    if (protocolKey_block_invoke_defaultOnce_139 != -1)
    {
      dispatch_once(&protocolKey_block_invoke_defaultOnce_139, block);
    }

    if (protocolKey_block_invoke_classDebugEnabled_140 == 1)
    {
      v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", *(*(*(a1 + 80) + 8) + 40)];
      v128 = MEMORY[0x277D3F178];
      v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v130 = [v129 lastPathComponent];
      v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v128 logMessage:v127 fromFile:v130 fromFunction:v131 fromLineNumber:153];

      v133 = PLLogCommon(v132);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_79 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_86 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_92 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_98 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_104 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_110 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_116 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_122 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_128 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_134 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  protocolKey_block_invoke_classDebugEnabled_140 = result;
  return result;
}

- (id)dictFromNetPortInfo:(net_port_info *)info
{
  v19 = *MEMORY[0x277D85DE8];
  var1 = info->var1;
  if (var1)
  {
    inet_ntop(2, &info->var6, v18, 0x2Eu);
    p_var7 = &info->var7;
    v6 = 2;
  }

  else
  {
    if ((var1 & 2) == 0)
    {
      v18[0] = 0;
      v17[0] = 0;
      goto LABEL_7;
    }

    inet_ntop(30, &info->var6, v18, 0x2Eu);
    p_var7 = &info->var7;
    v6 = 30;
  }

  inet_ntop(v6, p_var7, v17, 0x2Eu);
LABEL_7:
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(info->var4) >> 16];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:bswap32(info->var5) >> 16];
  if ((info->var1 & 4) != 0)
  {
    v11 = @"TCP";
  }

  else
  {
    v11 = @"UDP";
  }

  v12 = v11;
  v13 = objc_opt_new();
  [v13 setObject:v7 forKeyedSubscript:@"destIP"];
  [v13 setObject:v8 forKeyedSubscript:@"sourceIP"];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue")}];
  [v13 setObject:v14 forKeyedSubscript:@"destPort"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue")}];
  [v13 setObject:v15 forKeyedSubscript:@"sourcePort"];

  [v13 setObject:v12 forKeyedSubscript:@"protocol"];

  return v13;
}

- (id)getLookupKeys:(id)keys
{
  keysCopy = keys;
  v5 = objc_opt_new();
  v6 = [keysCopy objectForKeyedSubscript:@"destIP"];
  v7 = [keysCopy objectForKeyedSubscript:@"sourceIP"];
  v8 = [keysCopy objectForKeyedSubscript:@"destPort"];
  v9 = [keysCopy objectForKeyedSubscript:@"sourcePort"];
  v10 = [keysCopy objectForKeyedSubscript:@"protocol"];

  v11 = [(PLProcessPortMap *)self keyFromAddress:v6 withPort:v8 withSourceAddress:v7 withSourcePort:v9 withProtocol:v10];
  v12 = [(PLProcessPortMap *)self keyForlenientLookup:v6 withPort:v8 withProtocol:v10];
  v13 = [(PLProcessPortMap *)self keyForlocalPortLookup:v8 withProtocol:v10];
  v14 = [(PLProcessPortMap *)self keyForIPAddrLookup:v6 withSourceAddress:v7];
  [v5 setObject:v11 forKeyedSubscript:@"strictLookupKey"];
  [v5 setObject:v12 forKeyedSubscript:@"lenientLookupKey"];
  [v5 setObject:v13 forKeyedSubscript:@"localPortLookupKey"];
  [v5 setObject:v14 forKeyedSubscript:@"ipAddrLookupKey"];

  return v5;
}

- (void)clearPortMapInternal
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __40__PLProcessPortMap_clearPortMapInternal__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (clearPortMapInternal_defaultOnce != -1)
    {
      dispatch_once(&clearPortMapInternal_defaultOnce, &block);
    }

    if (clearPortMapInternal_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clearing Pid:ProcPID map, old one: %@", self->_strictLookupMap, block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap clearPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:253];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  strictLookupMap = self->_strictLookupMap;
  self->_strictLookupMap = 0;

  lenientLookupMap = self->_lenientLookupMap;
  self->_lenientLookupMap = 0;

  localPortOnlyLookupMap = self->_localPortOnlyLookupMap;
  self->_localPortOnlyLookupMap = 0;

  ipAddrLookupMap = self->_ipAddrLookupMap;
  self->_ipAddrLookupMap = 0;
}

void *__40__PLProcessPortMap_clearPortMapInternal__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  clearPortMapInternal_classDebugEnabled = result;
  return result;
}

- (void)reconstructPortMapInternal
{
  v81 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (reconstructPortMapInternal_defaultOnce != -1)
    {
      dispatch_once(&reconstructPortMapInternal_defaultOnce, block);
    }

    if (reconstructPortMapInternal_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting rebuilding of Port Map"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:262];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v77 = 0;
  v78 = 0;
  if (sysctlbyname("net.link.generic.system.port_used.list", 0, &v77, 0, 0))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180;
      v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v76[4] = v11;
      if (reconstructPortMapInternal_defaultOnce_178 != -1)
      {
        dispatch_once(&reconstructPortMapInternal_defaultOnce_178, v76);
      }

      if (reconstructPortMapInternal_classDebugEnabled_179 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read buffer size, errno: %d", *__error()];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
        [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:269];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_15:

        return;
      }
    }

    return;
  }

  v19 = malloc_type_malloc(v77, 0x947438E6uLL);
  if (!v19)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v29;
      if (reconstructPortMapInternal_defaultOnce_184 != -1)
      {
        dispatch_once(&reconstructPortMapInternal_defaultOnce_184, v75);
      }

      if (reconstructPortMapInternal_classDebugEnabled_185 == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate buffer"];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        lastPathComponent3 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
        [v30 logMessage:v12 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:275];

        v18 = PLLogCommon(v34);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_15;
      }
    }

    return;
  }

  v20 = v19;
  v78 = v77;
  if (sysctlbyname("net.link.generic.system.port_used.list", v19, &v78, 0, 0))
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_54;
    }

    v21 = objc_opt_class();
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192;
    v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v74[4] = v21;
    if (reconstructPortMapInternal_defaultOnce_190 != -1)
    {
      dispatch_once(&reconstructPortMapInternal_defaultOnce_190, v74);
    }

    if (reconstructPortMapInternal_classDebugEnabled_191 != 1)
    {
      goto LABEL_54;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to populate buffer, errno: %d", *__error()];
    v23 = MEMORY[0x277D3F178];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
    lastPathComponent4 = [v24 lastPathComponent];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
    [v23 logMessage:v22 fromFile:lastPathComponent4 fromFunction:v26 fromLineNumber:281];

    v28 = PLLogCommon(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

LABEL_24:

LABEL_54:
    free(v20);
    return;
  }

  v35 = objc_opt_new();
  strictLookupMap = self->_strictLookupMap;
  self->_strictLookupMap = v35;

  v37 = objc_opt_new();
  lenientLookupMap = self->_lenientLookupMap;
  self->_lenientLookupMap = v37;

  v39 = objc_opt_new();
  localPortOnlyLookupMap = self->_localPortOnlyLookupMap;
  self->_localPortOnlyLookupMap = v39;

  v41 = objc_opt_new();
  ipAddrLookupMap = self->_ipAddrLookupMap;
  self->_ipAddrLookupMap = v41;

  if (!v20[2])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_54;
    }

    v66 = objc_opt_class();
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198;
    v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v73[4] = v66;
    if (reconstructPortMapInternal_defaultOnce_196 != -1)
    {
      dispatch_once(&reconstructPortMapInternal_defaultOnce_196, v73);
    }

    if (reconstructPortMapInternal_classDebugEnabled_197 != 1)
    {
      goto LABEL_54;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Port map is empty!"];
    v67 = MEMORY[0x277D3F178];
    v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
    lastPathComponent5 = [v68 lastPathComponent];
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
    [v67 logMessage:v22 fromFile:lastPathComponent5 fromFunction:v70 fromLineNumber:296];

    v28 = PLLogCommon(v71);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    goto LABEL_24;
  }

  if (v78 >= 172)
  {
    v43 = 1;
    v44 = v20;
    do
    {
      memset(out, 0, 37);
      uuid_unparse(v44 + 44, out);
      v45 = *(v44 + 25);
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v44 + 121];
      v47 = objc_opt_new();
      v48 = [MEMORY[0x277CCABB0] numberWithInt:v45];
      [v47 setPid:v48];

      [v47 setProcessName:v46];
      if (!v45 && (*(v44 + 17) & 8) != 0 && ((bswap32(*(v44 + 30)) >> 16) - 319) <= 1u)
      {
        [v47 setProcessName:@"TimeSync"];
      }

      v49 = [(PLProcessPortMap *)self dictFromNetPortInfo:v44 + 32];
      v50 = [(PLProcessPortMap *)self getLookupKeys:v49];
      if (v50)
      {
        strictLookupMap = [(PLProcessPortMap *)self strictLookupMap];
        v52 = [v50 objectForKeyedSubscript:@"strictLookupKey"];
        [strictLookupMap setObject:v47 forKeyedSubscript:v52];

        lenientLookupMap = [(PLProcessPortMap *)self lenientLookupMap];
        v54 = [v50 objectForKeyedSubscript:@"lenientLookupKey"];
        [lenientLookupMap setObject:v47 forKeyedSubscript:v54];

        localPortOnlyLookupMap = [(PLProcessPortMap *)self localPortOnlyLookupMap];
        v56 = [v50 objectForKeyedSubscript:@"localPortLookupKey"];
        [localPortOnlyLookupMap setObject:v47 forKeyedSubscript:v56];

        ipAddrLookupMap = [(PLProcessPortMap *)self ipAddrLookupMap];
        v58 = [v50 objectForKeyedSubscript:@"ipAddrLookupKey"];
        [ipAddrLookupMap setObject:v47 forKeyedSubscript:v58];
      }

      if (v43 >= v20[2])
      {
        break;
      }

      v59 = v44 + 312;
      v44 += 140;
      ++v43;
    }

    while (v59 <= (v20 + v78));
  }

  free(v20);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v60 = objc_opt_class();
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208;
    v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v72[4] = v60;
    if (reconstructPortMapInternal_defaultOnce_206 != -1)
    {
      dispatch_once(&reconstructPortMapInternal_defaultOnce_206, v72);
    }

    if (reconstructPortMapInternal_classDebugEnabled_207 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Completed rebuilding Port Map"];
      v61 = MEMORY[0x277D3F178];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent6 = [v62 lastPathComponent];
      v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v61 logMessage:v12 fromFile:lastPathComponent6 fromFunction:v64 fromLineNumber:340];

      v18 = PLLogCommon(v65);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_15;
    }
  }
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled_179 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled_185 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled_191 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled_197 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reconstructPortMapInternal_classDebugEnabled_207 = result;
  return result;
}

@end