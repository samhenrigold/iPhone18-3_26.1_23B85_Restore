@interface CMContinuityCaptureSidecarTransportBase
- (CMContinuityCaptureSidecarTransportBase)initWithDevice:(id)device queue:(id)queue taskDelegate:(id)delegate;
- (NSString)description;
- (void)_enqueueResponse:(id)response identifier:(id)identifier;
- (void)createTimeSyncClockForSession:(id)session completion:(id)completion;
- (void)enqueueResponse:(id)response identifier:(id)identifier;
- (void)setTaskDelegate:(id)delegate;
- (void)setupSidecarStreams;
- (void)teardownSidecarStreams;
@end

@implementation CMContinuityCaptureSidecarTransportBase

- (void)setTaskDelegate:(id)delegate
{
  obj = delegate;
  if ([(CMContinuityCaptureTransportSidecarDevice *)self->_device remote])
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
  v11[2] = __70__CMContinuityCaptureSidecarTransportBase_enqueueResponse_identifier___block_invoke;
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

void __70__CMContinuityCaptureSidecarTransportBase_enqueueResponse_identifier___block_invoke(uint64_t a1)
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
  objc_initWeak(location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  v9 = [responseCopy objectForKeyedSubscript:?];
  if (!v9)
  {
LABEL_16:
    v22 = 0;
    v23 = 0;
    v18 = 0;
    goto LABEL_101;
  }

  v10 = [responseCopy objectForKeyedSubscript:?];

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = [responseCopy objectForKeyedSubscript:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [responseCopy objectForKeyedSubscript:?];
    v15 = [responseCopy objectForKeyedSubscript:?];
    *buf = 138544130;
    selfCopy8 = self;
    v116 = 2114;
    *v117 = identifierCopy;
    *&v117[8] = 2114;
    v118 = v14;
    v119 = 2114;
    v120 = v15;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueResponse identifier:%{public}@ selector %{public}@ gid %{public}@", buf, 0x2Au);
  }

  v16 = [responseCopy objectForKeyedSubscript:?];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v18 = [responseCopy objectForKeyedSubscript:?];
  if (![identifierCopy isEqualToString:?])
  {
    if ([identifierCopy isEqualToString:?])
    {
      v24 = [responseCopy objectForKeyedSubscript:?];
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      if (unsignedIntegerValue == 2)
      {
        if ([v18 count] == 2)
        {
          v56 = [v18 objectAtIndexedSubscript:?];
          objc_opt_class();
          v57 = objc_opt_isKindOfClass();

          if (v57)
          {
            v58 = [v18 objectAtIndexedSubscript:?];
            objc_opt_class();
            v59 = objc_opt_isKindOfClass();

            if (v59)
            {
              v60 = [v18 objectAtIndexedSubscript:?];
              [v60 unsignedIntValue];
              v61 = [v18 objectAtIndexedSubscript:?];
              [WeakRetained handleAVCNegotiation:? data:?];
            }
          }
        }

        goto LABEL_99;
      }

      if (unsignedIntegerValue == 1)
      {
        if (v18)
        {
          if ([v18 count] == 1)
          {
            v26 = [v18 objectAtIndexedSubscript:?];
            objc_opt_class();
            v27 = objc_opt_isKindOfClass();

            if (v27)
            {
              v28 = MEMORY[0x277CCAAC8];
              objc_opt_class();
              v29 = [v18 objectAtIndexedSubscript:?];
              v9 = [v28 unarchivedObjectOfClass:? fromData:? error:?];
              v22 = 0;

              if (v9)
              {
                v30 = CMContinuityCaptureLog(2);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  selfCopy8 = self;
                  v116 = 2114;
                  *v117 = v9;
                  _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatch update for %{public}@", buf, 0x16u);
                }

                [WeakRetained setValueForControl:? completion:?];
                goto LABEL_100;
              }

              goto LABEL_102;
            }
          }
        }
      }
    }

    else if ([identifierCopy isEqualToString:?])
    {
      v31 = [responseCopy objectForKeyedSubscript:?];
      unsignedIntegerValue2 = [v31 unsignedIntegerValue];

      v9 = 0;
      if (!unsignedIntegerValue2 && v18)
      {
        if ([v18 count] != 2)
        {
          goto LABEL_99;
        }

        v33 = [v18 objectAtIndexedSubscript:?];
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if ((v34 & 1) == 0)
        {
          goto LABEL_99;
        }

        v35 = [v18 objectAtIndexedSubscript:?];
        objc_opt_class();
        v36 = objc_opt_isKindOfClass();

        if ((v36 & 1) == 0)
        {
          goto LABEL_99;
        }

        v37 = MEMORY[0x277CCAAC8];
        objc_opt_class();
        v38 = [v18 objectAtIndexedSubscript:?];
        v39 = [v37 unarchivedObjectOfClass:? fromData:? error:?];
        v22 = 0;

        if (v39)
        {
          v40 = [v18 objectAtIndexedSubscript:?];
          [v40 unsignedIntValue];
          [WeakRetained didCaptureStillImage:? entity:?];
        }

        else
        {
          v40 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [CMContinuityCaptureSidecarTransportBase _enqueueResponse:identifier:];
          }
        }

        goto LABEL_78;
      }

LABEL_53:
      v22 = 0;
      v23 = 0;
      goto LABEL_101;
    }

LABEL_99:
    v9 = 0;
    v22 = 0;
    goto LABEL_100;
  }

  v19 = [responseCopy objectForKeyedSubscript:?];
  unsignedIntegerValue3 = [v19 unsignedIntegerValue];

  v9 = 0;
  if (unsignedIntegerValue3 > 3)
  {
    if (unsignedIntegerValue3 <= 5)
    {
      if (unsignedIntegerValue3 != 4)
      {
        v21 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy8 = self;
          _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ SynchronizeAudioClockComplete", buf, 0xCu);
        }

        [WeakRetained handleSynchronizeAudioClockCompletion];
        goto LABEL_99;
      }

      if ([v18 count])
      {
        v52 = [v18 objectAtIndexedSubscript:?];
      }

      else
      {
        v52 = 0;
      }

      if ([v18 count] < 2)
      {
        v102 = 0;
      }

      else
      {
        v102 = [v18 objectAtIndexedSubscript:?];
      }

      if ([v18 count] < 3)
      {
        v103 = 0;
      }

      else
      {
        v103 = [v18 objectAtIndexedSubscript:?];
      }

      v104 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = MEMORY[0x277CCABB0];
        [v103 unsignedLongLongValue];
        v106 = [v105 numberWithUnsignedLongLong:?];
        *buf = 138544130;
        selfCopy8 = self;
        v116 = 2112;
        *v117 = v52;
        *&v117[8] = 2112;
        v118 = v102;
        v119 = 2112;
        v120 = v106;
        _os_log_impl(&dword_242545000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@ Received synchronize audio clock with sampleTime %@ networkTime %@ grandmaster %@", buf, 0x2Au);
      }

      [v52 unsignedLongLongValue];
      [v102 unsignedLongLongValue];
      [v103 unsignedLongLongValue];
      [WeakRetained synchronizeAudioClockWithSampleTime:? networkTime:? clockGrandMasterIdentifier:?];

LABEL_98:
      goto LABEL_99;
    }

    if (unsignedIntegerValue3 != 6)
    {
      if (unsignedIntegerValue3 == 9)
      {
        if (!v18)
        {
          goto LABEL_99;
        }

        if ([v18 count] != 2)
        {
          goto LABEL_99;
        }

        v48 = [v18 objectAtIndexedSubscript:?];
        objc_opt_class();
        v49 = objc_opt_isKindOfClass();

        if ((v49 & 1) == 0)
        {
          goto LABEL_99;
        }

        v50 = [v18 objectAtIndexedSubscript:?];
        objc_opt_class();
        v51 = objc_opt_isKindOfClass();

        if ((v51 & 1) == 0)
        {
          goto LABEL_99;
        }

        v52 = [v18 objectAtIndexedSubscript:?];
        v53 = [v18 objectAtIndexedSubscript:?];
        unsignedIntValue = [v53 unsignedIntValue];

        v55 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy8 = self;
          v116 = 2112;
          *v117 = v52;
          *&v117[8] = 2048;
          v118 = unsignedIntValue;
          _os_log_impl(&dword_242545000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ EnqueueReactionEffect %@ entity %ld", buf, 0x20u);
        }

        [WeakRetained enqueueReactionEffect:? entity:?];
        goto LABEL_98;
      }

      goto LABEL_53;
    }

    if (!v18)
    {
      goto LABEL_99;
    }

    if ([v18 count] != 2)
    {
      goto LABEL_99;
    }

    v78 = [v18 objectAtIndexedSubscript:?];
    objc_opt_class();
    v79 = objc_opt_isKindOfClass();

    if ((v79 & 1) == 0)
    {
      goto LABEL_99;
    }

    v80 = [v18 objectAtIndexedSubscript:?];
    objc_opt_class();
    v81 = objc_opt_isKindOfClass();

    if ((v81 & 1) == 0)
    {
      goto LABEL_99;
    }

    v82 = MEMORY[0x277CCAAC8];
    objc_opt_class();
    v83 = [v18 objectAtIndexedSubscript:?];
    v112[2] = 0;
    v39 = [v82 unarchivedObjectOfClass:? fromData:? error:?];
    v22 = 0;

    if (!v39)
    {
      v108 = CMContinuityCaptureLog(2);
      [CMContinuityCaptureSidecarTransportBase _enqueueResponse:v108 identifier:?];
      goto LABEL_78;
    }

    v84 = [v18 objectAtIndexedSubscript:?];
    unsignedIntValue2 = [v84 unsignedIntValue];

    v86 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy8 = self;
      v116 = 2112;
      *v117 = v39;
      *&v117[8] = 2048;
      v118 = unsignedIntValue2;
      _os_log_impl(&dword_242545000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@ CaptureStillImage %@ entity %ld", buf, 0x20u);
    }

    v110[2] = MEMORY[0x277D85DD0];
    v110[3] = 3221225472;
    v110[4] = __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke;
    v110[5] = &unk_278D5CAC8;
    objc_copyWeak(v112, location);
    v111 = v39;
    v112[1] = unsignedIntValue2;
    [WeakRetained captureStillImage:? entity:? completion:?];

    v77 = v112;
