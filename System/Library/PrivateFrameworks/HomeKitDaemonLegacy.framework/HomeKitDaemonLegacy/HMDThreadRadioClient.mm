@interface HMDThreadRadioClient
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isThreadNetworkUp;
- (BOOL)shouldInformThreadOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable;
- (HMDThreadRadioClient)init;
- (id)_WEDStateChangeEventFromThreadEvent:(shared_ptr<CtrXPC::Event>)event;
- (int64_t)_WEDConnectionStateFromStatus:(id)status disconnectReason:(id)reason;
- (int64_t)_connectionStateFromString:(id)string;
- (int64_t)_nodeTypeFromString:(id)string;
- (void)_notifyObserversOfCallStateChangedEvent:(id)event;
- (void)_notifyObserversOfPeripheralDeviceNodeTypeEvent:(id)event;
- (void)_notifyObserversOfThreadNetworkEvent:(id)event;
- (void)_notifyObserversOfThreadPreferredNetworkUpdatedEvent:(id)event;
- (void)_notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:(id)event;
- (void)_registerForThreadNetworkEvents;
- (void)_reportCurrentThreadState:(id)state;
- (void)_unregisterForThreadNetworkEvents;
- (void)_updateThreadMessageReliabilityParametersWithUserDefinedValues:(BOOL)values;
- (void)connectToExtendedMACAddress:(id)address completion:(id)completion;
- (void)informThreadLayerOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable;
- (void)registerForThreadNetworkEvents:(id)events;
- (void)setThreadMessageReliabilityParameters:(id)parameters activeRetransmitMs:(id)ms activeThresholdMs:(id)thresholdMs additionalRetransmitDelayMs:(id)delayMs;
- (void)startFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)startThreadNetwork:(id)network completion:(id)completion;
- (void)startThreadNetworkWithOperationalDataset:(id)dataset isOwnerUser:(BOOL)user completion:(id)completion;
- (void)startThreadPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)stopFirmwareUpdateWithCompletion:(id)completion;
- (void)stopThreadNetworkWithCompletion:(id)completion;
- (void)stopThreadPairingWithCompletion:(id)completion;
- (void)triggerThreadNetworkStateCaptureForAccessories:(id)accessories isSessionFailure:(BOOL)failure withCompletion:(id)completion;
- (void)triggerThreadNetworkStateCaptureWithCompletion:(id)completion;
- (void)unregisterForThreadNetworkEvents:(id)events;
@end

@implementation HMDThreadRadioClient

- (BOOL)shouldInformThreadOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable
{
  capableCopy = capable;
  changeCopy = change;
  threadLayerInformedResidentState = [(HMDThreadRadioClient *)self threadLayerInformedResidentState];
  if (changeCopy)
  {
    if (threadLayerInformedResidentState == 1)
    {
      return 0;
    }
  }

  else if (capableCopy)
  {
    if (threadLayerInformedResidentState == 2)
    {
      return 0;
    }
  }

  else if (threadLayerInformedResidentState == 3)
  {
    return 0;
  }

  return 1;
}

- (void)informThreadLayerOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable
{
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __89__HMDThreadRadioClient_informThreadLayerOfResidentChange_primaryResidentIsThreadCapable___block_invoke;
    v9[3] = &unk_27972C680;
    v9[4] = self;
    changeCopy = change;
    capableCopy = capable;
    dispatch_async(threadStateCaptureQueue, v9);
  }
}

