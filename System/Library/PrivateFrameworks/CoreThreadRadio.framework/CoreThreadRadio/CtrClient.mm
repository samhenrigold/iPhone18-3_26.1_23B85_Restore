@interface CtrClient
- (Result)addPrefix:(Result *__return_ptr)retstr;
- (Result)addService:(Result *__return_ptr)retstr;
- (Result)attachToNetwork:(Result *__return_ptr)retstr;
- (Result)attachToNetwork:(Result *__return_ptr)retstr output:;
- (Result)form:(Result *__return_ptr)retstr;
- (Result)generatePSKc:(Result *__return_ptr)retstr output:;
- (Result)generateThreadDiagnosticsMonitorLogs;
- (Result)join:(Result *__return_ptr)retstr;
- (Result)joiner:(Result *__return_ptr)retstr;
- (Result)removePrefix:(Result *__return_ptr)retstr;
- (Result)scan:(Result *__return_ptr)retstr;
- (Result)sendNwDiagReqGet:(Result *__return_ptr)retstr;
- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:;
- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:waitForSync:;
- (Result)threadStart:(Result *__return_ptr)retstr outputUniqueId:;
- (Result)updateAccData:(Result *__return_ptr)retstr;
- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr;
- (Result)updatePrimaryResident:(Result *__return_ptr)retstr isPrimaryResidentThreadCapable:primaryResidentInfo:;
- (id).cxx_construct;
- (id)init:(const char *)init;
- (void)captureTriggerData:(int)data triggerId:(int)id accessoryInfoList:(id)list completionHandler:(id)handler;
- (void)provideExtendedMACAddress:(id)address completion:(id)completion;
- (void)setEventHandler:(const void *)handler EventBlock:(id)block dqueue:(queue)dqueue;
- (void)startFWUpdate:(id)update isWedDevice:(BOOL)device completion:(id)completion;
- (void)startPairingForExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)stopFWUpdate:(id)update;
- (void)stopPairing:(id)pairing;
- (void)threadMeshInfoForHomeMetrics:(id)metrics completionHandler:(id)handler;
- (void)threadStart:(id)start activeOperationalDataSet:(id)set geoAvailable:(BOOL)available routerMode:(BOOL)mode eMAC:(id)c waitForSync:(BOOL)sync completion:(id)completion;
- (void)threadStart:(id)start geoAvailable:(BOOL)available isPrimaryUser:(BOOL)user waitForSync:(BOOL)sync completion:(id)completion;
- (void)threadStopWithCompletion:(id)completion;
@end

@implementation CtrClient

- (id)init:(const char *)init
{
  if (MGGetBoolAnswer())
  {
    v10.receiver = self;
    v10.super_class = CtrClient;
    v4 = [(CtrClient *)&v10 init];
    v5 = v4;
    if (v4)
    {
      objc_msgSend_createClient_(v4);
      cntrl = v5->CtrXPCClientPtr.__cntrl_;
      v5->CtrXPCClientPtr = v9;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [CtrClient init:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setEventHandler:(const void *)handler EventBlock:(id)block dqueue:(queue)dqueue
{
  blockCopy = block;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10 = *dqueue.var0.var0;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  CtrXPC::Client::setEventHandler(ptr, handler, blockCopy, &object);
  if (object)
  {
    dispatch_release(object);
  }
}

- (Result)addPrefix:(Result *__return_ptr)retstr
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  CtrXPC::Client::addPrefix(v4, retstr);
  return result;
}

- (Result)removePrefix:(Result *__return_ptr)retstr
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  CtrXPC::Client::removePrefix(v4, retstr);
  return result;
}

- (Result)updateAccData:(Result *__return_ptr)retstr
{
  v3 = *v1;
  v4 = *(v1 + 2);
  CtrXPC::Client::updateAccData(&v3, retstr);
  return result;
}

- (Result)form:(Result *__return_ptr)retstr
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 80);
  v6[4] = *(v1 + 64);
  v6[5] = v2;
  v7 = *(v1 + 96);
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v4 = *(v1 + 48);
  v6[2] = *(v1 + 32);
  v6[3] = v4;
  CtrXPC::Client::form(v6, retstr);
  return result;
}

- (Result)scan:(Result *__return_ptr)retstr
{
  v3 = *v1;
  v4 = *(v1 + 2);
  CtrXPC::Client::scan(&v3, retstr);
  return result;
}

- (Result)addService:(Result *__return_ptr)retstr
{
  v3 = *v1;
  v4 = *(v1 + 2);
  CtrXPC::Client::addService(&v3, retstr);
  return result;
}

- (Result)join:(Result *__return_ptr)retstr
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  CtrXPC::Client::join(v4, retstr);
  return result;
}

