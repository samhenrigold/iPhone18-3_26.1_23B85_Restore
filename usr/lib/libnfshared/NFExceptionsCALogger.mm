@interface NFExceptionsCALogger
+ (void)postAnalyticsATLFailureEvent:(unsigned __int16)event aid:(id)aid error:(id)error;
+ (void)postAnalyticsAppletProvisioningFailureEvent:(unsigned __int16)event responseCode:(unsigned __int16)code;
+ (void)postAnalyticsCRSAuthECommerceWithParameters:(id)parameters;
+ (void)postAnalyticsCRSAuthInitEventWithStatus:(unsigned __int16)status;
+ (void)postAnalyticsCRSAuthWithStatus:(unsigned __int16)status withMethod:(unsigned int)method;
+ (void)postAnalyticsCRSDeAuthWithStatus:(unsigned __int16)status;
+ (void)postAnalyticsContactlessErrorsEvent:(unsigned __int16)event status:(unsigned __int16)status error:(id)error;
+ (void)postAnalyticsExpressSetupFailureEvent:(unsigned __int16)event context:(unsigned __int16)context error:(id)error;
+ (void)postAnalyticsHardwareFault:(unsigned int)fault errorStatus:(unsigned int)status parityErrorCount:(unsigned int)count;
+ (void)postAnalyticsHciTransactionException:(id)exception eventType:(id)type commandResult:(id)result status:(id)status;
+ (void)postAnalyticsMobileSoftwareUpdateExceptionEvent:(unsigned __int16)event;
+ (void)postAnalyticsOsResetEvent:(unsigned int)event osID:(unsigned int)d hardwareType:(unsigned int)type;
+ (void)postAnalyticsReaderModeExceptionForType:(unsigned int)type tagType:(unsigned int)tagType rfFrameInterface:(BOOL)interface withErrorCode:(unsigned int)code;
+ (void)postAnalyticsSEFailureEvent:(unsigned __int16)event context:(id)context error:(id)error;
+ (void)postAnalyticsSERemovedEvent:(unsigned int)event hasExpressTransactionStarted:(BOOL)started hasCardEmulationStarted:(BOOL)emulationStarted hardwareType:(unsigned int)type;
+ (void)postAnalyticsSERestrictedModeEntered:(id)entered;
+ (void)postAnalyticsSERestrictedModeExited:(unsigned int)exited exitReason:(unsigned int)reason;
+ (void)postAnalyticsTSMConnectivityException:(unsigned int)exception;
+ (void)postAnalyticsVASTransactionException:(unsigned int)exception withSWStatus:(unsigned __int16)status;
+ (void)postCASERestrictedModeExited:(unsigned int)exited exitReason:(unsigned int)reason;
+ (void)postHardwareExceptionEventWithAssertionCounter:(unsigned int)counter hardwareType:(unsigned int)type wdogDump:(unsigned int *)dump hwFltDump:(unsigned int *)fltDump wdgTickInfo:(unsigned int *)info assertionData:(id)data;
+ (void)postMiddlewareExceptionEvent:(unsigned int)event mwVersion:(unsigned int)version errorType:(unsigned int)type errorCode:(unsigned int)code breadcrumb:(unint64_t)breadcrumb description:(id)description;
@end

@implementation NFExceptionsCALogger

