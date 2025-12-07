@interface CMContinuityCaptureRapportTransportBase
- (CMContinuityCaptureRapportTransportBase)initWithRapportDevice:(id)device queue:(id)queue taskDelegate:(id)delegate;
- (id)incomingStreamRequestHandler;
- (void)_bindClock:(unint64_t)clock peerAddress:(id)address retries:(int64_t)retries completion:(id)completion;
- (void)_enqueueResponse:(id)response identifier:(id)identifier;
- (void)createTimeSyncClockWithPeerAddress:(id)address completion:(id)completion;
- (void)disposeTimeSyncClock;
- (void)enqueueResponse:(id)response identifier:(id)identifier;
- (void)setIncomingStreamRequestHandler:(id)handler;
- (void)setTaskDelegate:(id)delegate;
@end

@implementation CMContinuityCaptureRapportTransportBase

- (void)setIncomingStreamRequestHandler:(id)handler
{
  obj = self;
  handlerCopy = handler;
  objc_sync_enter(obj);
  v5 = MEMORY[0x245D12020](handlerCopy);

  incomingStreamRequestHandler = obj->_incomingStreamRequestHandler;
  obj->_incomingStreamRequestHandler = v5;

  objc_sync_exit(obj);
}

- (id)incomingStreamRequestHandler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x245D12020](selfCopy->_incomingStreamRequestHandler);
  objc_sync_exit(selfCopy);

  v4 = MEMORY[0x245D12020](v3);

  return v4;
}

- (void)setTaskDelegate:(id)delegate
{
  obj = delegate;
  if ([(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
  {
    [MEMORY[0x277CBEAD8] raise:self format:?];
  }

  objc_storeWeak(&self->_delegate, obj);
}

- (void)enqueueResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CMContinuityCaptureRapportTransportBase_enqueueResponse_identifier___block_invoke;
  v11[3] = &unk_278D5C120;
  objc_copyWeak(&v14, &location);
  v12 = responseCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = responseCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRapportTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _enqueueResponse:? identifier:?];
    WeakRetained = v2;
  }
}

- (void)_enqueueResponse:(id)response identifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    dispatch_assert_queue_V2(self->_queue);
    v9 = [responseCopy objectForKeyedSubscript:?];
    if (v9)
    {
      v10 = [responseCopy objectForKeyedSubscript:?];

      if (v10)
      {
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
            selfCopy9 = self;
            v117 = 2114;
            *v118 = identifierCopy;
            *&v118[8] = 2114;
            v119 = v14;
            v120 = 2114;
            v121 = v15;
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

              v10 = 0;
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
                      selfCopy9 = self;
                      _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
                    }

                    [WeakRetained handleSynchronizeAudioClockCompletion];
                    goto LABEL_107;
                  }

                  if ([v18 count])
                  {
                    v50 = [v18 objectAtIndexedSubscript:?];
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if ([v18 count] < 2)
                  {
                    v103 = 0;
                  }

                  else
                  {
                    v103 = [v18 objectAtIndexedSubscript:?];
                  }

                  if ([v18 count] < 3)
                  {
                    v104 = 0;
                  }

                  else
                  {
                    v104 = [v18 objectAtIndexedSubscript:?];
                  }

                  v105 = CMContinuityCaptureLog(2);
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                  {
                    v106 = MEMORY[0x277CCABB0];
                    [v104 unsignedLongLongValue];
                    v107 = [v106 numberWithUnsignedLongLong:?];
                    *buf = 138544130;
                    selfCopy9 = self;
                    v117 = 2112;
                    *v118 = v50;
                    *&v118[8] = 2112;
                    v119 = v103;
                    v120 = 2112;
                    v121 = v107;
                    _os_log_impl(&dword_242545000, v105, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
                  }

                  [v50 unsignedLongLongValue];
                  [v103 unsignedLongLongValue];
                  [v104 unsignedLongLongValue];
                  [WeakRetained synchronizeAudioClockWithSampleTime:? networkTime:? clockGrandMasterIdentifier:?];

LABEL_106:
                  goto LABEL_107;
                }

                if (unsignedIntegerValue != 6)
                {
                  if (unsignedIntegerValue == 9)
                  {
                    if (!v18)
                    {
                      goto LABEL_107;
                    }

                    if ([v18 count] != 2)
                    {
                      goto LABEL_107;
                    }

                    v46 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v47 = objc_opt_isKindOfClass();

                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_107;
                    }

                    v48 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v49 = objc_opt_isKindOfClass();

                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_107;
                    }

                    v50 = [v18 objectAtIndexedSubscript:?];
                    v51 = [v18 objectAtIndexedSubscript:?];
                    unsignedIntValue = [v51 unsignedIntValue];

                    v53 = CMContinuityCaptureLog(2);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543874;
                      selfCopy9 = self;
                      v117 = 2112;
                      *v118 = v50;
                      *&v118[8] = 2048;
                      v119 = unsignedIntValue;
                      _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
                    }

                    [WeakRetained enqueueReactionEffect:? entity:?];
                    goto LABEL_106;
                  }