- (Result)joiner:(Result *__return_ptr)retstr
{
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  CtrXPC::Client::joiner(v5, retstr);
  return result;
}

- (Result)sendNwDiagReqGet:(Result *__return_ptr)retstr
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v5 = *(v1 + 32);
  CtrXPC::Client::send_network_diag_get(v4, retstr);
  return result;
}

- (Result)attachToNetwork:(Result *__return_ptr)retstr output:
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  CtrXPC::Client::attachToNetwork(v5, v2, retstr);
  return result;
}

- (Result)attachToNetwork:(Result *__return_ptr)retstr
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  CtrXPC::Client::attachToNetwork(v4, retstr);
  return result;
}

- (Result)generatePSKc:(Result *__return_ptr)retstr output:
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  CtrXPC::Client::generatePSKc(v5, v2, retstr);
  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outputUniqueId:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (Result)generateThreadDiagnosticsMonitorLogs
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "Command Error");
  v2 = v5;
  v3 = v6;
  CtrXPC::Client::generate_diagnostics(retstr);
  if (v3 < 0)
  {
    operator delete(v2);
  }

  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:waitForSync:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (void)captureTriggerData:(int)data triggerId:(int)id accessoryInfoList:(id)list completionHandler:(id)handler
{
  v6 = MEMORY[0x28223BE20](self, a2, *&data, *&id, list, handler);
  v8 = v7;
  v92 = v9;
  v94 = v10;
  v90 = v6;
  *&v157[17] = *MEMORY[0x277D85DE8];
  v12 = v11;
  v84 = v8;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v100 = "[CtrClient captureTriggerData:triggerId:accessoryInfoList:completionHandler:]";
    LOWORD(v101) = 1024;
    *(&v101 + 2) = 280;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  context = objc_autoreleasePoolPush();
  v113 = 0;
  v114 = 0;
  v13 = v157;
  v115 = 0;
  v117 = 0;
  v118 = 0;
  v71 = &v117;
  v119 = 0;
  v77 = &v113;
  v80 = &v124;
  v126 = 0;
  v14 = -18400;
  v124 = 0;
  v125 = 0;
  do
  {
    v15 = (&v128 + v14);
    v15[4] = 0uLL;
    v15[5] = 0uLL;
    v15[2] = 0uLL;
    v15[3] = 0uLL;
    *v15 = 0uLL;
    v15[1] = 0uLL;
    v14 += 184;
  }

  while (v14);
  v74 = &v141;
  v142 = 0;
  v141 = 0u;
  v68 = &v144;
  v145 = 0u;
  v144 = 0;
  v16 = &v150;
  v151 = 0u;
  v150 = 0;
  v17 = 18400;
  v18 = 18792;
  do
  {
    v19 = &buf[v18];
    *(v19 + 4) = 0uLL;
    *(v19 + 5) = 0uLL;
    *(v19 + 2) = 0uLL;
    *(v19 + 3) = 0uLL;
    v18 += 184;
    *v19 = 0uLL;
    *(v19 + 1) = 0uLL;
    v17 -= 184;
  }

  while (v17);
  v20 = 37208;
  v21 = 5600;
  do
  {
    v22 = &buf[v20];
    *(v22 + 1) = 0uLL;
    *(v22 + 2) = 0uLL;
    *v22 = 0uLL;
    v20 += 56;
    v21 -= 56;
  }

  while (v21);
  v96 = v12;
  if (v12)
  {
    v155 = [v12 count];
    if (v155)
    {
      v23 = 0;
      v24 = v156;
      do
      {
        v25 = [v12 objectAtIndex:v23];
        ipaddr = [v25 ipaddr];
        v27 = ipaddr;
        std::string::basic_string[abi:ne200100]<0>(&v97, [ipaddr UTF8String]);
        v28 = (v24 - 49);
        if (*(v24 - 26) < 0)
        {
          operator delete(*v28);
        }

        *v28 = v97;
        *(v24 - 33) = v98;
        HIBYTE(v98) = 0;
        LOBYTE(v97) = 0;

        name = [v25 name];
        v30 = name;
        std::string::basic_string[abi:ne200100]<0>(&v97, [name UTF8String]);
        v31 = (v24 - 25);
        if (*(v24 - 2) < 0)
        {
          operator delete(*v31);
        }

        *v31 = v97;
        *(v24 - 9) = v98;
        HIBYTE(v98) = 0;
        LOBYTE(v97) = 0;

        v12 = v96;
        *v24 = [v25 isBatteryPowered];
        *(v24 - 1) = [v25 isMatter];

        ++v23;
        v24 += 56;
      }

      while (v155 > v23);
    }
  }

  else
  {
    v155 = 0;
  }

  v154 = v92;
  v153 = v94;
  bzero(&v100 + 4, 0x9140uLL);
  v86 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:0 userInfo:0];
  CtrXPC::Client::captureTriggerDataWithCompletion(*(v90 + 8), buf);
  if (v127 == 1)
  {
    if (SHIBYTE(v126) < 0)
    {
      if (!v125)
      {
LABEL_27:
        v85 = 0;
LABEL_28:
        if (SHIBYTE(v151) < 0)
        {
          if (!v151)
          {
LABEL_34:
            v88 = 0;
LABEL_35:
            if (SHIBYTE(v115) < 0)
            {
              if (!v114)
              {
LABEL_41:
                v89 = 0;
LABEL_42:
                if (SHIBYTE(v142) < 0)
                {
                  if (!*(&v141 + 1))
                  {
LABEL_48:
                    v91 = 0;
LABEL_49:
                    if (SHIBYTE(v119) < 0)
                    {
                      if (!v118)
                      {
LABEL_55:
                        v93 = 0;
LABEL_56:
                        if (SHIBYTE(v145) < 0)
                        {
                          if (!v145)
                          {
LABEL_62:
                            v95 = 0;
                            goto LABEL_63;
                          }

                          v68 = v144;
                        }

                        else if (!HIBYTE(v145))
                        {
                          goto LABEL_62;
                        }

                        v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:v68];
LABEL_63:
                        v81 = [CtrTriggerResult alloc];
                        v78 = BYTE4(v100);
                        v75 = BYTE5(v100);
                        v72 = BYTE6(v100);
                        v69 = HIBYTE(v100);
                        v66 = v101;
                        v64 = HIDWORD(v101);
                        v62 = v102;
                        v60 = v103;
                        v58 = v104;
                        v56 = v105;
                        v54 = v106;
                        v52 = v107;
                        v50 = v108;
                        v33 = v109;
                        v34 = v110;
                        v35 = v111;
                        v36 = v112;
                        v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v116];
                        BYTE4(v48) = v121;
                        LODWORD(v48) = v120;
                        LOBYTE(v47) = v36;
                        LOBYTE(v46) = v35;
                        v32 = [CtrTriggerResult initWithData:v81 num_thirdparty_BRs:"initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:" num_thread_networks:v78 max_simultaneous_prefixes:v75 tx_total:v72 tx_total_success:v69 tx_success_perc:v66 rx_total:v64 rx_total_success:v62 rx_success_perc:v60 tx_delayavg:v58 tx_delaymin:v56 tx_delaymax:v54 coex_tx_denied_reqs_perc:v52 coex_rx_denied_reqs_perc:v50 thirdparty_leader:v33 last_known_device_role:v34 is_partition_id_change_detected:v46 leader_name:v85 num_routers:v47 thread_mesh_size:v89 is_parent_change_detected:v116 is_threaddaemon_crash_detected:v93 is_threadfw_crash_detected:v48 is_role_detach_disable_detected:v122 is_border_router_advertised:v123 num_border_routers_advertised:? duration:?];

                        goto LABEL_64;
                      }

                      v71 = v117;
                    }

                    else if (!HIBYTE(v119))
                    {
                      goto LABEL_55;
                    }

                    v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:v71];
                    goto LABEL_56;
                  }

                  v74 = v141;
                }

                else if (!HIBYTE(v142))
                {
                  goto LABEL_48;
                }

                v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:v74];
                goto LABEL_49;
              }

              v77 = v113;
            }

            else if (!HIBYTE(v115))
            {
              goto LABEL_41;
            }

            v89 = [MEMORY[0x277CCACA8] stringWithCString:v77 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
            goto LABEL_42;
          }

          v16 = v150;
        }

        else if (!HIBYTE(v151))
        {
          goto LABEL_34;
        }

        v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
        goto LABEL_35;
      }

      v80 = v124;
    }

    else if (!HIBYTE(v126))
    {
      goto LABEL_27;
    }

    v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:v80];
    goto LABEL_28;
  }

  v85 = 0;
  v88 = 0;
  v89 = 0;
  v91 = 0;
  v93 = 0;
  v95 = 0;
  v32 = 0;