+ (void)postHardwareExceptionEventWithAssertionCounter:(unsigned int)counter hardwareType:(unsigned int)type wdogDump:(unsigned int *)dump hwFltDump:(unsigned int *)fltDump wdgTickInfo:(unsigned int *)info assertionData:(id)data
{
  v11 = *&type;
  v12 = *&counter;
  v147[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v16 = objc_autoreleasePoolPush();
  if (v11)
  {
    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15);
    v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v20, v19, @"AssertionProgramCounter");

    if (dump)
    {
      v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, *dump);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v23, v22, @"RfProcessPc");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v17, v21, &unk_2843B4BD8, @"RfProcessPc");
    }

    v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v24, dump[1]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v27, v26, @"RfProcessSp");

    v29 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, dump[2]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v30, v29, @"RfProcessWaitObject");

    v32 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, dump[3]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v33, v32, @"RfProcessState");

    v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v34, dump[4]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v36, v35, @"SwpProcessPc");

    v38 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, dump[5]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v39, v38, @"SwpProcessSp");

    v41 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v40, dump[6]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v42, v41, @"SwpProcessWaitObject");

    v44 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, dump[7]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v45, v44, @"SwpProcessState");

    v47 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v46, dump[8]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v48, v47, @"KernelProcessPc");

    v50 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, dump[9]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v51, v50, @"KernelProcessSp");

    v53 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v52, dump[10]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v54, v53, @"KernelProcessWaitObject");

    v56 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v55, dump[11]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v57, v56, @"KernelProcessState");

    v59 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v58, dump[12]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v60, v59, @"HostProcessPc");

    v62 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v61, dump[13]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v63, v62, @"HostProcessSp");

    v65 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v64, dump[14]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v66, v65, @"HostProcessWaitObject");

    v68 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v67, dump[15]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v69, v68, @"HostProcessState");

    if (fltDump)
    {
      v71 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v70, *fltDump);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v72, v71, @"R0");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v17, v70, &unk_2843B4BD8, @"R0");
    }

    v74 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v73, fltDump[1]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v75, v74, @"R1");

    v77 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v76, fltDump[2]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v78, v77, @"R2");

    v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v79, fltDump[3]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v81, v80, @"R3");

    v83 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v82, fltDump[4]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v84, v83, @"R12");

    v86 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v85, fltDump[5]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v87, v86, @"LR");

    v89 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v88, fltDump[6]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v90, v89, @"PC");

    v92 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v91, fltDump[7]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v93, v92, @"XPsr");

    v95 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v94, fltDump[8]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v96, v95, @"hfLr");

    v98 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v97, fltDump[9]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v99, v98, @"Psp");

    v101 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v100, fltDump[10]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v102, v101, @"Msp");

    if (info)
    {
      v104 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v103, *info);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v105, v104, @"WDG_RF");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v17, v103, &unk_2843B4BD8, @"WDG_RF");
    }

    v107 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v106, info[1]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v108, v107, @"WDG_SWP");

    v110 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v109, info[2]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v111, v110, @"WDG_Kernel");

    v113 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v112, info[3]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v114, v113, @"WDG_Host");

    v116 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v115, info[4]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v117, v116, @"WDG_MBox");

    v119 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v118, info[5]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v120, v119, @"WDG_LowPower");

    v122 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v121, info[6]);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v123, v122, @"WDG_Sys_Ticks");

    v25 = objc_msgSend_description(v17, v124, v125);
  }

  else
  {
    v25 = 0;
  }

  v126 = &stru_2843AE380;
  if (v25)
  {
    v127 = v25;
  }

  else
  {
    v127 = &stru_2843AE380;
  }

  v147[0] = v127;
  v146[0] = @"exceptionData";
  v146[1] = @"hardwareType";
  v130 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v11);
  v147[1] = v130;
  v146[2] = @"assertionDebug";
  if (dataCopy)
  {
    v126 = objc_msgSend_NF_asHexString(dataCopy, v128, v129);
  }

  v147[2] = v126;
  v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v128, v147, v146, 3);
  if (dataCopy)
  {
  }

  v134 = objc_msgSend_sharedCALogger(NFCALogger, v132, v133);
  objc_msgSend_postCAEventFor_eventInput_(v134, v135, @"com.apple.nfcd.exceptions.hardwareExceptionEvent", v131);
  v138 = objc_msgSend_generateDailyUUIDForCA(v134, v136, v137);
  v140 = v138;
  v144[0] = @"hwCount";
  v144[1] = @"dailyDeviceUUID";
  if (v138)
  {
    v141 = v138;
  }

  else
  {
    v141 = @"noUUID";
  }

  v145[0] = &unk_2843B4BF0;
  v145[1] = v141;
  v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v139, v145, v144, 2);
  objc_msgSend_postCAEventFor_eventInput_(v134, v143, @"com.apple.nfcd.deviceExceptionStatistic", v142);

  objc_autoreleasePoolPop(v16);
}