LABEL_55:
                  v22 = 0;
                  v9 = 0;
LABEL_112:
                  objc_destroyWeak(location);

                  goto LABEL_113;
                }

                if (!v18)
                {
                  goto LABEL_107;
                }

                if ([v18 count] != 2)
                {
                  goto LABEL_107;
                }

                v76 = [v18 objectAtIndexedSubscript:?];
                objc_opt_class();
                v77 = objc_opt_isKindOfClass();

                if ((v77 & 1) == 0)
                {
                  goto LABEL_107;
                }

                v78 = [v18 objectAtIndexedSubscript:?];
                objc_opt_class();
                v79 = objc_opt_isKindOfClass();

                if ((v79 & 1) == 0)
                {
                  goto LABEL_107;
                }

                v80 = MEMORY[0x277CCAAC8];
                objc_opt_class();
                v81 = [v18 objectAtIndexedSubscript:?];
                v113[2] = 0;
                v38 = [v80 unarchivedObjectOfClass:? fromData:? error:?];
                v22 = 0;

                if (!v38)
                {
                  v109 = CMContinuityCaptureLog(2);
                  [CMContinuityCaptureRapportTransportBase _enqueueResponse:v109 identifier:?];
                  goto LABEL_82;
                }

                v82 = [v18 objectAtIndexedSubscript:?];
                unsignedIntValue2 = [v82 unsignedIntValue];

                v84 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  selfCopy9 = self;
                  v117 = 2112;
                  *v118 = v38;
                  *&v118[8] = 2048;
                  v119 = unsignedIntValue2;
                  _os_log_impl(&dword_242545000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
                }

                v111[2] = MEMORY[0x277D85DD0];
                v111[3] = 3221225472;
                v111[4] = __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke;
                v111[5] = &unk_278D5CAC8;
                objc_copyWeak(v113, location);
                v112 = v38;
                v113[1] = unsignedIntValue2;
                [WeakRetained captureStillImage:? entity:? completion:?];

                v75 = v113;
LABEL_81:
                objc_destroyWeak(v75);
LABEL_82:

LABEL_83:
                v10 = 0;