void __89__HMDThreadRadioClient_informThreadLayerOfResidentChange_primaryResidentIsThreadCapable___block_invoke(uint64_t a1)
{
  v60[20] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldInformThreadOfResidentChange:*(a1 + 40) primaryResidentIsThreadCapable:*(a1 + 41)])
  {
    v2 = [*(a1 + 32) threadClient];
    v3 = v2;
    if (v2)
    {
      objc_msgSend_updatePrimaryResident_isPrimaryResidentThreadCapable_primaryResidentInfo_(v2);
    }

    else
    {
      *v46 = 0u;
      v47 = 0u;
    }

    if (SLODWORD(v46[0]) > 6)
    {
      if (SLODWORD(v46[0]) > 9)
      {
        if (LODWORD(v46[0]) == 10)
        {
          v8 = 3;
          goto LABEL_30;
        }

        if (LODWORD(v46[0]) == 12)
        {
          v8 = 80;
          goto LABEL_30;
        }
      }

      else
      {
        if (LODWORD(v46[0]) == 7)
        {
          v8 = 10;
          goto LABEL_30;
        }

        if (LODWORD(v46[0]) == 9)
        {
          v8 = 27;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (SLODWORD(v46[0]) > 4)
      {
        if (LODWORD(v46[0]) == 5)
        {
          v8 = 48;
        }

        else
        {
          v8 = 15;
        }

LABEL_30:
        v16 = objc_autoreleasePoolPush();
        v17 = objc_opt_class();
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = LODWORD(v46[0]);
          v53 = 2048;
          *&v54 = v8;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@CoreThreadRadio result code %lu mapped to HMErrorCode %lu", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = MEMORY[0x277CCACA8];
        v60[6] = 0;
        v21 = MEMORY[0x277D828A0] + 64;
        v60[0] = MEMORY[0x277D828A0] + 64;
        v22 = MEMORY[0x277D82828];
        v23 = *(MEMORY[0x277D82828] + 16);
        *buf = *(MEMORY[0x277D82828] + 8);
        *&buf[*(*buf - 24)] = v23;
        v24 = &buf[*(*buf - 24)];
        std::ios_base::init(v24, &buf[8]);
        v25 = v8;
        v26 = MEMORY[0x277D828A0] + 24;
        v24[1].__vftable = 0;
        v24[1].__fmtflags_ = -1;
        *buf = v26;
        v60[0] = v21;
        v27 = MEMORY[0x277D82868] + 16;
        *&buf[8] = MEMORY[0x277D82868] + 16;
        MEMORY[0x259C02800](&buf[16]);
        v56 = 0u;
        *__src = 0u;
        v54 = 0u;
        v28 = MEMORY[0x277D82878] + 16;
        *&buf[8] = MEMORY[0x277D82878] + 16;
        memset(&v57, 0, sizeof(v57));
        v58 = &v57;
        v59 = 16;
        std::string::resize(&v57, 0x16uLL, 0);
        size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v57.__r_.__value_.__l.__size_;
        }

        __src[1] = &v57;
        *&v56 = &v57;
        *(&v56 + 1) = &v57 + size;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Result:'", 8);
        if (LODWORD(v46[0]) > 0xE)
        {
          v30 = "kInvalidErrorCode";
        }

        else
        {
          v30 = off_27972B690[LODWORD(v46[0])];
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v30);
        if ((v51 & 0x80u) == 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        if ((v51 & 0x80u) == 0)
        {
          v32 = v51;
        }

        else
        {
          v32 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v31, v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "'", 1);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        v33 = HIBYTE(v47);
        if (v47 < 0)
        {
          v33 = v47;
        }

        if (v33)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " Info:'", 7);
          if (v47 >= 0)
          {
            v34 = &v46[1];
          }

          else
          {
            v34 = v46[1];
          }

          if (v47 >= 0)
          {
            v35 = HIBYTE(v47);
          }

          else
          {
            v35 = v47;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v34, v35);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "'", 1);
        }

        if ((v59 & 0x10) != 0)
        {
          v37 = v58;
          if (v58 < v56)
          {
            v58 = v56;
            v37 = v56;
          }

          v38 = __src[1];
        }

        else
        {
          if ((v59 & 8) == 0)
          {
            v36 = 0;
            v49 = 0;
LABEL_69:
            *(&__dst + v36) = 0;
            *buf = *v22;
            *&buf[*(*buf - 24)] = v22[3];
            *&buf[8] = v28;
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }

            *&buf[8] = v27;
            std::locale::~locale(&buf[16]);
            std::ostream::~ostream();
            MEMORY[0x259C02850](v60);
            if (v49 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            v40 = [v20 stringWithCString:p_dst encoding:4];
            if (v49 < 0)
            {
              operator delete(__dst);
            }

            v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v8 description:0 reason:v40 suggestion:0];

            v42 = objc_autoreleasePoolPush();
            v43 = *(a1 + 32);
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v45;
              *&buf[12] = 2112;
              *&buf[14] = v41;
              _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform Thread layer of primary resident update: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v42);
LABEL_79:
            if (SHIBYTE(v47) < 0)
            {
              operator delete(v46[1]);
            }

            return;
          }

          v38 = v54;
          v37 = __src[0];
        }

        v36 = v37 - v38;
        if ((v37 - v38) >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v36 >= 0x17)
        {
          operator new();
        }

        v49 = v37 - v38;
        if (v36)
        {
          memmove(&__dst, v38, v36);
        }

        v8 = v25;
        goto LABEL_69;
      }

      if (!LODWORD(v46[0]))
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
          v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
          *buf = 138543874;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          v53 = 2112;
          *&v54 = v14;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Successfully informed Thread layer of primary resident change (isPrimary=%@ primaryThreadCapable=%@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        if (*(a1 + 40))
        {
          v15 = 1;
        }

        else if (*(a1 + 41))
        {
          v15 = 2;
        }

        else
        {
          v15 = 3;
        }

        [*(a1 + 32) setThreadLayerInformedResidentState:v15];
        goto LABEL_79;
      }

      if (LODWORD(v46[0]) == 4)
      {
        v8 = 23;
        goto LABEL_30;
      }
    }

    v8 = 52;
    goto LABEL_30;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Not informing Thread layer of primary resident change as state has not changed.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)triggerThreadNetworkStateCaptureForAccessories:(id)accessories isSessionFailure:(BOOL)failure withCompletion:(id)completion
{
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_2;
    v14[3] = &unk_279733DB0;
    failureCopy = failure;
    v14[4] = self;
    v15 = completionCopy;
    v10 = completionCopy;
    dispatch_async(threadStateCaptureQueue, v14);

    v11 = v15;
  }

  else
  {
    v12 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v18 = completionCopy;
    v13 = completionCopy;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0, 0);
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_3;
  v4[3] = &unk_27972B670;
  v5 = *(a1 + 40);
  [v2 captureTriggerData:0 triggerId:v3 ^ 1u accessoryInfoList:0 completionHandler:v4];
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (!v23)
  {
    v21 = *(a1 + 32);
    if (!v8)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v22 = 1;
LABEL_15:
      (*(v21 + 16))(v21, 0, 0, v12);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v22 = 0;
LABEL_13:
    v12 = v8;
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:@"com.threadradiod.ctr"])
    {
      v10 = [v8 code];

      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v22 = 0;
    v21 = *(a1 + 32);
    goto LABEL_13;
  }