+ (void)postMiddlewareExceptionEvent:(unsigned int)event mwVersion:(unsigned int)version errorType:(unsigned int)type errorCode:(unsigned int)code breadcrumb:(unint64_t)breadcrumb description:(id)description
{
  v9 = *&code;
  v10 = *&type;
  v11 = *&version;
  v12 = *&event;
  v42[6] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v14 = objc_autoreleasePoolPush();
  v41[0] = @"middlewareVersion";
  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v15, v11);
  v42[0] = v16;
  v41[1] = @"type";
  v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v10);
  v42[1] = v18;
  v41[2] = @"errorCode";
  v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v9);
  v42[2] = v20;
  v41[3] = @"breadcrump";
  v22 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v21, breadcrumb);
  v42[3] = v22;
  v41[4] = @"hardwareType";
  v24 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, v12);
  v41[5] = @"description";
  v42[4] = v24;
  v42[5] = descriptionCopy;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v42, v41, 6);

  v29 = objc_msgSend_sharedCALogger(NFCALogger, v27, v28);
  objc_msgSend_postCAEventFor_eventInput_(v29, v30, @"com.apple.nfcd.exceptions.middlewareExceptionEvent", v26);
  v33 = objc_msgSend_generateDailyUUIDForCA(v29, v31, v32);
  v35 = v33;
  v39[0] = @"mwCount";
  v39[1] = @"dailyDeviceUUID";
  if (v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = @"noUUID";
  }

  v40[0] = &unk_2843B4BF0;
  v40[1] = v36;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v40, v39, 2);
  objc_msgSend_postCAEventFor_eventInput_(v29, v38, @"com.apple.nfcd.deviceExceptionStatistic", v37);

  objc_autoreleasePoolPop(v14);
}

+ (void)postAnalyticsMobileSoftwareUpdateExceptionEvent:(unsigned __int16)event
{
  eventCopy = event;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v13 = @"status";
  v6 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v5, eventCopy);
  v14[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v14, &v13, 1);

  v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
  objc_msgSend_postCAEventFor_eventInput_(v11, v12, @"com.apple.nfcd.exceptions.mobileSoftwareUpdateExceptionEvent", v8);

  objc_autoreleasePoolPop(v4);
}

+ (void)postAnalyticsSERemovedEvent:(unsigned int)event hasExpressTransactionStarted:(BOOL)started hasCardEmulationStarted:(BOOL)emulationStarted hardwareType:(unsigned int)type
{
  v6 = *&type;
  emulationStartedCopy = emulationStarted;
  startedCopy = started;
  v9 = *&event;
  v26[4] = *MEMORY[0x277D85DE8];
  v10 = objc_autoreleasePoolPush();
  v25[0] = @"reason";
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, v9);
  v26[0] = v12;
  v25[1] = @"hasExpressTransactionStarted";
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v13, startedCopy);
  v26[1] = v14;
  v25[2] = @"hasCardEmulationStarted";
  v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, emulationStartedCopy);
  v26[2] = v16;
  v25[3] = @"hardwareType";
  v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v6);
  v26[3] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v26, v25, 4);

  v23 = objc_msgSend_sharedCALogger(NFCALogger, v21, v22);
  objc_msgSend_postCAEventFor_eventInput_(v23, v24, @"com.apple.nfcd.exceptions.seRemovedEvent", v20);

  objc_autoreleasePoolPop(v10);
}

+ (void)postAnalyticsOsResetEvent:(unsigned int)event osID:(unsigned int)d hardwareType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&d;
  v7 = *&event;
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v21[0] = @"reason";
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, v7);
  v22[0] = v10;
  v21[1] = @"osID";
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, v6);
  v22[1] = v12;
  v21[2] = @"hardwareType";
  v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, v5);
  v22[2] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v22, v21, 3);

  v19 = objc_msgSend_sharedCALogger(NFCALogger, v17, v18);
  objc_msgSend_postCAEventFor_eventInput_(v19, v20, @"com.apple.nfcd.exceptions.osResetEvent", v16);

  objc_autoreleasePoolPop(v8);
}