LABEL_108:
                v9 = 0;
                goto LABEL_112;
              }

              if (unsignedIntegerValue != 1)
              {
                if (unsignedIntegerValue == 2)
                {
                  if ([v18 count] == 3)
                  {
                    v85 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v86 = objc_opt_isKindOfClass();

                    if (v86)
                    {
                      v87 = [v18 objectAtIndexedSubscript:?];
                      objc_opt_class();
                      v88 = objc_opt_isKindOfClass();

                      if (v88)
                      {
                        v89 = [v18 objectAtIndexedSubscript:?];
                        objc_opt_class();
                        v90 = objc_opt_isKindOfClass();

                        if ((v90 & 1) != 0 && ![(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
                        {
                          v91 = CMContinuityCaptureLog(2);
                          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                          {
                            v92 = [v18 objectAtIndexedSubscript:?];
                            unsignedIntValue3 = [v92 unsignedIntValue];
                            v94 = [v18 objectAtIndexedSubscript:?];
                            unsignedIntValue4 = [v94 unsignedIntValue];
                            *buf = 138543874;
                            selfCopy9 = self;
                            v117 = 1024;
                            *v118 = unsignedIntValue3;
                            *&v118[4] = 1024;
                            *&v118[6] = unsignedIntValue4;
                            _os_log_impl(&dword_242545000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
                          }

                          incomingStreamRequestHandler = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];

                          if (incomingStreamRequestHandler)
                          {
                            incomingStreamRequestHandler2 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];
                            incomingStreamRequestHandler2[2](incomingStreamRequestHandler2, 0);
                          }

                          v98 = [v18 objectAtIndexedSubscript:?];
                          [v98 unsignedIntValue];
                          v99 = [v18 objectAtIndexedSubscript:?];
                          [v99 unsignedIntValue];
                          objc_copyWeak(v110, location);
                          v18 = v18;
                          [WeakRetained stopStream:? option:? completion:?];

                          objc_destroyWeak(v110);
                        }
                      }
                    }
                  }

                  goto LABEL_107;
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
                          v9 = [v18 objectAtIndexedSubscript:?];
                          if ([v9 isEqualToString:?])
                          {
                            v44 = CMContinuityCaptureLog(2);
                            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138543618;
                              selfCopy9 = self;
                              v117 = 2114;
                              *v118 = WeakRetained;
                              _os_log_impl(&dword_242545000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ Session Interrupted for %{public}@", buf, 0x16u);
                            }

                            v45 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
                            [WeakRetained connectionInterrupted:? forDevice:?];
                          }

                          else
                          {
                            v100 = [v18 objectAtIndexedSubscript:?];
                            [v100 unsignedIntValue];
                            v113[3] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
                            v101 = MEMORY[0x277CCABB0];
                            mach_continuous_time();
                            v114 = [v101 numberWithUnsignedLongLong:?];
                            v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
                            [WeakRetained postEvent:? entity:? data:?];
                          }

                          v10 = 0;
                          v22 = 0;
                          goto LABEL_112;
                        }
                      }
                    }
                  }

                  goto LABEL_107;
                }

                goto LABEL_55;
              }

              if ([v18 count] != 3)
              {
                goto LABEL_107;
              }

              v60 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v61 = objc_opt_isKindOfClass();

              if ((v61 & 1) == 0)
              {
                goto LABEL_107;
              }

              v62 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v63 = objc_opt_isKindOfClass();

              if ((v63 & 1) == 0)
              {
                goto LABEL_107;
              }

              v64 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v65 = objc_opt_isKindOfClass();

              if ((v65 & 1) == 0 || [(CMContinuityCaptureTransportRapportDevice *)self->_device remote])
              {
                goto LABEL_107;
              }

              v66 = MEMORY[0x277CCAAC8];
              objc_opt_class();
              v67 = [v18 objectAtIndexedSubscript:?];
              v111[1] = 0;
              v68 = [v66 unarchivedObjectOfClass:? fromData:? error:?];
              v22 = 0;

              if (v68)
              {
                v69 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = [v18 objectAtIndexedSubscript:?];
                  unsignedIntValue5 = [v70 unsignedIntValue];
                  *buf = 138543874;
                  selfCopy9 = self;
                  v117 = 2114;
                  *v118 = v68;
                  *&v118[8] = 1024;
                  LODWORD(v119) = unsignedIntValue5;
                  _os_log_impl(&dword_242545000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
                }

                incomingStreamRequestHandler3 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];

                if (incomingStreamRequestHandler3)
                {
                  incomingStreamRequestHandler4 = [(CMContinuityCaptureRapportTransportBase *)self incomingStreamRequestHandler];
                  incomingStreamRequestHandler4[2](incomingStreamRequestHandler4, 1);
                }

                v74 = [v18 objectAtIndexedSubscript:?];
                [v74 unsignedIntValue];
                v110[1] = MEMORY[0x277D85DD0];
                v110[2] = 3221225472;
                v110[3] = __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_389;
                v110[4] = &unk_278D5C660;
                objc_copyWeak(v111, location);
                v38 = v68;
                v110[5] = v38;
                [WeakRetained startStream:? option:? completion:?];

                v75 = v111;
                goto LABEL_81;
              }

