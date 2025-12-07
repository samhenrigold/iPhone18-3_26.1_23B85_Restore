@interface GTMTLReplayService
- (BOOL)cancel:(unint64_t)cancel;
- (BOOL)load:(id)load error:(id *)error;
- (BOOL)pause:(unint64_t)pause;
- (BOOL)resume:(unint64_t)resume;
- (GTMTLReplayService)initWithContext:(GTMTLReplayClient *)context;
- (id)decode:(id)decode;
- (id)fetch:(id)fetch;
- (id)fetchInto:(id)into;
- (id)profile:(id)profile;
- (id)query:(id)query;
- (id)raytrace:(id)raytrace;
- (id)shaderdebug:(id)shaderdebug;
- (id)update:(id)update;
- (void)broadcastDisconnect:(id)disconnect path:(id)path;
- (void)display:(id)display;
- (void)fetchIntoOperation:(id)operation completionHandler:(id)handler;
- (void)notifyError:(id)error;
- (void)terminateProcess;
@end

@implementation GTMTLReplayService

- (id)raytrace:(id)raytrace
{
  clientContext = self->_clientContext;
  raytraceCopy = raytrace;
  streamHandler = [raytraceCopy streamHandler];
  dispatchUID = [raytraceCopy dispatchUID];
  streamRef = [raytraceCopy streamRef];
  requestID = [raytraceCopy requestID];

  var0 = clientContext->var7.var0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__GTMTLReplayService_raytrace___block_invoke;
  v12[3] = &unk_279657970;
  v15 = dispatchUID;
  v16 = requestID;
  v13 = streamHandler;
  v14 = clientContext;
  v17 = streamRef;
  v10 = streamHandler;
  [var0 addOperationWithBlock:v12];

  return 0;
}

void __31__GTMTLReplayService_raytrace___block_invoke(uint64_t a1)
{
  GTMTLReplayController_debugSubCommandStop(*(*(a1 + 40) + 8), *(a1 + 48), 0);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__GTMTLReplayService_raytrace___block_invoke_2;
  v14[3] = &unk_279657920;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 56);
  v17 = v5;
  v15 = v6;
  v7 = *(a1 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__GTMTLReplayService_raytrace___block_invoke_3;
  v10[3] = &unk_279657948;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 56);
  [GTAccelerationStructureServerSession sessionWithReplayClient:v2 functionIndex:v3 requestID:v4 transport:0 dataHandler:v14 accelerationStructureKey:v7 completionHandler:v10];
}

void __31__GTMTLReplayService_raytrace___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = a3;
  v6 = a4;
  Operation = GTCoreOperationControl_getOperation(a1[5]);
  if (Operation && *(Operation + 24) == 1)
  {
    v8 = *(a1[6] + 8);
    dispatch_semaphore_wait(*(v8 + 72), 0xFFFFFFFFFFFFFFFFLL);
    if (GTCoreOperationControl_getOperation(a1[5]))
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(v8 + 80);
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
      [v10 removeObjectForKey:v11];

      GTCoreOperationControl_removeOperation(a1[5]);
      v12 = a1[4];
      v13 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:2];
      (*(v12 + 16))(v12, v13);

      objc_autoreleasePoolPop(v9);
    }

    dispatch_semaphore_signal(*(v8 + 72));
  }

  else
  {
    v14 = objc_opt_new();
    [v14 setData:v20];
    if (v6)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v6 domain];
      v17 = [v6 code];
      v18 = [v6 userInfo];
      v19 = [v15 errorWithDomain:v16 code:v17 userInfo:v18];
      [v14 setError:v19];
    }

    else
    {
      [v14 setError:0];
    }

    (*(a1[4] + 16))();
  }
}

void __31__GTMTLReplayService_raytrace___block_invoke_3(void *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v16)
  {
    v6 = *(a1[5] + 8);
    dispatch_semaphore_wait(*(v6 + 72), 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(v6 + 80);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v7 setObject:v16 forKey:v8];

    dispatch_semaphore_signal(*(v6 + 72));
    [v16 setSessionID:a1[6]];
    GTCoreOperationControl_addOperation(a1[6]);
    v9 = a1[4];
    v10 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:1];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D0B630]) initWithState:2];
    if (v5)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v5 domain];
      v13 = [v5 code];
      v14 = [v5 userInfo];
      v15 = [v11 errorWithDomain:v12 code:v13 userInfo:v14];
      [v10 setError:v15];
    }

    (*(a1[4] + 16))(a1[4], v10);
  }
}

- (id)shaderdebug:(id)shaderdebug
{
  shaderdebugCopy = shaderdebug;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(shaderdebugCopy, "requestID")}];
  clientContext = self->_clientContext;
  var0 = clientContext->var7.var0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__GTMTLReplayService_shaderdebug___block_invoke;
  v13[3] = &unk_279658B00;
  v14 = shaderdebugCopy;
  v16 = clientContext;
  v8 = v5;
  v15 = v8;
  v9 = shaderdebugCopy;
  [var0 addOperationWithBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __34__GTMTLReplayService_shaderdebug___block_invoke(uint64_t a1)
{
  v178[7] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    v3 = v2;
    v178[0] = &unk_2860D6668;
    v177[0] = @"Type";
    v177[1] = @"MinPositionX";
    v4 = MEMORY[0x277CCABB0];
    if (v2)
    {
      objc_msgSend_minThreadPositionInGrid(v2);
      v5 = v162;
    }

    else
    {
      v5 = 0;
      v163 = 0;
      v162 = 0;
      v164 = 0;
    }

    v9 = [v4 numberWithUnsignedLongLong:v5];
    v178[1] = v9;
    v177[2] = @"MinPositionY";
    v12 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v13 = v160;
    }

    else
    {
      v13 = 0;
      v160 = 0;
      v159 = 0;
      v161 = 0;
    }

    v14 = [v12 numberWithUnsignedLongLong:v13];
    v178[2] = v14;
    v177[3] = @"MinPositionZ";
    v15 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v16 = v158;
    }

    else
    {
      v16 = 0;
      v157 = 0;
      v156 = 0;
      v158 = 0;
    }

    v17 = [v15 numberWithUnsignedLongLong:v16];
    v178[3] = v17;
    v177[4] = @"MaxPositionX";
    v18 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v19 = v153;
    }

    else
    {
      v19 = 0;
      v153 = 0;
      v154 = 0;
      v155 = 0;
    }

    v20 = [v18 numberWithUnsignedLongLong:v19];
    v178[4] = v20;
    v177[5] = @"MaxPositionY";
    v21 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v22 = v151;
    }

    else
    {
      v22 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
    }

    v23 = [v21 numberWithUnsignedLongLong:v22];
    v178[5] = v23;
    v177[6] = @"MaxPositionZ";
    v24 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v25 = v149;
    }

    else
    {
      v25 = 0;
      v147 = 0;
      v148 = 0;
      v149 = 0;
    }

    v26 = [v24 numberWithUnsignedLongLong:v25];
    v178[6] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v178;
    v29 = v177;
LABEL_46:
    v46 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:7];
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v3 = v6;
    v176[0] = &unk_2860D6680;
    v175[0] = @"Type";
    v175[1] = @"MinPositionX";
    v7 = MEMORY[0x277CCABB0];
    if (v6)
    {
      objc_msgSend_minThreadPositionInGrid(v6);
      v8 = v144;
    }

    else
    {
      v8 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
    }

    v9 = [v7 numberWithUnsignedLongLong:v8];
    v176[1] = v9;
    v175[2] = @"MinPositionY";
    v36 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v37 = v142;
    }

    else
    {
      v37 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
    }

    v14 = [v36 numberWithUnsignedLongLong:v37];
    v176[2] = v14;
    v175[3] = @"MinPositionZ";
    v38 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v39 = v140;
    }

    else
    {
      v39 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
    }

    v17 = [v38 numberWithUnsignedLongLong:v39];
    v176[3] = v17;
    v175[4] = @"MaxPositionX";
    v40 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v41 = v135;
    }

    else
    {
      v41 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
    }

    v20 = [v40 numberWithUnsignedLongLong:v41];
    v176[4] = v20;
    v175[5] = @"MaxPositionY";
    v42 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v43 = v133;
    }

    else
    {
      v43 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
    }

    v23 = [v42 numberWithUnsignedLongLong:v43];
    v176[5] = v23;
    v175[6] = @"MaxPositionZ";
    v44 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v45 = v131;
    }

    else
    {
      v45 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
    }

    v26 = [v44 numberWithUnsignedLongLong:v45];
    v176[6] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v176;
    v29 = v175;
    goto LABEL_46;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v174[0] = &unk_2860D6698;
    v173[0] = @"Type";
    v173[1] = @"AmplificationID";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "amplificationID")}];
    v174[1] = v9;
    v173[2] = @"MinPositionX";
    v10 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v11 = v126;
    }

    else
    {
      v11 = 0;
      v126 = 0;
      v127 = 0;
      v128 = 0;
    }

    v14 = [v10 numberWithUnsignedLongLong:v11];
    v174[2] = v14;
    v173[3] = @"MinPositionY";
    v72 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v73 = v124;
    }

    else
    {
      v73 = 0;
      v123 = 0;
      v124 = 0;
      v125 = 0;
    }

    v17 = [v72 numberWithUnsignedLongLong:v73];
    v174[3] = v17;
    v173[4] = @"MinPositionZ";
    v74 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_minThreadPositionInGrid(v3);
      v75 = v122;
    }

    else
    {
      v75 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
    }

    v101 = [v74 numberWithUnsignedLongLong:v75];
    v174[4] = v101;
    v173[5] = @"MaxPositionX";
    v76 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v77 = v117;
    }

    else
    {
      v77 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
    }

    v100 = [v76 numberWithUnsignedLongLong:v77];
    v174[5] = v100;
    v173[6] = @"MaxPositionY";
    v78 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v79 = v115;
    }

    else
    {
      v79 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
    }

    v99 = [v78 numberWithUnsignedLongLong:v79];
    v174[6] = v99;
    v173[7] = @"MaxPositionZ";
    v80 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_maxThreadPositionInGrid(v3);
      v81 = v113;
    }

    else
    {
      v81 = 0;
      v111 = 0;
      v112 = 0;
      v113 = 0;
    }

    v82 = [v80 numberWithUnsignedLongLong:v81];
    v174[7] = v82;
    v173[8] = @"ObjectThreadgroupPosX";
    v83 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_objectThreadgroupPositionInGrid(v3);
      v84 = v108;
    }

    else
    {
      v84 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
    }

    v85 = [v83 numberWithUnsignedLongLong:v84];
    v174[8] = v85;
    v173[9] = @"ObjectThreadgroupPosY";
    v86 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_objectThreadgroupPositionInGrid(v3);
      v87 = v106;
    }

    else
    {
      v87 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
    }

    v88 = [v86 numberWithUnsignedLongLong:v87];
    v174[9] = v88;
    v173[10] = @"ObjectThreadgroupPosZ";
    v89 = MEMORY[0x277CCABB0];
    if (v3)
    {
      objc_msgSend_objectThreadgroupPositionInGrid(v3);
      v90 = v104;
    }

    else
    {
      v90 = 0;
      v103[1] = 0;
      v103[2] = 0;
      v104 = 0;
    }

    v91 = [v89 numberWithUnsignedLongLong:v90];
    v174[10] = v91;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:11];

    goto LABEL_48;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v31 = *(a1 + 32);
  if (isKindOfClass)
  {
    v172[0] = &unk_2860D6590;
    v171[0] = @"Type";
    v171[1] = @"InstanceID";
    v32 = MEMORY[0x277CCABB0];
    v3 = v31;
    v9 = [v32 numberWithUnsignedInt:{objc_msgSend(v3, "instanceID")}];
    v172[1] = v9;
    v171[2] = @"AmplificationID";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "amplificationID")}];
    v172[2] = v14;
    v171[3] = @"VertexIDs";
    v17 = [v3 vertexIDs];
    v172[3] = v17;
    v33 = MEMORY[0x277CBEAC0];
    v34 = v172;
    v35 = v171;
LABEL_60:
    v46 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:4];
    goto LABEL_48;
  }

  objc_opt_class();
  v69 = objc_opt_isKindOfClass();
  v70 = *(a1 + 32);
  if (v69)
  {
    v170[0] = &unk_2860D66B0;
    v169[0] = @"Type";
    v169[1] = @"InstanceID";
    v71 = MEMORY[0x277CCABB0];
    v3 = v70;
    v9 = [v71 numberWithUnsignedInt:{objc_msgSend(v3, "instanceID")}];
    v170[1] = v9;
    v169[2] = @"AmplificationID";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "amplificationID")}];
    v170[2] = v14;
    v169[3] = @"PatchIDs";
    v17 = [v3 patchIDs];
    v170[3] = v17;
    v33 = MEMORY[0x277CBEAC0];
    v34 = v170;
    v35 = v169;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = *(a1 + 32);
    v168[0] = &unk_2860D6578;
    v167[0] = @"Type";
    v167[1] = @"MinPositionX";
    v93 = MEMORY[0x277CCABB0];
    v3 = v92;
    v9 = [v93 numberWithUnsignedLongLong:{objc_msgSend(v3, "minPixelPosition")}];
    v168[1] = v9;
    v167[2] = @"MinPositionY";
    v94 = MEMORY[0x277CCABB0];
    [v3 minPixelPosition];
    v14 = [v94 numberWithUnsignedLongLong:v95];
    v168[2] = v14;
    v167[3] = @"MaxPositionX";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "maxPixelPosition")}];
    v168[3] = v17;
    v167[4] = @"MaxPositionY";
    v96 = MEMORY[0x277CCABB0];
    [v3 maxPixelPosition];
    v20 = [v96 numberWithUnsignedLongLong:v97];
    v168[4] = v20;
    v167[5] = @"MinSampleID";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "minSampleID")}];
    v168[5] = v23;
    v167[6] = @"MaxSampleID";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "maxSampleID")}];
    v168[6] = v26;
    v167[7] = @"RenderTargetArrayIndex";
    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "renderTargetArrayIndex")}];
    v168[7] = v98;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:8];

    goto LABEL_47;
  }

  v46 = 0;
LABEL_49:
  v47 = objc_alloc_init(MEMORY[0x277D0B628]);
  [v47 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
  if (v46)
  {
    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [v48 setWithObjects:{v49, v50, v51, v52, objc_opt_class(), 0}];
    v54 = MEMORY[0x277CCAAC8];
    v55 = [*(a1 + 32) programData];
    v103[0] = 0;
    v56 = [v54 unarchivedObjectOfClasses:v53 fromData:v55 error:v103];
    v57 = v103[0];
    v58 = [v56 mutableCopy];

    v59 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "dispatchUID")}];
    [v58 setObject:v59 forKeyedSubscript:@"FunctionIndex"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "dispatchUID") >> 32}];
    [v58 setObject:v60 forKeyedSubscript:@"SubCommandIndex"];

    [v58 setObject:v46 forKeyedSubscript:@"ROI"];
    v61 = [v58 copy];
    v102[1] = v57;
    v62 = GTMTLShaderDebugger_generateTrace();
    v63 = v57;

    if (v62)
    {
      v102[0] = v63;
      v64 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v62 requiringSecureCoding:1 error:v102];
      v65 = v102[0];

      [v47 setData:v64];
      v63 = v65;
    }

    else
    {
      [v47 setData:0];
    }

    [v47 setError:v63];
  }

  else
  {
    [v47 setData:0];
    v66 = objc_alloc(MEMORY[0x277CCA9B8]);
    v165 = *MEMORY[0x277CCA450];
    v166 = @"Invalid request";
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    v53 = [v66 initWithDomain:@"GTReplayerRequestDomain" code:300 userInfo:v63];
    [v47 setError:v53];
  }

  v67 = [*(a1 + 32) completionHandler];
  v68 = v67;
  if (v67)
  {
    (*(v67 + 16))(v67, v47);
  }

  [*(a1 + 40) completed];
}

