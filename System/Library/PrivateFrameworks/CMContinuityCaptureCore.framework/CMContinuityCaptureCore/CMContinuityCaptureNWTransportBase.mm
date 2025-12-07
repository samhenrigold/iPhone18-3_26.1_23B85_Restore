@interface CMContinuityCaptureNWTransportBase
- (CMContinuityCaptureNWTransportBase)initWithDevice:(id)device;
- (ContinuityCaptureTaskDelegate)taskDelegate;
- (void)createTimeSyncClock:(id)clock;
- (void)enqueueResponse:(id)response identifier:(id)identifier;
- (void)handleRequest:(id)request;
- (void)scheduleReadForConnection:(id)connection dataTillNow:(id)now;
@end

@implementation CMContinuityCaptureNWTransportBase

- (CMContinuityCaptureNWTransportBase)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = CMContinuityCaptureNWTransportBase;
  v6 = [(CMContinuityCaptureNWTransportBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (ContinuityCaptureTaskDelegate)taskDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)createTimeSyncClock:(id)clock
{
  clockCopy = clock;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D714D0];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke;
  v10 = &unk_278D5C688;
  objc_copyWeak(&v12, &location);
  v6 = clockCopy;
  v11 = v6;
  [v5 notifyWhenClockManagerIsAvailable:?];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = WeakRetained;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ TSClockManager is Available", buf, 0xCu);
    }

    v4 = [MEMORY[0x277D714D0] sharedClockManager];
    [v4 addClient:?];

    v5 = [MEMORY[0x277D714D0] sharedClockManager];
    v17 = 0;
    [v5 addgPTPServicesWithError:?];
    v6 = v17;

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_cold_1(WeakRetained, v6);
      }

      v8 = *(a1 + 32);
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      (*(v8 + 16))(v8, 0, v9);
    }

    else
    {
      v10 = MEMORY[0x277D714E0];
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_10;
      v14 = &unk_278D5C688;
      objc_copyWeak(&v16, (a1 + 40));
      v15 = *(a1 + 32);
      [v10 notifyWhengPTPManagerIsAvailable:?];

      objc_destroyWeak(&v16);
    }
  }
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_10(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ gPTPManager is Available", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  if (v4)
  {
    v5 = [MEMORY[0x277D714E0] sharedgPTPManager];
    [v5 systemDomainClockIdentifier];

    v6 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClockIdentifier:?];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enqueueResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    v9 = [responseCopy objectForKeyedSubscript:?];
    if (v9)
    {
      v10 = [responseCopy objectForKeyedSubscript:?];

      if (!v10)
      {
        v9 = 0;
        v22 = 0;
LABEL_17:
        v18 = 0;
LABEL_104:
        objc_destroyWeak(location);

        goto LABEL_105;
      }

      v11 = [responseCopy objectForKeyedSubscript:?];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [responseCopy objectForKeyedSubscript:?];
          v15 = [responseCopy objectForKeyedSubscript:?];
          *buf = 138544130;
          selfCopy8 = self;
          v109 = 2114;
          *v110 = identifierCopy;
          *&v110[8] = 2114;
          v111 = v14;
          v112 = 2114;
          v113 = v15;
          _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueResponse identifier:%{public}@ selector %{public}@ gid %{public}@", buf, 0x2Au);
        }

        v16 = [responseCopy objectForKeyedSubscript:?];
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();

        if (v17)
        {
          v18 = [responseCopy objectForKeyedSubscript:?];
          if ([identifierCopy isEqualToString:?])
          {
            v19 = [responseCopy objectForKeyedSubscript:?];
            unsignedIntegerValue = [v19 unsignedIntegerValue];

            v9 = 0;
            if (unsignedIntegerValue > 3)
            {
              if (unsignedIntegerValue <= 5)
              {
                if (unsignedIntegerValue != 4)
                {
                  v21 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    selfCopy8 = self;
                    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
                  }

                  [WeakRetained handleSynchronizeAudioClockCompletion];
                  goto LABEL_102;
                }

                if ([v18 count])
                {
                  v51 = [v18 objectAtIndexedSubscript:?];
                }

                else
                {
                  v51 = 0;
                }

                if ([v18 count] < 2)
                {
                  v97 = 0;
                }

                else
                {
                  v97 = [v18 objectAtIndexedSubscript:?];
                }

                if ([v18 count] < 3)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = [v18 objectAtIndexedSubscript:?];
                }

                v99 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = MEMORY[0x277CCABB0];
                  [v98 unsignedLongLongValue];
                  v101 = [v100 numberWithUnsignedLongLong:?];
                  *buf = 138544130;
                  selfCopy8 = self;
                  v109 = 2112;
                  *v110 = v51;
                  *&v110[8] = 2112;
                  v111 = v97;
                  v112 = 2112;
                  v113 = v101;
                  _os_log_impl(&dword_242545000, v99, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
                }

                [v51 unsignedLongLongValue];
                [v97 unsignedLongLongValue];
                [v98 unsignedLongLongValue];
                [WeakRetained synchronizeAudioClockWithSampleTime:? networkTime:? clockGrandMasterIdentifier:?];

LABEL_101:
                goto LABEL_102;
              }

              if (unsignedIntegerValue != 6)
              {
                if (unsignedIntegerValue == 9)
                {
                  if (!v18)
                  {
                    goto LABEL_102;
                  }

                  if ([v18 count] != 2)
                  {
                    goto LABEL_102;
                  }

                  v47 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v48 = objc_opt_isKindOfClass();

                  if ((v48 & 1) == 0)
                  {
                    goto LABEL_102;
                  }

                  v49 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v50 = objc_opt_isKindOfClass();

                  if ((v50 & 1) == 0)
                  {
                    goto LABEL_102;
                  }

                  v51 = [v18 objectAtIndexedSubscript:?];
                  v52 = [v18 objectAtIndexedSubscript:?];
                  unsignedIntValue = [v52 unsignedIntValue];

                  v54 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543874;
                    selfCopy8 = self;
                    v109 = 2112;
                    *v110 = v51;
                    *&v110[8] = 2048;
                    v111 = unsignedIntValue;
                    _os_log_impl(&dword_242545000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
                  }

                  [WeakRetained enqueueReactionEffect:? entity:?];
                  goto LABEL_101;
                }

                goto LABEL_56;
              }

              if (!v18)
              {
                goto LABEL_102;
              }

              if ([v18 count] != 2)
              {
                goto LABEL_102;
              }

              v75 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v76 = objc_opt_isKindOfClass();

              if ((v76 & 1) == 0)
              {
                goto LABEL_102;
              }

              v77 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v78 = objc_opt_isKindOfClass();

              if ((v78 & 1) == 0)
              {
                goto LABEL_102;
              }

              v79 = MEMORY[0x277CCAAC8];
              objc_opt_class();
              v80 = [v18 objectAtIndexedSubscript:?];
              v105[2] = 0;
              v38 = [v79 unarchivedObjectOfClass:? fromData:? error:?];
              v22 = 0;

              if (!v38)
              {
                CMContinuityCaptureLog(2);
                objc_claimAutoreleasedReturnValue();
                [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                goto LABEL_81;
              }

              v81 = [v18 objectAtIndexedSubscript:?];
              unsignedIntValue2 = [v81 unsignedIntValue];

              v83 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy8 = self;
                v109 = 2112;
                *v110 = v38;
                *&v110[8] = 2048;
                v111 = unsignedIntValue2;
                _os_log_impl(&dword_242545000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
              }

              v103[2] = MEMORY[0x277D85DD0];
              v103[3] = 3221225472;
              v103[4] = __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke;
              v103[5] = &unk_278D5CAC8;
              objc_copyWeak(v105, location);
              v104 = v38;
              v105[1] = unsignedIntValue2;
              [WeakRetained captureStillImage:? entity:? completion:?];

              v74 = v105;
LABEL_80:
              objc_destroyWeak(v74);
LABEL_81:

LABEL_82:
              v9 = 0;
LABEL_103:
              v10 = 0;
              goto LABEL_104;
            }

            if (unsignedIntegerValue != 1)
            {
              if (unsignedIntegerValue == 2)
              {
                if ([v18 count] == 3)
                {
                  v84 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v85 = objc_opt_isKindOfClass();

                  if (v85)
                  {
                    v86 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v87 = objc_opt_isKindOfClass();

                    if (v87)
                    {
                      v88 = [v18 objectAtIndexedSubscript:?];
                      objc_opt_class();
                      v89 = objc_opt_isKindOfClass();

                      if ((v89 & 1) != 0 && ![(CMContinuityCaptureTransportNWDevice *)self->_device remote])
                      {
                        v90 = CMContinuityCaptureLog(2);
                        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                        {
                          v91 = [v18 objectAtIndexedSubscript:?];
                          unsignedIntValue3 = [v91 unsignedIntValue];
                          v93 = [v18 objectAtIndexedSubscript:?];
                          unsignedIntValue4 = [v93 unsignedIntValue];
                          *buf = 138543874;
                          selfCopy8 = self;
                          v109 = 1024;
                          *v110 = unsignedIntValue3;
                          *&v110[4] = 1024;
                          *&v110[6] = unsignedIntValue4;
                          _os_log_impl(&dword_242545000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
                        }

                        v95 = [v18 objectAtIndexedSubscript:?];
                        [v95 unsignedIntValue];
                        v96 = [v18 objectAtIndexedSubscript:?];
                        [v96 unsignedIntValue];
                        objc_copyWeak(v102, location);
                        v18 = v18;
                        [WeakRetained stopStream:? option:? completion:?];

                        objc_destroyWeak(v102);
                      }
                    }
                  }
                }

                goto LABEL_102;
              }

              if (unsignedIntegerValue == 3)
              {
                if (v18)
                {
                  if ([v18 count] == 2)
                  {
                    v40 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v41 = objc_opt_isKindOfClass();

                    if (v41)
                    {
                      v42 = [v18 objectAtIndexedSubscript:?];
                      objc_opt_class();
                      v43 = objc_opt_isKindOfClass();

                      if (v43)
                      {
                        v10 = [v18 objectAtIndexedSubscript:?];
                        if ([v10 isEqualToString:?])
                        {
                          CMContinuityCaptureLog(2);
                          objc_claimAutoreleasedReturnValue();
                          [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                        }

                        else
                        {
                          v44 = [v18 objectAtIndexedSubscript:?];
                          [v44 unsignedIntValue];
                          v105[3] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
                          v45 = MEMORY[0x277CCABB0];
                          mach_continuous_time();
                          v106 = [v45 numberWithUnsignedLongLong:?];
                          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
                          [WeakRetained postEvent:? entity:? data:?];
                        }

                        v9 = 0;
                        v22 = 0;
                        goto LABEL_104;
                      }
                    }
                  }
                }

                goto LABEL_102;
              }

              goto LABEL_56;
            }

            if ([v18 count] != 3)
            {
              goto LABEL_102;
            }

            v61 = [v18 objectAtIndexedSubscript:?];
            objc_opt_class();
            v62 = objc_opt_isKindOfClass();

            if ((v62 & 1) == 0)
            {
              goto LABEL_102;
            }

            v63 = [v18 objectAtIndexedSubscript:?];
            objc_opt_class();
            v64 = objc_opt_isKindOfClass();

            if ((v64 & 1) == 0)
            {
              goto LABEL_102;
            }

            v65 = [v18 objectAtIndexedSubscript:?];
            objc_opt_class();
            v66 = objc_opt_isKindOfClass();

            if ((v66 & 1) == 0 || [(CMContinuityCaptureTransportNWDevice *)self->_device remote])
            {
              goto LABEL_102;
            }

            v67 = MEMORY[0x277CCAAC8];
            objc_opt_class();
            v68 = [v18 objectAtIndexedSubscript:?];
            v103[1] = 0;
            v69 = [v67 unarchivedObjectOfClass:? fromData:? error:?];
            v22 = 0;

            if (v69)
            {
              v70 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = [v18 objectAtIndexedSubscript:?];
                unsignedIntValue5 = [v71 unsignedIntValue];
                *buf = 138543874;
                selfCopy8 = self;
                v109 = 2114;
                *v110 = v69;
                *&v110[8] = 1024;
                LODWORD(v111) = unsignedIntValue5;
                _os_log_impl(&dword_242545000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
              }

              v73 = [v18 objectAtIndexedSubscript:?];
              [v73 unsignedIntValue];
              v102[1] = MEMORY[0x277D85DD0];
              v102[2] = 3221225472;
              v102[3] = __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_22;
              v102[4] = &unk_278D5C660;
              objc_copyWeak(v103, location);
              v38 = v69;
              v102[5] = v38;
              [WeakRetained startStream:? option:? completion:?];

              v74 = v103;
              goto LABEL_80;
            }

LABEL_109:
            CMContinuityCaptureLog(2);
            objc_claimAutoreleasedReturnValue();
            [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
            goto LABEL_82;
          }

          if ([identifierCopy isEqualToString:?])
          {
            v23 = [responseCopy objectForKeyedSubscript:?];
            unsignedIntegerValue2 = [v23 unsignedIntegerValue];

            if (unsignedIntegerValue2 == 2)
            {
              if ([v18 count] == 2)
              {
                v55 = [v18 objectAtIndexedSubscript:?];
                objc_opt_class();
                v56 = objc_opt_isKindOfClass();

                if (v56)
                {
                  v57 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v58 = objc_opt_isKindOfClass();

                  if (v58)
                  {
                    v59 = [v18 objectAtIndexedSubscript:?];
                    [v59 unsignedIntValue];
                    v60 = [v18 objectAtIndexedSubscript:?];
                    [WeakRetained handleAVCNegotiation:? data:?];
                  }
                }
              }

              goto LABEL_102;
            }

            if (unsignedIntegerValue2 == 1)
            {
              if (v18)
              {
                if ([v18 count] == 1)
                {
                  v25 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v26 = objc_opt_isKindOfClass();

                  if (v26)
                  {
                    v27 = MEMORY[0x277CCAAC8];
                    objc_opt_class();
                    v28 = [v18 objectAtIndexedSubscript:?];
                    v9 = [v27 unarchivedObjectOfClass:? fromData:? error:?];
                    v22 = 0;

                    if (v9)
                    {
                      v29 = CMContinuityCaptureLog(2);
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        selfCopy8 = self;
                        v109 = 2114;
                        *v110 = v9;
                        _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                      }

                      [WeakRetained setValueForControl:? completion:?];
                      goto LABEL_103;
                    }

                    goto LABEL_109;
                  }
                }
              }
            }
          }

          else if ([identifierCopy isEqualToString:?])
          {
            v30 = [responseCopy objectForKeyedSubscript:?];
            unsignedIntegerValue3 = [v30 unsignedIntegerValue];

            v9 = 0;
            if (!unsignedIntegerValue3 && v18)
            {
              if ([v18 count] != 2)
              {
                goto LABEL_102;
              }

              v32 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v33 = objc_opt_isKindOfClass();

              if ((v33 & 1) == 0)
              {
                goto LABEL_102;
              }

              v34 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v35 = objc_opt_isKindOfClass();

              if ((v35 & 1) == 0)
              {
                goto LABEL_102;
              }

              v36 = MEMORY[0x277CCAAC8];
              objc_opt_class();
              v37 = [v18 objectAtIndexedSubscript:?];
              v38 = [v36 unarchivedObjectOfClass:? fromData:? error:?];
              v22 = 0;

              if (v38)
              {
                v39 = [v18 objectAtIndexedSubscript:?];
                [v39 unsignedIntValue];
                [WeakRetained didCaptureStillImage:? entity:?];
              }

              else
              {
                v39 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  [CMContinuityCaptureNWTransportBase enqueueResponse:identifier:];
                }
              }

              goto LABEL_81;
            }

LABEL_56:
            v22 = 0;
            v10 = 0;
            goto LABEL_104;
          }

LABEL_102:
          v9 = 0;
          v22 = 0;
          goto LABEL_103;
        }
      }

      v9 = 0;
    }

    v22 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v22 = 0;
  v10 = 0;
  v18 = 0;