LABEL_115:
              v108 = CMContinuityCaptureLog(2);
              [CMContinuityCaptureRapportTransportBase _enqueueResponse:v108 identifier:?];
              goto LABEL_83;
            }

            if ([identifierCopy isEqualToString:?])
            {
              v23 = [responseCopy objectForKeyedSubscript:?];
              unsignedIntegerValue2 = [v23 unsignedIntegerValue];

              if (unsignedIntegerValue2 == 2)
              {
                if ([v18 count] == 2)
                {
                  v54 = [v18 objectAtIndexedSubscript:?];
                  objc_opt_class();
                  v55 = objc_opt_isKindOfClass();

                  if (v55)
                  {
                    v56 = [v18 objectAtIndexedSubscript:?];
                    objc_opt_class();
                    v57 = objc_opt_isKindOfClass();

                    if (v57)
                    {
                      v58 = [v18 objectAtIndexedSubscript:?];
                      [v58 unsignedIntValue];
                      v59 = [v18 objectAtIndexedSubscript:?];
                      [WeakRetained handleAVCNegotiation:? data:?];
                    }
                  }
                }

                goto LABEL_107;
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
                      v10 = [v27 unarchivedObjectOfClass:? fromData:? error:?];
                      v22 = 0;

                      if (v10)
                      {
                        v29 = CMContinuityCaptureLog(2);
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138543618;
                          selfCopy9 = self;
                          v117 = 2114;
                          *v118 = v10;
                          _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                        }

                        [WeakRetained setValueForControl:? completion:?];
                        goto LABEL_108;
                      }

                      goto LABEL_115;
                    }
                  }
                }
              }
            }

            else if ([identifierCopy isEqualToString:?])
            {
              v30 = [responseCopy objectForKeyedSubscript:?];
              unsignedIntegerValue3 = [v30 unsignedIntegerValue];

              v10 = 0;
              if (unsignedIntegerValue3 || !v18)
              {
                goto LABEL_55;
              }

              if ([v18 count] != 2)
              {
                goto LABEL_107;
              }

              v32 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v33 = objc_opt_isKindOfClass();

              if ((v33 & 1) == 0)
              {
                goto LABEL_107;
              }

              v34 = [v18 objectAtIndexedSubscript:?];
              objc_opt_class();
              v35 = objc_opt_isKindOfClass();

              if ((v35 & 1) == 0)
              {
                goto LABEL_107;
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
                  [CMContinuityCaptureRapportTransportBase _enqueueResponse:identifier:];
                }
              }

              goto LABEL_82;
            }

LABEL_107:
            v10 = 0;
            v22 = 0;
            goto LABEL_108;
          }
        }

        v10 = 0;
      }

      v22 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      v22 = 0;
    }

    v18 = 0;
    goto LABEL_112;
  }

  v22 = 0;
  v9 = 0;
  v18 = 0;
LABEL_113:
}

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) setError:?];
    [v5[3] didCaptureStillImage:? entity:?];
    WeakRetained = v5;
  }
}

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_389(uint64_t a1, uint64_t a2)
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

void __71__CMContinuityCaptureRapportTransportBase__enqueueResponse_identifier___block_invoke_390(uint64_t a1, uint64_t a2)
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

- (void)createTimeSyncClockWithPeerAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  deviceModelType = [(CMContinuityCaptureTransportRapportDevice *)self->_device deviceModelType];
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543875;
    selfCopy = self;
    v21 = 2113;
    v22 = addressCopy;
    v23 = 2048;
    v24 = deviceModelType;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ create timesync for %{private}@ remoteType %ld", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10 = FigGetCFPreferenceBooleanWithDefault() != 0;
  v11 = MEMORY[0x277D714D0];
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v17, buf);
  v12 = completionCopy;
  v16 = v12;
  v18 = v10;
  v13 = addressCopy;
  v15 = v13;
  [v11 notifyWhenClockManagerIsAvailable:{v14, 3221225472, __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke, &unk_278D5DA58}];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = WeakRetained;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ TSClockManager is Available", buf, 0xCu);
    }

    v4 = [MEMORY[0x277D714D0] sharedClockManager];
    [v4 addClient:?];

    v5 = [MEMORY[0x277D714D0] sharedClockManager];
    v20 = 0;
    [v5 addgPTPServicesWithError:?];
    v6 = v20;

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_cold_1(WeakRetained, v6);
      }

      v8 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_402;
      block[3] = &unk_278D5D4B0;
      v19 = *(a1 + 40);
      dispatch_async(v8, block);
    }

    else
    {
      v9 = MEMORY[0x277D714E0];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2;
      v13 = &unk_278D5DA58;
      objc_copyWeak(&v16, (a1 + 48));
      v17 = *(a1 + 56);
      v15 = *(a1 + 40);
      v14 = *(a1 + 32);
      [v9 notifyWhengPTPManagerIsAvailable:{v10, 3221225472, __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2, &unk_278D5DA58}];

      objc_destroyWeak(&v16);
    }
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_402(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
  (*(v1 + 16))(v1, 0, v2);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    *buf = 138543362;
    v19 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ gPTPManager is Available", buf, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  if (v4)
  {
    v25 = *MEMORY[0x277D714F0];
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277D714E0] sharedgPTPManager];
    v7 = v6;
    if (v5 == 1)
    {
      v25 = [v6 systemDomainClockIdentifier];

      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        *buf = 138543362;
        v19 = v9;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Using system domain clock", buf, 0xCu);
      }