LABEL_77:
    objc_destroyWeak(v77);
LABEL_78:

LABEL_79:
    v9 = 0;
LABEL_100:
    v23 = 0;
    goto LABEL_101;
  }

  if (unsignedIntegerValue3 == 1)
  {
    if ([v18 count] != 3)
    {
      goto LABEL_99;
    }

    v62 = [v18 objectAtIndexedSubscript:?];
    objc_opt_class();
    v63 = objc_opt_isKindOfClass();

    if ((v63 & 1) == 0)
    {
      goto LABEL_99;
    }

    v64 = [v18 objectAtIndexedSubscript:?];
    objc_opt_class();
    v65 = objc_opt_isKindOfClass();

    if ((v65 & 1) == 0)
    {
      goto LABEL_99;
    }

    v66 = [v18 objectAtIndexedSubscript:?];
    objc_opt_class();
    v67 = objc_opt_isKindOfClass();

    if ((v67 & 1) == 0)
    {
      goto LABEL_99;
    }

    device = [(CMContinuityCaptureSidecarTransportBase *)self device];
    remote = [device remote];

    if (remote)
    {
      goto LABEL_99;
    }

    v70 = MEMORY[0x277CCAAC8];
    objc_opt_class();
    v71 = [v18 objectAtIndexedSubscript:?];
    v110[1] = 0;
    v72 = [v70 unarchivedObjectOfClass:? fromData:? error:?];
    v22 = 0;

    if (v72)
    {
      v73 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = [v18 objectAtIndexedSubscript:?];
        unsignedIntValue3 = [v74 unsignedIntValue];
        *buf = 138543874;
        selfCopy8 = self;
        v116 = 2114;
        *v117 = v72;
        *&v117[8] = 1024;
        LODWORD(v118) = unsignedIntValue3;
        _os_log_impl(&dword_242545000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Configuration %{public}@ option %u", buf, 0x1Cu);
      }

      v76 = [v18 objectAtIndexedSubscript:?];
      [v76 unsignedIntValue];
      v109[1] = MEMORY[0x277D85DD0];
      v109[2] = 3221225472;
      v109[3] = __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_308;
      v109[4] = &unk_278D5C660;
      objc_copyWeak(v110, location);
      v39 = v72;
      v109[5] = v39;
      [WeakRetained startStream:? option:? completion:?];

      v77 = v110;
      goto LABEL_77;
    }

LABEL_102:
    v107 = CMContinuityCaptureLog(2);
    [CMContinuityCaptureSidecarTransportBase _enqueueResponse:v107 identifier:?];
    goto LABEL_79;
  }

  if (unsignedIntegerValue3 == 2)
  {
    if ([v18 count] == 3)
    {
      v87 = [v18 objectAtIndexedSubscript:?];
      objc_opt_class();
      v88 = objc_opt_isKindOfClass();

      if (v88)
      {
        v89 = [v18 objectAtIndexedSubscript:?];
        objc_opt_class();
        v90 = objc_opt_isKindOfClass();

        if (v90)
        {
          v91 = [v18 objectAtIndexedSubscript:?];
          objc_opt_class();
          v92 = objc_opt_isKindOfClass();

          if (v92)
          {
            device2 = [(CMContinuityCaptureSidecarTransportBase *)self device];
            remote2 = [device2 remote];

            if ((remote2 & 1) == 0)
            {
              v95 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                v96 = [v18 objectAtIndexedSubscript:?];
                unsignedIntValue4 = [v96 unsignedIntValue];
                v98 = [v18 objectAtIndexedSubscript:?];
                unsignedIntValue5 = [v98 unsignedIntValue];
                *buf = 138543874;
                selfCopy8 = self;
                v116 = 1024;
                *v117 = unsignedIntValue4;
                *&v117[4] = 1024;
                *&v117[6] = unsignedIntValue5;
                _os_log_impl(&dword_242545000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream entity %u option %u", buf, 0x18u);
              }

              v100 = [v18 objectAtIndexedSubscript:?];
              [v100 unsignedIntValue];
              v101 = [v18 objectAtIndexedSubscript:?];
              [v101 unsignedIntValue];
              objc_copyWeak(v109, location);
              v18 = v18;
              [WeakRetained stopStream:? option:? completion:?];

              objc_destroyWeak(v109);
            }
          }
        }
      }
    }

    goto LABEL_99;
  }

  if (unsignedIntegerValue3 != 3)
  {
    goto LABEL_53;
  }

  if (!v18)
  {
    goto LABEL_99;
  }

  if ([v18 count] != 2)
  {
    goto LABEL_99;
  }

  v41 = [v18 objectAtIndexedSubscript:?];
  objc_opt_class();
  v42 = objc_opt_isKindOfClass();

  if ((v42 & 1) == 0)
  {
    goto LABEL_99;
  }

  v43 = [v18 objectAtIndexedSubscript:?];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if ((v44 & 1) == 0)
  {
    goto LABEL_99;
  }

  v23 = [v18 objectAtIndexedSubscript:?];
  v45 = [v18 objectAtIndexedSubscript:?];
  [v45 unsignedIntValue];
  v112[3] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
  v46 = MEMORY[0x277CCABB0];
  mach_continuous_time();
  v113 = [v46 numberWithUnsignedLongLong:?];
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [WeakRetained postEvent:? entity:? data:?];

  v9 = 0;
  v22 = 0;