+ (void)postAnalyticsCRSAuthInitEventWithStatus:(unsigned __int16)status
{
  statusCopy = status;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (statusCopy != 36864)
  {
    v13 = @"statusCode";
    v6 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v4, statusCopy);
    v14[0] = v6;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v14, &v13, 1);

    v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
    objc_msgSend_postCAEventFor_eventInput_(v11, v12, @"com.apple.nfcd.exceptions.crsAuthInitExceptionEvent", v8);
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)postAnalyticsCRSAuthECommerceWithParameters:(id)parameters
{
  v28[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v4 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_objectForKey_(parametersCopy, v5, @"status");
  v9 = objc_msgSend_unsignedIntValue(v6, v7, v8);

  if (v9 != 36864)
  {
    v12 = objc_msgSend_objectForKey_(parametersCopy, v10, @"method");
    if (v12)
    {
      v13 = objc_msgSend_objectForKey_(parametersCopy, v11, @"method");
      v16 = objc_msgSend_unsignedIntValue(v13, v14, v15);
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v27[0] = @"statusCode";
    v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v9);
    v27[1] = @"type";
    v28[0] = v18;
    v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v16);
    v28[1] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v28, v27, 2);

    v25 = objc_msgSend_sharedCALogger(NFCALogger, v23, v24);
    objc_msgSend_postCAEventFor_eventInput_(v25, v26, @"com.apple.nfcd.exceptions.crsAuthExceptionEvent", v22);
  }

  objc_autoreleasePoolPop(v4);
}

+ (void)postAnalyticsCRSAuthWithStatus:(unsigned __int16)status withMethod:(unsigned int)method
{
  v4 = *&method;
  statusCopy = status;
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  if (statusCopy != 36864)
  {
    v17[0] = @"statusCode";
    v8 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v6, statusCopy);
    v17[1] = @"type";
    v18[0] = v8;
    v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, v4);
    v18[1] = v10;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, v17, 2);

    v15 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
    objc_msgSend_postCAEventFor_eventInput_(v15, v16, @"com.apple.nfcd.exceptions.crsAuthExceptionEvent", v12);
  }

  objc_autoreleasePoolPop(v7);
}

+ (void)postAnalyticsCRSDeAuthWithStatus:(unsigned __int16)status
{
  statusCopy = status;
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (statusCopy != 36864)
  {
    v13[0] = @"statusCode";
    v6 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v4, statusCopy);
    v13[1] = @"type";
    v14[0] = v6;
    v14[1] = &unk_2843B4C08;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v14, v13, 2);

    v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
    objc_msgSend_postCAEventFor_eventInput_(v11, v12, @"com.apple.nfcd.exceptions.crsAuthExceptionEvent", v8);
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)postAnalyticsSERestrictedModeEntered:(id)entered
{
  v43[3] = *MEMORY[0x277D85DE8];
  enteredCopy = entered;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_sharedCALogger(NFCALogger, v6, v7);
  if ((objc_msgSend_restrictedMode(v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_setRestrictedMode_(v8, v11, 1);
    v42[0] = @"contactless";
    v14 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v12, @"contactless");
    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v3 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v13, @"contactless");
      v18 = objc_msgSend_BOOLValue(v3, v16, v17);
      v20 = objc_msgSend_numberWithBool_(v15, v19, v18);
    }

    else
    {
      v20 = &unk_2843B4BD8;
    }

    v43[0] = v20;
    v42[1] = @"platformIdentifier";
    v21 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v13, @"platformIdentifier");
    v23 = v21;
    v24 = &stru_2843AE380;
    if (v21)
    {
      v24 = v21;
    }

    v43[1] = v24;
    v42[2] = @"hardwareType";
    v25 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v22, @"hardwareType");
    v27 = v25;
    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = &unk_2843B4BD8;
    }

    v43[2] = v28;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v43, v42, 3);

    if (v14)
    {
    }

    objc_msgSend_postCAEventFor_eventInput_(v8, v30, @"com.apple.nfcd.exceptions.seRestrictedModeEnteredEvent", v29);
    objc_msgSend_updateAnalyticsGeneralTransactionStatistics_(NFGeneralStatisticsCALogger, v31, &unk_2843B4CB0);
    v34 = objc_msgSend_generateDailyUUIDForCA(v8, v32, v33);
    v36 = v34;
    v40[0] = @"restrictedModeCount";
    v40[1] = @"dailyDeviceUUID";
    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = @"noUUID";
    }

    v41[0] = &unk_2843B4BF0;
    v41[1] = v37;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v41, v40, 2);
    objc_msgSend_postCAEventFor_eventInput_(v8, v39, @"com.apple.nfcd.deviceExceptionStatistic", v38);
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)postAnalyticsSERestrictedModeExited:(unsigned int)exited exitReason:(unsigned int)reason
{
  objc_msgSend_postCASERestrictedModeExited_exitReason_(self, a2, *&exited, *&reason);
  v8 = objc_msgSend_sharedCALogger(NFCALogger, v4, v5);
  objc_msgSend_removeRestrictedMode(v8, v6, v7);
}