LABEL_5:
  if (objc_msgSend_duration(v23))
  {
    v11 = v23;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v15 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v16 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_apple_BRs")}];
  v17 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v18 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v19 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v20 = [v14 initWithObjectsAndKeys:{v15, @"numAdvertisedBRs", v16, @"numAppleBRs", v17, @"numThirdPartyBRs", v18, @"numThreadNetworks", v19, @"maxSimuIPPrefixesDetected", 0}];
  (*(v13 + 16))(v13, v20, 0, 0);

LABEL_16:
LABEL_17:
}

- (void)triggerThreadNetworkStateCaptureWithCompletion:(id)completion
{
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_2;
    block[3] = &unk_279735738;
    block[4] = self;
    v12 = completionCopy;
    v7 = completionCopy;
    dispatch_async(threadStateCaptureQueue, block);

    v8 = v12;
  }

  else
  {
    v9 = dispatch_get_global_queue(21, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke;
    v13[3] = &unk_2797348C0;
    v14 = completionCopy;
    v10 = completionCopy;
    dispatch_async(v9, v13);

    v8 = v14;
  }
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_3;
  v3[3] = &unk_27972B670;
  v4 = *(a1 + 40);
  [v2 captureTriggerData:0 triggerId:2 accessoryInfoList:0 completionHandler:v3];
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (!v17)
  {
    v15 = *(a1 + 32);
    if (!v8)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = 1;
LABEL_15:
      (*(v15 + 16))(v15, 0, v12);
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v16 = 0;
LABEL_13:
    v12 = v8;
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:@"com.threadradiod.ctr"])
    {
      v10 = [v8 code];

      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v16 = 0;
    v15 = *(a1 + 32);
    goto LABEL_13;
  }

LABEL_5:
  if (objc_msgSend_duration(v17))
  {
    v11 = v17;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v14 = -[HMDThreadNetworkStatusReport initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:]([HMDThreadNetworkStatusReport alloc], "initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:", [v12 num_border_routers_advertised], objc_msgSend(v12, "num_apple_BRs"), objc_msgSend(v12, "num_thirdparty_BRs"), objc_msgSend(v12, "num_thread_networks"), objc_msgSend(v12, "max_simultaneous_prefix_detected"), objc_msgSend(v12, "tx_total"), objc_msgSend(v12, "tx_total_success"), objc_msgSend(v12, "tx_delayavg"), objc_msgSend(v12, "rx_total"), objc_msgSend(v12, "rx_total_success"), objc_msgSend_duration(v12));
  (*(v13 + 16))(v13, v14, 0);

LABEL_16:
LABEL_17:
}

- (BOOL)isThreadNetworkUp
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_threadNetworkUp)
  {
    return 1;
  }

  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (!threadClient)
  {
    return self->_threadNetworkUp;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  threadClient2 = [(HMDThreadRadioClient *)self threadClient];
  v7 = threadClient2;
  if (threadClient2)
  {
    objc_msgSend_getProperty_output_(threadClient2);
  }

  else
  {
    *__p = 0u;
    v19 = 0u;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (LODWORD(__p[0]))
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDProperty_NCPState", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDProperty_NCPState got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = xpc_dictionary_get_value(v5, "PropVal");
    string_ptr = xpc_string_get_string_ptr(v14);

    if (string_ptr)
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string_ptr];
      v2 = [(HMDThreadRadioClient *)selfCopy _connectionStateFromString:v16]> 1;

      goto LABEL_17;
    }
  }

  v2 = 0;