LABEL_101:
  objc_destroyWeak(location);
}

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) setError:?];
    v5 = [v6 device];
    [v5 didCaptureStillImage:? entity:?];

    WeakRetained = v6;
  }
}

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_308(uint64_t a1, uint64_t a2)
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

void __71__CMContinuityCaptureSidecarTransportBase__enqueueResponse_identifier___block_invoke_309(uint64_t a1, uint64_t a2)
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

- (void)teardownSidecarStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    selfCopy = self;
    v6 = 2080;
    v7 = "[CMContinuityCaptureSidecarTransportBase teardownSidecarStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v4, 0x16u);
  }

  [(CMContinuityCaptureTransportSidecarDevice *)self->_device teardownStreams];
  self->_pendingTimeSyncCallback = 0;
}

- (void)setupSidecarStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v30 = 2080;
    v31 = "[CMContinuityCaptureSidecarTransportBase setupSidecarStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v4 = CFPreferencesCopyAppValue(@"MediaStreamTypeForAudio", @"com.apple.coremedia");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [v4 unsignedIntValue];
      v6 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v30 = 1024;
        LODWORD(v31) = unsignedIntValue;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ MediaStreamTypeForAudio (SidecarStream setup) %u", buf, 0x12u);
      }
    }
  }

  v7 = CFPreferencesCopyAppValue(@"MediaStreamTypeForVideo", @"com.apple.coremedia");

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue2 = [v7 unsignedIntValue];
      v9 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v30 = 1024;
        LODWORD(v31) = unsignedIntValue2;
        _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ MediaStreamTypeForVideo (SidecarStream setup) %u", buf, 0x12u);
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke;
  v25[3] = &unk_278D5D1D0;
  objc_copyWeak(&v26, &location);
  v10 = MEMORY[0x245D12020](v25);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_325;
  v22[3] = &unk_278D5D220;
  objc_copyWeak(&v24, &location);
  v21 = v10;
  v23 = v21;
  v11 = MEMORY[0x245D12020](v22);
  v12 = self->_sidebandIdentifiers;
  v13 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v13)
  {
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v12);
        }

        [CMContinuityCaptureSidecarTransportBase setupSidebandSidecarStreamForIdentifier:"setupSidebandSidecarStreamForIdentifier:type:completion:" type:? completion:?];
      }

      v13 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v13);
  }

  v20 = v7;

  v16 = self->_mediaIdentifiers;
  v17 = [NSArray countByEnumeratingWithState:v16 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v17)
  {
    v18 = MEMORY[0];
    do
    {
      for (j = 0; j != v17; j = (j + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(8 * j) isEqualToString:v20];
        [CMContinuityCaptureSidecarTransportBase setupMediaSidecarStreamForIdentifier:"setupMediaSidecarStreamForIdentifier:type:completion:" type:? completion:?];
      }

      v17 = [NSArray countByEnumeratingWithState:v16 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v17);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 2));
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_loadWeakRetained((a1 + 32));
      if (v5)
      {
        v11 = [v5 identifier];
      }

      else
      {
        v11 = 0;
      }

      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setupStream completion for %@ error %@", &v15, 0x20u);
      if (v5)
      {
      }
    }

    v12 = [CMContinuityCaptureTransportDeviceSidecarStream alloc];
    v13 = [v5 identifier];
    CMContinuityCaptureEntityTypeFromMediaIdentifer(v13);
    v14 = [CMContinuityCaptureTransportDeviceSidecarStream initWithSidecarStream:v12 entity:"initWithSidecarStream:entity:messageDelegate:" messageDelegate:?];

    [v8[1] activateStream:?];
  }
}