LABEL_64:
  if (v152 == 1)
  {
    v82 = [CtrTriggerResult alloc];
    v79 = v128;
    v76 = BYTE1(v128);
    v73 = BYTE2(v128);
    v70 = BYTE3(v128);
    v67 = HIDWORD(v128);
    v65 = v129;
    v63 = v130;
    v61 = v131;
    v59 = v132;
    v57 = v133;
    v55 = v134;
    v53 = v135;
    v51 = v136;
    v38 = v138;
    v49 = v137;
    v39 = v139;
    v40 = v140;
    v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v143];
    BYTE4(v48) = v147;
    LODWORD(v48) = v146;
    LOBYTE(v47) = v40;
    LOBYTE(v46) = v39;
    v42 = [CtrTriggerResult initWithData:v82 num_thirdparty_BRs:"initWithData:num_thirdparty_BRs:num_thread_networks:max_simultaneous_prefixes:tx_total:tx_total_success:tx_success_perc:rx_total:rx_total_success:rx_success_perc:tx_delayavg:tx_delaymin:tx_delaymax:coex_tx_denied_reqs_perc:coex_rx_denied_reqs_perc:thirdparty_leader:last_known_device_role:is_partition_id_change_detected:leader_name:num_routers:thread_mesh_size:is_parent_change_detected:is_threaddaemon_crash_detected:is_threadfw_crash_detected:is_role_detach_disable_detected:is_border_router_advertised:num_border_routers_advertised:duration:" num_thread_networks:v79 max_simultaneous_prefixes:v76 tx_total:v73 tx_total_success:v70 tx_success_perc:v67 rx_total:v65 rx_total_success:v63 rx_success_perc:v61 tx_delayavg:v59 tx_delaymin:v57 tx_delaymax:v55 coex_tx_denied_reqs_perc:v53 coex_rx_denied_reqs_perc:v51 thirdparty_leader:v49 last_known_device_role:v38 is_partition_id_change_detected:v46 leader_name:v88 num_routers:v47 thread_mesh_size:v91 is_parent_change_detected:v143 is_threaddaemon_crash_detected:v95 is_threadfw_crash_detected:v48 is_role_detach_disable_detected:v148 is_border_router_advertised:v149 num_border_routers_advertised:? duration:?];
  }

  else
  {
    v42 = 0;
  }

  if (v42 | v32)
  {
    v44 = v86;
  }

  else
  {
    v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Results are invalid" code:1 userInfo:0];

    v44 = v43;
  }

  v87 = v44;
  v84[2](v84, v32, v42);

  v45 = -5600;
  do
  {
    if (*v13 < 0)
    {
      operator delete(*(v13 - 23));
    }

    if (*(v13 - 24) < 0)
    {
      operator delete(*(v13 - 47));
    }

    v13 -= 56;
    v45 += 56;
  }

  while (v45);
  Ctr_triggerStatsResult::~Ctr_triggerStatsResult(&v128);
  Ctr_triggerStatsResult::~Ctr_triggerStatsResult((&v100 + 4));
  objc_autoreleasePoolPop(context);
}