- (id)profile:(id)profile
{
  profileCopy = profile;
  requestID = [profileCopy requestID];
  v6 = [[GTReplayerOperationBatch alloc] initWithRequestID:requestID];
  clientContext = self->_clientContext;
  v53 = v6;
  defaultDevice = [*(clientContext->var1 + 1) defaultDevice];
  v8 = DEVICEOBJECT(defaultDevice);
  acceleratorPort = [v8 acceleratorPort];

  v77[0] = 0x7FFFFFFF;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__827;
  v75 = __Block_byref_object_dispose__828;
  v76 = GetMetalPluginName(acceleratorPort, v77);
  v50 = IsAGXMetalPlugin(v72[5], v10);
  v49 = requestID;
  streamHandler = [profileCopy streamHandler];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = MEMORY[0x277CCAAC8];
  profileData = [profileCopy profileData];
  v70 = 0;
  v23 = [v21 unarchivedObjectOfClasses:v20 fromData:profileData error:&v70];
  v24 = v70;

  [v23 setObject:v72[5] forKeyedSubscript:@"MetalPluginName"];
  if (v77[0] != 0x7FFFFFFF)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v23 setObject:v25 forKeyedSubscript:@"gpuTarget"];
  }

  defaultDevice2 = [*(clientContext->var1 + 1) defaultDevice];
  GTDeviceCapabilities_fromDevice();

  isAGX = GTDeviceCapabilities_isAGX();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = profileCopy;
    if (isAGX)
    {
      if (v50 && [clientContext->var7.var2 operationCount])
      {
        GTMTLReplayClient_addBatchFilteringRequest(&unk_2860D5FE8);
      }

      if ((GTDeviceCapabilities_isAGX1() & 1) != 0 || GTDeviceCapabilities_isAGX2())
      {
        if ([(GTReplayerOperation *)v28 shaderProfiling]&& [(GTReplayerOperation *)v28 saveProfilerRaw])
        {
          v29 = [GTReplayerOperation alloc];
          v30 = v68;
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __30__GTMTLReplayService_profile___block_invoke_2;
          v68[3] = &unk_279657830;
          v68[7] = clientContext;
          v68[4] = v23;
          v68[6] = &v71;
          v68[5] = streamHandler;
          v31 = [(GTReplayerOperation *)v29 initWithBatch:v53 withBlock:v68];
LABEL_22:
          v39 = v31;
          v40 = (v30 + 4);
          v41 = (v30 + 5);
LABEL_23:

LABEL_24:
          [(GTReplayerOperationBatch *)v53 addOperation:v39];

          goto LABEL_25;
        }

        if (([(GTReplayerOperation *)v28 shaderProfiling]& 1) != 0 || GTDeviceCapabilities_isAGX1())
        {
          v38 = [GTReplayerOperation alloc];
          v30 = v67;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __30__GTMTLReplayService_profile___block_invoke_5;
          v67[3] = &unk_2796577E0;
          v67[6] = clientContext;
          v67[4] = v23;
          v67[5] = streamHandler;
          v31 = [(GTReplayerOperation *)v38 initWithBatch:v53 withBlock:v67];
          goto LABEL_22;
        }

        v48 = [GTReplayerOperation alloc];
        v44 = v66;
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __30__GTMTLReplayService_profile___block_invoke_7;
        v66[3] = &unk_279657858;
        v66[6] = v49;
        v66[5] = streamHandler;
        v66[7] = clientContext;
        v66[4] = v23;
        v45 = [(GTReplayerOperation *)v48 initWithBatch:v53 withBlock:v66];
      }

      else
      {
        if (!GTDeviceCapabilities_isAGX3())
        {
          v39 = 0;
          goto LABEL_24;
        }

        v43 = [GTReplayerOperation alloc];
        v44 = v65;
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __30__GTMTLReplayService_profile___block_invoke_9;
        v65[3] = &unk_279657880;
        v65[7] = v49;
        v65[5] = streamHandler;
        v65[8] = clientContext;
        v65[4] = v23;
        v65[6] = &v71;
        v45 = [(GTReplayerOperation *)v43 initWithBatch:v53 withBlock:v65];
      }

      v39 = v45;
      v40 = (v44 + 5);
      v41 = (v44 + 4);
      goto LABEL_23;
    }

    v34 = [GTReplayerOperation alloc];
    v30 = v69;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __30__GTMTLReplayService_profile___block_invoke;
    v69[3] = &unk_2796577E0;
    v69[6] = clientContext;
    v69[4] = v23;
    v69[5] = streamHandler;
    v31 = [(GTReplayerOperation *)v34 initWithBatch:v53 withBlock:v69];
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [GTReplayerOperation alloc];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __30__GTMTLReplayService_profile___block_invoke_11;
    v60[3] = &unk_2796578A8;
    v64 = isAGX;
    v63 = clientContext;
    v61 = v23;
    v62 = streamHandler;
    v33 = [(GTReplayerOperation *)v32 initWithBatch:v53 withBlock:v60];
    [(GTReplayerOperationBatch *)v53 addOperation:v33];

    v28 = v61;
LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([profileCopy priority])
    {
      v35 = [GTReplayerOperation alloc];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __30__GTMTLReplayService_profile___block_invoke_14;
      v54[3] = &unk_2796578F8;
      v55 = v23;
      v56 = streamHandler;
      v28 = [(GTReplayerOperation *)v35 initWithBatch:v53 withBlock:v54];
      v36 = &v55;
      v37 = &v56;
    }

    else
    {
      v46 = [GTReplayerOperation alloc];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __30__GTMTLReplayService_profile___block_invoke_12;
      v57[3] = &unk_2796577E0;
      v59[1] = clientContext;
      v58 = v23;
      v59[0] = streamHandler;
      v28 = [(GTReplayerOperation *)v46 initWithBatch:v53 withBlock:v57];
      Operation = GTCoreOperationControl_getOperation(v49);
      v36 = &v58;
      v37 = v59;
      *(Operation + 8) = BatchFilteredPause;
      *(Operation + 16) = BatchFilteredResume;
    }

    [(GTReplayerOperationBatch *)v53 addOperation:v28];
    if ([profileCopy priority] == 1)
    {
      [(GTReplayerOperationBatch *)v53 flush:clientContext->var7.var1];
    }

    goto LABEL_25;
  }

LABEL_26:
  [(GTReplayerOperationBatch *)v53 flush:clientContext->var7.var2];

  _Block_object_dispose(&v71, 8);
  return 0;
}

void __30__GTMTLReplayService_profile___block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayClient_queryShaderInfo(*(a1[6] + 8), (a1[6] + 280), a1[4]);
    v4 = [v3 mutableCopy];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isLegacy"];
    v5 = objc_opt_new();
    v6 = MEMORY[0x277CCAAB0];
    v7 = [v4 copy];
    v10 = 0;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v10];
    v9 = v10;
    [v5 setData:v8];

    [v5 setError:v9];
    (*(a1[5] + 16))();
  }
}

void __30__GTMTLReplayService_profile___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayHost_generateDerivedDataPayload(**(*(a1 + 56) + 8), 1);
    [*(a1 + 32) addEntriesFromDictionary:v3];
    v4 = GTShaderProfilerStreamDataFromReplayDataSource();
    [v4 setMetalPluginName:*(*(*(a1 + 48) + 8) + 40)];
    v5 = [*(*(*(a1 + 56) + 8) + 8) defaultDevice];
    v6 = [v5 name];
    [v4 setMetalDeviceName:v6];

    v7 = [*(a1 + 32) objectForKeyedSubscript:@"SupportsFileFormatV2"];
    [v4 setSupportsFileFormatV2:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];

    if (v8)
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];
      [v4 setProfiledPerformanceState:{objc_msgSend(v9, "intValue")}];
    }

    else
    {
      [v4 setProfiledPerformanceState:2];
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];

    if (v10)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];
      v12 = [v11 BOOLValue];

      v13 = v12 ^ 1u;
    }

    else
    {
      v13 = 0;
    }

    [v4 setProfiledExecutionMode:v13];
    [v4 setProfiledProfilerMode:0];
    v14 = dispatch_semaphore_create(0);
    if (!v4)
    {
      goto LABEL_15;
    }

    v31 = v3;
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v17 = *(a1 + 32);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __30__GTMTLReplayService_profile___block_invoke_3;
    v37[3] = &unk_279657808;
    v18 = v4;
    v38 = v18;
    v19 = v14;
    v39 = v19;
    GTMTLReplayClient_collectGPUShaderTimelineData(v16, (v15 + 280), v17, v37);
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v22 = *(a1 + 32);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __30__GTMTLReplayService_profile___block_invoke_4;
    v34[3] = &unk_279657808;
    v23 = v18;
    v35 = v23;
    v24 = v19;
    v36 = v24;
    GTMTLReplayClient_streamShaderProfilingData(v21, (v20 + 280), v22, v34);
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    [v23 addPipelinePerformanceStatisticsData:*(*(*(a1 + 56) + 8) + 64)];
    v33 = 0;
    v25 = [v23 encode:0 error:&v33];
    v26 = v33;
    if (v26)
    {
      v27 = v26;
      v28 = objc_opt_new();
      [v28 setError:v27];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (![v23 supportsFileFormatV2])
      {
        v27 = 0;
        v3 = v31;
        goto LABEL_14;
      }

      v28 = objc_opt_new();
      v40 = @"Profiler Raw URL";
      v41[0] = v25;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      v32 = 0;
      v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v32];
      v27 = v32;
      [v28 setData:v30];

      [v28 setError:v27];
      (*(*(a1 + 40) + 16))();
    }

    v3 = v31;

LABEL_14:
LABEL_15:
  }
}

void __30__GTMTLReplayService_profile___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = GTMTLReplayClient_embeddedQueryShaderInfo(*(*(a1 + 48) + 8), (*(a1 + 48) + 280), *(a1 + 32));
    v4 = objc_opt_new();
    v16 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
    v6 = v16;
    [v4 setData:v5];

    [v4 setError:v6];
    (*(*(a1 + 40) + 16))();

    v7 = dispatch_semaphore_create(0);
    v8 = [v3 objectForKeyedSubscript:@"Streaming Shader Profiling Data"];

    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = *(v9 + 8);
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __30__GTMTLReplayService_profile___block_invoke_6;
      v13[3] = &unk_2796578D0;
      v12 = v7;
      v14 = v12;
      v15 = *(a1 + 40);
      GTMTLReplayClient_streamShaderProfilingData(v10, (v9 + 280), v11, v13);
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void __30__GTMTLReplayService_profile___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setRequestID:*(a1 + 48)];
    v14 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:&unk_2860D5F98 requiringSecureCoding:1 error:&v14];
    v5 = v14;
    [v3 setData:v4];

    [v3 setError:v5];
    (*(*(a1 + 40) + 16))();

    v6 = dispatch_semaphore_create(0);
    v7 = *(a1 + 56);
    v8 = *(v7 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__GTMTLReplayService_profile___block_invoke_8;
    v11[3] = &unk_2796578D0;
    v12 = v6;
    v9 = *(a1 + 32);
    v13 = *(a1 + 40);
    v10 = v6;
    GTMTLReplayClient_collectGPUShaderTimelineData(v8, (v7 + 280), v9, v11);
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v32 = dispatch_queue_create("gputools.apsreply", 0);
    v3 = objc_opt_new();
    [v3 setRequestID:*(a1 + 56)];
    v49 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:&unk_2860D5FC0 requiringSecureCoding:1 error:&v49];
    v5 = v49;
    [v3 setData:v4];

    [v3 setError:v5];
    (*(*(a1 + 40) + 16))();

    v6 = GTShaderProfilerStreamDataFromReplayDataSource();
    v7 = dispatch_semaphore_create(0);
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"SupportsFileFormatV2"];
    [v6 setSupportsFileFormatV2:{objc_msgSend(v8, "BOOLValue")}];

    v9 = [*(a1 + 32) objectForKeyedSubscript:@"GPUState"];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:{@"GPUState", v32}];
      [v6 setProfiledPerformanceState:{objc_msgSend(v10, "intValue")}];
    }

    else
    {
      [v6 setProfiledPerformanceState:{2, v32}];
    }

    v11 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];

    if (v11)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:@"useOverlap"];
      v13 = [v12 BOOLValue];

      [v6 setProfiledExecutionMode:v13 ^ 1u];
    }

    else
    {
      [v6 setProfiledExecutionMode:0];
    }

    v14 = *(a1 + 64);
    v15 = *(v14 + 8);
    v16 = *(a1 + 32);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __30__GTMTLReplayService_profile___block_invoke_10;
    v37[3] = &unk_279658440;
    v17 = v7;
    v38 = v17;
    v40 = v47;
    v41 = v45;
    v42 = v43;
    v18 = v6;
    v39 = v18;
    GTMTLReplayClient_collectAPSData(v15, (v14 + 280), v16, v37);
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    [v18 setMetalPluginName:*(*(*(a1 + 48) + 8) + 40)];
    v19 = [*(*(*(a1 + 64) + 8) + 8) defaultDevice];
    v20 = [v19 name];
    [v18 setMetalDeviceName:v20];

    [v18 addPipelinePerformanceStatisticsData:*(*(*(a1 + 64) + 8) + 64)];
    v36 = 0;
    v21 = [v18 encode:0 error:&v36];
    v22 = v36;
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_new();
      [v24 setError:v23];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if ([v18 supportsFileFormatV2])
      {
        v24 = objc_opt_new();
        v52 = @"Profiler Raw URL";
        v53[0] = v21;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v35 = 0;
        v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v35];
        v23 = v35;
        [v24 setData:v26];

        [v24 setError:v23];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v24 = objc_opt_new();
        v27 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v21 options:8 error:0];
        v25 = v27;
        if (v27)
        {
          v50 = @"Profiler Raw";
          v51 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        }

        else
        {
          v28 = MEMORY[0x277CBEC10];
        }

        v34 = 0;
        v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v34];
        v23 = v34;
        [v24 setData:v29];

        [v24 setError:v23];
        (*(*(a1 + 40) + 16))();
        v30 = *(a1 + 40);
        v31 = objc_opt_new();
        (*(v30 + 16))(v30, v31);
      }
    }

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_11(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    v6 = *(a1 + 32);
    v7 = (v4 + 280);
    if (v3 == 1)
    {
      GTMTLReplayClient_embeddedDerivedCounterData(v5, v7, v6);
    }

    v8 = GTMTLReplayClient_derivedCounterData(v5, v7, v6);
    v9 = objc_opt_new();
    v14 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
    v11 = v14;
    [v9 setData:v10];

    [v9 setError:v11];
    (*(*(a1 + 40) + 16))();
    v12 = *(a1 + 40);
    v13 = objc_opt_new();
    (*(v12 + 16))(v12, v13);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__GTMTLReplayService_profile___block_invoke_13;
    v16[3] = &unk_2796578D0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v17 = v3;
    v18 = v7;
    v8 = v3;
    v9 = GTMTLReplayClient_streamBatchFilteredData(v5, (v4 + 280), v6, v16);
    v19 = @"Batch Filtering Started";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v20[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v12 = objc_opt_new();
    v15 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v15];
    v14 = v15;
    [v12 setData:v13];

    [v12 setError:v14];
    (*(*(a1 + 40) + 16))();

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_14(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    GTMTLReplayClient_addBatchFilteringRequest(*(a1 + 32));
    v4 = *(a1 + 40);
    v5 = objc_opt_new();
    (*(v4 + 16))(v4, v5);
  }
}

void __30__GTMTLReplayService_profile___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
    v7 = v8;
    [v5 setData:v6];
  }

  else
  {
    [v4 setData:0];
    v7 = 0;
  }

  [v5 setError:v7];
  (*(*(a1 + 40) + 16))();
  if (!v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __30__GTMTLReplayService_profile___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_12;
  }

  v4 = [v3 objectForKeyedSubscript:@"Streaming APS Profiling"];
  v5 = v4;
  if (!v4)
  {
    v6 = [v11 objectForKeyedSubscript:@"Remove APS Data"];

    if (v6)
    {
      [*(a1 + 40) removeAPSData];
    }

    else
    {
      v8 = [v11 objectForKeyedSubscript:@"Remove APS Timeline"];

      if (v8)
      {
        [*(a1 + 40) removeAPSTimelineData];
        v7 = *(a1 + 56);
        goto LABEL_10;
      }

      v9 = [v11 objectForKeyedSubscript:@"Streaming APS Counters"];

      if (!v9)
      {
        v10 = [v11 objectForKeyedSubscript:@"Remove APS Counters"];

        if (!v10)
        {
          if (*(*(*(a1 + 64) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSData:v11];
          }

          else if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSTimelineData:v11];
          }

          else if (*(*(*(a1 + 48) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSCounterData:v11];
          }

          goto LABEL_11;
        }

        [*(a1 + 40) removeAPSCounterData];
        v7 = *(a1 + 48);
        goto LABEL_10;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v7 = *(a1 + 64);
LABEL_10:
    *(*(v7 + 8) + 24) = 0;
    goto LABEL_11;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = [v4 isEqualToString:@"Timeline"];
  *(*(*(a1 + 64) + 8) + 24) = [v5 isEqualToString:@"Profiling"];
LABEL_11:

LABEL_12:
}

void __30__GTMTLReplayService_profile___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  if (v3)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __30__GTMTLReplayService_profile___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  if (v3)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

intptr_t __30__GTMTLReplayService_profile___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) addGPUTimelineData:a2];
  }

  else
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t __30__GTMTLReplayService_profile___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) addShaderProfilerData:a2];
  }

  else
  {
    return dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (BOOL)resume:(unint64_t)resume
{
  Operation = GTCoreOperationControl_getOperation(resume);
  if (Operation)
  {
    v4 = *(Operation + 16);
    if (v4)
    {
      v4();
      LOBYTE(Operation) = 1;
    }

    else
    {
      LOBYTE(Operation) = 0;
    }
  }

  return Operation;
}

- (BOOL)pause:(unint64_t)pause
{
  Operation = GTCoreOperationControl_getOperation(pause);
  if (Operation)
  {
    v4 = *(Operation + 8);
    if (v4)
    {
      v4();
      LOBYTE(Operation) = 1;
    }

    else
    {
      LOBYTE(Operation) = 0;
    }
  }

  return Operation;
}

- (BOOL)cancel:(unint64_t)cancel
{
  Operation = GTCoreOperationControl_getOperation(cancel);
  if (Operation)
  {
    *(Operation + 24) = 1;
  }

  return Operation != 0;
}

- (id)decode:(id)decode
{
  v90[1] = *MEMORY[0x277D85DE8];
  decodeCopy = decode;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(decodeCopy, "requestID")}];
  v6 = v5;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    clientContext = self->_clientContext;
    v62 = v5;
    v8 = *var1;
    v9 = objc_opt_new();
    v67 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v63 = decodeCopy;
    requests = [decodeCopy requests];
    v11 = [requests countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = v11;
    v13 = 0x277CBE000uLL;
    v69 = requests;
    v70 = *v77;
    v65 = *MEMORY[0x277CCA450];
    v66 = *MEMORY[0x277CCA050];
    v64 = v9;
    while (1)
    {
      v14 = 0;
      v68 = v12;
      do
      {
        if (*v77 != v70)
        {
          objc_enumerationMutation(requests);
        }

        v15 = *(*(&v76 + 1) + 8 * v14);
        v16 = objc_alloc_init(*(v13 + 2872));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v15;
          streamRef = [v17 streamRef];
          dispatchUID = [v17 dispatchUID];
          dispatchUID2 = [v17 dispatchUID];
          Object = GTMTLSMContext_getObject(**(v8 + 40), streamRef, *(v8 + 88) + dispatchUID);
          if (Object && *Object == 57)
          {
            find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
            v86[0] = @"requestID";
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "requestID")}];
            v87[0] = v21;
            v86[1] = @"functionIndex";
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID2 & 0xFFFFFFFF00000000 | dispatchUID];
            v87[1] = v22;
            v86[2] = @"streamref";
            v12 = v68;
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
            v86[3] = @"type";
            v87[2] = v23;
            v87[3] = &unk_2860D6650;
            v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
            [v9 addObject:v24];

            requests = v69;