void __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_325(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CMContinuityCaptureSidecarTransportBase_setupSidecarStreams__block_invoke_2;
    block[3] = &unk_278D5D1F8;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)createTimeSyncClockForSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (sessionCopy && !self->_pendingTimeSyncCallback)
  {
    self->_pendingTimeSyncCallback = 1;
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v18 = 2080;
      v19 = "[CMContinuityCaptureSidecarTransportBase createTimeSyncClockForSession:completion:]";
      v20 = 2112;
      v21 = sessionCopy;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s for session %@", buf, 0x20u);
    }

    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke;
    v12 = &unk_278D5D270;
    objc_copyWeak(&v15, &location);
    v13 = sessionCopy;
    v14 = completionCopy;
    [v13 timeSyncWithCompletion:?];

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(a1 + 6);
      *buf = 138543874;
      v19 = v8;
      v20 = 2048;
      v21 = a2;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got time sync clockIdentifier %llu from sidecar session. Error: %@", buf, 0x20u);
    }

    v9 = WeakRetained[2];
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_326;
      block[3] = &unk_278D5C0D0;
      v10 = &v17;
      v17 = WeakRetained;
      dispatch_async(v9, block);
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2;
      v11[3] = &unk_278D5D248;
      v10 = &v12;
      v12 = WeakRetained;
      v15 = a2;
      v13 = a1[4];
      v14 = a1[5];
      dispatch_async(v9, v11);
    }
  }
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  *(a1[4] + 32) = 0;
  v3 = [[CMContinuityCaptureTimeSyncClock alloc] initWithClockIdentifier:?];
  v4 = v3;
  if (v3)
  {
    [(CMContinuityCaptureTimeSyncClock *)v3 startEmittingHeartBeatSignposts];
    (*(a1[6] + 16))();
  }

  else
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2_cold_1(v2, a1, v5);
    }

    v6 = a1[6];
    v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(CMContinuityCaptureSidecarTransportBase *)self device];
  v7 = [v3 stringWithFormat:v5, device, self];

  return v7;
}

