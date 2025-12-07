@interface BKMatchPearlOperation
- (BOOL)enableAutoRetry:(BOOL)retry error:(id *)error;
- (BOOL)pauseFaceDetectTimer:(BOOL)timer error:(id *)error;
- (BOOL)startNewMatchAttemptWithError:(id *)error;
- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details;
- (id)optionsDictionaryWithError:(id *)error;
- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client;
@end

@implementation BKMatchPearlOperation

- (id)optionsDictionaryWithError:(id *)error
{
  v13.receiver = self;
  v13.super_class = BKMatchPearlOperation;
  v4 = [(BKMatchOperation *)&v13 optionsDictionaryWithError:?];
  if (!v4)
  {
    [(BKMatchPearlOperation *)&v14 optionsDictionaryWithError:?];
    v6 = v14;
    v11 = v15;
    goto LABEL_18;
  }

  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  v6 = v5;
  if (self->_longTimeout)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchLongTimeout"];
  }

  if (self->_shouldAutoRetry)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchAutoRetry"];
  }

  if (self->_preAugmentationCheck)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchPreAugmentationCheck"];
  }

  preAugmentationCheckIdentity = self->_preAugmentationCheckIdentity;
  if (preAugmentationCheckIdentity)
  {
    serverIdentity = [(BKIdentity *)preAugmentationCheckIdentity serverIdentity];
    if (!serverIdentity)
    {
      [BKMatchPearlOperation optionsDictionaryWithError:];
      v11 = 0;
      goto LABEL_18;
    }

    v9 = serverIdentity;
    [v6 setObject:serverIdentity forKey:@"BKOptionMatchPreAugmentationCheckIdentity"];
  }

  if (self->_fullFaceOnly)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchFullFaceOnly"];
  }

  if (self->_trigger - 1 <= 5)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->_trigger)];
    [v6 setObject:v10 forKey:@"BKOptionMatchOperationTrigger"];
  }

  if (self->_nonDelayedIndicator)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"BKOptionMatchNonDelayedIndicator"];
  }

  v6 = v6;
  v11 = v6;
LABEL_18:

  return v11;
}

- (BOOL)startNewMatchAttemptWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super.super._xpcClient;
    v8 = v6;
    v17 = 134217984;
    *v18 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::startNewMatchAttempt (_cid:%lu)\n", &v17, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(BKOperation *)selfCopy state]== 5)
  {
    startNewMatchAttempt = [(BiometricKitXPCClient *)selfCopy->super.super._xpcClient startNewMatchAttempt];
    if (!startNewMatchAttempt)
    {
      BKLogEvent(0x40001u);
      objc_sync_exit(selfCopy);

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      v17 = 67109634;
      v13 = 1;
      *v18 = 1;
      *&v18[4] = 1024;
      *&v18[6] = 0;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::startNewMatchAttempt -> %d(err:0x%x), error:%@\n", &v17, 0x18u);
      return v13;
    }

    [BKMatchPearlOperation startNewMatchAttemptWithError:];
    setErrorWithOSStatus(startNewMatchAttempt, error);
  }

  else
  {
    setError(1, error);
    LODWORD(startNewMatchAttempt) = 0;
  }

  objc_sync_exit(selfCopy);

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v16 = *error;
    }

    else
    {
      v16 = 0;
    }

    v17 = 67109634;
    *v18 = 0;
    *&v18[4] = 1024;
    *&v18[6] = startNewMatchAttempt;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_ERROR, "BKMatchPearlOperation::startNewMatchAttempt -> %d(err:0x%x), error:%@\n", &v17, 0x18u);
  }

  return 0;
}

- (BOOL)enableAutoRetry:(BOOL)retry error:(id *)error
{
  retryCopy = retry;
  v27 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super.super._xpcClient;
    v10 = v8;
    v20 = 67109376;
    *v21 = retryCopy;
    *&v21[4] = 2048;
    *&v21[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::enableAutoRetry: %d (_cid:%lu)\n", &v20, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->super.super._xpcClient enableMatchAutoRetry:retryCopy];
  if (v11)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v11;
      *&v21[18] = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 1148;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v11, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v7;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109634;
      *v21 = 0;
      *&v21[4] = 1024;
      *&v21[6] = v11;
      *&v21[10] = 2112;
      *&v21[12] = v19;
      v14 = v18;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v20 = 67109634;
      *v21 = 1;
      *&v21[4] = 1024;
      *&v21[6] = 0;
      *&v21[10] = 2112;
      *&v21[12] = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v14, v15, "BKMatchPearlOperation::enableAutoRetry -> %d(err:0x%x), error:%@\n", &v20, 0x18u);
    }
  }

  return v11 == 0;
}