- (void)threadMeshInfoForHomeMetrics:(id)metrics completionHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  if (handlerCopy)
  {
    allObjects = [metricsCopy allObjects];
    v9 = allObjects;
    if (allObjects)
    {
      v10 = [allObjects count];
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        ++[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
        memset(&buf[1], 0, 112);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47[0] = 0;
        v55 = 0;
        *&buf[0] = v10;
        *(&buf[0] + 1) = [CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
        do
        {
          v13 = [v9 objectAtIndex:v12];
          accessoryManufacturer = [v13 accessoryManufacturer];
          v15 = accessoryManufacturer;
          std::string::basic_string[abi:ne200100]<0>(&v39, [accessoryManufacturer UTF8String]);
          v16 = (buf + v11 * 8);
          if (*(&buf[2] + v11 * 8 + 7) < 0)
          {
            operator delete(v16[2]);
          }

          *(v16 + 1) = v39;
          v16[4] = v40;
          HIBYTE(v40) = 0;
          LOBYTE(v39) = 0;

          accessoryModel = [v13 accessoryModel];
          v18 = accessoryModel;
          std::string::basic_string[abi:ne200100]<0>(&v39, [accessoryModel UTF8String]);
          v19 = (buf + v11 * 8);
          if (*(&buf[3] + v11 * 8 + 15) < 0)
          {
            operator delete(v19[5]);
          }

          *(v19 + 5) = v39;
          v19[7] = v40;
          HIBYTE(v40) = 0;
          LOBYTE(v39) = 0;

          hostName = [v13 hostName];
          v21 = hostName;
          std::string::basic_string[abi:ne200100]<0>(&v39, [hostName UTF8String]);
          v22 = (buf + v11 * 8);
          if (*(&buf[5] + v11 * 8 + 7) < 0)
          {
            operator delete(v22[8]);
          }

          *(v22 + 4) = v39;
          v22[10] = v40;
          HIBYTE(v40) = 0;
          LOBYTE(v39) = 0;

          serviceInstanceName = [v13 serviceInstanceName];
          v24 = serviceInstanceName;
          std::string::basic_string[abi:ne200100]<0>(&v39, [serviceInstanceName UTF8String]);
          v25 = (buf + v11 * 8);
          if (*(&buf[6] + v11 * 8 + 15) < 0)
          {
            operator delete(v25[11]);
          }

          *(v25 + 11) = v39;
          v25[13] = v40;
          HIBYTE(v40) = 0;
          LOBYTE(v39) = 0;

          ipv6Address = [v13 ipv6Address];
          v27 = ipv6Address;
          std::string::basic_string[abi:ne200100]<0>(&v39, [ipv6Address UTF8String]);
          v28 = (buf + v11 * 8);
          if (SHIBYTE(v47[v11]) < 0)
          {
            operator delete(v28[14]);
          }

          *(v28 + 7) = v39;
          v28[16] = v40;
          HIBYTE(v40) = 0;
          LOBYTE(v39) = 0;

          LODWORD(v47[v11 + 1]) = [v13 browseStatus];
          HIDWORD(v47[v11 + 1]) = [v13 resolveStatus];
          LODWORD(v47[v11 + 2]) = [v13 transactionStatus];
          BYTE4(v47[v11 + 2]) = [v13 isWrite];
          BYTE5(v47[v11 + 2]) = [v13 isLinkFallBack];
          BYTE6(v47[v11 + 2]) = [v13 communicationProtocol];
          HIBYTE(v47[v11 + 2]) = [v13 hapThreadAccessoryCapabilities];
          v47[v11 + 3] = [v13 errorCode];
          v47[v11 + 4] = [v13 hapCoAPTokenInfo];
          v47[v11 + 5] = [v13 matterSessionInfo];
          v47[v11 + 6] = [v13 consecutiveFailureCount];
          v47[v11 + 7] = [v13 consecutiveSuccessCount];
          v47[v11 + 8] = [v13 durationSecondsSinceLastSuccessfulRequest];

          ++v12;
          v11 += 23;
        }

        while (*&buf[0] > v12);
        ptr = self->CtrXPCClientPtr.__ptr_;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2;
        v37[3] = &unk_278EC02C0;
        v38 = handlerCopy;
        CtrXPC::Client::threadMeshInfoForHomeMetrics(ptr, buf, v37);

        v30 = 368;
        do
        {
          v31 = (buf + v30);
          if (*(&v42 + v30 + 7) < 0)
          {
            operator delete(*(v31 - 9));
          }

          if (*(v31 - 73) < 0)
          {
            operator delete(*(&v39 + v30 + 8));
          }

          v32 = (buf + v30);
          if (*(&v39 + v30 + 7) < 0)
          {
            operator delete(*(v32 - 15));
          }

          if (*(v32 - 121) < 0)
          {
            operator delete(v37[v30 / 8]);
          }

          if (*(&buf[-9] + v30 - 1) < 0)
          {
            operator delete(*(v31 - 21));
          }

          v30 -= 184;
        }

        while (v30);
        v33 = 1;
        goto LABEL_37;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [CtrClient threadMeshInfoForHomeMetrics:completionHandler:];
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_14;
      v42 = &unk_278EC0298;
      v43 = handlerCopy;
      dispatch_async(global_queue, v41);
    }

    else
    {
      v34 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke;
      block[3] = &unk_278EC0298;
      v45 = handlerCopy;
      dispatch_async(v34, block);
    }

    v33 = 0;
LABEL_37:

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CtrClient threadMeshInfoForHomeMetrics:completionHandler:];
  }

  v33 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v7);
  if (v33 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 600;
    WORD1(buf[1]) = 2048;
    *(&buf[1] + 4) = [CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Returning client api call for sequenceNumber : %llu", buf, 0x1Cu);
  }
}