LABEL_26:
            v13 = 0x277CBE000;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = objc_opt_new();
              [v17 setRequestID:{objc_msgSend(v15, "requestID", clientContext)}];
              v41 = objc_alloc(MEMORY[0x277CCA9B8]);
              v80 = v65;
              v81 = @"unknown request";
              v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              v43 = [v41 initWithDomain:v66 code:1 userInfo:v42];
              [v17 setError:v43];

              [v67 addObject:v17];
              goto LABEL_27;
            }

            v17 = v15;
            requestID = [v17 requestID];
            dispatchUID3 = [v17 dispatchUID];
            dispatchUID4 = [v17 dispatchUID];
            streamRef = [v17 streamRef];
            v38 = GTMTLSMContext_getObject(**(v8 + 40), streamRef, *(v8 + 88) + dispatchUID3);
            if (v38 && *v38 == 16)
            {
              entry = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
              if (*entry)
              {
                v40 = *(*entry + 32);
              }

              else
              {
                v40 = 0;
              }

              v82[0] = @"requestID";
              v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{requestID, clientContext}];
              v83[0] = v44;
              v82[1] = @"functionIndex";
              v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID4 & 0xFFFFFFFF00000000 | dispatchUID3];
              v83[1] = v45;
              v82[2] = @"streamref";
              v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
              v83[2] = v46;
              v82[3] = @"object";
              if (v40)
              {
                v47 = atomic_load((v40 + 56));
                v48 = v40 + (~(v47 >> 2) & 8);
              }

              else
              {
                v48 = 8;
              }

              v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v48];
              v82[4] = @"type";
              v83[3] = v49;
              v83[4] = &unk_2860D6668;
              v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:5];

              [v64 addObject:v50];
              v9 = v64;
              requests = v69;
            }

            goto LABEL_26;
          }

          v17 = v15;
          dispatchUID5 = [v17 dispatchUID];
          dispatchUID6 = [v17 dispatchUID];
          v27 = [v17 type] - 1;
          if (v27 <= 7u && ((0xC7u >> v27) & 1) != 0)
          {
            v28 = dispatchUID6 & 0xFFFFFFFF00000000;
            v29 = qword_24DA90E48[v27];
            v30 = v29 + [v17 index];
            v84[0] = @"requestID";
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v17, "requestID")}];
            v85[0] = v31;
            v84[1] = @"functionIndex";
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28 | dispatchUID5];
            v85[1] = v32;
            v84[2] = @"object";
            v12 = v68;
            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
            v84[3] = @"type";
            v85[2] = v33;
            v85[3] = &unk_2860D6578;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:4];
            [v9 addObject:v34];

            requests = v69;
            v13 = 0x277CBE000;
          }
        }

LABEL_27:

        ++v14;
      }

      while (v12 != v14);
      v12 = [requests countByEnumeratingWithState:&v76 objects:v88 count:16];
      if (!v12)
      {
LABEL_29:

        decodeCopy = v63;
        completionHandler = [v63 completionHandler];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __29__GTMTLReplayService_decode___block_invoke;
        v71[3] = &unk_2796577B8;
        v72 = v67;
        v74 = completionHandler;
        v6 = v62;
        v52 = v62;
        v73 = v52;
        v53 = completionHandler;
        v54 = v67;
        FetchResourceObjectBatch(clientContext, v9, v71);
        v55 = v52;

        goto LABEL_31;
      }
    }
  }

  v9 = objc_opt_new();
  [v9 setRequestID:{objc_msgSend(decodeCopy, "requestID")}];
  v56 = objc_alloc(MEMORY[0x277CCA9B8]);
  v89 = *MEMORY[0x277CCA450];
  v90[0] = @"Decode request happened before replayer data source is loaded";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
  v58 = [v56 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v57];
  [v9 setError:v58];

  completionHandler2 = [decodeCopy completionHandler];
  (completionHandler2)[2](completionHandler2, v9);

  [v6 completed];
  v55 = 0;
LABEL_31:

  return v55;
}

void __29__GTMTLReplayService_decode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v52 = a3;
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v66 = 0;
  v53 = v4;
  v11 = [v5 unarchivedObjectOfClasses:v10 fromData:v4 error:&v66];
  v12 = v66;

  v13 = MEMORY[0x277CCAAC8];
  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
  v50 = v11;
  v20 = [v11 objectForKeyedSubscript:@"object"];
  v65 = v12;
  v21 = [v13 unarchivedObjectOfClasses:v19 fromData:v20 error:&v65];
  v49 = v65;

  v55 = [v21 objectForKeyedSubscript:@"object"];
  v54 = [v21 objectForKeyedSubscript:@"requestID"];
  v22 = [v21 objectForKeyedSubscript:@"functionIndex"];
  v23 = [v22 bytes];
  v24 = [v21 objectForKeyedSubscript:@"stream"];
  v25 = [v24 count];

  v64 = 0;
  v26 = 1280 * v25;
  v27 = GTCoreAlloc(1280 * v25);
  bzero(v27, 1280 * v25);
  concat = MEMORY[0x277D85CC8];
  v29 = MEMORY[0x277D85CC8];
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v30 = [v21 objectForKeyedSubscript:@"stream"];
  v31 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v31)
  {
    v32 = v31;
    v45 = v26;
    v46 = v22;
    v47 = v21;
    v33 = *v61;
    do
    {
      v34 = 0;
      v35 = concat;
      do
      {
        if (*v61 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v60 + 1) + 8 * v34);
        v58[0] = GTMTLTextureDescriptorDefaults;
        v58[1] = unk_24DA92D40;
        v58[2] = xmmword_24DA92D50;
        v59 = 512;
        v37 = *v23++;
        v38 = NewResourceData(v36, v55, v54, 0, v58, v27, &v64, v37, v35);
        concat = dispatch_data_create_concat(v35, v38);

        ++v34;
        v35 = concat;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v32);
    v39 = 80 * v64;
    v22 = v46;
    v21 = v47;
    v26 = v45;
  }

  else
  {
    v39 = 0;
  }

  destructor[0] = MEMORY[0x277D85DD0];
  destructor[1] = 3221225472;
  destructor[2] = __29__GTMTLReplayService_decode___block_invoke_2;
  destructor[3] = &__block_descriptor_48_e5_v8__0l;
  destructor[4] = v27;
  destructor[5] = v26;
  v40 = dispatch_data_create(v27, v39, 0, destructor);
  [v48 setObject:v40 forKey:@"info"];
  [v48 setObject:concat forKey:@"data"];
  v41 = [*(a1 + 32) copy];
  [v48 setObject:v41 forKey:@"unknown"];

  v42 = objc_opt_new();
  v56 = 0;
  v43 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v48 requiringSecureCoding:1 error:&v56];
  v44 = v56;
  [v42 setData:v43];

  [v42 setError:v44];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) completed];
}

uint64_t __29__GTMTLReplayService_decode___block_invoke_2(uint64_t a1)
{
  result = MEMORY[0x253034350](*MEMORY[0x277D85F48], *(a1 + 32), *(a1 + 40));
  *(a1 + 32) = 0;
  return result;
}

- (id)update:(id)update
{
  v115[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v76 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(updateCopy, "requestID")}];
  val = self;
  clientContext = self->_clientContext;
  var1 = clientContext->var1;
  if (var1)
  {
    v79 = *var1;
  }

  else
  {
    v79 = 0;
  }

  v75 = objc_opt_new();
  v81 = -[GTReplayerOperationBatch initWithRequestID:]([GTReplayerOperationBatch alloc], "initWithRequestID:", [updateCopy requestID]);
  v82 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  requests = [updateCopy requests];
  v8 = [v6 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [updateCopy requests];
  v10 = [requests2 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_opt_new();
      [v8 setObject:v12 atIndexedSubscript:v11];

      requests3 = [updateCopy requests];
      ++v11;
      v14 = [requests3 count];
    }

    while (v14 > v11);
  }

  requests4 = [updateCopy requests];
  v16 = [requests4 count];

  if (v16)
  {
    v17 = 0;
    v77 = *MEMORY[0x277CCA050];
    v80 = *MEMORY[0x277CCA450];
    while (1)
    {
      requests5 = [updateCopy requests];
      v19 = [requests5 objectAtIndexedSubscript:v17];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v19;
          data = [v31 data];
          uuid = [v31 uuid];
          [v82 setObject:data forKeyedSubscript:uuid];

          if ([v82 count] == 1)
          {
            v34 = [GTReplayerOperation alloc];
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __29__GTMTLReplayService_update___block_invoke;
            v100[3] = &unk_279657718;
            v104 = v79;
            v101 = v82;
            v105 = clientContext;
            v102 = v31;
            v103 = v8;
            v106 = v17;
            v35 = [(GTReplayerOperation *)v34 initWithBatch:v81 withBlock:v100];
            [(GTReplayerOperationBatch *)v81 addOperation:v35];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v79)
            {
              objc_initWeak(&location, val);
              v36 = [GTReplayerOperation alloc];
              v94[0] = MEMORY[0x277D85DD0];
              v94[1] = 3221225472;
              v94[2] = __29__GTMTLReplayService_update___block_invoke_2;
              v94[3] = &unk_279657740;
              objc_copyWeak(v97, &location);
              v95 = v19;
              v97[1] = v79;
              v97[2] = clientContext;
              v96 = v8;
              v98 = v17;
              v37 = [(GTReplayerOperation *)v36 initWithBatch:v81 withBlock:v94];
              [(GTReplayerOperationBatch *)v81 addOperation:v37];

              objc_destroyWeak(v97);
              objc_destroyWeak(&location);
            }

            else
            {
              v59 = objc_opt_new();
              [v59 setRequestID:{objc_msgSend(v19, "requestID")}];
              v60 = objc_alloc(MEMORY[0x277CCA9B8]);
              v110 = v80;
              v111 = @"Update request happened before replayer data source is loaded";
              v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
              v62 = [v60 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v61];
              [v59 setError:v62];

              [v8 setObject:v59 atIndexedSubscript:v17];
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v19;
              configuration = [v41 configuration];
              [v41 requestID];
              v43 = val->_gputrace != 0;
              v44 = [GTReplayerOperation alloc];
              v88[0] = MEMORY[0x277D85DD0];
              v88[1] = 3221225472;
              v88[2] = __29__GTMTLReplayService_update___block_invoke_3;
              v88[3] = &unk_279657768;
              v93 = v43;
              v89 = configuration;
              v90 = v41;
              v91 = v8;
              v92 = v17;
              v45 = v41;
              v46 = configuration;
              v47 = [(GTReplayerOperation *)v44 initWithBatch:v81 withBlock:v88];
              [(GTReplayerOperationBatch *)v81 addOperation:v47];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = v19;
                v53 = val->_terminateConnection == 0;
                connection = [v52 connection];
                terminateConnection = val->_terminateConnection;
                val->_terminateConnection = connection;

                [v52 path];
                if (v53)
                  v67 = {;
                  terminatePath = val->_terminatePath;
                  val->_terminatePath = v67;
                }

                else
                  terminatePath = {;
                  v57 = MessagePathMerge();
                  v58 = val->_terminatePath;
                  val->_terminatePath = v57;
                }
              }

              else
              {
                v63 = objc_opt_new();
                [v63 setRequestID:{objc_msgSend(v19, "requestID")}];
                v64 = objc_alloc(MEMORY[0x277CCA9B8]);
                v108 = v80;
                v109 = @"unknown request";
                v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
                v66 = [v64 initWithDomain:v77 code:1 userInfo:v65];
                [v63 setError:v66];

                [v8 setObject:v63 atIndexedSubscript:v17];
              }
            }
          }
        }

        goto LABEL_25;
      }

      v20 = v19;
      v21 = objc_opt_new();
      [v21 setRequestID:{objc_msgSend(v20, "requestID")}];
      v22 = clientContext->var1;
      if (!v22)
      {
        break;
      }

      v24 = *(v22 + 9);
      v23 = v22 + 72;
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      v25 = *(v23 + 1);
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "sessionsID")}];
      v27 = [v25 objectForKey:v26];

      dispatch_semaphore_signal(*v23);
      if (!v27)
      {
        v48 = objc_alloc(MEMORY[0x277CCA9B8]);
        v112 = v80;
        v113 = @"ASV viewer session does not exist";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v40 = [v48 initWithDomain:v77 code:1 userInfo:v39];
        goto LABEL_24;
      }

      v107 = 0;
      v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v107];
      v29 = v107;
      [v21 setData:v28];

      [v21 setError:v29];
      [v8 setObject:v21 atIndexedSubscript:v17];
      data2 = [v20 data];

      [v27 receiveData:data2];
LABEL_25:

      requests6 = [updateCopy requests];
      v51 = [requests6 count];

      if (v51 <= ++v17)
      {
        goto LABEL_34;
      }
    }

    v38 = objc_alloc(MEMORY[0x277CCA9B8]);
    v114 = v80;
    v115[0] = @"Update request happened before replayer data source is loaded";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v40 = [v38 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v39];
LABEL_24:
    v49 = v40;
    [v21 setError:v40];

    [v8 setObject:v21 atIndexedSubscript:v17];
    goto LABEL_25;
  }

LABEL_34:
  v68 = [GTReplayerOperation alloc];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __29__GTMTLReplayService_update___block_invoke_4;
  v84[3] = &unk_279657790;
  v85 = v8;
  v86 = updateCopy;
  v69 = v76;
  v87 = v69;
  v70 = updateCopy;
  v71 = v8;
  v72 = [(GTReplayerOperation *)v68 initWithBatch:v81 withBlock:v84];
  [(GTReplayerOperationBatch *)v81 addOperation:v72];
  [(GTReplayerOperationBatch *)v81 finish:clientContext->var7.var0];
  v73 = v69;

  return v69;
}

void __29__GTMTLReplayService_update___block_invoke_4(id *a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCAAB0];
  v5 = [a1[4] copy];
  v9 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
  v7 = v9;
  [v3 setData:v6];

  [v3 setError:v7];
  v8 = [a1[5] completionHandler];
  (v8)[2](v8, v3);

  [a1[6] completed];
}

void __29__GTMTLReplayService_update___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v4 = *(*(a1 + 64) + 8);
      v5 = *(v4 + 160);
      v6 = *(v4 + 168);
      v7 = GTTransportArchiveDirectory();
      UpdateDebugFileCache(v3, v5, v6, v7);
    }

    else
    {
      v8 = GTTransportArchiveDirectory();
      v9 = v3;
      v10 = v8;
      if (v9)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10 isDirectory:1];
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = 0;
        [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v24];
        v13 = v24;

        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x2020000000;
        v23 = 1;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __StoreDebugFileCache_block_invoke;
        v19[3] = &unk_279657998;
        v14 = v11;
        v20 = v14;
        v21 = v22;
        [v9 enumerateKeysAndObjectsUsingBlock:v19];

        _Block_object_dispose(v22, 8);
      }
    }

    v15 = objc_opt_new();
    [v15 setRequestID:{objc_msgSend(*(a1 + 40), "requestID")}];
    v18 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v18];
    v17 = v18;
    [v15 setData:v16];

    [v15 setError:v17];
    [*(a1 + 48) setObject:v15 atIndexedSubscript:*(a1 + 72)];
  }
}