+ (void)postCASERestrictedModeExited:(unsigned int)exited exitReason:(unsigned int)reason
{
  v4 = *&reason;
  v5 = *&exited;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v17[0] = @"hardwareType";
  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, v5);
  v17[1] = @"exitReason";
  v18[0] = v8;
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, v4);
  v18[1] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v18, v17, 2);

  v15 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
  objc_msgSend_postCAEventFor_eventInput_(v15, v16, @"com.apple.nfcd.exceptions.seRestrictedModeExitEvent", v12);

  objc_autoreleasePoolPop(v6);
}

+ (void)postAnalyticsVASTransactionException:(unsigned int)exception withSWStatus:(unsigned __int16)status
{
  statusCopy = status;
  v5 = *&exception;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  if (statusCopy > 27266)
  {
    if (statusCopy != 27267 && statusCopy != 36864)
    {
      goto LABEL_7;
    }
  }

  else if (statusCopy != 25223 && statusCopy != 27012)
  {
LABEL_7:
    v18[0] = @"swStatus";
    v8 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v6, statusCopy);
    v18[1] = @"commandType";
    v19[0] = v8;
    v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, v5);
    v19[1] = v10;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v19, v18, 2);

    v15 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
    objc_msgSend_postCAEventFor_eventInput_(v15, v16, @"com.apple.nfcd.exceptions.vasTransactionExceptionEvent", v12);

    objc_msgSend_updateAnalyticsGeneralTransactionStatistics_(NFGeneralStatisticsCALogger, v17, &unk_2843B4CD8);
  }

  objc_autoreleasePoolPop(v7);
}

+ (void)postAnalyticsTSMConnectivityException:(unsigned int)exception
{
  v3 = *&exception;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v13 = @"errorCode";
  v6 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, v3);
  v14[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v14, &v13, 1);

  v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
  objc_msgSend_postCAEventFor_eventInput_(v11, v12, @"com.apple.nfcd.exceptions.tsmConnectivityExceptionEvent", v8);

  objc_autoreleasePoolPop(v4);
}

+ (void)postAnalyticsHciTransactionException:(id)exception eventType:(id)type commandResult:(id)result status:(id)status
{
  v21[4] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  typeCopy = type;
  resultCopy = result;
  statusCopy = status;
  v13 = objc_autoreleasePoolPush();
  v20[0] = @"transactionUUID";
  v20[1] = @"eventType";
  v21[0] = exceptionCopy;
  v21[1] = typeCopy;
  v20[2] = @"commandResult";
  v20[3] = @"status";
  v21[2] = resultCopy;
  v21[3] = statusCopy;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, v20, 4);
  v18 = objc_msgSend_sharedCALogger(NFCALogger, v16, v17);
  objc_msgSend_postCAEventFor_eventInput_(v18, v19, @"com.apple.nfcd.exceptions.hciTransactionExceptionEvent", v15);

  objc_autoreleasePoolPop(v13);
}

+ (void)postAnalyticsReaderModeExceptionForType:(unsigned int)type tagType:(unsigned int)tagType rfFrameInterface:(BOOL)interface withErrorCode:(unsigned int)code
{
  v6 = *&code;
  interfaceCopy = interface;
  v8 = *&tagType;
  v9 = *&type;
  v26[4] = *MEMORY[0x277D85DE8];
  v10 = objc_autoreleasePoolPush();
  v25[0] = @"type";
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, v9);
  v26[0] = v12;
  v25[1] = @"tagType";
  v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, v8);
  v26[1] = v14;
  v25[2] = @"rfFrameInterface";
  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, interfaceCopy);
  v26[2] = v16;
  v25[3] = @"errorCode";
  v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v6);
  v26[3] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v26, v25, 4);

  v23 = objc_msgSend_sharedCALogger(NFCALogger, v21, v22);
  objc_msgSend_postCAEventFor_eventInput_(v23, v24, @"com.apple.nfcd.exceptions.ReaderModeExceptionEvent", v20);

  objc_autoreleasePoolPop(v10);
}