void __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2(uint64_t a1, _DWORD *a2, xpc_object_t *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    xarray = xpc_dictionary_get_value(*a3, "accessoryOutputArray");
    count = xpc_array_get_count(xarray);
    uint64 = xpc_dictionary_get_uint64(*a3, "outputSequenceNumber");
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    if (count)
    {
      v5 = 0;
      for (i = 0; i < count; v5 = ++i)
      {
        value = xpc_array_get_value(xarray, v5);
        if (MEMORY[0x24C1B2CC0]() == MEMORY[0x277D86468])
        {
          v8 = xpc_dictionary_get_uint64(value, "threadMeshReachabilityStatusBitMap");
          v9 = xpc_dictionary_get_uint64(value, "threadTXReachabilityStatusBitMap");
          v10 = xpc_dictionary_get_uint64(value, "threadRXReachabilityStatusBitMap");
          v11 = xpc_dictionary_get_uint64(value, "srpStatusBitMap");
          v12 = xpc_dictionary_get_uint64(value, "threadTXErrorEnum");
          v13 = xpc_dictionary_get_uint64(value, "threadMeshRXErrorEnum");
          v14 = xpc_dictionary_get_uint64(value, "threadMeshReachabilityErrorEnum");
          v15 = xpc_dictionary_get_uint64(value, "srpErrorEnum");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317954;
            v24 = "[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]_block_invoke";
            v25 = 1024;
            v26 = 585;
            v27 = 1024;
            v28 = i;
            v29 = 2048;
            v30 = v12;
            v31 = 2048;
            v32 = v13;
            v33 = 2048;
            v34 = v14;
            v35 = 2048;
            v36 = v15;
            v37 = 2048;
            v38 = v10;
            v39 = 2048;
            v40 = v9;
            v41 = 2048;
            v42 = v10;
            v43 = 2048;
            v44 = v11;
            v45 = 2048;
            v46 = uint64;
            _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Array element %hhu: threadTXErrorEnum:%llu threadMeshRXErrorEnum:%llu threadMeshReachabilityErrorEnum:%llu srpErrorEnum:%llu threadRXReachabilityStatusBitMap: %llu threadTXReachabilityStatusBitMap:%llu threadRXReachabilityStatusBitMap:%llu srpStatusBitMap:%llu outputSequenceNumber:%llu \n", buf, 0x72u);
          }

          v16 = [[CtrAccessorySpecificThreadInfoOutput alloc] initWithAccessorySpecificThreadInfoOutput:v14 threadMeshUnderlyingStatusBitmap:v8 threadTXError:v12 threadTXUnderlyingStatusBitmap:v9 threadRXUnderlyingStatusBitmap:v10 srpError:v15 srpUnderlyingStatusBitmap:v11];
          [v21 addObject:v16];
        }
      }
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEB98] setWithArray:v21];
    (*(v17 + 16))(v17, v18);
  }
}