LABEL_17:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  return v2;
}

- (void)_unregisterForThreadNetworkEvents
{
  v13 = *MEMORY[0x277D85DE8];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (threadClient)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@_unregisterForThreadNetworkEvents", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
    [threadClient2 setClientEventsOff];
  }

  else
  {
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_registerForThreadNetworkEvents
{
  v42 = *MEMORY[0x277D85DE8];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    objc_initWeak(&location, self);
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "NCP:State");
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke;
    v37[3] = &unk_27972B648;
    objc_copyWeak(&v38, &location);
    threadEventQueue = [(HMDThreadRadioClient *)self threadEventQueue];
    v5 = threadEventQueue;
    [threadClient2 setEventHandler:buf EventBlock:v37 dqueue:&threadEventQueue];
    v6 = threadEventQueue;
    threadEventQueue = 0;

    if (v41 < 0)
    {
      operator delete(*buf);
    }

    threadClient3 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "Network:NodeType");
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_303;
    v34[3] = &unk_27972B648;
    objc_copyWeak(&v35, &location);
    threadEventQueue2 = [(HMDThreadRadioClient *)self threadEventQueue];
    v8 = threadEventQueue2;
    [threadClient3 setEventHandler:buf EventBlock:v34 dqueue:&threadEventQueue2];
    v9 = threadEventQueue2;
    threadEventQueue2 = 0;

    if (v41 < 0)
    {
      operator delete(*buf);
    }

    threadClient4 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "WakeOnDeviceConnectionStatus");
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_305;
    v31[3] = &unk_27972B648;
    objc_copyWeak(&v32, &location);
    threadEventQueue3 = [(HMDThreadRadioClient *)self threadEventQueue];
    v11 = threadEventQueue3;
    [threadClient4 setEventHandler:buf EventBlock:v31 dqueue:&threadEventQueue3];
    v12 = threadEventQueue3;
    threadEventQueue3 = 0;

    if (v41 < 0)
    {
      operator delete(*buf);
    }

    threadClient5 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "PeripheralDeviceType");
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_307;
    v28[3] = &unk_27972B648;
    objc_copyWeak(&v29, &location);
    threadEventQueue4 = [(HMDThreadRadioClient *)self threadEventQueue];
    v14 = threadEventQueue4;
    [threadClient5 setEventHandler:buf EventBlock:v28 dqueue:&threadEventQueue4];
    v15 = threadEventQueue4;
    threadEventQueue4 = 0;

    if (v41 < 0)
    {
      operator delete(*buf);
    }

    threadClient6 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "bt_airpod_esco");
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_310;
    v25[3] = &unk_27972B648;
    objc_copyWeak(&v26, &location);
    threadEventQueue5 = [(HMDThreadRadioClient *)self threadEventQueue];
    v17 = threadEventQueue5;
    [threadClient6 setEventHandler:buf EventBlock:v25 dqueue:&threadEventQueue5];
    v18 = threadEventQueue5;
    threadEventQueue5 = 0;

    if (v41 < 0)
    {
      operator delete(*buf);
    }

    threadClient7 = [(HMDThreadRadioClient *)self threadClient];
    [threadClient7 setClientEventsOn];

    [(HMDThreadRadioClient *)self _reportCurrentThreadState:0];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke(uint64_t a1, CtrXPC::Event **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v18;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v20 = v7;
      v21 = 2080;
      v22 = v12;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkStateChangeEvent initWithEventType:eventValue:]([HMDThreadNetworkStateChangeEvent alloc], "initWithEventType:eventValue:", 0, [v5 _connectionStateFromString:v15]);
    [v5 _notifyObserversOfThreadNetworkEvent:v16];
  }
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_303(uint64_t a1, CtrXPC::Event **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v18;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v20 = v7;
      v21 = 2080;
      v22 = v12;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkStateChangeEvent initWithEventType:eventValue:]([HMDThreadNetworkStateChangeEvent alloc], "initWithEventType:eventValue:", 1, [v5 _nodeTypeFromString:v15]);
    [v5 _notifyObserversOfThreadNetworkEvent:v16];
  }
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_305(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a2 + 8);
    v14 = *a2;
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = [WeakRetained _WEDStateChangeEventFromThreadEvent:&v14];
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v6)
    {
      [v4 _notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:v6];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v4;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        CtrXPC::Event::getName(__p, *a2);
        if (v13 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 138543618;
        v17 = v10;
        v18 = 2080;
        v19 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring thread event: event name - %s", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_307(uint64_t a1, CtrXPC::Event **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v18;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v20 = v7;
      v21 = 2080;
      v22 = v12;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkPeripheralDeviceNodeTypeEvent initWithPeripheralDeviceNodeType:]([HMDThreadNetworkPeripheralDeviceNodeTypeEvent alloc], "initWithPeripheralDeviceNodeType:", [v5 _nodeTypeFromString:v15]);
    [v5 _notifyObserversOfPeripheralDeviceNodeTypeEvent:v16];
  }
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_310(uint64_t a1, CtrXPC::Event **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v17;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v19 = v7;
      v20 = 2080;
      v21 = v12;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = CtrXPC::Event::getDataValue(*a2);
    value = xpc_BOOL_get_value(v13);

    v15 = [[HMDThreadNetworkBTCallStateEvent alloc] initWithCallState:value];
    [v5 _notifyObserversOfCallStateChangedEvent:v15];
  }
}