void __29__GTMTLReplayService_update___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v253[16] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_31;
  }

  v178 = WeakRetained;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v181 = a1;
  v6 = *(a1 + 32);
  v7 = [v6 streamRef];
  [v6 dispatchUID];
  [v6 dispatchUID];
  v185 = v6;
  v8 = [v6 shaderURL];

  if (v8)
  {
    v9 = [v185 shaderURL];
    v10 = [v9 startAccessingSecurityScopedResource];

    if (v10)
    {
      v11 = **(v178 + 1);
      v12 = [v185 shaderURL];
      apr_pool_cleanup_register(v11, v12, CleanupSandboxExtensionURL_884, apr_pool_cleanup_null);
    }

    v13 = [v185 shaderURL];
    v14 = *(*(*(v181 + 64) + 8) + 160);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [v14 setObject:v13 forKeyedSubscript:v15];

    v244 = @"streamref";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v185, "streamRef")}];
    v245 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v245 forKeys:&v244 count:1];

    v18 = [v185 shaderURL];
  }

  else
  {
    v19 = [v185 shaderIR];

    if (v19)
    {
      v242[0] = @"streamref";
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v185, "streamRef")}];
      v243[0] = v20;
      v242[1] = @"IR";
      v21 = [v185 shaderIR];
      v243[1] = v21;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v243 forKeys:v242 count:2];
    }

    else
    {
      v17 = [v185 shaderSource];

      if (v17)
      {
        v240[0] = @"streamref";
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v185, "streamRef")}];
        v241[0] = v22;
        v240[1] = @"source";
        v23 = [v185 shaderSource];
        v241[1] = v23;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v241 forKeys:v240 count:2];
      }
    }

    v18 = 0;
  }

  v184 = objc_opt_new();
  [v184 setRequestID:{objc_msgSend(*(v181 + 32), "requestID")}];
  v24 = *(*(v181 + 64) + 8);
  v25 = v17;
  v183 = v5;
  v179 = v25;
  v180 = v18;
  if (v180)
  {
    v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v180 options:0 error:0];
    v27 = [v25 mutableCopy];
    v28 = v27;
    if (v26)
    {
      [v27 setObject:v26 forKeyedSubscript:@"IR"];
    }

    else
    {
      v29 = [MEMORY[0x277CBEA90] data];
      [v28 setObject:v29 forKeyedSubscript:@"IR"];
    }

    v25 = [v28 copy];
  }

  v196 = 0;
  v201[0] = 0;
  v205 = 0u;
  v206 = 0u;
  v207 = 0;
  v182 = v25;
  GTMTLReplayController_rewind(v24);
  v30 = v24[1];
  obj = v30;
  v31 = *v24;
  v32 = *(*v24 + 5);
  v33 = *(*v24 + 11);
  v34 = *(*v24 + 12);
  v35 = [v182 objectForKeyedSubscript:@"streamref"];
  v36 = [v35 unsignedLongLongValue];

  v253[0] = v36;
  entry = find_entry(*v32, v253, 8uLL, 0);
  if (!*entry || (v38 = *(*entry + 32)) == 0)
  {
LABEL_21:
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unable to find object (%llu)", v36];
    v40 = GTUpdateShaderMakeError(1u, v39, 0, 0);
    goto LABEL_22;
  }

  while (v38[2] > v34 + v33)
  {
    v38 = v38[4];
    if (!v38)
    {
      goto LABEL_21;
    }
  }

  v200 = v32;
  objc_storeStrong(v201, v30);
  v50 = *(v31 + 8);
  v202 = v50;
  *v203 = v33;
  v204 = v34 + v33;
  v201[1] = v24;
  v51 = *v38;
  if (v51 != 43)
  {
    if (v51 == 62)
    {
      v175 = v182;
      v190 = v38[1];
      v52 = obj;
      if (v38[2] >= v33)
      {
        v53 = objc_alloc(MEMORY[0x277CBEB58]);
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v190];
        v55 = [v53 initWithObjects:{v54, 0}];
        v56 = v207;
        v207 = v55;

        v52 = v201[0];
      }

      v173 = [v52 defaultDevice];
      v177 = [v175 objectForKeyedSubscript:@"source"];
      if (v177)
      {
        v57 = v38[15];
        if (v57)
        {
          v58 = [v201[0] dynamicLibraries];
          v59 = MakeMTLCompileOptions(v57, v58);
        }

        else
        {
          v59 = objc_alloc_init(MEMORY[0x277CD6D10]);
        }

        [v59 setDebuggingEnabled:1];
        v176 = [v173 newLibraryWithSource:v177 options:v59 error:&v196];

        if (v176)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v74 = [v175 objectForKeyedSubscript:@"IR"];
        v176 = GTCreateMTLLibrary(v24, v38, v74, &v196);

        if (v176)
        {
LABEL_50:
          v174 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v190];
          [v174 setObject:v176 forKeyedSubscript:v75];

          v76 = [v174 copy];
          v77 = v205;
          *&v205 = v76;

          v188 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v78 = [v24[1] functionMap];
          [v188 addEntriesFromDictionary:v78];

          [v188 addEntriesFromDictionary:v174];
          newpool[0] = 0;
          apr_pool_create_ex(newpool, 0, 0, v79);
          p = newpool[0];
          v80 = apr_array_make(newpool[0], 128, 8);
          v186 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v81 = v200;
          v82 = *v203;
          GTMTLSMContext_getObjects(v200[30], *v203, v80);
          nelts = v80->nelts;
          if (nelts >= 1)
          {
            for (i = 0; i < nelts; ++i)
            {
              v85 = *&v80->elts[8 * i];
              if (v85[5] == v190)
              {
                v86 = [v188 copy];
                v87 = GTCreateMTLFunction(v24, v85, v86, &v196);

                if (!v87)
                {
LABEL_69:
                  v107 = 0;
                  goto LABEL_82;
                }

                v88 = v85[1];
                v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v88];
                [v188 setObject:v87 forKeyedSubscript:v89];

                v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v88];
                [v186 setObject:v87 forKeyedSubscript:v90];

                nelts = v80->nelts;
              }
            }
          }

          v91 = [v186 copy];
          v92 = *(&v206 + 1);
          *(&v206 + 1) = v91;

          v80->nelts = 0;
          v186 = objc_alloc_init(MEMORY[0x277CBEB38]);
          GTMTLSMContext_getObjects(v81[15], v82, v80);
          v93 = v80->nelts;
          if (v93 >= 1)
          {
            for (j = 0; j < v93; ++j)
            {
              v95 = *&v80->elts[8 * j];
              if (*(v95 + 56) == v190)
              {
                v96 = MEMORY[0x277CCABB0];
                v97 = v188;
                v98 = [v96 numberWithUnsignedLongLong:v190];
                v99 = [v97 objectForKeyedSubscript:v98];

                if (!v99)
                {
                  GTUpdateShaderMakeError(1u, @"Internal error: Failed to find runtime library for dylib", 0, 0);
                  v196 = v107 = 0;
                  goto LABEL_82;
                }

                v100 = [v24[1] defaultDevice];
                v253[0] = 0;
                v101 = [v100 newDynamicLibrary:v99 error:v253];
                v102 = v253[0];
                if (v101)
                {
                  v103 = v101;
                }

                else
                {
                  v196 = GTUpdateShaderMakeError(4u, @"Failed to instantiate dynamic library", 0, v102);
                }

                if (!v101)
                {
                  goto LABEL_69;
                }

                v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v95 + 8)];
                [v186 setObject:v101 forKeyedSubscript:v104];

                v93 = v80->nelts;
              }
            }
          }

          v105 = [v186 copy];
          v106 = *(&v205 + 1);
          *(&v205 + 1) = v105;

          if (v177)
          {
            apr_pool_destroy(p);
            goto LABEL_68;
          }

          v186 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v108 = v38[15];
          if (v108)
          {
            v109 = *(v108 + 32);
            if (v109)
            {
              v110 = *(v108 + 40);
              if (v110 >= 1)
              {
                v111 = v110 & 0x7FFFFFFF;
                v112 = v201[0];
                do
                {
                  v113 = *v109++;
                  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v113];
                  v115 = [v112 dynamicLibraries];
                  v116 = [v115 objectForKeyedSubscript:v114];

                  if (v116)
                  {
                    [v186 setObject:v116 forKeyedSubscript:v114];
                  }

                  --v111;
                }

                while (v111);
              }
            }
          }

          v117 = [v186 copy];
          v118 = v206;
          *&v206 = v117;

          v107 = 1;
LABEL_82:

          apr_pool_destroy(p);
          if (v107)
          {
            goto LABEL_83;
          }

          goto LABEL_23;
        }
      }

      goto LABEL_23;
    }

    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unknown object type (%llu:%u)", v36, v51];
    v40 = GTUpdateShaderMakeError(1u, v39, 0, 0);
LABEL_22:
    v196 = v40;

    goto LABEL_23;
  }

  v191 = v50;
  v60 = v182;
  if (v38[2] >= v33)
  {
    v70 = MEMORY[0x277CCACA8];
    v71 = _GTMTLSMFunctionDisplayLabel(v38, v191);
    v72 = [v70 stringWithFormat:@"Ensure the modified function '%@' isn't created during the capture", v71];

    v73 = GTUpdateShaderMakeError(5u, @"Unable to update shader function", v72, 0);
LABEL_71:
    v196 = v73;

    goto LABEL_23;
  }

  Function = GTMTLSMContext_lastFunction(*v32, v38[5], v33);
  if (!Function)
  {
    v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unable to find library (%llu)", v38[5]];
    v73 = GTUpdateShaderMakeError(1u, v72, 0, 0);
    goto LABEL_71;
  }

  v62 = Function;
  v173 = [v60 objectForKeyedSubscript:@"IR"];
  v177 = GTCreateMTLLibrary(v24, v62, v173, &v196);
  if (v177)
  {
    v63 = [v24[1] functionMap];
    v176 = [v63 mutableCopy];

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38[5]];
    [v176 setObject:v177 forKeyedSubscript:v64];

    v65 = [v176 copy];
    v174 = GTCreateMTLFunction(v24, v38, v65, &v196);

    if (v174)
    {
      v66 = v38[1];
      v188 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
      [v188 setObject:v174 forKeyedSubscript:v67];

      v68 = [v188 copy];
      v69 = *(&v206 + 1);
      *(&v206 + 1) = v68;

LABEL_68:
LABEL_83:
      v198 = 0u;
      v199 = 0u;
      v197 = 0u;
      if (GTUpdateShaderPipelines(&v200, &v197, &v196))
      {
        v119 = v24[1];
        v120 = *(&v206 + 1);
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        obja = v120;
        v121 = [v120 countByEnumeratingWithState:&v236 objects:v253 count:16];
        if (v121)
        {
          v122 = *v237;
          v123 = v207;
          do
          {
            for (k = 0; k != v121; ++k)
            {
              if (*v237 != v122)
              {
                objc_enumerationMutation(obja);
              }

              v125 = *(*(&v236 + 1) + 8 * k);
              v126 = [v123 containsObject:v125];
              v127 = [obja objectForKeyedSubscript:v125];
              if (v126)
              {
                [v24[22] setObject:v127 forKeyedSubscript:v125];
              }

              else
              {
                [v119 setFunction:v127 forKey:{objc_msgSend(v125, "unsignedLongLongValue")}];
              }
            }

            v121 = [obja countByEnumeratingWithState:&v236 objects:v253 count:16];
          }

          while (v121);
        }

        v128 = v205;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v192 = v128;
        v129 = [v128 countByEnumeratingWithState:&v232 objects:newpool count:16];
        if (v129)
        {
          v130 = *v233;
          v131 = v207;
          do
          {
            for (m = 0; m != v129; ++m)
            {
              if (*v233 != v130)
              {
                objc_enumerationMutation(v192);
              }

              v133 = *(*(&v232 + 1) + 8 * m);
              v134 = [v131 containsObject:v133];
              v135 = [v192 objectForKeyedSubscript:v133];
              if (v134)
              {
                [v24[22] setObject:v135 forKeyedSubscript:v133];
              }

              else
              {
                [v119 setLibrary:v135 forKey:{objc_msgSend(v133, "unsignedLongLongValue")}];
              }
            }

            v129 = [v192 countByEnumeratingWithState:&v232 objects:newpool count:16];
          }

          while (v129);
        }

        v136 = *(&v205 + 1);
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v189 = v136;
        v137 = [v136 countByEnumeratingWithState:&v228 objects:v251 count:16];
        if (v137)
        {
          v138 = *v229;
          do
          {
            for (n = 0; n != v137; ++n)
            {
              if (*v229 != v138)
              {
                objc_enumerationMutation(v189);
              }

              v140 = *(*(&v228 + 1) + 8 * n);
              v141 = [v189 objectForKeyedSubscript:v140];
              [v119 setDynamicLibrary:v141 forKey:{objc_msgSend(v140, "unsignedLongLongValue")}];
            }

            v137 = [v189 countByEnumeratingWithState:&v228 objects:v251 count:16];
          }

          while (v137);
        }

        v142 = v197;
        v224 = 0u;
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v187 = v142;
        v143 = [v187 countByEnumeratingWithState:&v224 objects:v250 count:16];
        if (v143)
        {
          v144 = *v225;
          do
          {
            for (ii = 0; ii != v143; ++ii)
            {
              if (*v225 != v144)
              {
                objc_enumerationMutation(v187);
              }

              v146 = *(*(&v224 + 1) + 8 * ii);
              v147 = [v187 objectForKeyedSubscript:v146];
              [v119 setRenderPipelineState:v147 forKey:{objc_msgSend(v146, "unsignedLongLongValue")}];
            }

            v143 = [v187 countByEnumeratingWithState:&v224 objects:v250 count:16];
          }

          while (v143);
        }

        v148 = *(&v197 + 1);
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v149 = [v148 countByEnumeratingWithState:&v220 objects:v249 count:16];
        if (v149)
        {
          v150 = *v221;
          do
          {
            for (jj = 0; jj != v149; ++jj)
            {
              if (*v221 != v150)
              {
                objc_enumerationMutation(v148);
              }

              v152 = *(*(&v220 + 1) + 8 * jj);
              v153 = [v148 objectForKeyedSubscript:v152];
              [v119 setComputePipelineState:v153 forKey:{objc_msgSend(v152, "unsignedLongLongValue")}];
            }

            v149 = [v148 countByEnumeratingWithState:&v220 objects:v249 count:16];
          }

          while (v149);
        }

        v154 = v198;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v155 = [v154 countByEnumeratingWithState:&v216 objects:v248 count:16];
        if (v155)
        {
          v156 = *v217;
          do
          {
            for (kk = 0; kk != v155; ++kk)
            {
              if (*v217 != v156)
              {
                objc_enumerationMutation(v154);
              }

              v158 = *(*(&v216 + 1) + 8 * kk);
              v159 = [v154 objectForKeyedSubscript:v158];
              [v119 setFunctionHandle:v159 forKey:{objc_msgSend(v158, "unsignedLongLongValue")}];
            }

            v155 = [v154 countByEnumeratingWithState:&v216 objects:v248 count:16];
          }

          while (v155);
        }

        v160 = *(&v198 + 1);
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v161 = [v160 countByEnumeratingWithState:&v212 objects:v247 count:16];
        if (v161)
        {
          v162 = *v213;
          do
          {
            for (mm = 0; mm != v161; ++mm)
            {
              if (*v213 != v162)
              {
                objc_enumerationMutation(v160);
              }

              v164 = *(*(&v212 + 1) + 8 * mm);
              v165 = [v160 objectForKeyedSubscript:v164];
              [v119 setVisibleFunctionTable:v165 forKey:{objc_msgSend(v164, "unsignedLongLongValue")}];
            }

            v161 = [v160 countByEnumeratingWithState:&v212 objects:v247 count:16];
          }

          while (v161);
        }

        v166 = v199;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v167 = [v166 countByEnumeratingWithState:&v208 objects:v246 count:16];
        if (v167)
        {
          v168 = *v209;
          do
          {
            for (nn = 0; nn != v167; ++nn)
            {
              if (*v209 != v168)
              {
                objc_enumerationMutation(v166);
              }

              v170 = *(*(&v208 + 1) + 8 * nn);
              v171 = [v166 objectForKeyedSubscript:v170];
              [v119 setIntersectionFunctionTable:v171 forKey:{objc_msgSend(v170, "unsignedLongLongValue")}];
            }

            v167 = [v166 countByEnumeratingWithState:&v208 objects:v246 count:16];
          }

          while (v167);
        }

        v41 = *(&v199 + 1);
      }

      else
      {
        v41 = 0;
      }

      __destructor_8_s0_s8_s16_s24_s32_s40(&v197);
      goto LABEL_24;
    }
  }

  else
  {
  }

LABEL_23:
  v41 = 0;
LABEL_24:
  __destructor_8_s8_S_s56_s64_s72_s80_s88(&v200);

  v42 = v196;
  v43 = v42;
  if (v41)
  {
    [v183 setObject:v41 forKeyedSubscript:@"updatedPipelines"];
  }

  else
  {
    v44 = [v42 localizedDescription];
    [v183 setObject:v44 forKeyedSubscript:@"propagate"];

    [v183 setObject:v43 forKeyedSubscript:@"error"];
  }

  if (v41)
  {
    v45 = MEMORY[0x277CCAAB0];
    v46 = [v183 objectForKeyedSubscript:@"updatedPipelines"];
    v47 = [v46 copy];
    v195 = 0;
    v48 = [v45 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:&v195];
    v49 = v195;
    [v184 setData:v48];
  }

  else
  {
    v49 = [v183 objectForKeyedSubscript:@"error"];
  }

  [v184 setError:v49];

  [*(v181 + 40) setObject:v184 atIndexedSubscript:*(v181 + 72)];
  WeakRetained = v178;
LABEL_31:
}