LABEL_15:
      v15 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v17, (a1 + 48));
      v16 = *(a1 + 40);
      [v4 _bindClock:v15 peerAddress:3221225472 retries:__89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_405 completion:&unk_278D5DA30];

      objc_destroyWeak(&v17);
      goto LABEL_16;
    }

    v24 = 0;
    [v6 addPTPInstance:? error:?];
    v10 = v24;

    v11 = CMContinuityCaptureLog(2);
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_loadWeakRetained((a1 + 48));
        *buf = 138543618;
        v19 = v14;
        v20 = 2048;
        v21 = v25;
        _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Allocated clock %llu", buf, 0x16u);
      }

      v4[4] = v25;
      goto LABEL_15;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_cold_1((a1 + 48), v10);
    }

    v13 = v4[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_404;
    block[3] = &unk_278D5D4B0;
    v23 = *(a1 + 40);
    dispatch_async(v13, block);
  }

LABEL_16:
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_404(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
  (*(v1 + 16))(v1, 0, v2);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406;
    block[3] = &unk_278D5DA08;
    v8 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406(uint64_t a1)
{
  if (*(a1 + 32) && (v2 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClock:?]) != 0)
  {
    v3 = v2;
    [(CMContinuityCaptureTimeSyncClock *)v2 startEmittingHeartBeatSignposts];
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406_cold_1(a1);
    }

    v6 = *(a1 + 40);
    v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    v4 = *(v6 + 16);
  }

  v4();
}

- (void)disposeTimeSyncClock
{
  if (self->_clockIdentifier != *MEMORY[0x277D714F0])
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier = self->_clockIdentifier;
      *buf = 138543618;
      selfCopy = self;
      v13 = 2048;
      v14 = clockIdentifier;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ disposing timesync for %lld", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v5 = MEMORY[0x277D714D0];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke;
    v9 = &unk_278D5C080;
    objc_copyWeak(&v10, buf);
    [v5 notifyWhenClockManagerIsAvailable:?];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D714E0];
  v2 = MEMORY[0x277D85DD0];
  v3 = 3221225472;
  v4 = __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke_2;
  v5 = &unk_278D5C080;
  objc_copyWeak(&v6, (a1 + 32));
  [v1 notifyWhengPTPManagerIsAvailable:?];
  objc_destroyWeak(&v6);
}

void __63__CMContinuityCaptureRapportTransportBase_disposeTimeSyncClock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277D714F0];
    if (WeakRetained[4] != *MEMORY[0x277D714F0])
    {
      v4 = [MEMORY[0x277D714E0] sharedgPTPManager];
      v15 = 0;
      [v4 removePTPInstanceWithIdentifier:? error:?];
      v5 = v15;

      if (v5)
      {
        v6 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v2[4];
          v8 = [v5 localizedDescription];
          v9 = 138543874;
          v10 = v2;
          v11 = 2048;
          v12 = v7;
          v13 = 2114;
          v14 = v8;
          _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed deallocate clock %lld with error %{public}@", &v9, 0x20u);
        }
      }

      v2[4] = v3;
    }
  }
}

- (void)_bindClock:(unint64_t)clock peerAddress:(id)address retries:(int64_t)retries completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(&v43[3], 170, 28);
  if ([addressCopy getCString:? maxLength:? encoding:?])
  {
    v12 = StringToSockAddr();
    if (v12)
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        selfCopy7 = self;
        v36 = 2113;
        clockCopy2 = addressCopy;
        v38 = 1024;
        LODWORD(grandmasterIdentity) = v12;
        v14 = "%{public}@ Failed to parse peer address %{private}@. Error: %{errno}d";
LABEL_39:
        _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x1Cu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v16 = SockAddrConvertToIPv6();
    if (v16)
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543875;
        selfCopy7 = self;
        v36 = 2113;
        clockCopy2 = addressCopy;
        v38 = 1024;
        LODWORD(grandmasterIdentity) = v16;
        v14 = "%{public}@ Failed to convert peer address %{private}@ to IPv6. Error: %{errno}d";
        goto LABEL_39;
      }