- (void)_reportCurrentThreadState:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = xpc_dictionary_create(0, 0, 0);
  threadClient = [(HMDThreadRadioClient *)self threadClient];
  v7 = threadClient;
  if (threadClient)
  {
    objc_msgSend_getProperty_output_(threadClient);
  }

  else
  {
    *__p = 0u;
    v34 = 0u;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (LODWORD(__p[0]))
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDProperty_NCPState", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDProperty_NCPState got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = xpc_dictionary_get_value(v5, "PropVal");
    v16 = [v14 initWithCString:xpc_string_get_string_ptr(v15)];

    v17 = [[HMDThreadNetworkStateChangeEvent alloc] initWithEventType:0 eventValue:[(HMDThreadRadioClient *)selfCopy _connectionStateFromString:v16]];
    if (stateCopy)
    {
      [stateCopy threadNetworkStateChange:v17];
    }

    else
    {
      [(HMDThreadRadioClient *)selfCopy _notifyObserversOfThreadNetworkEvent:v17];
    }
  }

  threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
  v19 = threadClient2;
  if (threadClient2)
  {
    objc_msgSend_getProperty_output_(threadClient2);
    v20 = *buf;
  }

  else
  {
    v20 = 0;
    memset(buf, 0, 32);
  }

  __pa = v20;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  __p_8 = *&buf[8];
  v35 = buf[31];
  buf[31] = 0;
  buf[8] = 0;

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  if (__pa)
  {
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDEvent_NetworkNodeType", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDEvent_NetworkNodeType got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = xpc_dictionary_get_value(v5, "PropVal");
    v29 = [v27 initWithCString:xpc_string_get_string_ptr(v28)];

    v30 = [[HMDThreadNetworkStateChangeEvent alloc] initWithEventType:1 eventValue:[(HMDThreadRadioClient *)v22 _nodeTypeFromString:v29]];
    [(HMDThreadRadioClient *)v22 _notifyObserversOfThreadNetworkEvent:v30];
    if (stateCopy)
    {
      [stateCopy threadNetworkStateChange:v30];
    }

    else
    {
      [(HMDThreadRadioClient *)v22 _notifyObserversOfThreadNetworkEvent:v30];
    }
  }

  if (v35 < 0)
  {
    operator delete(__p_8);
  }
}

- (void)_notifyObserversOfCallStateChangedEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 threadBTCallStateChange:{eventCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_notifyObserversOfPeripheralDeviceNodeTypeEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) threadPeripheralDeviceNodeTypeChange:{eventCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) threadWakeOnDeviceConnectionStateChange:{eventCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_notifyObserversOfThreadPreferredNetworkUpdatedEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) threadPreferredNetworkUpdated:{eventCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_notifyObserversOfThreadNetworkEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) threadNetworkStateChange:{eventCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_WEDStateChangeEventFromThreadEvent:(shared_ptr<CtrXPC::Event>)event
{
  var0 = event.var0;
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    CtrXPC::Event::getName(__p, *var0);
    if (v32 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 138543618;
    v34 = v7;
    v35 = 2080;
    v36 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received thread event: event name - %s", buf, 0x16u);
    if (v32 < 0)
    {
      operator delete(*__p);
    }
  }

  objc_autoreleasePoolPop(v5);
  xarray = CtrXPC::Event::getDataValue(*var0);
  count = xpc_array_get_count(xarray);
  if (count)
  {
    uppercaseString = 0;
    v26 = 0;
    v27 = 0;
    v12 = 0;
    *&v10 = 138543618;
    v24 = v10;
    while (1)
    {
      v13 = xpc_array_get_dictionary(xarray, v12);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:{xpc_dictionary_get_string(v13, "key")}];
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:{xpc_dictionary_get_string(v13, "value")}];
      if ([v14 isEqualToString:@"extendedMACAddress"])
      {
        v16 = [v15 stringByReplacingOccurrencesOfString:@":" withString:&stru_286509E58];

        uppercaseString = [v16 uppercaseString];
      }

      else if ([v14 isEqualToString:@"status"])
      {
        v16 = v27;
        v27 = v15;
      }

      else
      {
        if (![v14 isEqualToString:@"wed_unsolicted_disconnect"])
        {
          v17 = objc_autoreleasePoolPush();
          v18 = selfCopy;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = HMFGetLogIdentifier();
            *__p = v24;
            *&__p[4] = v20;
            v30 = 2112;
            v31 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring key: %@", __p, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          goto LABEL_17;
        }

        v16 = v26;
        v26 = v15;
      }

LABEL_17:
      if (count == ++v12)
      {
        goto LABEL_23;
      }
    }
  }

  v26 = 0;
  v27 = 0;
  uppercaseString = 0;