+ (void)postAnalyticsExpressSetupFailureEvent:(unsigned __int16)event context:(unsigned __int16)context error:(id)error
{
  contextCopy = context;
  eventCopy = event;
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v10 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v9, eventCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v11, v10, @"reason");

  v13 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v12, contextCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v14, v13, @"context");

  if (errorCopy)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_code(errorCopy, v15, v16);
    v20 = objc_msgSend_numberWithInteger_(v17, v19, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v21, v20, @"errorCode");
  }

  v22 = objc_msgSend_sharedCALogger(NFCALogger, v15, v16);
  objc_msgSend_postCAEventFor_eventInput_(v22, v23, @"com.apple.nfcd.exceptions.expressSetupFailures", v8);

  objc_autoreleasePoolPop(v7);
}

+ (void)postAnalyticsATLFailureEvent:(unsigned __int16)event aid:(id)aid error:(id)error
{
  eventCopy = event;
  aidCopy = aid;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v11 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v10, eventCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v12, v11, @"reason");

  if (aidCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v13, aidCopy, @"aid");
  }

  if (errorCopy)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = objc_msgSend_code(errorCopy, v13, v14);
    v18 = objc_msgSend_numberWithInteger_(v15, v17, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v19, v18, @"errorCode");
  }

  v20 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
  objc_msgSend_postCAEventFor_eventInput_(v20, v21, @"com.apple.nfcd.exceptions.atlFailures", v9);

  objc_autoreleasePoolPop(v8);
}

+ (void)postAnalyticsAppletProvisioningFailureEvent:(unsigned __int16)event responseCode:(unsigned __int16)code
{
  codeCopy = code;
  eventCopy = event;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v9 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, eventCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v10, v9, @"reason");

  v12 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v11, codeCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v13, v12, @"errorCode");

  v16 = objc_msgSend_sharedCALogger(NFCALogger, v14, v15);
  objc_msgSend_postCAEventFor_eventInput_(v16, v17, @"com.apple.nfcd.exceptions.appletProvisioningFailures", v7);

  objc_autoreleasePoolPop(v6);
}

+ (void)postAnalyticsSEFailureEvent:(unsigned __int16)event context:(id)context error:(id)error
{
  eventCopy = event;
  contextCopy = context;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v11 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v10, eventCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v12, v11, @"reason");

  if (contextCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v13, contextCopy, @"context");
  }

  if (errorCopy)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = objc_msgSend_code(errorCopy, v13, v14);
    v18 = objc_msgSend_numberWithInteger_(v15, v17, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v19, v18, @"errorCode");
  }

  v20 = objc_msgSend_sharedCALogger(NFCALogger, v13, v14);
  objc_msgSend_postCAEventFor_eventInput_(v20, v21, @"com.apple.nfcd.exceptions.seFailures", v9);

  objc_autoreleasePoolPop(v8);
}

+ (void)postAnalyticsContactlessErrorsEvent:(unsigned __int16)event status:(unsigned __int16)status error:(id)error
{
  statusCopy = status;
  eventCopy = event;
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v10 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v9, eventCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v11, v10, @"reason");

  v13 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v12, statusCopy);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v14, v13, @"context");

  if (errorCopy)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_code(errorCopy, v15, v16);
    v20 = objc_msgSend_numberWithInteger_(v17, v19, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v21, v20, @"errorCode");
  }

  v22 = objc_msgSend_sharedCALogger(NFCALogger, v15, v16);
  objc_msgSend_postCAEventFor_eventInput_(v22, v23, @"com.apple.nfcd.exceptions.contactlessErrors", v8);

  objc_autoreleasePoolPop(v7);
}

+ (void)postAnalyticsHardwareFault:(unsigned int)fault errorStatus:(unsigned int)status parityErrorCount:(unsigned int)count
{
  v5 = *&count;
  v6 = *&status;
  v7 = *&fault;
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_sharedCALogger(NFCALogger, v9, v10);
  v21[0] = @"faultType";
  v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v12, v7);
  v22[0] = v13;
  v21[1] = @"errorStatus";
  v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v14, v6);
  v22[1] = v15;
  v21[2] = @"parityErrorCount";
  v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, v5);
  v22[2] = v17;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v22, v21, 3);

  objc_msgSend_postCAEventFor_eventInput_(v11, v20, @"com.apple.nfcd.exceptions.hardwareFault", v19);
  objc_autoreleasePoolPop(v8);
}

@end