LABEL_10:

      completionCopy[2](completionCopy, 0);
      goto LABEL_11;
    }

    mEMORY[0x277D714D0] = [MEMORY[0x277D714D0] sharedClockManager];
    v18 = [mEMORY[0x277D714D0] clockWithClockIdentifier:?];

    if (v18)
    {
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy7 = self;
        v36 = 2048;
        clockCopy2 = clock;
        v38 = 2048;
        grandmasterIdentity = [v18 grandmasterIdentity];
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock %llu available, grandmaster %llu", buf, 0x20u);
      }

      v33 = 0;
      memset(v32, 170, 16);
      if (if_indextoname(v43[6], v32) && ([MEMORY[0x277CCACA8] stringWithCString:? encoding:?], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy7 = self;
          v36 = 2114;
          clockCopy2 = v20;
          _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Binding clock to %{public}@", buf, 0x16u);
        }

        v22 = [v18 addUnicastUDPv6EtEPortOnInterfaceNamed:? withDestinationAddress:? allocatedPortNumber:? error:?];
        v23 = 0;
        if (v22)
        {
          v24 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy7 = self;
            _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock binding completed.", buf, 0xCu);
          }

          (completionCopy)[2](completionCopy, v18);
        }

        else
        {
          v30 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v23 localizedDescription];
            *buf = 138543875;
            selfCopy7 = self;
            v36 = 2113;
            clockCopy2 = addressCopy;
            v38 = 2114;
            grandmasterIdentity = localizedDescription;
            _os_log_error_impl(&dword_242545000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to add UDPv6 peer address %{private}@. Error: %{public}@", buf, 0x20u);
          }

          completionCopy[2](completionCopy, 0);
        }
      }

      else
      {
        v25 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
        }

        completionCopy[2](completionCopy, 0);
        v20 = 0;
        v23 = 0;
      }
    }

    else if (retries)
    {
      v26 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v36 = 2048;
        clockCopy2 = clock;
        _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Clock %llu not available, retry with delay", buf, 0x16u);
      }

      v27 = dispatch_time(0, 100000000);
      v28 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__CMContinuityCaptureRapportTransportBase__bindClock_peerAddress_retries_completion___block_invoke;
      block[3] = &unk_278D5DA80;
      objc_copyWeak(v43, &location);
      v43[1] = clock;
      v41 = addressCopy;
      v43[2] = retries;
      v42 = completionCopy;
      dispatch_after(v27, v28, block);

      objc_destroyWeak(v43);
    }

    else
    {
      v29 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRapportTransportBase _bindClock:peerAddress:retries:completion:];
    }

    completionCopy[2](completionCopy, 0);
  }

LABEL_11:
  objc_destroyWeak(&location);
}

void __85__CMContinuityCaptureRapportTransportBase__bindClock_peerAddress_retries_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _bindClock:? peerAddress:? retries:? completion:?];
    WeakRetained = v2;
  }
}

- (CMContinuityCaptureRapportTransportBase)initWithRapportDevice:(id)device queue:(id)queue taskDelegate:(id)delegate
{
  deviceCopy = device;
  queueCopy = queue;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureRapportTransportBase;
  v12 = [(CMContinuityCaptureRapportTransportBase *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_device, device);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_clockIdentifier = *MEMORY[0x277D714F0];
    v14 = v13;
  }

  return v13;
}

- (void)_enqueueResponse:identifier:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@");
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_cold_1(id *a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __89__CMContinuityCaptureRapportTransportBase_createTimeSyncClockWithPeerAddress_completion___block_invoke_2_406_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_bindClock:peerAddress:retries:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Failed to get peer address %{private}@");
}

- (void)_bindClock:peerAddress:retries:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Failed to derive ifname from cifname for peer address %{private}@");
}

- (void)_bindClock:peerAddress:retries:completion:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ Exhausted all retries to acquire clock %llu");
}

@end