LABEL_23:
  v21 = [(HMDThreadRadioClient *)selfCopy _WEDConnectionStateFromStatus:v27 disconnectReason:v26, v24];
  v22 = 0;
  if (uppercaseString && v21)
  {
    v22 = [[HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent alloc] initWitheMACAddress:uppercaseString connectionState:v21];
  }

  return v22;
}

- (int64_t)_WEDConnectionStateFromStatus:(id)status disconnectReason:(id)reason
{
  statusCopy = status;
  reasonCopy = reason;
  if ([statusCopy isEqualToString:@"wed_added"])
  {
    v7 = 1;
  }

  else if ([statusCopy isEqualToString:@"wed_removed"])
  {
    if ([reasonCopy isEqualToString:@"none"])
    {
      v7 = 2;
    }

    else if ([reasonCopy isEqualToString:@"linkloss"])
    {
      v7 = 3;
    }

    else if ([reasonCopy isEqualToString:@"threadradiod-daemon-crash"])
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_nodeTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"sleepy-router"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"router"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"end-device"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"sleepy-end-device"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"synchronized-sleepy-end-device"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"commissioner"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"leader"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_connectionStateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"uninitialized"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"uninitialized:fault") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"uninitialized:upgrading"))
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"offline:deep-sleep"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"offline") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"offline:commissioned"))
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"associating"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associating:credentials-needed"))
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"associated"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associated:no-parent") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associated:netwake-asleep"))
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"associated:netwake-waking"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)unregisterForThreadNetworkEvents:(id)events
{
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  v5 = [observers count];

  observers2 = [(HMDThreadRadioClient *)self observers];
  [observers2 removeObject:eventsCopy];

  observers3 = [(HMDThreadRadioClient *)self observers];
  v8 = [observers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMDThreadRadioClient *)self _unregisterForThreadNetworkEvents];
  }
}

- (void)registerForThreadNetworkEvents:(id)events
{
  v16 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  v6 = [observers count];

  observers2 = [(HMDThreadRadioClient *)self observers];
  [observers2 addObject:eventsCopy];

  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v6)
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@registerForThreadNetworkEvents - events already setup, reading and notifying current state", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadRadioClient *)selfCopy _reportCurrentThreadState:eventsCopy];
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@registerForThreadNetworkEvents - setting up events for first observer", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadRadioClient *)selfCopy _registerForThreadNetworkEvents];
  }
}

- (void)stopThreadNetworkWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(HMDThreadRadioClient *)self _updateThreadMessageReliabilityParametersWithUserDefinedValues:0];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (threadClient)
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to stop the thread network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_200;
      v22[3] = &unk_279735738;
      v22[4] = selfCopy;
      v23 = completionCopy;
      v13 = [defaultScheduler performWithQualityOfService:25 block:v22];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - threadStopWithCompletion:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v21);
    }
  }

  else
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v16 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v25 = completionCopy;
    dispatch_async(v16, block);
  }
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_200(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to stop thread network", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) threadClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_201;
  v7[3] = &unk_279733F30;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  [v6 threadStopWithCompletion:v7];
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_201(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 13) = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread network: %@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully stopped thread network", &v9, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)_updateThreadMessageReliabilityParametersWithUserDefinedValues:(BOOL)values
{
  valuesCopy = values;
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Should use user defined values for thread message reliability parameters: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (valuesCopy)
  {
    LOBYTE(v19) = 0;
    v10 = *MEMORY[0x277CBF028];
    v11 = &unk_286628CF0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"matter.thread.idleRetransmitMs", *MEMORY[0x277CBF028], &v19);
    if (v19 && AppIntegerValue)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLong:AppIntegerValue];
    }

    v13 = &unk_286628CF0;
    v14 = CFPreferencesGetAppIntegerValue(@"matter.thread.activeRetransmitMs", v10, &v19);
    if (v19 && v14)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithLong:v14];
    }

    v15 = &unk_286628CF0;
    v16 = CFPreferencesGetAppIntegerValue(@"matter.thread.activeThresholdMs", v10, &v19);
    if (v19 && v16)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithLong:v16];
    }

    v17 = CFPreferencesGetAppIntegerValue(@"matter.thread.additionalRetransmitDelayMs", v10, &v19);
    v18 = &unk_286628CF0;
    if (v19 && v17)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLong:v17];
    }
  }

  else
  {
    v11 = &unk_286628CF0;
    v13 = &unk_286628CF0;
    v15 = &unk_286628CF0;
    v18 = &unk_286628CF0;
  }

  [(HMDThreadRadioClient *)selfCopy setThreadMessageReliabilityParameters:v11 activeRetransmitMs:v13 activeThresholdMs:v15 additionalRetransmitDelayMs:v18];
}