- (CMContinuityCaptureSidecarTransportBase)initWithDevice:(id)device queue:(id)queue taskDelegate:(id)delegate
{
  deviceCopy = device;
  queueCopy = queue;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = CMContinuityCaptureSidecarTransportBase;
  v12 = [(CMContinuityCaptureSidecarTransportBase *)&v32 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  objc_storeWeak(&v12->_delegate, delegateCopy);
  objc_storeStrong(&v13->_device, device);
  objc_storeStrong(&v13->_queue, queue);
  v14 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
  sidebandIdentifiers = v13->_sidebandIdentifiers;
  v13->_sidebandIdentifiers = v14;

  capabilities = [deviceCopy capabilities];
  v17 = CMContinuityCaptureMediaIdentifiersForCapabilities(capabilities);
  mediaIdentifiers = v13->_mediaIdentifiers;
  v13->_mediaIdentifiers = v17;

  objc_storeStrong(&v13->_device, device);
  capabilities2 = [deviceCopy capabilities];
  if (!capabilities2 || (v20 = capabilities2, [deviceCopy capabilities], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "devicesCapabilities"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, v20, !v23))
  {
    v25 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      capabilities3 = [deviceCopy capabilities];
      v28 = 138543618;
      v29 = v13;
      v30 = 2048;
      v31 = capabilities3;
      _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid capabilities %p", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  if (!v13->_queue || !v13->_device)
  {
LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v24 = v13;
LABEL_11:

  return v24;
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%{public}@ error unarchivedObjectOfClass %@", v4, v5, v6, v7);
  }
}

- (void)_enqueueResponse:(NSObject *)a1 identifier:.cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_1(a1))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_2_3(&dword_242545000, v2, v3, "%@ error unarchivedObjectOfClass CMContinuityCaptureStillImageRequest %@", v4, v5, v6, v7);
  }
}

void __84__CMContinuityCaptureSidecarTransportBase_createTimeSyncClockForSession_completion___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = *(a2 + 40);
  OUTLINED_FUNCTION_5_2(&dword_242545000, a2, a3, "%{public}@ Failed to create time sync clock from session %@, Stream setup requires valid time sync clock.", *v3, *&v3[8], *&v3[16]);
}

@end