void __29__GTMTLReplayService_update___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      v3 = [*(a1 + 32) forceLoadUnusedResources];
      v4 = 1024;
      if (!v3)
      {
        v4 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFBFFLL | v4;
      v5 = [*(a1 + 32) forceResourcesResident];
      v6 = 2048;
      if (!v5)
      {
        v6 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFF7FFLL | v6;
      v7 = [*(a1 + 32) enableReplayFromOtherPlatforms];
      v8 = 0x200000;
      if (!v7)
      {
        v8 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFDFFFFFLL | v8;
      v9 = [*(a1 + 32) enableCapture];
      v10 = 0x4000000;
      if (!v9)
      {
        v10 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFBFFFFFFLL | v10;
      v11 = [*(a1 + 32) enableHUD];
      v12 = 0x8000000;
      if (!v11)
      {
        v12 = 0;
      }

      qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFF7FFFFFFLL | v12;
    }

    v13 = [*(a1 + 32) forceLoadActionClear];
    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFELL | v13;
    v14 = [*(a1 + 32) forceWaitUntilCompleted];
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFDLL | v15;
    v16 = [*(a1 + 32) disableOptimizeRestores];
    v17 = 16;
    if (!v16)
    {
      v17 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFEFLL | v17;
    v18 = [*(a1 + 32) enableDisplayOnDevice];
    v19 = 32;
    if (v18)
    {
      v19 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFDFLL | v19;
    v20 = [*(a1 + 32) disableHeapTextureCompression];
    v21 = 0x4000;
    if (!v20)
    {
      v21 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFBFFFLL | v21;
    v22 = [*(a1 + 32) enableLiveICBs];
    v23 = 0x100000000;
    if (!v22)
    {
      v23 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFEFFFFFFFFLL | v23;
    v24 = [*(a1 + 32) enableStopOnError];
    v25 = 0x10000000;
    if (!v24)
    {
      v25 = 0;
    }

    qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFEFFFFFFFLL | v25;
    v26 = objc_opt_new();
    [v26 setRequestID:{objc_msgSend(*(a1 + 40), "requestID")}];
    v29 = 0;
    v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:MEMORY[0x277CBEC38] requiringSecureCoding:1 error:&v29];
    v28 = v29;
    [v26 setData:v27];

    [v26 setError:v28];
    [*(a1 + 48) setObject:v26 atIndexedSubscript:*(a1 + 56)];
  }
}

- (void)display:(id)display
{
  displayCopy = display;
  v5 = displayCopy;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    v7 = *var1;
    if (*var1)
    {
      if ((qword_27F09CF90 & 0x20) == 0)
      {
        v8 = MEMORY[0x277CCA8C8];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __30__GTMTLReplayService_display___block_invoke;
        v10[3] = &unk_279658B00;
        v10[4] = self;
        v11 = displayCopy;
        v12 = v7;
        v9 = [v8 blockOperationWithBlock:v10];
        [v9 setQueuePriority:-4];
        [self->_clientContext->var7.var0 addOperation:v9];
      }
    }
  }
}

void __30__GTMTLReplayService_display___block_invoke(uint64_t a1)
{
  v15 = GTTransportServiceDaemonConnectionNew();
  v2 = allServices();
  v3 = filteredArrayByService();
  getpid();
  v4 = filteredArrayByPID();
  v5 = [v4 firstObject];

  v6 = objc_alloc(MEMORY[0x277D0B518]);
  v7 = [v5 serviceProperties];
  v8 = [v6 initWithConnection:v15 remoteProperties:v7];

  v9 = objc_opt_new();
  [v9 setReplayServicePort:*(*(a1 + 32) + 48)];
  [v9 setDispatchUID:{objc_msgSend(*(a1 + 40), "dispatchUID")}];
  [v9 setStreamRef:{objc_msgSend(*(a1 + 40), "streamRef")}];
  v10 = *(*(a1 + 48) + 88);
  v11 = v10 + [*(a1 + 40) dispatchUID] - 1;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTMTLSMContext_getTextureDescriptor(*(*(a1 + 48) + 40), [*(a1 + 40) streamRef], v11, &v16);
  [v9 setPixelFormat:WORD1(v18)];
  [v9 setWidth:DWORD2(v17)];
  [v9 setHeight:v18];
  v12 = [v8 show:v9 completionHandler:&__block_literal_global_236];

  v13 = objc_opt_new();
  [v13 setOverlays:{objc_msgSend(*(a1 + 40), "filters")}];
  v14 = [v8 update:v13 completionHandler:&__block_literal_global_239];
}

- (void)fetchIntoOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v8 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__GTMTLReplayService_fetchIntoOperation_completionHandler___block_invoke;
  v12[3] = &unk_279657CD0;
  v12[4] = self;
  v13 = operationCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = operationCopy;
  v11 = [v8 blockOperationWithBlock:v12];
  [v11 setQueuePriority:-4];
  [self->_clientContext->var7.var0 addOperation:v11];
}

void __59__GTMTLReplayService_fetchIntoOperation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 8);
  GTMTLReplayController_debugSubCommandStop(v2, [*(a1 + 40) dispatchUID], objc_msgSend(*(a1 + 40), "dispatchUID") >> 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v9 = 0;
  v5 = [v3 encodeFetchIntoOperation:v4 error:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = 0;
    v7 = [*(a1 + 40) event];
    atomic_store(0x100uLL, &v8);

    [*(v2 + 24) commitCommandBufferWithExternalSync:&v7];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)fetchInto:(id)into
{
  v52[1] = *MEMORY[0x277D85DE8];
  intoCopy = into;
  v34 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(intoCopy, "requestID")}];
  selfCopy = self;
  var1 = self->_clientContext->var1;
  if (var1 && *var1)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    requests = [intoCopy requests];
    v7 = [v5 initWithCapacity:{objc_msgSend(requests, "count")}];

    requests2 = [intoCopy requests];
    v9 = [requests2 count];

    if (v9)
    {
      for (i = 0; i < v13; ++i)
      {
        v11 = objc_opt_new();
        [v7 setObject:v11 atIndexedSubscript:i];

        requests3 = [intoCopy requests];
        v13 = [requests3 count];
      }
    }

    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    requests4 = [intoCopy requests];
    v15 = [requests4 count];

    v48 = v15;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __32__GTMTLReplayService_fetchInto___block_invoke;
    v42[3] = &unk_2796576A8;
    v46 = v47;
    v16 = intoCopy;
    v43 = v16;
    v17 = v7;
    v44 = v17;
    v45 = v34;
    v18 = MEMORY[0x253033CF0](v42);
    v36 = objc_opt_new();
    v19 = 0;
    v35 = *MEMORY[0x277CCA050];
    v20 = *MEMORY[0x277CCA450];
    while (1)
    {
      requests5 = [v16 requests];
      v22 = [requests5 count] > v19;

      if (!v22)
      {
        break;
      }

      requests6 = [v16 requests];
      v24 = [requests6 objectAtIndexedSubscript:v19];

      v25 = [v17 objectAtIndexedSubscript:v19];
      [v25 setRequestID:{objc_msgSend(v24, "requestID")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __32__GTMTLReplayService_fetchInto___block_invoke_2;
        v39[3] = &unk_2796576D0;
        v40 = v25;
        v41 = v18;
        [(GTMTLReplayService *)selfCopy fetchIntoOperation:v24 completionHandler:v39];
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x277CCA9B8]);
        v49 = v20;
        v50 = @"unknown request";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v28 = [v26 initWithDomain:v35 code:1 userInfo:v27];
        [v25 setError:v28];

        [v36 addObject:v25];
        v18[2](v18);
      }

      ++v19;
    }

    _Block_object_dispose(v47, 8);
  }

  else
  {
    v17 = objc_opt_new();
    [v17 setRequestID:{objc_msgSend(intoCopy, "requestID")}];
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"FetchInto request happened before replayer data source is loaded";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v31 = [v29 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v30];
    [v17 setError:v31];

    completionHandler = [intoCopy completionHandler];
    (completionHandler)[2](completionHandler, v17);

    [v34 completed];
  }

  return 0;
}

void __32__GTMTLReplayService_fetchInto___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!--*(*(*(a1 + 56) + 8) + 24))
  {
    v10[5] = v2;
    v10[6] = v3;
    v5 = objc_opt_new();
    [v5 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
    v6 = *(a1 + 40);
    v10[0] = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v10];
    v8 = v10[0];
    [v5 setData:v7];

    [v5 setError:v8];
    v9 = [*(a1 + 32) completionHandler];
    (v9)[2](v9, v5);

    [*(a1 + 48) completed];
  }
}

void __32__GTMTLReplayService_fetchInto___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCAAB0];
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:a2];
  v11 = v7;
  v9 = [v5 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v11];
  v10 = v11;

  [*(a1 + 32) setData:v9];
  [*(a1 + 32) setError:v10];
  (*(*(a1 + 40) + 16))();
}

- (id)fetch:(id)fetch
{
  v275[1] = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  v5 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(fetchCopy, "requestID")}];
  v6 = v5;
  var1 = self->_clientContext->var1;
  if (var1)
  {
    v8 = *var1;
    if (*var1)
    {
      clientContext = self->_clientContext;
      v200 = v5;
      v9 = objc_alloc(MEMORY[0x277CBEB38]);
      requests = [fetchCopy requests];
      v209 = [v9 initWithCapacity:{objc_msgSend(requests, "count")}];

      v11 = objc_opt_new();
      v201 = objc_opt_new();
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      obj = [fetchCopy requests];
      v216 = [obj countByEnumeratingWithState:&v243 objects:v273 count:16];
      if (!v216)
      {
        goto LABEL_121;
      }

      v215 = *v244;
      v197 = *MEMORY[0x277CCA450];
      v198 = *MEMORY[0x277CCA050];
      v202 = fetchCopy;
      v210 = v11;
      v208 = v8;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v244 != v215)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v243 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            requestID = [v14 requestID];
            streamRef = [v14 streamRef];
            dispatchUID = [v14 dispatchUID];
            dispatchUID2 = [v14 dispatchUID];
            Object = GTMTLSMContext_getObject(**(v8 + 40), [v14 streamRef], *(v8 + 88) + dispatchUID);
            if (Object)
            {
              v19 = Object;
              if (*Object == 80)
              {
                entry = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
                if (*entry)
                {
                  v21 = *(*entry + 32);
                }

                else
                {
                  v21 = 0;
                }

                v226 = 0uLL;
                *&v227 = 0;
                if (v14)
                {
                  objc_msgSend_size(v14);
                }

                v271[0] = @"requestID";
                v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID];
                v272[0] = v207;
                v271[1] = @"functionIndex";
                v206 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID2 & 0xFFFFFFFF00000000 | dispatchUID];
                v272[1] = v206;
                v271[2] = @"streamref";
                v205 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
                v272[2] = v205;
                v271[3] = @"object";
                if (v21)
                {
                  v51 = atomic_load((v21 + 56));
                  v52 = v21 + (~(v51 >> 2) & 8);
                }

                else
                {
                  v52 = 8;
                }

                v213 = v12;
                v204 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v52];
                v272[3] = v204;
                v272[4] = &unk_2860D6590;
                v271[4] = @"type";
                v271[5] = @"DependencyGraphRequestedTextureLevel";
                v203 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "level")}];
                v272[5] = v203;
                v271[6] = @"DependencyGraphRequestedTextureSlice";
                v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_slice(v14)];
                v272[6] = v53;
                v271[7] = @"DependencyGraphRequestedTextureDepthPlane";
                v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v14, "depth")}];
                v272[7] = v54;
                v271[8] = @"DependencyGraphRequestedTextureAttachmentIndex";
                v55 = MEMORY[0x277CCABB0];
                plane = [v14 plane];
                v57 = plane;
                v58 = v19[14];
                if (v58)
                {
                  v59 = (v58 + 34);
                }

                else
                {
                  v59 = (v19 + 20);
                }

                v60 = *v59;
                if (v60 == 260 || v60 == 255)
                {
                  if (plane)
                  {
                    v57 = 9;
                  }

                  else
                  {
                    v57 = 8;
                  }
                }

                v61 = [v55 numberWithInt:v57];
                v272[8] = v61;
                v271[9] = @"resolveMultisampleTexture";
                v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "resolveMultisampleTexture")}];
                v272[9] = v62;
                v271[10] = @"resolution";
                v269[0] = @"width";
                v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                v270[0] = v63;
                v269[1] = @"height";
                v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v226 + 1)];
                v269[2] = @"format";
                v270[1] = v64;
                v270[2] = &unk_2860D65A8;
                v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v270 forKeys:v269 count:3];
                v272[10] = v65;
                v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:v271 count:11];

                v11 = v210;
                [v210 addObject:v66];
                v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID];
                [v209 setObject:v66 forKeyedSubscript:v67];

                goto LABEL_62;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              requestID2 = [v14 requestID];
              *&v226 = [v14 streamRef];
              dispatchUID3 = [v14 dispatchUID];
              dispatchUID4 = [v14 dispatchUID];
              v25 = GTMTLSMContext_getObject(**(v8 + 40), [v14 streamRef], *(v8 + 88) + dispatchUID3);
              if (v25 && *v25 == 22)
              {
                v26 = find_entry(*(v8 + 8), &v226, 8uLL, 0);
                if (*v26)
                {
                  v27 = *(*v26 + 32);
                }

                else
                {
                  v27 = 0;
                }

                v73 = dispatchUID4 & 0xFFFFFFFF00000000;
                v267[0] = @"requestID";
                v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID2];
                v268[0] = v74;
                v267[1] = @"functionIndex";
                v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73 | dispatchUID3];
                v268[1] = v75;
                v267[2] = @"streamref";
                v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                v268[2] = v76;
                v267[3] = @"object";
                v213 = v12;
                if (v27)
                {
                  v77 = atomic_load((v27 + 56));
                  v78 = v27 + (~(v77 >> 2) & 8);
                }

                else
                {
                  v78 = 8;
                }

                v79 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v78];
                v268[3] = v79;
                v268[4] = &unk_2860D6578;
                v267[4] = @"type";
                v267[5] = @"range.location";
                v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "range")}];
                v268[5] = v80;
                v267[6] = @"range.length";
                v81 = MEMORY[0x277CCABB0];
                [v14 range];
                v83 = [v81 numberWithUnsignedLongLong:v82];
                v268[6] = v83;
                v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v268 forKeys:v267 count:7];

                [v210 addObject:v84];
                v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID2];
                [v209 setObject:v84 forKeyedSubscript:v85];

                v11 = v210;
LABEL_62:
                fetchCopy = v202;
                v8 = v208;
                v12 = v213;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
                requestID3 = [v14 requestID];
                streamRef = [v14 streamRef];
                dispatchUID5 = [v14 dispatchUID];
                dispatchUID6 = [v14 dispatchUID];
                v31 = *(v8 + 88);
                v32 = *(v8 + 40);
                *&v226 = streamRef;
                v33 = find_entry(*v32, &v226, 8uLL, 0);
                if (*v33)
                {
                  v34 = *(*v33 + 32);
                  if (v34)
                  {
                    v35 = 0;
                    v36 = dispatchUID6 & 0xFFFFFFFF00000000;
                    v37 = v31 + dispatchUID5;
                    do
                    {
                      if (v34[2] > v37 || (v38 = v34, v34[3] <= v37))
                      {
                        if (v35)
                        {
                          goto LABEL_28;
                        }

                        v38 = 0;
                      }

                      v34 = v34[4];
                      v35 = v38;
                    }

                    while (v34);
                    if (!v38)
                    {
                      goto LABEL_80;
                    }

LABEL_28:
                    v39 = find_entry(*(v8 + 8), &streamRef, 8uLL, 0);
                    if (*v39)
                    {
                      v40 = *(*v39 + 32);
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v241 = 0u;
                    v242 = 0u;
                    v239 = 0u;
                    v240 = 0u;
                    v237 = 0u;
                    v238 = 0u;
                    v235 = 0u;
                    v236 = 0u;
                    v233 = 0u;
                    v234 = 0u;
                    v231 = 0u;
                    v232 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    v227 = 0u;
                    v228 = 0u;
                    v226 = 0u;
                    if (v14)
                    {
                      objc_msgSend_slice(v14);
                    }

                    v265[0] = @"requestID";
                    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID3];
                    v266[0] = v107;
                    v265[1] = @"functionIndex";
                    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36 | dispatchUID5];
                    v266[1] = v108;
                    v265[2] = @"streamref";
                    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:streamRef];
                    v266[2] = v109;
                    v265[3] = @"object";
                    if (v40)
                    {
                      v110 = atomic_load((v40 + 56));
                      v111 = v40 + (~(v110 >> 2) & 8);
                    }

                    else
                    {
                      v111 = 8;
                    }

                    v112 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v111];
                    v266[3] = v112;
                    v266[4] = &unk_2860D65C0;
                    v265[4] = @"type";
                    v265[5] = @"tensorSlice";
                    v113 = [MEMORY[0x277CBEA90] dataWithBytes:&v226 length:272];
                    v266[5] = v113;
                    v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:6];

                    [v210 addObject:v114];
                    v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID3];
                    [v209 setObject:v114 forKeyedSubscript:v115];

                    v8 = v208;
                  }
                }

LABEL_80:
                v11 = v210;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                  requestID4 = [v14 requestID];
                  *&v226 = [v14 pipelineRef];
                  dispatchUID7 = [v14 dispatchUID];
                  dispatchUID8 = [v14 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v226, *(v8 + 88) + dispatchUID7))
                  {
                    goto LABEL_90;
                  }

                  v44 = find_entry(*(v8 + 8), &v226, 8uLL, 0);
                  if (*v44)
                  {
                    v45 = *(*v44 + 32);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v98 = dispatchUID8 & 0xFFFFFFFF00000000;
                  v263[0] = @"requestID";
                  v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID4];
                  v264[0] = v99;
                  v263[1] = @"functionIndex";
                  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v98 | dispatchUID7];
                  v264[1] = v100;
                  v263[2] = @"streamref";
                  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                  v264[2] = v101;
                  v263[3] = @"object";
                  if (v45)
                  {
                    v102 = atomic_load((v45 + 56));
                    v103 = v45 + (~(v102 >> 2) & 8);
                  }

                  else
                  {
                    v103 = 8;
                  }

                  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v103];
                  v263[4] = @"type";
                  v264[3] = v104;
                  v264[4] = &unk_2860D65D8;
                  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:5];

                  [v11 addObject:v105];
                  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID4];
                  [v209 setObject:v105 forKeyedSubscript:v106];