- (void)setThreadMessageReliabilityParameters:(id)parameters activeRetransmitMs:(id)ms activeThresholdMs:(id)thresholdMs additionalRetransmitDelayMs:(id)delayMs
{
  v34 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  msCopy = ms;
  thresholdMsCopy = thresholdMs;
  delayMsCopy = delayMs;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v24 = 138544386;
    v25 = v17;
    v26 = 2112;
    v27 = parametersCopy;
    v28 = 2112;
    v29 = msCopy;
    v30 = 2112;
    v31 = thresholdMsCopy;
    v32 = 2112;
    v33 = delayMsCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating thread message reliability parameters, idleRetransmitMs=%@, activeRetransmitMs=%@, activeThresholdMs=%@, additionalRetransmitDelayMs=%@", &v24, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  threadClient = [(HMDThreadRadioClient *)selfCopy threadClient];
  v19 = threadClient == 0;

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device, not setting thread reliability parameters", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    MTRSetMessageReliabilityParameters();
  }
}

- (void)stopFirmwareUpdateWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_184;
      aBlock[3] = &unk_279735738;
      aBlock[4] = self;
      v22 = completionCopy;
      v8 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v10 = [defaultScheduler performWithQualityOfService:25 block:v8];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - stopFWUpdate:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v24 = completionCopy;
    dispatch_async(v15, block);
  }
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_184(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_2;
  v4[3] = &unk_279733F30;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 stopFWUpdate:v4];
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of stopFWUpdate, error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_181;
      aBlock[3] = &unk_279732430;
      aBlock[4] = self;
      v27 = addressCopy;
      deviceCopy = device;
      v28 = completionCopy;
      v13 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v15 = [defaultScheduler performWithQualityOfService:25 block:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - startFWUpdate:isWedDevice:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v31 = completionCopy;
    dispatch_async(v20, block);
  }
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_181(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_2;
  v5[3] = &unk_27972B620;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v2 startFWUpdate:v6 isWedDevice:v3 completion:v5];
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = HMFBooleanToString();
      v10 = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of startFWUpdate (emac: %@, isWed: %@), error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stopThreadPairingWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_178;
      aBlock[3] = &unk_279735738;
      aBlock[4] = self;
      v22 = completionCopy;
      v8 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v10 = [defaultScheduler performWithQualityOfService:25 block:v8];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - stopPairing:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v24 = completionCopy;
    dispatch_async(v15, block);
  }
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_2;
  v4[3] = &unk_279733F30;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 stopPairing:v4];
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of pairing stop, error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startThreadPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_175;
      aBlock[3] = &unk_279732430;
      aBlock[4] = self;
      v27 = addressCopy;
      deviceCopy = device;
      v28 = completionCopy;
      v13 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v15 = [defaultScheduler performWithQualityOfService:25 block:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - startPairingForExtendedMACAddress:isWedDevice:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v31 = completionCopy;
    dispatch_async(v20, block);
  }
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_175(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_2;
  v5[3] = &unk_279733F30;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 startPairingForExtendedMACAddress:v4 isWedDevice:v3 completion:v5];
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of pairing start, error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)connectToExtendedMACAddress:(id)address completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_171;
      v30 = &unk_2797355D0;
      v11 = addressCopy;
      v31 = v11;
      selfCopy = self;
      v12 = completionCopy;
      v33 = v12;
      v13 = _Block_copy(&v27);
      [(HMDThreadRadioClient *)self deferredCommandTimer:v27];
      if (v11)
        v14 = {;
        [v14 abort];

        defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
        v16 = [defaultScheduler performWithQualityOfService:25 block:v13];
      }

      else
        defaultScheduler = {;
        [defaultScheduler startWithBlock:v13 completion:v12 commandType:1];
      }

      v22 = v31;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - provideExtendedMACAddress:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v22);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v35 = completionCopy;
    dispatch_async(v21, block);

    v22 = v35;
  }
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_171(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      *buf = 138543618;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to connect to device with eMAC address %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Received nil eMAC, disconnecting from current device", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
  v9 = [*(a1 + 40) threadClient];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_172;
  v12[3] = &unk_279735168;
  v11 = *(a1 + 32);
  v10 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = *(a1 + 48);
  [v9 provideExtendedMACAddress:v10 completion:v12];
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_172(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while trying to connect to emac address: %@ error: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)startThreadNetworkWithOperationalDataset:(id)dataset isOwnerUser:(BOOL)user completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  completionCopy = completion;
  [(HMDThreadRadioClient *)self _updateThreadMessageReliabilityParametersWithUserDefinedValues:1];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    v11 = +[HMDLocation sharedManager];
    locationAuthorized = [v11 locationAuthorized];

    v13 = locationAuthorized == 1 && [(HMDThreadRadioClient *)self isGeoAvailable];
    v19 = [datasetCopy hmf_hexadecimalStringWithOptions:0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__113704;
    v32 = __Block_byref_object_dispose__113705;
    v33 = [v19 dataUsingEncoding:4];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_166;
    v22[3] = &unk_27972B5F8;
    v22[4] = self;
    p_buf = &buf;
    v25 = v13;
    userCopy = user;
    v23 = completionCopy;
    v21 = [defaultScheduler performWithQualityOfService:25 block:v22];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v28 = completionCopy;
    dispatch_async(v18, block);

    v19 = v28;
  }
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_166(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to start thread network with operation data set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) threadClient];
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_167;
  v11[3] = &unk_279733F30;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 40);
  [v7 threadStart:v8 geoAvailable:v9 isPrimaryUser:v10 waitForSync:0 completion:v11];
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_167(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread network: %@", &v9, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 13) = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully started thread network", &v9, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)startThreadNetwork:(id)network completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    if (networkCopy)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:networkCopy];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      if (v9)
      {
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to join an existing thread network", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v14 = objc_autoreleasePoolPush();
        v15 = selfCopy;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v17;
          v39 = 2112;
          v40 = v9;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Thread networkID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        goto LABEL_17;
      }

      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v27;
        v39 = 2112;
        v40 = networkCopy;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@NetworkID is not valid for thread unique id: %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to create a new thread network", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