- (Result)updatePrimaryResident:(Result *__return_ptr)retstr isPrimaryResidentThreadCapable:primaryResidentInfo:
{
  v4 = v2;
  v5 = v1;
  v16 = *MEMORY[0x277D85DE8];
  v7 = v3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v13 = 136315394;
    *&v13[4] = "[CtrClient updatePrimaryResident:isPrimaryResidentThreadCapable:primaryResidentInfo:]";
    *&v13[12] = 1024;
    *&v13[14] = 605;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %d", v13, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "Command Error");
  v8 = *v13;
  v9 = SHIBYTE(v15);
  if (v7)
  {
    v10 = v7;
    uTF8String = [v7 UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v13 = 138412802;
    *&v13[4] = v7;
    *&v13[12] = 1024;
    *&v13[14] = v5;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "primaryInfo=%@,  isPrimaryResident=%d, isPrimaryResidentThreadCapable=%d\n", v13, 0x18u);
  }

  v13[0] = v5 != 0;
  v13[1] = v4 != 0;
  *&v13[8] = uTF8String;
  CtrXPC::Client::updatePrimaryResident(v13, retstr);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  return result;
}

- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr
{
  v2 = v1;
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v7 = 136315394;
    *&v7[4] = "[CtrClient updateHomeThreadInfo:]";
    *&v7[12] = 1024;
    *&v7[14] = 623;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %d", v7, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "Command Error");
  v4 = *v7;
  v5 = v7[23];
  *v7 = vuzp1q_s32(*v2, *(v2 + 16));
  *&v7[16] = vmovn_s64(*(v2 + 32));
  CtrXPC::Client::updateHomeThreadInfo(v7, retstr);
  if (v5 < 0)
  {
    operator delete(v4);
  }

  return result;
}

- (void)threadStart:(id)start geoAvailable:(BOOL)available isPrimaryUser:(BOOL)user waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  userCopy = user;
  availableCopy = available;
  v49[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x6812000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = "";
  v36 = 0;
  v37 = 0;
  v38 = 256;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  if (startCopy)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:startCopy encoding:4];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      uTF8String = [v15 UTF8String];
      v31[10] = uTF8String;
      v18 = xpc_dictionary_create(0, 0, 0);
      v19 = v31;
      v31[7] = v18;
      *(v19 + 72) = syncCopy;
      *(v19 + 88) = availableCopy;
      *(v19 + 73) = userCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "activeOperationalDataset : %@ \n", &buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = syncCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = availableCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = userCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "isPrimaryUser flag : %d\n", &buf, 8u);
      }

      ptr = self->CtrXPCClientPtr.__ptr_;
      v21 = *(v31 + 3);
      v22 = *(v31 + 4);
      v45 = v31[12];
      buf = v21;
      v43 = v22;
      v44 = *(v31 + 5);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke;
      v27[3] = &unk_278EC02E8;
      v29 = &v30;
      v28 = completionCopy;
      CtrXPC::Client::threadStartWithCompletion(ptr, &buf, v27);
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v47 = @"activeOperationalDataset parameter is encoded incorrectly";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v15 = [v25 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v26];

      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"activeOperationalDataset parameter is required";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v15 = [v23 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v24];

    (*(completionCopy + 2))(completionCopy, v15);
  }

  _Block_object_dispose(&v30, 8);
}