- (BOOL)pauseFaceDetectTimer:(BOOL)timer error:(id *)error
{
  timerCopy = timer;
  v27 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->super.super._xpcClient;
    v10 = v8;
    v20 = 67109376;
    *v21 = timerCopy;
    *&v21[4] = 2048;
    *&v21[6] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::pauseFaceDetectTimer: %d (_cid:%lu)\n", &v20, 0x12u);
  }

  v11 = [(BiometricKitXPCClient *)self->super.super._xpcClient pauseFaceDetectTimer:timerCopy];
  if (v11)
  {
    if (__osLog)
    {
      v17 = __osLog;
    }

    else
    {
      v17 = v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      *v21 = "err == 0 ";
      *&v21[8] = 2048;
      *&v21[10] = v11;
      *&v21[18] = 2080;
      v22 = &unk_1C82F52EE;
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BKDevicePearl.m";
      v25 = 1024;
      v26 = 1171;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    setErrorWithOSStatus(v11, error);
    if (__osLogTrace)
    {
      v18 = __osLogTrace;
    }

    else
    {
      v18 = v7;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v20 = 67109634;
      *v21 = 0;
      *&v21[4] = 1024;
      *&v21[6] = v11;
      *&v21[10] = 2112;
      *&v21[12] = v19;
      v14 = v18;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v13 = *error;
      }

      else
      {
        v13 = 0;
      }

      v20 = 67109634;
      *v21 = 1;
      *&v21[4] = 1024;
      *&v21[6] = 0;
      *&v21[10] = 2112;
      *&v21[12] = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_1C82AD000, v14, v15, "BKMatchPearlOperation::pauseFaceDetectTimer -> %d(err:0x%x), error:%@\n", &v20, 0x18u);
    }
  }

  return v11 == 0;
}

- (id)matchResultInfoWithServerIdentity:(id)identity details:(id)details
{
  detailsCopy = details;
  identityCopy = identity;
  v8 = [BKMatchPearlResultInfo alloc];
  device = [(BKOperation *)self device];
  v10 = [(BKMatchPearlResultInfo *)v8 initWithServerIdentity:identityCopy details:detailsCopy device:device];

  return v10;
}