LABEL_17:
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Incorrect startThread API used", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v32 = dispatch_get_global_queue(21, 0);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke_163;
    v33[3] = &unk_2797348C0;
    v34 = completionCopy;
    v23 = completionCopy;
    dispatch_async(v32, v33);

    goto LABEL_20;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke;
  block[3] = &unk_2797348C0;
  v36 = completionCopy;
  v9 = completionCopy;
  dispatch_async(v22, block);

  v23 = v36;
LABEL_20:
}

void __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

void __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

- (HMDThreadRadioClient)init
{
  v33 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMDThreadRadioClient;
  v2 = [(HMDThreadRadioClient *)&v30 init];
  if (!v2)
  {
    return v2;
  }

  if ((isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Thread service not enabled", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsThreadService = [v3 supportsThreadService];

  if ((supportsThreadService & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v27 = v2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@This device doesn't support thread service", buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v23);
    return v2;
  }

  if (objc_opt_class())
  {
    v5 = [objc_alloc(MEMORY[0x277D025E8]) init:"HomeD"];
    threadClient = v2->_threadClient;
    v2->_threadClient = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("thread-state-capture", v8);
    threadStateCaptureQueue = v2->_threadStateCaptureQueue;
    v2->_threadStateCaptureQueue = v9;

    v2->_threadNetworkUp = 0;
    v2->_threadLayerInformedResidentState = 0;
    v2->_isGeoAvailable = 0;
    v11 = [HMDThreadCommandTimer alloc];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("thread-command-timer", v13);
    v15 = [(HMDThreadCommandTimer *)v11 initWithQueue:v14 delayInSecs:&unk_286628D08];
    deferredCommandTimer = v2->_deferredCommandTimer;
    v2->_deferredCommandTimer = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_DEFAULT, 0);
    v19 = dispatch_queue_create("thread-event", v18);
    threadEventQueue = v2->_threadEventQueue;
    v2->_threadEventQueue = v19;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (+[HMDThreadRadioClient logCategory]::_hmf_once_t788 != -1)
  {
    dispatch_once(&+[HMDThreadRadioClient logCategory]::_hmf_once_t788, &__block_literal_global_113731);
  }

  v3 = +[HMDThreadRadioClient logCategory]::_hmf_once_v789;

  return v3;
}

uint64_t __35__HMDThreadRadioClient_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = +[HMDThreadRadioClient logCategory]::_hmf_once_v789;
  +[HMDThreadRadioClient logCategory]::_hmf_once_v789 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end