LABEL_89:
                  v8 = v208;
                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                  requestID5 = [v14 requestID];
                  *&v226 = [v14 pipelineRef];
                  dispatchUID9 = [v14 dispatchUID];
                  dispatchUID10 = [v14 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v226, *(v8 + 88) + dispatchUID9))
                  {
                    goto LABEL_90;
                  }

                  v49 = find_entry(*(v8 + 8), &v226, 8uLL, 0);
                  if (*v49)
                  {
                    v50 = *(*v49 + 32);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v120 = dispatchUID10 & 0xFFFFFFFF00000000;
                  v261[0] = @"requestID";
                  v211 = requestID5;
                  v121 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID5];
                  v262[0] = v121;
                  v261[1] = @"functionIndex";
                  v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v120 | dispatchUID9];
                  v262[1] = v122;
                  v261[2] = @"streamref";
                  v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                  v262[2] = v123;
                  v261[3] = @"object";
                  v124 = v11;
                  if (v50)
                  {
                    v125 = atomic_load((v50 + 56));
                    v126 = v50 + (~(v125 >> 2) & 8);
                  }

                  else
                  {
                    v126 = 8;
                  }

                  v127 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v126];
                  v262[3] = v127;
                  v262[4] = &unk_2860D65F0;
                  v261[4] = @"type";
                  v261[5] = @"mlModule";
                  mlModuleKey = [v14 mlModuleKey];
                  v262[5] = mlModuleKey;
                  v261[6] = @"mlResource";
                  mlResourceKey = [v14 mlResourceKey];
                  v262[6] = mlResourceKey;
                  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v262 forKeys:v261 count:7];

                  [v124 addObject:v130];
                  v131 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v211];
                  [v209 setObject:v130 forKeyedSubscript:v131];

                  v11 = v124;
                  fetchCopy = v202;
                  goto LABEL_89;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                  requestID6 = [v14 requestID];
                  *&v226 = [v14 pipelineRef];
                  dispatchUID11 = [v14 dispatchUID];
                  dispatchUID12 = [v14 dispatchUID];
                  if (!GTMTLSMContext_getObject(**(v8 + 40), v226, *(v8 + 88) + dispatchUID11))
                  {
                    goto LABEL_90;
                  }

                  v71 = find_entry(*(v8 + 8), &v226, 8uLL, 0);
                  if (*v71)
                  {
                    v72 = *(*v71 + 32);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v141 = dispatchUID12 & 0xFFFFFFFF00000000;
                  v259[0] = @"requestID";
                  v142 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID6];
                  v260[0] = v142;
                  v259[1] = @"functionIndex";
                  v143 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v141 | dispatchUID11];
                  v260[1] = v143;
                  v259[2] = @"streamref";
                  v144 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                  v260[2] = v144;
                  v259[3] = @"object";
                  if (v72)
                  {
                    v145 = atomic_load((v72 + 56));
                    v146 = v72 + (~(v145 >> 2) & 8);
                  }

                  else
                  {
                    v146 = 8;
                  }

                  v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v146];
                  v260[3] = v147;
                  v260[4] = &unk_2860D6608;
                  v259[4] = @"type";
                  v259[5] = @"mlIntermediateOps";
                  intermediateOps = [v14 intermediateOps];
                  v260[5] = intermediateOps;
                  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v260 forKeys:v259 count:6];

                  [v11 addObject:v149];
                  v150 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID6];
                  [v209 setObject:v149 forKeyedSubscript:v150];

LABEL_99:
                  v8 = v208;
LABEL_100:
                  fetchCopy = v202;
                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v86 = v13;
                  requestID7 = [v86 requestID];
                  dispatchUID13 = [v86 dispatchUID];
                  dispatchUID14 = [v86 dispatchUID];
                  if ([v86 solid])
                  {
                    v90 = -3;
                  }

                  else
                  {
                    v90 = -1;
                  }

                  v257[0] = @"requestID";
                  v91 = v12;
                  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v258[0] = v92;
                  v257[1] = @"functionIndex";
                  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID14 & 0xFFFFFFFF00000000 | dispatchUID13];
                  v258[1] = v116;
                  v257[2] = @"object";
                  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v90];
                  v258[2] = v94;
                  v258[3] = &unk_2860D6590;
                  v257[3] = @"type";
                  v257[4] = @"resolution";
                  v258[4] = &unk_2860D5F48;
                  v95 = MEMORY[0x277CBEAC0];
                  v96 = v258;
                  v97 = v257;
                  goto LABEL_83;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v86 = v13;
                  requestID7 = [v86 requestID];
                  dispatchUID15 = [v86 dispatchUID];
                  dispatchUID16 = [v86 dispatchUID];
                  v118 = [v86 index] - 513;
                  v255[0] = @"requestID";
                  v91 = v12;
                  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v256[0] = v92;
                  v255[1] = @"functionIndex";
                  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID16 & 0xFFFFFFFF00000000 | dispatchUID15];
                  v256[1] = v116;
                  v255[2] = @"object";
                  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v118];
                  v256[2] = v94;
                  v256[3] = &unk_2860D6590;
                  v255[3] = @"type";
                  v255[4] = @"resolution";
                  v256[4] = &unk_2860D5F70;
                  v95 = MEMORY[0x277CBEAC0];
                  v96 = v256;
                  v97 = v255;
LABEL_83:
                  v14 = [v95 dictionaryWithObjects:v96 forKeys:v97 count:5];

                  v8 = v208;
                  [v11 addObject:v14];
                  v12 = v91;
                  fetchCopy = v202;
                  v119 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  [v209 setObject:v14 forKeyedSubscript:v119];

                  goto LABEL_90;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v132 = v13;
                  requestID8 = [v132 requestID];
                  dispatchUID17 = [v132 dispatchUID];
                  dispatchUID18 = [v132 dispatchUID];
                  v136 = [v132 index] - 1025;
                  v253[0] = @"requestID";
                  v137 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID8];
                  v254[0] = v137;
                  v253[1] = @"functionIndex";
                  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID18 & 0xFFFFFFFF00000000 | dispatchUID17];
                  v254[1] = v134;
                  v253[2] = @"object";
                  v139 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v136];
                  v253[3] = @"type";
                  v254[2] = v139;
                  v254[3] = &unk_2860D6638;
                  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:4];

                  v8 = v208;
                  [v11 addObject:v14];
                  v140 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID8];
                  [v209 setObject:v14 forKeyedSubscript:v140];

                  goto LABEL_100;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                  requestID9 = [v14 requestID];
                  dispatchUID19 = [v14 dispatchUID];
                  dispatchUID20 = [v14 dispatchUID];
                  objectShaderThreadgroupBoundsPresent = [v14 objectShaderThreadgroupBoundsPresent];
                  v155 = MEMORY[0x277CBEB38];
                  v251[0] = @"requestID";
                  v212 = requestID9;
                  v156 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID9];
                  v252[0] = v156;
                  v251[1] = @"functionIndex";
                  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dispatchUID20 & 0xFFFFFFFF00000000 | dispatchUID19];
                  v252[1] = v152;
                  v251[2] = @"object";
                  v158 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1026];
                  v251[3] = @"type";
                  v252[2] = v158;
                  v252[3] = &unk_2860D6578;
                  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v252 forKeys:v251 count:4];
                  v160 = v159 = v11;
                  v161 = [v155 dictionaryWithDictionary:v160];

                  v11 = v159;
                  if (objectShaderThreadgroupBoundsPresent)
                  {
                    v226 = 0uLL;
                    *&v227 = 0;
                    if (v14)
                    {
                      objc_msgSend_objectShaderThreadgroupBeginBounds(v14);
                      streamRef = 0;
                      v224 = 0;
                      v225 = 0;
                      objc_msgSend_objectShaderThreadgroupEndBounds(v14);
                    }

                    else
                    {
                      streamRef = 0;
                      v224 = 0;
                      v225 = 0;
                    }

                    data = [MEMORY[0x277CBEB28] data];
                    [data appendBytes:&v226 length:12];
                    [data appendBytes:&streamRef length:12];
                    v173 = [data copy];
                    [v161 setObject:v173 forKeyedSubscript:@"objectThreadgroupRange"];
                  }

                  [v159 addObject:v161];
                  v174 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v212];
                  [v209 setObject:v161 forKeyedSubscript:v174];

                  goto LABEL_99;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v14 = objc_opt_new();
                  [v14 setRequestID:{objc_msgSend(v13, "requestID")}];
                  v169 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v247 = v197;
                  v248 = @"unknown request";
                  v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
                  v171 = [v169 initWithDomain:v198 code:1 userInfo:v170];
                  [v14 setError:v171];

                  [v201 addObject:v14];
                  goto LABEL_100;
                }

                v14 = v13;
                requestID10 = [v14 requestID];
                *&v226 = [v14 streamRef];
                dispatchUID21 = [v14 dispatchUID];
                dispatchUID22 = [v14 dispatchUID];
                v165 = GTMTLSMContext_getObject(**(v8 + 40), [v14 streamRef], *(v8 + 88) + dispatchUID21);
                fetchCopy = v202;
                if (v165)
                {
                  v166 = v165;
                  if (*v165 == 71 || *v165 == 29)
                  {
                    v167 = find_entry(*(v8 + 8), &v226, 8uLL, 0);
                    if (*v167)
                    {
                      v168 = *(*v167 + 32);
                    }

                    else
                    {
                      v168 = 0;
                    }

                    v175 = dispatchUID22 & 0xFFFFFFFF00000000;
                    v249[0] = @"requestID";
                    v176 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID10];
                    v250[0] = v176;
                    v249[1] = @"functionIndex";
                    v163 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v175 | dispatchUID21];
                    v250[1] = v163;
                    v249[2] = @"streamref";
                    v178 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v226];
                    v250[2] = v178;
                    v249[3] = @"object";
                    if (v168)
                    {
                      v179 = atomic_load((v168 + 56));
                      v180 = v168 + (~(v179 >> 2) & 8);
                    }

                    else
                    {
                      v180 = 8;
                    }

                    v181 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v180];
                    v250[3] = v181;
                    v250[4] = &unk_2860D65A8;
                    v249[4] = @"type";
                    v249[5] = @"context";
                    v182 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v166];
                    v250[5] = v182;
                    v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v250 forKeys:v249 count:6];

                    [v210 addObject:v183];
                    v184 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID10];
                    [v209 setObject:v183 forKeyedSubscript:v184];

                    v8 = v208;
                    v11 = v210;
                    goto LABEL_100;
                  }
                }
              }
            }
          }

LABEL_90:

          ++v12;
        }

        while (v12 != v216);
        v185 = [obj countByEnumeratingWithState:&v243 objects:v273 count:16];
        v216 = v185;
        if (!v185)
        {
LABEL_121:

          completionHandler = [fetchCopy completionHandler];
          v217[0] = MEMORY[0x277D85DD0];
          v217[1] = 3221225472;
          v217[2] = __28__GTMTLReplayService_fetch___block_invoke;
          v217[3] = &unk_279657680;
          v218 = fetchCopy;
          v222 = completionHandler;
          v6 = v200;
          v187 = v200;
          v219 = v187;
          v220 = v209;
          v221 = v201;
          v188 = v201;
          v189 = v209;
          v190 = completionHandler;
          FetchResourceObjectBatch(clientContext, v11, v217);
          v191 = v187;

          goto LABEL_123;
        }
      }
    }
  }

  v11 = objc_opt_new();
  [v11 setRequestID:{objc_msgSend(fetchCopy, "requestID")}];
  v192 = objc_alloc(MEMORY[0x277CCA9B8]);
  v274 = *MEMORY[0x277CCA450];
  v275[0] = @"Fetch request happened before replayer data source is loaded";
  v193 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v275 forKeys:&v274 count:1];
  v194 = [v192 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v193];
  [v11 setError:v194];

  completionHandler2 = [fetchCopy completionHandler];
  (completionHandler2)[2](completionHandler2, v11);

  [v6 completed];
  v191 = 0;
LABEL_123:

  return v191;
}

void __28__GTMTLReplayService_fetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v61 = a1;
    v57 = v6;
    v8 = MEMORY[0x277CCAAC8];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v72 = 0;
    v58 = v5;
    v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v5 error:&v72];
    v15 = v72;

    v16 = MEMORY[0x277CCAAC8];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
    v56 = v14;
    v23 = [v14 objectForKeyedSubscript:@"object"];
    v71 = v15;
    v24 = [v16 unarchivedObjectOfClasses:v22 fromData:v23 error:&v71];
    v55 = v71;

    v60 = [v24 objectForKeyedSubscript:@"object"];
    v59 = [v24 objectForKeyedSubscript:@"requestID"];
    v25 = [v24 objectForKeyedSubscript:@"functionIndex"];
    v26 = [v25 bytes];
    v27 = [v24 objectForKeyedSubscript:@"stream"];
    v28 = [v27 count];

    v70 = 0;
    v29 = 1280 * v28;
    v30 = GTCoreAlloc(1280 * v28);
    bzero(v30, 1280 * v28);
    concat = MEMORY[0x277D85CC8];
    v32 = MEMORY[0x277D85CC8];
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v34 = [v24 objectForKeyedSubscript:@"stream"];
    v35 = [v34 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v35)
    {
      v36 = v35;
      v52 = v29;
      v53 = v33;
      v54 = v24;
      v37 = *v67;
      do
      {
        v38 = 0;
        v39 = concat;
        do
        {
          if (*v67 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v66 + 1) + 8 * v38);
          v64[0] = GTMTLTextureDescriptorDefaults;
          v64[1] = unk_24DA92D40;
          v64[2] = xmmword_24DA92D50;
          v65 = 512;
          v41 = *v26++;
          v42 = NewResourceData(v40, v60, v59, *(v61 + 48), v64, v30, &v70, v41, v39);
          concat = dispatch_data_create_concat(v39, v42);

          ++v38;
          v39 = concat;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v36);
      v43 = 80 * v70;
      v24 = v54;
      v29 = v52;
      v33 = v53;
    }

    else
    {
      v43 = 0;
    }

    destructor[0] = MEMORY[0x277D85DD0];
    destructor[1] = 3221225472;
    destructor[2] = __28__GTMTLReplayService_fetch___block_invoke_2;
    destructor[3] = &__block_descriptor_48_e5_v8__0l;
    destructor[4] = v30;
    destructor[5] = v29;
    v45 = dispatch_data_create(v30, v43, 0, destructor);
    [v33 setObject:v45 forKey:@"info"];
    [v33 setObject:concat forKey:@"data"];
    v46 = [*(v61 + 56) copy];
    [v33 setObject:v46 forKey:@"unknown"];

    v47 = objc_opt_new();
    [v47 setRequestID:{objc_msgSend(*(v61 + 32), "requestID")}];
    v48 = MEMORY[0x277CCAAB0];
    v49 = [v33 copy];
    v62 = 0;
    v50 = [v48 archivedDataWithRootObject:v49 requiringSecureCoding:1 error:&v62];
    v51 = v62;
    [v47 setData:v50];

    [v47 setError:v51];
    (*(*(v61 + 64) + 16))();
    [*(v61 + 40) completed];

    v7 = v57;
    v5 = v58;
  }

  else
  {
    v44 = objc_opt_new();
    [v44 setRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
    [v44 setData:0];
    [v44 setError:v7];
    (*(*(a1 + 64) + 16))();
    [*(a1 + 40) completed];
  }
}

uint64_t __28__GTMTLReplayService_fetch___block_invoke_2(uint64_t a1)
{
  result = MEMORY[0x253034350](*MEMORY[0x277D85F48], *(a1 + 32), *(a1 + 40));
  *(a1 + 32) = 0;
  return result;
}

