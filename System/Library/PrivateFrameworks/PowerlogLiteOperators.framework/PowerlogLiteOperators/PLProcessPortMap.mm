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
  if (qword_2811F7790 != -1)
  {
    dispatch_once(&qword_2811F7790, block);
  }

  v2 = qword_2811F7788;

  return v2;
}

uint64_t __34__PLProcessPortMap_sharedInstance__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v1 = objc_opt_new();
  qword_2811F7788 = v1;

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

    v8 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
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
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

- (void)clearPortMap
{
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PLProcessPortMap_clearPortMap__block_invoke;
  block[3] = &unk_2782591D0;
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
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  workQueue = [(PLProcessPortMap *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke;
  block[3] = &unk_27825B138;
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
  v136 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) strictLookupMap];

  if (!v2)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2;
      v133[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v133[4] = v3;
      if (qword_2811F7798 != -1)
      {
        dispatch_once(&qword_2811F7798, v133);
      }

      if (_MergedGlobals_88 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"reconstructing the port map"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:92];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v135 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) reconstructPortMapInternal];
  }

  v10 = [*(a1 + 40) isEqualToString:@"ESP"];
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  if (v10)
  {
    v13 = [v11 keyForIPAddrLookup:v12 withSourceAddress:*(a1 + 56)];
    v14 = [*(a1 + 32) ipAddrLookupMap];
    v15 = [v14 objectForKeyedSubscript:v13];
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v132[0] = MEMORY[0x277D85DD0];
      v132[1] = 3221225472;
      v132[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80;
      v132[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v132[4] = v18;
      if (qword_2811F77A0 != -1)
      {
        dispatch_once(&qword_2811F77A0, v132);
      }

      if (byte_2811F7771 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"ESP protocol key %@ and pid and process %@", v13, *(*(*(a1 + 80) + 8) + 40)];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:100];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v135 = v19;
LABEL_99:
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_89;
        }

        goto LABEL_89;
      }
    }

    goto LABEL_90;
  }

  v13 = [v11 keyFromAddress:v12 withPort:*(a1 + 64) withSourceAddress:*(a1 + 56) withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87;
    v131[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v131[4] = v25;
    if (qword_2811F77A8 != -1)
    {
      dispatch_once(&qword_2811F77A8, v131);
    }

    if (byte_2811F7772 == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"looking up %@", v13];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:104];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93;
    v130[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v130[4] = v32;
    if (qword_2811F77B0 != -1)
    {
      dispatch_once(&qword_2811F77B0, v130);
    }

    if (byte_2811F7773 == 1)
    {
      v33 = MEMORY[0x277CCACA8];
      v34 = [*(a1 + 32) strictLookupMap];
      v35 = [v33 stringWithFormat:@"strictLookupMap=%@", v34];

      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v38 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:105];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v35;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v41 = [*(a1 + 32) strictLookupMap];
  v42 = [v41 objectForKeyedSubscript:v13];
  v43 = *(*(a1 + 80) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v42;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    if ([*(a1 + 32) isAddressIPV4:*(a1 + 48)])
    {
      v52 = @"0.0.0.0";
    }

    else
    {
      v52 = @"::";
    }

    v46 = [*(a1 + 32) keyFromAddress:v52 withPort:*(a1 + 64) withSourceAddress:v52 withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v53 = objc_opt_class();
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99;
      v129[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v129[4] = v53;
      if (qword_2811F77B8 != -1)
      {
        dispatch_once(&qword_2811F77B8, v129);
      }

      if (byte_2811F7774 == 1)
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"The search key is %@", v46];
        v55 = MEMORY[0x277D3F178];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v57 = [v56 lastPathComponent];
        v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v55 logMessage:v54 fromFile:v57 fromFunction:v58 fromLineNumber:119];

        v59 = PLLogCommon();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v135 = v54;
          _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v60 = [*(a1 + 32) strictLookupMap];
    v61 = [v60 objectForKeyedSubscript:v46];
    v62 = *(*(a1 + 80) + 8);
    v63 = *(v62 + 40);
    *(v62 + 40) = v61;

    if (!v61)
    {
      v64 = [*(a1 + 32) keyFromAddress:@"*" withPort:*(a1 + 64) withSourceAddress:@"*" withSourcePort:*(a1 + 72) withProtocol:*(a1 + 40)];

      v65 = [*(a1 + 32) strictLookupMap];
      v66 = [v65 objectForKeyedSubscript:v64];
      v67 = *(*(a1 + 80) + 8);
      v68 = *(v67 + 40);
      *(v67 + 40) = v66;

      v46 = v64;
    }

    v69 = *(*(*(a1 + 80) + 8) + 40);
    v70 = [MEMORY[0x277D3F180] debugEnabled];
    if (v69)
    {
      if (!v70)
      {
        goto LABEL_82;
      }

      v71 = objc_opt_class();
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123;
      v125[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v125[4] = v71;
      if (qword_2811F77D8 != -1)
      {
        dispatch_once(&qword_2811F77D8, v125);
      }

      if (byte_2811F7778 != 1)
      {
        goto LABEL_82;
      }

      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wild card match succeeded!"];
      v72 = MEMORY[0x277D3F178];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v74 = [v73 lastPathComponent];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v72 logMessage:v51 fromFile:v74 fromFunction:v75 fromLineNumber:143];

      v76 = PLLogCommon();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v51;
        _os_log_debug_impl(&dword_21A4C6000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      if (v70)
      {
        v77 = objc_opt_class();
        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105;
        v128[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v128[4] = v77;
        if (qword_2811F77C0 != -1)
        {
          dispatch_once(&qword_2811F77C0, v128);
        }

        if (byte_2811F7775 == 1)
        {
          v78 = MEMORY[0x277CCACA8];
          v79 = [*(a1 + 32) lenientLookupMap];
          v80 = [v78 stringWithFormat:@"Lenient Map = %@", v79];

          v81 = MEMORY[0x277D3F178];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
          v83 = [v82 lastPathComponent];
          v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
          [v81 logMessage:v80 fromFile:v83 fromFunction:v84 fromLineNumber:128];

          v85 = PLLogCommon();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v135 = v80;
            _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v51 = [*(a1 + 32) keyForlenientLookup:*(a1 + 48) withPort:*(a1 + 64) withProtocol:*(a1 + 40)];
      v86 = [*(a1 + 32) lenientLookupMap];
      v87 = [v86 objectForKeyedSubscript:v51];
      v88 = *(*(a1 + 80) + 8);
      v89 = *(v88 + 40);
      *(v88 + 40) = v87;

      v90 = *(*(*(a1 + 80) + 8) + 40);
      v91 = [MEMORY[0x277D3F180] debugEnabled];
      if (v90)
      {
        if (!v91)
        {
          goto LABEL_81;
        }

        v92 = objc_opt_class();
        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117;
        v126[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v126[4] = v92;
        if (qword_2811F77D0 != -1)
        {
          dispatch_once(&qword_2811F77D0, v126);
        }

        if (byte_2811F7777 != 1)
        {
          goto LABEL_81;
        }

        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"3 tuple match succeeded!"];
        v93 = MEMORY[0x277D3F178];
        v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        v95 = [v94 lastPathComponent];
        v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
        [v93 logMessage:v76 fromFile:v95 fromFunction:v96 fromLineNumber:140];

        v97 = PLLogCommon();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v135 = v76;
          _os_log_debug_impl(&dword_21A4C6000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      else
      {
        if (v91)
        {
          v98 = objc_opt_class();
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111;
          v127[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v127[4] = v98;
          if (qword_2811F77C8 != -1)
          {
            dispatch_once(&qword_2811F77C8, v127);
          }

          if (byte_2811F7776 == 1)
          {
            v99 = MEMORY[0x277CCACA8];
            v100 = [*(a1 + 32) localPortOnlyLookupMap];
            v101 = [v99 stringWithFormat:@"Local Port Only Map =%@", v100];

            v102 = MEMORY[0x277D3F178];
            v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
            v104 = [v103 lastPathComponent];
            v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
            [v102 logMessage:v101 fromFile:v104 fromFunction:v105 fromLineNumber:135];

            v106 = PLLogCommon();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v135 = v101;
              _os_log_debug_impl(&dword_21A4C6000, v106, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v76 = [*(a1 + 32) keyForlocalPortLookup:*(a1 + 64) withProtocol:*(a1 + 40)];
        v97 = [*(a1 + 32) localPortOnlyLookupMap];
        v107 = [v97 objectForKeyedSubscript:v76];
        v108 = *(*(a1 + 80) + 8);
        v109 = *(v108 + 40);
        *(v108 + 40) = v107;
      }
    }

LABEL_81:
LABEL_82:

    goto LABEL_83;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v45 = objc_opt_class();
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129;
    v124[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v124[4] = v45;
    if (qword_2811F77E0 != -1)
    {
      dispatch_once(&qword_2811F77E0, v124);
    }

    if (byte_2811F7779 == 1)
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"5 tuple match succeeded!"];
      v47 = MEMORY[0x277D3F178];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v49 = [v48 lastPathComponent];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:146];

      v51 = PLLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v46;
        _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_81;
    }
  }

LABEL_83:
  if (!*(*(*(a1 + 80) + 8) + 40) && [MEMORY[0x277D3F180] debugEnabled])
  {
    v110 = objc_opt_class();
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135;
    v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v123[4] = v110;
    if (qword_2811F77E8 != -1)
    {
      dispatch_once(&qword_2811F77E8, v123);
    }

    if (byte_2811F777A == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"lookup failed at all stages. Protocol %@ Dest Port %@", *(a1 + 40), *(a1 + 64)];
      v111 = MEMORY[0x277D3F178];
      v112 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v113 = [v112 lastPathComponent];
      v114 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v111 logMessage:v19 fromFile:v113 fromFunction:v114 fromLineNumber:150];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v19;
        goto LABEL_99;
      }

LABEL_89:
    }
  }

LABEL_90:

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v115 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v115;
    if (qword_2811F77F0 != -1)
    {
      dispatch_once(&qword_2811F77F0, block);
    }

    if (byte_2811F777B == 1)
    {
      v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", *(*(*(a1 + 80) + 8) + 40)];
      v117 = MEMORY[0x277D3F178];
      v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      v119 = [v118 lastPathComponent];
      v120 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap pidAndProcessNameForDestAddress:withDestPort:withSourceAddress:withSourcePort:withProtocol:]_block_invoke_2"];
      [v117 logMessage:v116 fromFile:v119 fromFunction:v120 fromLineNumber:153];

      v121 = PLLogCommon();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v135 = v116;
        _os_log_debug_impl(&dword_21A4C6000, v121, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_88 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7771 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_87(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7772 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_93(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7773 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_99(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7774 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7775 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7776 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_117(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7777 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7778 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_129(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7779 = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777A = result;
  return result;
}

void *__111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_141(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777B = result;
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
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __40__PLProcessPortMap_clearPortMapInternal__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F77F8 != -1)
    {
      dispatch_once(&qword_2811F77F8, &block);
    }

    if (byte_2811F777C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clearing Pid:ProcPID map, old one: %@", self->_strictLookupMap, block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap clearPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:253];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
  byte_2811F777C = result;
  return result;
}

- (void)reconstructPortMapInternal
{
  v75 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7800 != -1)
    {
      dispatch_once(&qword_2811F7800, block);
    }

    if (byte_2811F777D == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting rebuilding of Port Map"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:262];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *out = 138412290;
        *&out[4] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
      }
    }
  }

  v71 = 0;
  v72 = 0;
  if (sysctlbyname("net.link.generic.system.port_used.list", 0, &v71, 0, 0))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180;
      v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v70[4] = v10;
      if (qword_2811F7808 != -1)
      {
        dispatch_once(&qword_2811F7808, v70);
      }

      if (byte_2811F777E == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read buffer size, errno: %d", *__error()];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
        lastPathComponent2 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
        [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:269];

        v16 = PLLogCommon();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
LABEL_14:

          return;
        }

        *out = 138412290;
        *&out[4] = v11;
LABEL_55:
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
        goto LABEL_14;
      }
    }

    return;
  }

  v17 = malloc_type_malloc(v71, 0x947438E6uLL);
  if (v17)
  {
    v18 = v17;
    v72 = v71;
    if (sysctlbyname("net.link.generic.system.port_used.list", v17, &v72, 0, 0))
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_52;
      }

      v19 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v19;
      if (qword_2811F7818 != -1)
      {
        dispatch_once(&qword_2811F7818, v68);
      }

      if (byte_2811F7780 != 1)
      {
        goto LABEL_52;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to populate buffer, errno: %d", *__error()];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent3 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v21 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:281];

      v25 = PLLogCommon();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *out = 138412290;
      *&out[4] = v20;
    }

    else
    {
      v31 = objc_opt_new();
      strictLookupMap = self->_strictLookupMap;
      self->_strictLookupMap = v31;

      v33 = objc_opt_new();
      lenientLookupMap = self->_lenientLookupMap;
      self->_lenientLookupMap = v33;

      v35 = objc_opt_new();
      localPortOnlyLookupMap = self->_localPortOnlyLookupMap;
      self->_localPortOnlyLookupMap = v35;

      v37 = objc_opt_new();
      ipAddrLookupMap = self->_ipAddrLookupMap;
      self->_ipAddrLookupMap = v37;

      if (*(v18 + 2))
      {
        if (v72 >= 172)
        {
          v39 = 1;
          v40 = v18;
          do
          {
            memset(out, 0, 37);
            uuid_unparse(v40 + 44, out);
            v41 = *(v40 + 25);
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40 + 121];
            v43 = objc_opt_new();
            v44 = [MEMORY[0x277CCABB0] numberWithInt:v41];
            [v43 setPid:v44];

            [v43 setProcessName:v42];
            if (!v41 && (*(v40 + 17) & 8) != 0 && ((bswap32(*(v40 + 30)) >> 16) - 319) <= 1u)
            {
              [v43 setProcessName:@"TimeSync"];
            }

            v45 = [(PLProcessPortMap *)self dictFromNetPortInfo:v40 + 32];
            v46 = [(PLProcessPortMap *)self getLookupKeys:v45];
            if (v46)
            {
              strictLookupMap = [(PLProcessPortMap *)self strictLookupMap];
              v48 = [v46 objectForKeyedSubscript:@"strictLookupKey"];
              [strictLookupMap setObject:v43 forKeyedSubscript:v48];

              lenientLookupMap = [(PLProcessPortMap *)self lenientLookupMap];
              v50 = [v46 objectForKeyedSubscript:@"lenientLookupKey"];
              [lenientLookupMap setObject:v43 forKeyedSubscript:v50];

              localPortOnlyLookupMap = [(PLProcessPortMap *)self localPortOnlyLookupMap];
              v52 = [v46 objectForKeyedSubscript:@"localPortLookupKey"];
              [localPortOnlyLookupMap setObject:v43 forKeyedSubscript:v52];

              ipAddrLookupMap = [(PLProcessPortMap *)self ipAddrLookupMap];
              v54 = [v46 objectForKeyedSubscript:@"ipAddrLookupKey"];
              [ipAddrLookupMap setObject:v43 forKeyedSubscript:v54];
            }

            if (v39 >= *(v18 + 2))
            {
              break;
            }

            v55 = (v40 + 312);
            v40 += 140;
            ++v39;
          }

          while (v55 <= &v18[v72]);
        }

        free(v18);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v56 = objc_opt_class();
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208;
          v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v66[4] = v56;
          if (qword_2811F7828 != -1)
          {
            dispatch_once(&qword_2811F7828, v66);
          }

          if (byte_2811F7782 == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Completed rebuilding Port Map"];
            v57 = MEMORY[0x277D3F178];
            v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
            lastPathComponent4 = [v58 lastPathComponent];
            v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
            [v57 logMessage:v11 fromFile:lastPathComponent4 fromFunction:v60 fromLineNumber:340];

            v16 = PLLogCommon();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_14;
            }

            *out = 138412290;
            *&out[4] = v11;
            goto LABEL_55;
          }
        }

        return;
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_52;
      }

      v61 = objc_opt_class();
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198;
      v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v67[4] = v61;
      if (qword_2811F7820 != -1)
      {
        dispatch_once(&qword_2811F7820, v67);
      }

      if (byte_2811F7781 != 1)
      {
LABEL_52:
        free(v18);
        return;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Port map is empty!"];
      v62 = MEMORY[0x277D3F178];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent5 = [v63 lastPathComponent];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v62 logMessage:v20 fromFile:lastPathComponent5 fromFunction:v65 fromLineNumber:296];

      v25 = PLLogCommon();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        goto LABEL_52;
      }

      *out = 138412290;
      *&out[4] = v20;
    }

    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", out, 0xCu);
    goto LABEL_22;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186;
    v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v69[4] = v26;
    if (qword_2811F7810 != -1)
    {
      dispatch_once(&qword_2811F7810, v69);
    }

    if (byte_2811F777F == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate buffer"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/PLProcessPortMap.m"];
      lastPathComponent6 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessPortMap reconstructPortMapInternal]"];
      [v27 logMessage:v11 fromFile:lastPathComponent6 fromFunction:v30 fromLineNumber:275];

      v16 = PLLogCommon();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *out = 138412290;
      *&out[4] = v11;
      goto LABEL_55;
    }
  }
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777D = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_180(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777E = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F777F = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_192(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7780 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_198(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7781 = result;
  return result;
}

void *__46__PLProcessPortMap_reconstructPortMapInternal__block_invoke_208(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7782 = result;
  return result;
}

@end