void __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  xpc_release(*(*(*(a1 + 40) + 8) + 56));
  if (*a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke_cold_1();
    }

    v4 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8 = @"Error: threadstart failed !";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [v4 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v5];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[CtrClient threadStart:geoAvailable:isPrimaryUser:waitForSync:completion:]_block_invoke";
      v11 = 1024;
      v12 = 676;
      _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s:%d: threadstart is successful !", buf, 0x12u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)threadStart:(id)start activeOperationalDataSet:(id)set geoAvailable:(BOOL)available routerMode:(BOOL)mode eMAC:(id)c waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  modeCopy = mode;
  availableCopy = available;
  v64[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  setCopy = set;
  cCopy = c;
  completionCopy = completion;
  v45 = 0;
  v46 = &v45;
  v47 = 0x6812000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = "";
  v51 = 0;
  v52 = 0;
  v53 = 256;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__42;
  v43[4] = __Block_byref_object_dispose__43;
  v18 = setCopy;
  v44 = v18;
  if (startCopy | v18)
  {
    if (cCopy || !modeCopy)
    {
      if (startCopy)
      {
        uUIDString = [startCopy UUIDString];
        if (uUIDString)
        {
          v37 = uUIDString;
          v25 = uUIDString;
          uUIDString = [v37 UTF8String];
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        uUIDString = 0;
      }

      v46[6] = uUIDString;
      v26 = xpc_dictionary_create(0, 0, 0);
      uTF8String = 0;
      v28 = v46;
      v46[7] = v26;
      *(v28 + 72) = syncCopy;
      *(v28 + 88) = availableCopy;
      *(v28 + 90) = modeCopy;
      v29 = 0;
      if (cCopy && modeCopy)
      {
        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:cCopy encoding:4];
        v31 = v30;
        uTF8String = [v30 UTF8String];
        v28 = v46;
        v29 = v30;
      }

      v28[12] = uTF8String;
      if (v18)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
        v32 = v21;
        uTF8String2 = [v21 UTF8String];
        v28 = v46;
      }

      else
      {
        uTF8String2 = 0;
        v21 = 0;
      }

      v28[10] = uTF8String2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v37;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "inUniqueId string : %@ \n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "activeOperationalDataset : %@ \n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = syncCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = availableCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = modeCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "routerMode flag : %d\n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "eMAC str : %@\n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = cCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "eMAC : %@\n", buf, 0xCu);
      }

      ptr = self->CtrXPCClientPtr.__ptr_;
      v35 = *(v46 + 3);
      v36 = *(v46 + 4);
      v60 = v46[12];
      *buf = v35;
      v58 = v36;
      v59 = *(v46 + 5);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke;
      v39[3] = &unk_278EC0310;
      v41 = &v45;
      v40 = completionCopy;
      v42 = v43;
      CtrXPC::Client::threadStartWithCompletion(ptr, buf, v39);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA450];
      v62 = @"eMAC is required if router mode is on";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v21 = [v19 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v20];

      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA450];
    v64[0] = @"inUniqueId or activeOperationalDataset parameter is required";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v21 = [v22 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v23];

    (*(completionCopy + 2))(completionCopy, 0, v21);
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);
}

void __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke(void *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
    xpc_release(*(*(a1[5] + 8) + 56));
    (*(a1[4] + 16))();

    return;
  }

  if (xpc_dictionary_get_string(*(*(a1[5] + 8) + 56), "PropVal"))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(*(*(a1[5] + 8) + 56), "PropVal")}];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
      if (v4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v8 = v4;
          v9 = 2112;
          v10 = v3;
          _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Output UUID : %@, UUID-NSSTRING : %@ \n", buf, 0x16u);
        }

        xpc_release(*(*(a1[5] + 8) + 56));
        (*(a1[4] + 16))();

        return;
      }
    }
  }

  if (*(*(a1[6] + 8) + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v8 = "[CtrClient threadStart:activeOperationalDataSet:geoAvailable:routerMode:eMAC:waitForSync:completion:]_block_invoke";
      v9 = 1024;
      LODWORD(v10) = 772;
      _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s:%d: Even after the success, output value is nil", buf, 0x12u);
    }

    (*(a1[4] + 16))();
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:0 userInfo:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke_cold_1();
    }
  }
}

- (void)threadStopWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v16 = 0;
  *&v15[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v9[0] = 0;
  v9[2] = 0;
  v10 = 256;
  *v11 = *v15;
  *&v11[7] = 0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CtrClient_threadStopWithCompletion___block_invoke;
  v7[3] = &unk_278EC0338;
  v8 = completionCopy;
  v6 = completionCopy;
  CtrXPC::Client::threadStopWithCompletion(ptr, v9, v7);
}