- (id)query:(id)query
{
  v136[4] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v86 = [objc_alloc(MEMORY[0x277D0B620]) initWithService:self andTokenId:{objc_msgSend(queryCopy, "requestID")}];
  selfCopy = self;
  clientContext = self->_clientContext;
  requestID = [queryCopy requestID];
  v5 = [[GTReplayerOperationBatch alloc] initWithRequestID:requestID];
  group = dispatch_group_create();
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  requests = [queryCopy requests];
  v8 = [v6 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [queryCopy requests];
  v10 = [requests2 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = objc_opt_new();
      [v8 setObject:v12 atIndexedSubscript:v11];

      requests3 = [queryCopy requests];
      ++v11;
      v14 = [requests3 count];
    }

    while (v14 > v11);
  }

  requests4 = [queryCopy requests];
  v16 = [requests4 count];

  if (v16)
  {
    v17 = 0;
    v82 = *MEMORY[0x277CCA050];
    v83 = *MEMORY[0x277CCA450];
    do
    {
      requests5 = [queryCopy requests];
      v19 = [requests5 objectAtIndexedSubscript:v17];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
        [v20 dispatchUID];
        [v20 dispatchUID];
        streamRef = [v20 streamRef];
        requestID2 = [v20 requestID];

        v23 = [GTReplayerOperation alloc];
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __28__GTMTLReplayService_query___block_invoke;
        v119[3] = &unk_279657570;
        v119[5] = clientContext;
        v119[6] = streamRef;
        v119[7] = requestID2;
        v119[4] = v8;
        v120 = v17;
        v24 = [(GTReplayerOperation *)v23 initWithBatch:v5 withBlock:v119];
        [(GTReplayerOperationBatch *)v5 addOperation:v24];

        v25 = v119;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v19;
          dispatchUID = [v26 dispatchUID];
          v28 = [v26 dispatchUID] >> 32;
          requestID3 = [v26 requestID];

          v30 = [GTReplayerOperation alloc];
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __28__GTMTLReplayService_query___block_invoke_2;
          v115[3] = &unk_279657570;
          v115[5] = requestID3;
          v115[6] = clientContext;
          v116 = dispatchUID;
          v117 = v28;
          v115[4] = v8;
          v118 = v17;
          v31 = [(GTReplayerOperation *)v30 initWithBatch:v5 withBlock:v115];
          [(GTReplayerOperationBatch *)v5 addOperation:v31];

          v25 = v115;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            requestID4 = [v19 requestID];
            v33 = [GTReplayerOperation alloc];
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __28__GTMTLReplayService_query___block_invoke_3;
            v113[3] = &unk_279657598;
            v113[5] = requestID4;
            v113[4] = v8;
            v114 = v17;
            v34 = [(GTReplayerOperation *)v33 initWithBatch:v5 withBlock:v113];
            [(GTReplayerOperationBatch *)v5 addOperation:v34];

            v25 = v113;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              requestID5 = [v19 requestID];
              v36 = [GTReplayerOperation alloc];
              v111[0] = MEMORY[0x277D85DD0];
              v111[1] = 3221225472;
              v111[2] = __28__GTMTLReplayService_query___block_invoke_4;
              v111[3] = &unk_2796575C0;
              v111[5] = clientContext;
              v111[6] = requestID5;
              v111[4] = v8;
              v112 = v17;
              v37 = [(GTReplayerOperation *)v36 initWithBatch:v5 withBlock:v111];
              [(GTReplayerOperationBatch *)v5 addOperation:v37];

              v25 = v111;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                requestID6 = [v19 requestID];
                v39 = [GTReplayerOperation alloc];
                v109[0] = MEMORY[0x277D85DD0];
                v109[1] = 3221225472;
                v109[2] = __28__GTMTLReplayService_query___block_invoke_5;
                v109[3] = &unk_2796575C0;
                v109[5] = clientContext;
                v109[6] = requestID6;
                v109[4] = v8;
                v110 = v17;
                v40 = [(GTReplayerOperation *)v39 initWithBatch:v5 withBlock:v109];
                [(GTReplayerOperationBatch *)v5 addOperation:v40];

                v25 = v109;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v44 = v19;
                  requestID7 = [v44 requestID];
                  dispatchUID2 = [v44 dispatchUID];
                  v135[0] = @"requestID";
                  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:requestID7];
                  v136[0] = v46;
                  v135[1] = @"functionIndex";
                  v47 = MEMORY[0x277CCABB0];
                  dispatchUID3 = [v44 dispatchUID];

                  v49 = [v47 numberWithUnsignedLongLong:dispatchUID3];
                  v136[1] = v49;
                  v136[2] = &unk_2860D6560;
                  v135[2] = @"object";
                  v135[3] = @"type";
                  v136[3] = &unk_2860D6578;
                  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:4];

                  dispatch_group_enter(group);
                  v102[0] = MEMORY[0x277D85DD0];
                  v102[1] = 3221225472;
                  v102[2] = __28__GTMTLReplayService_query___block_invoke_93;
                  v102[3] = &unk_2796575E8;
                  v103 = v50;
                  v106 = requestID7;
                  v107 = dispatchUID2;
                  v104 = v8;
                  v108 = v17;
                  v105 = group;
                  v51 = v50;
                  v81 = v102;
                  v79 = os_signpost_id_make_with_pointer(g_signpostLog, v51);
                  v52 = objc_alloc_init(MEMORY[0x277CCABD0]);
                  objc_initWeak(&location, v52);
                  v53 = MEMORY[0x277D85CD0];
                  v54 = MEMORY[0x277D85CD0];
                  v55 = MEMORY[0x277D85DD0];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __FetchResourceObject_block_invoke;
                  block[3] = &unk_279658AD8;
                  v131 = clientContext;
                  v56 = v52;
                  v130 = v56;
                  dispatch_async(v53, block);
                  v126[0] = v55;
                  v126[1] = 3221225472;
                  v126[2] = __FetchResourceObject_block_invoke_2;
                  v126[3] = &unk_279658508;
                  v57 = v53;
                  v127 = v53;
                  v128[1] = clientContext;
                  objc_copyWeak(v128, &location);
                  [v56 setCompletionBlock:v126];
                  objc_destroyWeak(v128);

                  v58 = MEMORY[0x277CCA8C8];
                  v121[0] = MEMORY[0x277D85DD0];
                  v121[1] = 3221225472;
                  v121[2] = __FetchResourceObject_block_invoke_4;
                  v121[3] = &unk_279658530;
                  objc_copyWeak(v124, &location);
                  v124[1] = clientContext;
                  v41 = v51;
                  v122 = v41;
                  v59 = v81;
                  v123 = v59;
                  v124[2] = v79;
                  v125 = 0;
                  v60 = [v58 blockOperationWithBlock:v121];
                  [clientContext->var7.var0 addOperation:v60];
                  [v56 addDependency:v60];
                  [clientContext->var7.var1 addOperation:v56];

                  objc_destroyWeak(v124);
                  objc_destroyWeak(&location);

                  goto LABEL_17;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    requestID8 = [v19 requestID];
                    v65 = selfCopy->_gputrace;
                    v66 = [GTReplayerOperation alloc];
                    v95[0] = MEMORY[0x277D85DD0];
                    v95[1] = 3221225472;
                    v95[2] = __28__GTMTLReplayService_query___block_invoke_4_112;
                    v95[3] = &unk_279657610;
                    v96 = v65;
                    v98 = requestID8;
                    v97 = v8;
                    v99 = v17;
                    v41 = v65;
                    v67 = [(GTReplayerOperation *)v66 initWithBatch:v5 withBlock:v95];
                    [(GTReplayerOperationBatch *)v5 addOperation:v67];
                  }

                  else
                  {
                    v41 = objc_opt_new();
                    -[NSURL setRequestID:](v41, "setRequestID:", [v19 requestID]);
                    v68 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v133 = v83;
                    v134 = @"unknown request";
                    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
                    v70 = [v68 initWithDomain:v82 code:1 userInfo:v69];
                    [(NSURL *)v41 setError:v70];

                    [v8 setObject:v41 atIndexedSubscript:v17];
                  }

                  goto LABEL_17;
                }

                requestID9 = [v19 requestID];
                v62 = [GTReplayerOperation alloc];
                v100[0] = MEMORY[0x277D85DD0];
                v100[1] = 3221225472;
                v100[2] = __28__GTMTLReplayService_query___block_invoke_3_109;
                v100[3] = &unk_279657598;
                v100[5] = requestID9;
                v100[4] = v8;
                v101 = v17;
                v63 = [(GTReplayerOperation *)v62 initWithBatch:v5 withBlock:v100];
                [(GTReplayerOperationBatch *)v5 addOperation:v63];

                v25 = v100;
              }
            }
          }
        }
      }

      v41 = v25[4];
LABEL_17:

      requests6 = [queryCopy requests];
      v43 = [requests6 count];

      ++v17;
    }

    while (v43 > v17);
  }

  v71 = [GTReplayerOperation alloc];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __28__GTMTLReplayService_query___block_invoke_5_117;
  v89[3] = &unk_279657638;
  v90 = group;
  v91 = v8;
  v94 = requestID;
  v92 = queryCopy;
  v72 = v86;
  v93 = v72;
  v73 = queryCopy;
  v74 = v8;
  v75 = group;
  v76 = [(GTReplayerOperation *)v71 initWithBatch:v5 withBlock:v89];
  [(GTReplayerOperationBatch *)v5 addOperation:v76];
  [(GTReplayerOperationBatch *)v5 finish:clientContext->var7.var0];
  v77 = v72;

  return v72;
}

void __28__GTMTLReplayService_query___block_invoke_5_117(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CCAAB0];
  v4 = [*(a1 + 40) copy];
  v8 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
  v6 = v8;
  [v2 setData:v5];

  [v2 setError:v6];
  [v2 setRequestID:*(a1 + 64)];
  v7 = [*(a1 + 48) completionHandler];
  (v7)[2](v7, v2);
  [*(a1 + 56) completed];
}

void __28__GTMTLReplayService_query___block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3)
    {
      v4 = *(a1 + 48);
      v12 = 0;
      v5 = GTMTLReplayClient_queryRasterMap(v3, v4, &v12);
      v6 = v12;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v13 = *MEMORY[0x277CCA450];
      v14[0] = @"Query request happened before replayer data source is loaded";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v6 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

      v5 = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v9 setRequestID:*(a1 + 56)];
    if (v6)
    {
      [v9 setData:0];
    }

    else
    {
      v11 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
      v6 = v11;
      [v9 setData:v10];
    }

    [v9 setError:v6];
    [*(a1 + 32) setObject:v9 atIndexedSubscript:*(a1 + 64)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v3 setRequestID:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    if (v4)
    {
      v5 = *(a1 + 60);
      v6 = *(a1 + 56);
      v23 = MEMORY[0x277CBEBF8];
      v7 = *(*v4 + 128);
      if (*(v7 + 12) <= v6)
      {
        v10 = MEMORY[0x277CBEBF8];
        v16 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v8 = (*(v7 + 24) + (v6 << 6));
        GTMTLReplayController_debugSubCommandResume(v4, (*v8 - *(*v4 + 88) + 1), v5 + 1);
        v9 = GTMTLReplayClient_generateFunctionResourceUsageInfoV2_impl(v4, v8, v5, &v23);
        v10 = v23;
        if (v9)
        {
          v22 = 0;
          v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v22];
          v12 = v22;
          [v3 setData:v11];

          [v3 setError:v12];
LABEL_9:
          [*(a1 + 32) setObject:v3 atIndexedSubscript:*(a1 + 64)];

          return;
        }
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = *MEMORY[0x277CCA050];
      v19 = *MEMORY[0x277CCA498];
      v26[0] = *MEMORY[0x277CCA450];
      v26[1] = v19;
      v27[0] = @"resource usage error";
      v27[1] = @"query again?";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v21 = [v17 initWithDomain:v18 code:1 userInfo:v20];
      [v3 setError:v21];

      v12 = 0;
      goto LABEL_9;
    }

    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Query request happened before replayer data source is loaded";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v14];
    [v3 setError:v15];

    v12 = 0;
    v10 = 0;
    goto LABEL_9;
  }
}

void __28__GTMTLReplayService_query___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = GTMTLDeviceCapabilitiesQuery();
    v6 = objc_alloc_init(MEMORY[0x277D0B628]);
    [v6 setRequestID:*(a1 + 40)];
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:GTMTLDeviceCapabilitiesSize() freeWhenDone:0];
    [v6 setData:v5];

    [v6 setError:0];
    [*(a1 + 32) setObject:v6 atIndexedSubscript:*(a1 + 48)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 8);
    if (v3)
    {
      v4 = [*(v3 + 8) defaultDevice];
      v5 = DYMTLReplayFrameProfiler_loadAnalysis(v4);

      v6 = 0;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = *MEMORY[0x277CCA450];
      v13[0] = @"Query request happened before replayer data source is loaded";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v6 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

      v5 = 0;
    }

    v9 = objc_opt_new();
    [v9 setRequestID:*(a1 + 48)];
    if (v6)
    {
      [v9 setData:0];
    }

    else
    {
      v11 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
      v6 = v11;
      [v9 setData:v10];
    }

    [v9 setError:v6];
    [*(a1 + 32) setObject:v9 atIndexedSubscript:*(a1 + 56)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24))
  {
    return;
  }

  v3 = *(*(a1 + 40) + 8);
  if (v3)
  {
    v4 = [*(v3 + 8) defaultDevice];
    GTDeviceCapabilities_fromDevice();

    if (!GTDeviceCapabilities_isAGX())
    {
      v6 = [*(v3 + 8) defaultDevice];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v10 = &unk_2860D6268;
LABEL_19:

        v9 = 0;
        goto LABEL_20;
      }

      v11 = [v6 currentPerformanceState];
      v23[0] = @"enabled";
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v11 != 0];
      v24 = v12;
      v25 = MEMORY[0x277CBEC38];
      v23[1] = @"supported";
      v23[2] = @"PerformanceStateAssertion";
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      v26 = v13;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:v23 count:3];

LABEL_18:
      goto LABEL_19;
    }

    IOAccelerator = GetIOAccelerator();
    if (IOAccelerator)
    {
      v6 = GTProfilerConfigurationVariables(IOAccelerator);
    }

    else
    {
      v6 = MEMORY[0x277CBEC10];
    }

    v12 = ExpectedState(v3);
    v26 = 0;
    LOBYTE(v25) = 0;
    v24 = 0;
    v14 = [*(v3 + 8) defaultDevice];
    GTAGXPerfStateControl::InitWithDevice(&v24, v14);

    v15 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(&v24, v12);
    if (GTDeviceCapabilities_isAGX3())
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
      [v16 setObject:&unk_2860D68C0 forKeyedSubscript:@"gen"];
      [v16 setObject:v6 forKeyedSubscript:@"Configuration"];
      v17 = [v16 copy];
    }

    else
    {
      if (!GTDeviceCapabilities_isAGX2())
      {
        v10 = v15;
        goto LABEL_17;
      }

      v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
      [v16 setObject:&unk_2860D68D8 forKeyedSubscript:@"gen"];
      [v16 setObject:v6 forKeyedSubscript:@"Configuration"];
      v17 = [v16 copy];
    }

    v10 = v17;

LABEL_17:
    GTAGXPerfStateControl::~GTAGXPerfStateControl(&v24);
    goto LABEL_18;
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v21 = *MEMORY[0x277CCA450];
  v22 = @"Query request happened before replayer data source is loaded";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v9 = [v7 initWithDomain:@"com.apple.gputools.MTLReplayer" code:104 userInfo:v8];

  v10 = 0;
LABEL_20:
  v18 = objc_opt_new();
  [v18 setRequestID:*(a1 + 48)];
  if (v9)
  {
    [v18 setData:0];
  }

  else
  {
    v20 = 0;
    v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
    v9 = v20;
    [v18 setData:v19];
  }

  [v18 setError:v9];
  [*(a1 + 32) setObject:v18 atIndexedSubscript:*(a1 + 56)];
}

void __28__GTMTLReplayService_query___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v23 = 0;
  memset(buffer, 0, sizeof(buffer));
  v26 = @"MTLBuffer-0xfffffffffffffabd-Fetch";
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 56);
  v7 = a3;
  v8 = a2;
  v9 = [v5 numberWithUnsignedLongLong:v6];
  v27[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v24 = v11;
  v25 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v13 = NewResourceData(v8, v7, v10, v12, 0, buffer, &v23, *(a1 + 64), MEMORY[0x277D85CC8]);

  v14 = dispatch_data_create(buffer, 0x50uLL, 0, &__block_literal_global_99);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v15 setObject:v14 forKey:@"info"];
  [v15 setObject:v13 forKey:@"data"];
  v16 = objc_alloc_init(MEMORY[0x277D0B628]);
  [v16 setRequestID:*(a1 + 56)];
  v17 = MEMORY[0x277CCAAB0];
  v18 = [v15 copy];
  v21 = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v21];
  v20 = v21;
  [v16 setData:v19];

  [v16 setError:v20];
  [*(a1 + 40) setObject:v16 atIndexedSubscript:*(a1 + 72)];
  dispatch_group_leave(*(a1 + 48));
}

void __28__GTMTLReplayService_query___block_invoke_3_109(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0B548]);
    [v3 setForceLoadActionClear:qword_27F09CF90 & 1];
    [v3 setForceLoadUnusedResources:(qword_27F09CF90 >> 10) & 1];
    [v3 setForceResourcesResident:(qword_27F09CF90 >> 11) & 1];
    [v3 setForceWaitUntilCompleted:(qword_27F09CF90 >> 1) & 1];
    [v3 setDisableOptimizeRestores:(qword_27F09CF90 >> 4) & 1];
    [v3 setEnableDisplayOnDevice:(qword_27F09CF90 & 0x20) == 0];
    [v3 setDisableHeapTextureCompression:(qword_27F09CF90 >> 14) & 1];
    [v3 setEnableReplayFromOtherPlatforms:(qword_27F09CF90 >> 21) & 1];
    [v3 setEnableCapture:(qword_27F09CF90 >> 26) & 1];
    [v3 setEnableHUD:(qword_27F09CF90 >> 27) & 1];
    [v3 setEnableLiveICBs:HIDWORD(qword_27F09CF90) & 1];
    [v3 setEnableStopOnError:(qword_27F09CF90 >> 28) & 1];
    v4 = objc_opt_new();
    [v4 setRequestID:*(a1 + 40)];
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
    [*(a1 + 32) setObject:v4 atIndexedSubscript:*(a1 + 48)];
  }
}