- (void)statusMessage:(unsigned int)message details:(id)details client:(unint64_t)client
{
  v6 = *&message;
  v84 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  kdebug_trace();
  v9 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v83 = v6;
    *&v83[4] = 2112;
    *&v83[6] = detailsCopy;
    *&v83[14] = 2048;
    *&v83[16] = client;
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: %u, %@, %llu\n", buf, 0x1Cu);
  }

  BKLogCode(1, v6);
  if (v6 <= 1070)
  {
    switch(v6)
    {
      case 0x41C:
        selfCopy2 = self;
        v22 = 5;
        break;
      case 0x41D:
        selfCopy2 = self;
        v22 = 2;
        break;
      case 0x42B:
        delegate = [(BKOperation *)self delegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          if (detailsCopy)
          {
            v13 = [detailsCopy objectForKeyedSubscript:@"BKStatusDetailFaceDetectFeedback"];
            v14 = v13;
            if (v13)
            {
              v15 = __faceDetectFeedback([v13 integerValue]);
            }

            else
            {
              v15 = 1;
            }
          }

          else
          {
            v15 = 1;
          }

          if (__osLog)
          {
            v58 = __osLog;
          }

          else
          {
            v58 = v9;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v58;
            delegate2 = [(BKOperation *)self delegate];
            delegate3 = [(BKOperation *)self delegate];
            *buf = 134218498;
            *v83 = v15;
            *&v83[8] = 2048;
            *&v83[10] = delegate2;
            *&v83[18] = 2112;
            *&v83[20] = delegate3;
            _os_log_impl(&dword_1C82AD000, v59, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: providedFeedback:%ld => delegate:%p(%@)\n", buf, 0x20u);
          }

          dispatchQueue = [(BKOperation *)self dispatchQueue];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke;
          v81[3] = &unk_1E8303D98;
          v81[4] = self;
          v81[5] = v15;
          dispatch_async(dispatchQueue, v81);
        }

        goto LABEL_97;
      default:
        goto LABEL_31;
    }

    [(BKOperation *)selfCopy2 changeState:v22];
    goto LABEL_97;
  }

  if (v6 == 1071)
  {
    delegate4 = [(BKOperation *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if ((v24 & 1) == 0)
    {
      goto LABEL_97;
    }

    v25 = [[BKFaceOcclusionInfo alloc] initWithDictionary:detailsCopy];
    if (__osLog)
    {
      v26 = __osLog;
    }

    else
    {
      v26 = v9;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      hasFaceOcclusion = [(BKFaceOcclusionInfo *)v25 hasFaceOcclusion];
      delegate5 = [(BKOperation *)self delegate];
      delegate6 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v83 = hasFaceOcclusion;
      *&v83[4] = 2048;
      *&v83[6] = delegate5;
      *&v83[14] = 2112;
      *&v83[16] = delegate6;
      _os_log_impl(&dword_1C82AD000, v27, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: providedFaceOcclusionInfo:(hasFaceOcclusion:%d) => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue2 = [(BKOperation *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_455;
    block[3] = &unk_1E8304208;
    block[4] = self;
    v80 = v25;
    v32 = v25;
    dispatch_async(dispatchQueue2, block);

    v33 = v80;
LABEL_48:

    goto LABEL_97;
  }

  if (v6 == 1072)
  {
    delegate7 = [(BKOperation *)self delegate];
    v42 = objc_opt_respondsToSelector();

    if ((v42 & 1) == 0)
    {
      goto LABEL_97;
    }

    v43 = [[BKFaceWUPoseEligibilityInfo alloc] initWithDictionary:detailsCopy];
    if (__osLog)
    {
      v44 = __osLog;
    }

    else
    {
      v44 = v9;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      isEligible = [(BKFaceWUPoseEligibilityInfo *)v43 isEligible];
      delegate8 = [(BKOperation *)self delegate];
      delegate9 = [(BKOperation *)self delegate];
      *buf = 67109634;
      *v83 = isEligible;
      *&v83[4] = 2048;
      *&v83[6] = delegate8;
      *&v83[14] = 2112;
      *&v83[16] = delegate9;
      _os_log_impl(&dword_1C82AD000, v45, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: providedFaceWUPoseEligibilityInfo:(isEligible:%d) => delegate:%p(%@)\n", buf, 0x1Cu);
    }

    dispatchQueue3 = [(BKOperation *)self dispatchQueue];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_459;
    v77[3] = &unk_1E8304208;
    v77[4] = self;
    v78 = v43;
    v32 = v43;
    dispatch_async(dispatchQueue3, v77);

    v33 = v78;
    goto LABEL_48;
  }

  if (v6 != 1075)
  {
LABEL_31:
    if ((v6 - 63) > 1)
    {
      if ((v6 - 1059) <= 0x19 && ((1 << (v6 - 35)) & 0x2A80453) != 0)
      {
        delegate10 = [(BKOperation *)self delegate];
        v51 = objc_opt_respondsToSelector();

        if (v51)
        {
          v52 = 1;
          if (v6 <= 1068)
          {
            if (v6 > 1062)
            {
              if (v6 == 1063)
              {
                v52 = 5;
              }

              else if (v6 == 1065)
              {
                v52 = 6;
              }
            }

            else if (v6 == 1059)
            {
              v52 = 3;
            }

            else if (v6 == 1060)
            {
              v52 = 4;
            }
          }

          else if (v6 <= 1079)
          {
            if (v6 == 1069)
            {
              v52 = 7;
            }

            else if (v6 == 1078)
            {
              v52 = 9;
            }
          }

          else
          {
            switch(v6)
            {
              case 0x438:
                v52 = 10;
                break;
              case 0x43A:
                v52 = 11;
                break;
              case 0x43C:
                v52 = 12;
                break;
            }
          }

          if (__osLog)
          {
            v63 = __osLog;
          }

          else
          {
            v63 = v9;
          }

          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            loga = v63;
            [(BKOperation *)self delegate];
            v65 = v64 = v52;
            delegate11 = [(BKOperation *)self delegate];
            *buf = 134218498;
            *v83 = v64;
            *&v83[8] = 2048;
            *&v83[10] = v65;
            *&v83[18] = 2112;
            *&v83[20] = delegate11;
            _os_log_impl(&dword_1C82AD000, loga, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: failedWithReason:%ld => delegate:%p(%@)\n", buf, 0x20u);

            v52 = v64;
          }

          dispatchQueue4 = [(BKOperation *)self dispatchQueue];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_469;
          v72[3] = &unk_1E8303D98;
          v72[4] = self;
          v72[5] = v52;
          dispatch_async(dispatchQueue4, v72);
        }

        [(BKOperation *)self operationEndsWithReason:3];
      }
    }

    else
    {
      delegate12 = [(BKOperation *)self delegate];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        if (__osLog)
        {
          v36 = __osLog;
        }

        else
        {
          v36 = v9;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(log) = v6 == 63;
          v37 = v36;
          delegate13 = [(BKOperation *)self delegate];
          delegate14 = [(BKOperation *)self delegate];
          *buf = 67109634;
          *v83 = log;
          *&v83[4] = 2048;
          *&v83[6] = delegate13;
          *&v83[14] = 2112;
          *&v83[16] = delegate14;
          _os_log_impl(&dword_1C82AD000, v37, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: faceDetectStateChanged:%d => delegate:%p(%@)\n", buf, 0x1Cu);
        }

        dispatchQueue5 = [(BKOperation *)self dispatchQueue];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_466;
        v73[3] = &unk_1E83043E8;
        v73[4] = self;
        v75 = v6;
        v74 = detailsCopy;
        dispatch_async(dispatchQueue5, v73);
      }
    }

    v71.receiver = self;
    v71.super_class = BKMatchPearlOperation;
    [(BKMatchOperation *)&v71 statusMessage:v6 client:client];
    goto LABEL_97;
  }

  delegate15 = [(BKOperation *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    if (detailsCopy)
    {
      v18 = [detailsCopy objectForKeyedSubscript:@"BKStatusDetailPSRequestReason"];
      integerValue = [v18 integerValue];
      if ((integerValue - 1) >= 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = integerValue;
      }
    }

    else
    {
      v20 = 0;
    }

    if (__osLog)
    {
      v53 = __osLog;
    }

    else
    {
      v53 = v9;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v53;
      delegate16 = [(BKOperation *)self delegate];
      delegate17 = [(BKOperation *)self delegate];
      *buf = 134218498;
      *v83 = v20;
      *&v83[8] = 2048;
      *&v83[10] = delegate16;
      *&v83[18] = 2112;
      *&v83[20] = delegate17;
      _os_log_impl(&dword_1C82AD000, v54, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: requestedPasscodeShortcutWithReason:(reason:%ld) => delegate:%p(%@)\n", buf, 0x20u);
    }

    dispatchQueue6 = [(BKOperation *)self dispatchQueue];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_465;
    v76[3] = &unk_1E8303D98;
    v76[4] = self;
    v76[5] = v20;
    dispatch_async(dispatchQueue6, v76);
  }

LABEL_97:
  if (__osLogTrace)
  {
    v68 = __osLogTrace;
  }

  else
  {
    v68 = v9;
  }

  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v68, OS_LOG_TYPE_DEFAULT, "BKMatchPearlOperation::statusMessage:details:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFeedback:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_455(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFaceOcclusionInfo:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_459(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) providedFaceWUPoseEligibilityInfo:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_465(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) requestedPasscodeShortcutWithReason:*(a1 + 40)];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_466(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [[BKFaceDetectStateInfo alloc] initWithPresenceState:*(a1 + 48) == 63 details:*(a1 + 40)];
  [v4 operation:v2 faceDetectStateChanged:v3];
}

void __54__BKMatchPearlOperation_statusMessage_details_client___block_invoke_469(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) failedWithReason:*(a1 + 40)];
}

- (id)optionsDictionaryWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  return OUTLINED_FUNCTION_13_0();
}

- (void)optionsDictionaryWithError:(void *)a1 .cold.2(void *a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)startNewMatchAttemptWithError:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end