void __38__CtrClient_threadStopWithCompletion___block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)provideExtendedMACAddress:(id)address completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  *&v27[14] = 0;
  *&v27[6] = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (addressCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
    uTF8String = [v9 UTF8String];
  }

  else
  {
    uTF8String = 0;
    v9 = 0;
  }

  ptr = self->CtrXPCClientPtr.__ptr_;
  v22[0] = 0;
  v22[1] = v8;
  v22[2] = 0;
  v23 = 256;
  v24 = *v27;
  v25 = *&v27[16];
  v26 = uTF8String;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__CtrClient_provideExtendedMACAddress_completion___block_invoke;
  v13[3] = &unk_278EC0360;
  v15 = 0;
  v16 = v8;
  v17 = 0;
  v18 = 256;
  v20 = *&v27[16];
  v19 = *v27;
  v21 = uTF8String;
  v12 = completionCopy;
  v14 = v12;
  CtrXPC::Client::provideExtendedMACAddress(ptr, v22, v13);
}

void __50__CtrClient_provideExtendedMACAddress_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (*a2)
  {
    string = xpc_dictionary_get_string(v3, "PropVal");
    if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], v5 = objc_claimAutoreleasedReturnValue(), (v6 = v5) != 0))
    {
      v7 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA498];
      v13[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v9 = [v7 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v8];

      v10 = v6;
    }

    else
    {
      v10 = 0;
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
    }

    xpc_release(*(a1 + 48));
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    xpc_release(v3);
    v11 = *(*(a1 + 32) + 16);

    v11();
  }
}

- (void)startPairingForExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v31 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  *&v30[13] = 0;
  *&v30[6] = 0;
  if (addressCopy || !deviceCopy)
  {
    if (addressCopy)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        completionCopy[2](completionCopy, v12);
        goto LABEL_10;
      }

      uTF8String = [v13 UTF8String];
    }

    else
    {
      uTF8String = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v20[0] = 0;
    v20[2] = 0;
    v21 = 256;
    v22 = *v30;
    v23 = v30[16];
    v24 = deviceCopy;
    v25 = uTF8String;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__CtrClient_startPairingForExtendedMACAddress_isWedDevice_completion___block_invoke;
    v18[3] = &unk_278EC0338;
    v19 = completionCopy;
    CtrXPC::Client::startPairing(ptr, v20, v18);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    completionCopy[2](completionCopy, v12);
  }

LABEL_10:
}

void __70__CtrClient_startPairingForExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Failed to start pairing";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)stopPairing:(id)pairing
{
  v16 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v15 = 0;
  *&v14[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v9[0] = 0;
  v9[2] = 0;
  v10 = 256;
  v11 = *v14;
  v12 = 0;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__CtrClient_stopPairing___block_invoke;
  v7[3] = &unk_278EC0338;
  v8 = pairingCopy;
  v6 = pairingCopy;
  CtrXPC::Client::stopPairing(ptr, v9, v7);
}

void __25__CtrClient_stopPairing___block_invoke(uint64_t a1, _DWORD *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Failed to stop pairing";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)startFWUpdate:(id)update isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  *&v30[13] = 0;
  *&v30[6] = 0;
  if (updateCopy || !deviceCopy)
  {
    if (updateCopy)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:updateCopy encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        completionCopy[2](completionCopy, v12);
        goto LABEL_10;
      }

      uTF8String = [v13 UTF8String];
    }

    else
    {
      uTF8String = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v20[0] = 0;
    v20[2] = 0;
    v21 = 256;
    v22 = *v30;
    v23 = v30[16];
    v24 = deviceCopy;
    v25 = uTF8String;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__CtrClient_startFWUpdate_isWedDevice_completion___block_invoke;
    v18[3] = &unk_278EC0338;
    v19 = completionCopy;
    CtrXPC::Client::startFWUpdate(ptr, v20, v18);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    completionCopy[2](completionCopy, v12);
  }

LABEL_10:
}

void __50__CtrClient_startFWUpdate_isWedDevice_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Failed to start FW Update";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)stopFWUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v15 = 0;
  *&v14[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v9[0] = 0;
  v9[2] = 0;
  v10 = 256;
  v11 = *v14;
  v12 = 0;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__CtrClient_stopFWUpdate___block_invoke;
  v7[3] = &unk_278EC0338;
  v8 = updateCopy;
  v6 = updateCopy;
  CtrXPC::Client::stopFWUpdate(ptr, v9, v7);
}

void __26__CtrClient_stopFWUpdate___block_invoke(uint64_t a1, _DWORD *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Failed to stop FW Update";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)init:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end