LABEL_105:
}

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setError:?];
    [v5[2] didCaptureStillImage:? entity:?];
    WeakRetained = v5;
  }
}

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream %@ Error %@", &v7, 0x20u);
  }
}

void __65__CMContinuityCaptureNWTransportBase_enqueueResponse_identifier___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [*(a1 + 32) objectAtIndexedSubscript:?];
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream for Identifier %@ Error %@", &v7, 0x20u);
  }
}

- (void)scheduleReadForConnection:(id)connection dataTillNow:(id)now
{
  connectionCopy = connection;
  nowCopy = now;
  v8 = objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__CMContinuityCaptureNWTransportBase_scheduleReadForConnection_dataTillNow___block_invoke;
  v10[3] = &unk_278D5DB40;
  objc_copyWeak(&v12, &location);
  v9 = connectionCopy;
  v11 = v9;
  CMContinuityCaptureReceiveDataFromNWConnection(v9, nowCopy, self, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __76__CMContinuityCaptureNWTransportBase_scheduleReadForConnection_dataTillNow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Received Data %@", buf, 0x16u);
    }

    if (v3 && [v3 length] >= 8)
    {
      if ([v3 length])
      {
        v10 = 0;
        *&v9 = 138412546;
        v19 = v9;
        while (1)
        {
          v11 = [v3 length] - v10;
          if (v11 < 1)
          {
            goto LABEL_18;
          }

          if (v11 <= 7)
          {
            break;
          }

          v12 = *([v3 bytes] + v10);
          v13 = objc_alloc(MEMORY[0x277CBEA90]);
          [v3 bytes];
          if (v11 < v12)
          {
            v18 = v13;
            goto LABEL_23;
          }

          v14 = [v13 initWithBytes:? length:?];
          if (v14)
          {
            v15 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_loadWeakRetained((a1 + 40));
              *buf = v19;
              v21 = v16;
              v22 = 2112;
              v23 = v14;
              _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%@ NW Connect Received Packet %@", buf, 0x16u);
            }

            [WeakRetained handleRequest:?];
          }

          v10 += v12;

          if (v10 >= [v3 length])
          {
            goto LABEL_18;
          }
        }

        v17 = objc_alloc(MEMORY[0x277CBEA90]);
        [v3 bytes];
        v18 = v17;
LABEL_23:
        v7 = [v18 initWithBytes:? length:?];
        goto LABEL_7;
      }

LABEL_18:
      v8 = 0;
    }

    else
    {
      v7 = v3;
LABEL_7:
      v8 = v7;
    }

    [WeakRetained scheduleReadForConnection:? dataTillNow:?];
  }
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  [request bytes];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v22 = 0;
  v14 = [v7 unarchivedObjectOfClasses:? fromData:? error:?];
  v15 = 0;

  v16 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%@ NW response %@", buf, 0x16u);
  }

  if (v14)
  {
    v17 = [v14 objectForKeyedSubscript:?];
    if (v17)
    {
      [CMContinuityCaptureNWTransportBase enqueueResponse:"enqueueResponse:identifier:" identifier:?];
    }
  }
}

void __58__CMContinuityCaptureNWTransportBase_createTimeSyncClock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3(&dword_242545000, v3, v4, "%{public}@ TimeSync addgPTPServices Error %{public}@", v5, v6, v7, v8);
}

- (void)enqueueResponse:identifier:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%{public}@ error unarchivedObjectOfClass %@", v4, v5, v6, v7);
  }
}

- (void)enqueueResponse:identifier:.cold.4()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@", v4, v5, v6, v7);
  }
}

- (void)enqueueResponse:identifier:.cold.5()
{
  OUTLINED_FUNCTION_2_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = v1;
    _os_log_impl(&dword_242545000, v0, OS_LOG_TYPE_DEFAULT, "%{public}@ Session Interrupted for %{public}@", &v4, 0x16u);
  }
}

@end