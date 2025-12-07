@interface HRCClassifier
+ (void)classifyArbitratedHeartRate:(id)rate publisherBlock:(id)block clientBlock:(id)clientBlock;
+ (void)classifyUnarbitratedHeartRate:(id)rate algorithmsInputBlock:(id)block publisherBlock:(id)publisherBlock clientBlock:(id)clientBlock;
@end

@implementation HRCClassifier

+ (void)classifyUnarbitratedHeartRate:(id)rate algorithmsInputBlock:(id)block publisherBlock:(id)publisherBlock clientBlock:(id)clientBlock
{
  rateCopy = rate;
  blockCopy = block;
  publisherBlockCopy = publisherBlock;
  clientBlockCopy = clientBlock;
  sourceType = [rateCopy sourceType];
  if ((sourceType - 1) < 2)
  {
    if ([rateCopy hrContext] != 2 || (v18 = objc_msgSend(rateCopy, "arbitrationStatus"), v18))
    {
      if ([rateCopy hrContext] == 2 || (v18 = objc_msgSend(rateCopy, "arbitrationStatus"), !v18))
      {
        if ([rateCopy hrContext] == 2)
        {
          arbitrationStatus = [rateCopy arbitrationStatus];
          if (arbitrationStatus == 1)
          {
            v17 = sub_10000132C(arbitrationStatus);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              uuid = [rateCopy uuid];
              v32 = 138543618;
              v33 = uuid;
              v34 = 1026;
              sourceType2 = [rateCopy sourceType];
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "classifier sending hr to algs :: uuid : %{public}@ , sourceType : %{public}d", &v32, 0x12u);
            }

            v25 = blockCopy;
            goto LABEL_30;
          }
        }

        confidenceLevel = [rateCopy confidenceLevel];
        if (confidenceLevel == 2)
        {
          confidenceLevel = [rateCopy streamingThrottleStatus];
          if (confidenceLevel != 2)
          {
            v28 = sub_10000132C(confidenceLevel);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              uuid2 = [rateCopy uuid];
              v32 = 138543618;
              v33 = uuid2;
              v34 = 1026;
              sourceType2 = [rateCopy sourceType];
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v32, 0x12u);
            }

            confidenceLevel = publisherBlockCopy[2](publisherBlockCopy, rateCopy);
          }
        }

        v17 = sub_10000132C(confidenceLevel);
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
LABEL_29:
          v25 = clientBlockCopy;
LABEL_30:

          v25[2](v25, rateCopy);
          goto LABEL_31;
        }

LABEL_28:
        uuid3 = [rateCopy uuid];
        sourceType3 = [rateCopy sourceType];
        v32 = 138543618;
        v33 = uuid3;
        v34 = 1026;
        sourceType2 = sourceType3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v32, 0x12u);

        goto LABEL_29;
      }
    }

    v19 = sub_10000132C(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      hrContext = [rateCopy hrContext];
      arbitrationStatus2 = [rateCopy arbitrationStatus];
      uuid4 = [rateCopy uuid];
      v32 = 134218498;
      v33 = hrContext;
      v34 = 1024;
      sourceType2 = arbitrationStatus2;
      v36 = 2114;
      v37 = uuid4;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "ignoring hr in classifier with context : %ld and arbitration status : %d with uuid : %{public}@", &v32, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (!sourceType)
  {
    v19 = sub_10000132C(sourceType);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      uuid5 = [rateCopy uuid];
      sub_1000118E4(uuid5, &v32, v19);
    }

LABEL_21:

    goto LABEL_31;
  }

  if (sourceType == 3)
  {
    v14 = sub_10000132C(sourceType);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      uuid6 = [rateCopy uuid];
      v32 = 138543618;
      v33 = uuid6;
      v34 = 1026;
      sourceType2 = [rateCopy sourceType];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v32, 0x12u);
    }

    v16 = publisherBlockCopy[2](publisherBlockCopy, rateCopy);
    v17 = sub_10000132C(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_31:
}

+ (void)classifyArbitratedHeartRate:(id)rate publisherBlock:(id)block clientBlock:(id)clientBlock
{
  rateCopy = rate;
  blockCopy = block;
  clientBlockCopy = clientBlock;
  hrContext = [rateCopy hrContext];
  if (hrContext != 2 || (hrContext = [rateCopy arbitrationStatus], hrContext != 2))
  {
    v11 = sub_10000132C(hrContext);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      uuid = [rateCopy uuid];
      v20 = 138543874;
      v21 = uuid;
      v22 = 2050;
      hrContext2 = [rateCopy hrContext];
      v24 = 1026;
      arbitrationStatus = [rateCopy arbitrationStatus];
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "unexpected hr received with uuid : %{public}@ , context : %{public}ld , arbitrationStatus : %{public}d", &v20, 0x1Cu);
    }
  }

  confidenceLevel = [rateCopy confidenceLevel];
  if (confidenceLevel == 2)
  {
    confidenceLevel = [rateCopy streamingThrottleStatus];
    if (confidenceLevel != 2)
    {
      v13 = sub_10000132C(confidenceLevel);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        uuid2 = [rateCopy uuid];
        sourceType = [rateCopy sourceType];
        v20 = 138543618;
        v21 = uuid2;
        v22 = 1026;
        LODWORD(hrContext2) = sourceType;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v20, 0x12u);
      }

      confidenceLevel = blockCopy[2](blockCopy, rateCopy);
    }
  }

  v16 = sub_10000132C(confidenceLevel);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    uuid3 = [rateCopy uuid];
    sourceType2 = [rateCopy sourceType];
    v20 = 138543618;
    v21 = uuid3;
    v22 = 1026;
    LODWORD(hrContext2) = sourceType2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v20, 0x12u);
  }

  clientBlockCopy[2](clientBlockCopy, rateCopy);
}

@end