void __28__GTMTLReplayService_query___block_invoke_4_112(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setGputraceURL:*(a1 + 32)];
    [v3 setShaderDebuggerVersion:3];
    [v3 setShaderProfilerVersion:5];
    [v3 setAccelerationViewerVersion:11];
    v4 = objc_opt_new();
    [v4 setRequestID:*(a1 + 48)];
    v7 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v6 = v7;
    [v4 setData:v5];

    [v4 setError:v6];
    [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 56)];
  }
}

- (void)notifyError:(id)error
{
  errorCopy = error;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__GTMTLReplayService_notifyError___block_invoke;
  v7[3] = &unk_279657548;
  v8 = errorCopy;
  v6 = errorCopy;
  [(GTObservableService *)observers notifyAll:v7];
}

- (void)broadcastDisconnect:(id)disconnect path:(id)path
{
  pathCopy = path;
  connection = [disconnect connection];
  v7 = connection;
  if (connection == self->_terminateConnection)
  {
    v8 = MessagePathEndsWith();

    if (v8)
    {
      [(GTMTLReplayService *)self terminateProcess];
    }
  }

  else
  {
  }
}

- (void)terminateProcess
{
  clientContext = self->_clientContext;
  if (clientContext && clientContext->var0)
  {
    apr_pool_destroy(clientContext->var0);
    v2 = vars8;
  }

  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_51);
}

- (BOOL)load:(id)load error:(id *)error
{
  loadCopy = load;
  clientContext = self->_clientContext;
  objc_storeStrong(&self->_gputrace, load);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  var0 = clientContext->var7.var0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__GTMTLReplayService_load_error___block_invoke;
  v11[3] = &unk_279658938;
  v13 = &v15;
  v14 = clientContext;
  v9 = loadCopy;
  v12 = v9;
  [var0 addOperationWithBlock:v11];
  [clientContext->var7.var0 waitUntilAllOperationsAreFinished];
  LOBYTE(var0) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return var0;
}

void __33__GTMTLReplayService_load_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v152 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = GTTransportArchiveDirectory();
  v5 = v3;
  v121 = v4;
  v6 = &__block_literal_global_957;
  if (!v5)
  {
    LOBYTE(v8) = 0;
    goto LABEL_114;
  }

  v7 = [v5 scheme];
  LODWORD(v8) = [v7 isEqualToString:*MEMORY[0x277CCA778]];

  if (!v8)
  {
    goto LABEL_114;
  }

  if ([v5 startAccessingSecurityScopedResource])
  {
    apr_pool_cleanup_register(*v2, v5, CleanupSandboxExtensionURL, apr_pool_cleanup_null);
  }

  v9 = [v5 path];
  v120 = v121;
  v10 = &__block_literal_global_957;
  DataSource = GTMTLReplayController_makeDataSource([v9 UTF8String], *v2);
  LOBYTE(v8) = DataSource != 0;
  if (DataSource)
  {
    v12 = DataSource;
    v115 = DataSource != 0;
    v116 = v9;
    v118 = v5;
    v119 = v1;
    v13 = GTMTLReplayClient_preferDevice(DataSource);
    v14 = *v2;
    v15 = MEMORY[0x277CCAC38];
    v16 = v13;
    v17 = [v15 processInfo];
    v18 = [v17 operatingSystemVersionString];
    v19 = apr_pstrdup(v14, [v18 UTF8String]);

    v20 = apr_palloc(v14, 0x30uLL);
    v21 = v20;
    if (v20)
    {
      *v20 = 0u;
      v20[1] = 0u;
    }

    *(v20 + 4) = "iOS";
    *(v20 + 5) = v19;
    v22 = [v16 targetDeviceArchitecture];
    *v21 = [v22 cpuType];
    *(v21 + 1) = [v22 subType];
    *(v21 + 4) = [v22 version];
    *(v21 + 10) = [v22 version] >> 16;
    *(v21 + 11) = [v22 version] >> 24;
    *(v21 + 3) = [v22 versionCombined];
    *(v21 + 2) = [v22 driverVersion];

    v114 = v16;
    if (*v21 != 16777235)
    {
      goto LABEL_49;
    }

    v23 = 0;
    v24 = *(v21 + 1) & 0xFFFFFF;
    if (v24 > 0x162)
    {
      if ((*(v21 + 1) & 0xFFFFFFu) > 0x1B2)
      {
        if ((*(v21 + 1) & 0xFFFFFFu) > 0x231)
        {
          v28 = v24 - 562;
          if (v28 <= 0x30 && ((1 << v28) & 0x1000100010001) != 0)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v24 - 498 <= 0x30 && ((1 << (v24 + 14)) & 0x1000100010001) != 0)
        {
          goto LABEL_50;
        }

        if (v24 != 435)
        {
          if (v24 != 482)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        goto LABEL_46;
      }

      v27 = v24 - 355;
      if (v27 <= 0x3F)
      {
        if (((1 << (v24 - 99)) & 0x8000800080008000) != 0)
        {
          goto LABEL_50;
        }

        if (((1 << (v24 - 99)) & 0x100010001) != 0)
        {
          goto LABEL_23;
        }

        if (v27 == 48)
        {
LABEL_46:
          v23 = 2;
          goto LABEL_50;
        }
      }

      if (v24 != 419)
      {
        if (v24 != 434)
        {
LABEL_49:
          v23 = 0xFFFFFFFFLL;
        }

LABEL_50:
        *(v21 + 3) = v23;

        v117 = v2;
        v127 = v12;
        if (*(v12 + 6))
        {
          v29 = objc_alloc_init(GTCaptureArchiveOverrideKey);
          v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          obj = [*(v12 + 6) filenameOverrides];
          v131 = [obj countByEnumeratingWithState:&v137 objects:v141 count:16];
          if (v131)
          {
            v128 = *v138;
            v123 = v29;
            v125 = v21;
            do
            {
              for (i = 0; i != v131; ++i)
              {
                if (*v138 != v128)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v137 + 1) + 8 * i);
                v32 = [*(v12 + 6) filenameOverrides];
                v33 = [v32 objectForKeyedSubscript:v31];

                v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v21 + 4)];
                [(GTCaptureArchiveOverrideKey *)v29 setPlatform:v34];
                v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v21 + 3)];
                [(GTCaptureArchiveOverrideKey *)v29 setRiaGeneration:v35];

                v36 = [v33 objectForKeyedSubscript:v29];
                v134 = v34;
                if (v36 || (-[GTCaptureArchiveOverrideKey setPlatform:](v29, "setPlatform:", 0), [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v21 + 3)], v37 = objc_claimAutoreleasedReturnValue(), -[GTCaptureArchiveOverrideKey setRiaGeneration:](v29, "setRiaGeneration:", v37), v37, objc_msgSend(v33, "objectForKeyedSubscript:", v29), (v36 = objc_claimAutoreleasedReturnValue()) != 0) || (-[GTCaptureArchiveOverrideKey setPlatform:](v29, "setPlatform:", v34), -[GTCaptureArchiveOverrideKey setRiaGeneration:](v29, "setRiaGeneration:", 0), objc_msgSend(v33, "objectForKeyedSubscript:", v29), (v36 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v38 = v36;
                  v39 = *v12;
                  v40 = [v36 originalFilename];
                  v41 = [v40 UTF8String];
                  v42 = [v38 overrideFilename];
                  v43 = [v42 UTF8String];
                  pthread_mutex_lock((v39 + 16));
                  newpool[0] = 0;
                  apr_pool_create_ex(newpool, *(v39 + 8), 0, v44);
                  v45 = newpool[0];
                  v46 = gt_filepath_merge(*v39, v43, newpool[0]);
                  v47 = fopen(v46, "r");
                  v48 = v47;
                  if (v47)
                  {
                    memset(&v151, 0, sizeof(v151));
                    v49 = fileno(v47);
                    if (!fstat(v49, &v151))
                    {
                      v50 = apr_pstrdup(*(v39 + 8), v41);
                      v51 = apr_pstrdup(*(v39 + 8), v43);
                      v52 = apr_palloc(*(v39 + 8), 0x20uLL);
                      if (v52)
                      {
                        v52[1] = 0;
                        v52[2] = 0;
                        v52[3] = 0;
                      }

                      *v52 = v51;
                      *(v52 + 6) = 2;
                      *(v52 + 2) = (LODWORD(v151.st_size) + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
                      apr_hash_set(*(v39 + 136), v50, -1, v52);
                    }
                  }

                  fclose(v48);
                  apr_pool_destroy(v45);
                  pthread_mutex_unlock((v39 + 16));

                  v21 = v125;
                  v12 = v127;
                  v29 = v123;
                  v34 = v134;
                }
              }

              v131 = [obj countByEnumeratingWithState:&v137 objects:v141 count:16];
            }

            while (v131);
          }
        }

        v53 = v114;
        v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
        for (j = 0; j != 19; ++j)
        {
          v56 = qword_24DA90DB0[j];
          if ([v53 supportsFamily:v56])
          {
            v57 = [MEMORY[0x277CCABB0] numberWithInteger:v56];
            [v54 addObject:v57];
          }
        }

        newpool[0] = @"argumentBuffersSupport";
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v53, "argumentBuffersSupport")}];
        *&v151.st_dev = v58;
        newpool[1] = @"supportsTLS";
        v59 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v60 = [v53 supportsTLS];
        }

        else
        {
          v60 = 0;
        }

        v61 = [v59 numberWithInt:v60];
        v151.st_ino = v61;
        *&v147 = @"supportsGlobalVariableRelocation";
        v62 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v63 = [v53 supportsGlobalVariableRelocation];
        }

        else
        {
          v63 = 0;
        }

        v64 = [v62 numberWithInt:v63];
        *&v151.st_uid = v64;
        *(&v147 + 1) = @"supportsGlobalVariableRelocationCompute";
        v65 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v66 = [v53 supportsGlobalVariableRelocationCompute];
        }

        else
        {
          v66 = 0;
        }

        v129 = [v65 numberWithInt:v66];
        *&v151.st_rdev = v129;
        *&v148 = @"supportsGlobalVariableRelocationRender";
        v67 = MEMORY[0x277CCABB0];
        v135 = v58;
        if (objc_opt_respondsToSelector())
        {
          v68 = [v53 supportsGlobalVariableRelocationRender];
        }

        else
        {
          v68 = 0;
        }

        v69 = [v67 numberWithInt:v68];
        v151.st_atimespec.tv_sec = v69;
        *(&v148 + 1) = @"supportsDynamicLibraries";
        v70 = MEMORY[0x277CCABB0];
        v132 = v64;
        if (objc_opt_respondsToSelector())
        {
          v71 = [v53 supportsDynamicLibraries];
        }

        else
        {
          v71 = 0;
        }

        v72 = [v70 numberWithInt:v71];
        v151.st_atimespec.tv_nsec = v72;
        *&v149 = @"supportsRenderDynamicLibraries";
        v73 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v74 = [v53 supportsRenderDynamicLibraries];
        }

        else
        {
          v74 = 0;
        }

        v75 = [v73 numberWithInt:v74];
        v151.st_mtimespec.tv_sec = v75;
        *(&v149 + 1) = @"supportsFunctionPointers";
        v76 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v77 = [v53 supportsFunctionPointers];
        }

        else
        {
          v77 = 0;
        }

        v78 = [v76 numberWithInt:v77];
        v151.st_mtimespec.tv_nsec = v78;
        v150 = @"supportsFunctionPointersFromRender";
        v79 = MEMORY[0x277CCABB0];
        if (objc_opt_respondsToSelector())
        {
          v80 = [v53 supportsFunctionPointersFromRender];
        }

        else
        {
          v80 = 0;
        }

        v81 = [v79 numberWithInt:v80];
        v151.st_ctimespec.tv_sec = v81;
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:newpool count:9];

        v144[0] = @"shaderDebuggerSupport";
        v144[1] = @"deviceVendorName";
        v145[0] = &unk_2860D6548;
        v83 = [v53 vendorName];
        v145[1] = v83;
        v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];

        v85 = [v53 argumentBuffersSupport] != 0;
        LODWORD(v83) = objc_opt_respondsToSelector();
        v86 = [v53 supportsFamily:1006];
        v142[0] = @"SupportedFamilies";
        v142[1] = @"FeatureSupport";
        v143[0] = v54;
        v143[1] = v82;
        v143[2] = v84;
        v142[2] = @"DebugSupport";
        v142[3] = @"ResourceAccessTrackingSupport";
        v87 = [MEMORY[0x277CCABB0] numberWithBool:v85 & v86 & v83];
        v143[3] = v87;
        v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:4];

        v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v89 = *(*(v127 + 5) + 112);
        v90 = *(v89 + 12);
        if (v90 >= 1)
        {
          for (k = 0; k < v90; ++k)
          {
            v92 = *(*(v89 + 24) + 8 * k);
            if (*(v92 + 144))
            {
              v93 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v92 + 8)];
              v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v92 + 144)];
              [v88 setObject:v93 forKey:v94];

              v90 = *(v89 + 12);
            }
          }
        }

        v136 = v53;
        v95 = v120;
        v96 = v88;
        v130 = v95;
        v97 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v95];
        v98 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v96, "count")}];
        v99 = [MEMORY[0x277CCAA00] defaultManager];
        v143[0] = *MEMORY[0x277CBE8E8];
        v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:1];
        v124 = v99;
        v126 = v97;
        v101 = [v99 enumeratorAtURL:v97 includingPropertiesForKeys:v100 options:0 errorHandler:0];

        v148 = 0u;
        v149 = 0u;
        *newpool = 0u;
        v147 = 0u;
        v102 = v101;
        v103 = [v102 countByEnumeratingWithState:newpool objects:&v151 count:16];
        if (v103)
        {
          v104 = v103;
          v105 = *v147;
          do
          {
            for (m = 0; m != v104; ++m)
            {
              if (*v147 != v105)
              {
                objc_enumerationMutation(v102);
              }

              v107 = *(newpool[1] + m);
              v108 = [v107 pathExtension];
              v109 = [v108 isEqualToString:@"metallib"];

              if (v109)
              {
                v110 = [v107 lastPathComponent];
                v111 = [v110 stringByDeletingPathExtension];

                v112 = [v96 objectForKeyedSubscript:v111];
                if (v112)
                {
                  [v98 setObject:v107 forKeyedSubscript:v112];
                }
              }
            }

            v104 = [v102 countByEnumeratingWithState:newpool objects:&v151 count:16];
          }

          while (v104);
        }

        UpdateDebugFileCache(0, v98, v96, v130);
        v113 = [[GTMTLReplayObjectMap alloc] initWithDevice:v136];
        GTMTLReplaySupport_init(v136);
        GTMTLReplayController_initializeArgumentBufferSupport(v127, v136, v113);
        GTMTLReplayController_populateUnusedResources(v127, v113);
        *(v117 + 8) = GTMTLReplayController_makeController(v127, *v117, v136, v113, v96, v98);
        GTMTLReplayWireframeRenderer_initWithDevice(v117 + 96, v136);
        *&v151.st_dev = MEMORY[0x277D85DD0];
        v151.st_ino = 3221225472;
        *&v151.st_uid = __BeginDebugArchivePath_block_invoke;
        *&v151.st_rdev = &__block_descriptor_40_e5_v8__0l;
        v151.st_atimespec.tv_sec = v117;
        v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&v151];
        [v8 setQueuePriority:-8];
        [*(v117 + 280) addOperation:v8];

        v5 = v118;
        v1 = v119;
        v9 = v116;
        LOBYTE(v8) = v115;
        goto LABEL_113;
      }
    }

    else if ((*(v21 + 1) & 0xFFFFFFu) <= 0xD1)
    {
      if ((*(v21 + 1) & 0xFFFFFFu) > 0xA2)
      {
        if (v24 != 163 && v24 != 179)
        {
          if (v24 != 194)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }
      }

      else if (v24 - 67 > 0x30 || ((1 << (v24 - 67)) & 0x1000100010001) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = *(v21 + 4) + 29;
      if (v24 - 227 > 0x3F)
      {
        goto LABEL_12;
      }

      if (((1 << v25) & 0x100010000) != 0)
      {
        goto LABEL_46;
      }

      if (((1 << v25) & 0x1000000000001) == 0)
      {
        if (((1 << v25) & 0x8000800000000000) != 0)
        {
          goto LABEL_50;
        }

LABEL_12:
        v26 = v24 - 291;
        if (v26 > 0x3F)
        {
          goto LABEL_16;
        }

        if (((1 << (v24 - 35)) & 0x8000000080008000) != 0)
        {
          goto LABEL_50;
        }

        if (((1 << (v24 - 35)) & 0x100000001) == 0)
        {
          if (v26 != 48)
          {
LABEL_16:
            if (v24 != 210)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

LABEL_23:
          v23 = 3;
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v23 = 1;
    goto LABEL_50;
  }

LABEL_113:

LABEL_114:
  *(*(*(v1 + 40) + 8) + 24) = v8;
}

- (GTMTLReplayService)initWithContext:(GTMTLReplayClient *)context
{
  v10.receiver = self;
  v10.super_class = GTMTLReplayService;
  v4 = [(GTMTLReplayService *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_clientContext = context;
    v6 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v6;

    var0 = context->var0;
    control = apr_palloc(var0, 0x48uLL);
    pthread_mutex_init((control + 8), 0);
    *control = apr_hash_make(var0);
  }

  return v5;
}

@end