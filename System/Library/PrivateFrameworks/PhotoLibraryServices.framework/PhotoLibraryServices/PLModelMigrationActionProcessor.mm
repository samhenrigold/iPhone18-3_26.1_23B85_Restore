@interface PLModelMigrationActionProcessor
- (PLModelMigrationActionProcessor)initWithUUID:(id)d pathManager:(id)manager migrationActionType:(int64_t)type analyticsEventManager:(id)eventManager logger:(id)logger progressUnitCount:(unint64_t)count;
- (id)_generateActionMarker;
- (id)_generateActionMarkerBase;
- (id)_generateActionTagMarker;
- (id)_progressLogMessage;
- (id)_startLogEntryWithName:(id)name;
- (void)_initialLog;
- (void)_performActionWithName:(id)name ifRequired:(id)required recordTimedCoreAnalyticsEvent:(id)event coreAnalyticsEventKey:(id)key block:(id)block;
- (void)_stopLogEntryWithPerfCheck:(id)check;
- (void)dealloc;
@end

@implementation PLModelMigrationActionProcessor

- (void)_performActionWithName:(id)name ifRequired:(id)required recordTimedCoreAnalyticsEvent:(id)event coreAnalyticsEventKey:(id)key block:(id)block
{
  v94 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  eventCopy = event;
  keyCopy = key;
  blockCopy = block;
  if (required.var0)
  {
    if ([(PLModelMigrationActionProcessor *)self isSuccess])
    {
      v16 = [(PLModelMigrationActionProcessor *)self _startLogEntryWithName:nameCopy];
      [(PLModelMigrationActionProcessor *)self setSuccess:blockCopy[2](blockCopy)];
      if (![(PLModelMigrationActionProcessor *)self isSuccess])
      {
        v17 = PLMigrationGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

        if (v18)
        {
          if (self->_logger)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            memset(buf, 0, sizeof(buf));
            v19 = PLMigrationGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
            v22 = _generateActionTagMarker;
            v23 = self->_type - 1;
            if (v23 > 5)
            {
              v24 = @"pre schema";
            }

            else
            {
              v24 = off_1E7569918[v23];
            }

            v57 = 138543618;
            v58 = _generateActionTagMarker;
            v59 = 2114;
            v60 = v24;
            v43 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v19, 16, "%{public}@ %{public}@ Action: failed!", &v57, 22);

            [(PLFileBackedLogger *)self->_logger logWithMessage:v43 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:210, 16];
            if (v43 != buf)
            {
              free(v43);
            }
          }

          else
          {
            v38 = PLMigrationGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
              v40 = _generateActionTagMarker2;
              v41 = self->_type - 1;
              if (v41 > 5)
              {
                v42 = @"pre schema";
              }

              else
              {
                v42 = off_1E7569918[v41];
              }

              *buf = 138543618;
              *&buf[4] = _generateActionTagMarker2;
              *&buf[12] = 2114;
              *&buf[14] = v42;
              _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Action: failed!", buf, 0x16u);
            }
          }
        }
      }

      selfCopy = self;
      if (![(PLModelMigrationActionProcessor *)selfCopy ignoreProgressUpdates])
      {
        progress = [(PLModelMigrationActionProcessor *)selfCopy progress];
        v46 = progress;
        if (progress)
        {
          completedUnitCount = [progress completedUnitCount];
          if (completedUnitCount >= [v46 totalUnitCount])
          {
            v48 = PLMigrationGetLog();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

            if (v49)
            {
              logger = [(PLModelMigrationActionProcessor *)selfCopy logger];

              if (logger)
              {
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                memset(buf, 0, sizeof(buf));
                v51 = PLMigrationGetLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = 3;
                }

                else
                {
                  v52 = 2;
                }

                v57 = 138543362;
                v58 = v46;
                LODWORD(v56) = 12;
                v53 = _os_log_send_and_compose_impl(v52, 0, buf, 512, &dword_19BF1F000, v51, 0, "Progress report exceeded totalUnitCount: %{public}@", &v57, v56);

                logger2 = [(PLModelMigrationActionProcessor *)selfCopy logger];
                [logger2 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:{86, 0}];

                if (v53 != buf)
                {
                  free(v53);
                }
              }

              else
              {
                v55 = PLMigrationGetLog();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v46;
                  _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Progress report exceeded totalUnitCount: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            [v46 setCompletedUnitCount:{objc_msgSend(v46, "completedUnitCount") + 1}];
          }
        }
      }

      [(PLModelMigrationActionProcessor *)selfCopy _stopLogEntryWithPerfCheck:v16];
      if (eventCopy && keyCopy)
      {
        [(PLCoreAnalyticsEventManager *)selfCopy->_analyticsEventManager stopRecordingTimedEventWithToken:keyCopy forKey:eventCopy onEventWithName:selfCopy->_token];
      }

LABEL_53:

      goto LABEL_54;
    }

    v25 = PLMigrationGetLog();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      if (!self->_logger)
      {
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          _generateActionTagMarker3 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
          v34 = _generateActionTagMarker3;
          v35 = self->_type - 1;
          if (v35 > 5)
          {
            v36 = @"pre schema";
          }

          else
          {
            v36 = off_1E7569918[v35];
          }

          *buf = 138543874;
          *&buf[4] = _generateActionTagMarker3;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          *&buf[22] = 2114;
          *&buf[24] = nameCopy;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Action: skipping due to previous migration action failure: %{public}@", buf, 0x20u);
        }

        goto LABEL_53;
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      _generateActionTagMarker4 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
      v30 = _generateActionTagMarker4;
      v31 = self->_type - 1;
      if (v31 > 5)
      {
        v32 = @"pre schema";
      }

      else
      {
        v32 = off_1E7569918[v31];
      }

      v57 = 138543874;
      v58 = _generateActionTagMarker4;
      v59 = 2114;
      v60 = v32;
      v61 = 2114;
      v62 = nameCopy;
      v37 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_19BF1F000, v27, 16, "%{public}@ %{public}@ Action: skipping due to previous migration action failure: %{public}@", &v57, 32);

      [(PLFileBackedLogger *)self->_logger logWithMessage:v37 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:219, 16];
      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

LABEL_54:
  ++self->_tag;
}

- (id)_progressLogMessage
{
  progress = self->_progress;
  if (progress)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", action progress:(%.2lf %%)", -[NSProgress completedUnitCount](progress, "completedUnitCount") * 100.0 / -[NSProgress totalUnitCount](self->_progress, "totalUnitCount")];
  }

  else
  {
    v4 = &stru_1F0F06D80;
  }

  return v4;
}

- (void)_stopLogEntryWithPerfCheck:(id)check
{
  v64 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  token = self->_token;
  v6 = CFAbsoluteTimeGetCurrent() - token;
  if (token <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  stop = [checkCopy stop];
  v9 = PLMigrationGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (!v10)
  {
    goto LABEL_24;
  }

  if (!self->_logger)
  {
    v17 = PLMigrationGetLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      goto LABEL_24;
    }

    _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
    v19 = self->_type - 1;
    if (v19 > 5)
    {
      v20 = @"pre schema";
      if (checkCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = off_1E7569918[v19];
      if (checkCopy)
      {
LABEL_15:
        v21 = [checkCopy perfCheckLogStringWithPerfCheckInfo:stop];
LABEL_22:
        _progressLogMessage = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
        *buf = 138544386;
        *&buf[4] = _generateActionTagMarker;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        *&buf[24] = v7;
        *&buf[32] = 2114;
        *&buf[34] = v21;
        *&buf[42] = 2114;
        *&buf[44] = _progressLogMessage;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished %{public}@ action: %.2lfs%{public}@%{public}@", buf, 0x34u);

        goto LABEL_23;
      }
    }

    v21 = @", <perf check disabled>";
    goto LABEL_22;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = PLMigrationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
  v14 = self->_type - 1;
  if (v14 > 5)
  {
    v15 = @"pre schema";
    if (checkCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = off_1E7569918[v14];
    if (checkCopy)
    {
LABEL_11:
      v16 = [checkCopy perfCheckLogStringWithPerfCheckInfo:stop];
      goto LABEL_18;
    }
  }

  v16 = @", <perf check disabled>";
LABEL_18:
  _progressLogMessage2 = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
  v25 = 138544386;
  v26 = _generateActionTagMarker2;
  v27 = 2114;
  v28 = v15;
  v29 = 2048;
  v30 = v7;
  v31 = 2114;
  v32 = v16;
  v33 = 2114;
  v34 = _progressLogMessage2;
  v23 = _os_log_send_and_compose_impl(v12, 0, buf, 512, &dword_19BF1F000, v11, 0, "%{public}@ Finished %{public}@ action: %.2lfs%{public}@%{public}@", &v25, 52);

  [(PLFileBackedLogger *)self->_logger logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:183, 0];
  if (v23 != buf)
  {
    free(v23);
  }

LABEL_24:
}

- (id)_startLogEntryWithName:(id)name
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  self->_token = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (self->_logger)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      memset(buf, 0, sizeof(buf));
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      _generateActionTagMarker = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
      v11 = self->_type - 1;
      if (v11 > 5)
      {
        v12 = @"pre schema";
      }

      else
      {
        v12 = off_1E7569918[v11];
      }

      qos_class_self();
      v17 = PLShortStringFromQoSClass();
      v21 = 138544130;
      v22 = _generateActionTagMarker;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = nameCopy;
      v27 = 2114;
      v28 = v17;
      v18 = _os_log_send_and_compose_impl(v9, 0, buf, 512, &dword_19BF1F000, v8, 0, "%{public}@ Start of %{public}@ action: %{public}@ at %{public}@ QoS", &v21, 42);

      [(PLFileBackedLogger *)self->_logger logWithMessage:v18 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:176, 0];
      if (v18 != buf)
      {
        free(v18);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _generateActionTagMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionTagMarker];
        v15 = self->_type - 1;
        if (v15 > 5)
        {
          v16 = @"pre schema";
        }

        else
        {
          v16 = off_1E7569918[v15];
        }

        qos_class_self();
        v19 = PLShortStringFromQoSClass();
        *buf = 138544130;
        *&buf[4] = _generateActionTagMarker2;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        *&buf[22] = 2114;
        *&buf[24] = nameCopy;
        LOWORD(v30) = 2114;
        *(&v30 + 2) = v19;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Start of %{public}@ action: %{public}@ at %{public}@ QoS", buf, 0x2Au);
      }
    }
  }

  return start;
}

- (id)_generateActionTagMarker
{
  v3 = MEMORY[0x1E696AEC0];
  _generateActionMarkerBase = [(PLModelMigrationActionProcessor *)self _generateActionMarkerBase];
  v5 = [v3 stringWithFormat:@"tag:%@:%04d", _generateActionMarkerBase, self->_tag];

  return v5;
}

- (id)_generateActionMarker
{
  v2 = MEMORY[0x1E696AEC0];
  _generateActionMarkerBase = [(PLModelMigrationActionProcessor *)self _generateActionMarkerBase];
  v4 = [v2 stringWithFormat:@"tag:%@     ", _generateActionMarkerBase];

  return v4;
}

- (id)_generateActionMarkerBase
{
  v2 = MEMORY[0x1E696AEC0];
  uuidTruncated = self->_uuidTruncated;
  v4 = self->_type - 1;
  if (v4 > 5)
  {
    v5 = @"ps";
  }

  else
  {
    v5 = off_1E75698E8[v4];
  }

  v6 = v5;
  v7 = [v2 stringWithFormat:@"%@:%@", uuidTruncated, v6];

  return v7;
}

- (void)dealloc
{
  v72 = *MEMORY[0x1E69E9840];
  stop = [(PLTimedPerfCheck *)self->_lifetimePerfCheck stop];
  [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (self->_logger)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      memset(buf, 0, sizeof(buf));
      v6 = PLMigrationGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      _generateActionMarker = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
      type = self->_type;
      if ((type - 1) > 5)
      {
        v10 = @"pre schema";
      }

      else
      {
        v10 = off_1E7569918[type - 1];
      }

      v15 = PLStringFromPLMigrationActionTypeShort(type);
      lifetimeToken = self->_lifetimeToken;
      v17 = CFAbsoluteTimeGetCurrent() - lifetimeToken;
      if (lifetimeToken <= 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v17;
      }

      lifetimePerfCheck = self->_lifetimePerfCheck;
      if (lifetimePerfCheck)
      {
        v20 = [(PLTimedPerfCheck *)lifetimePerfCheck perfCheckLogStringWithPerfCheckInfo:stop];
      }

      else
      {
        v20 = @", <perf check disabled>";
      }

      _progressLogMessage = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
      v31 = 138544642;
      v32 = _generateActionMarker;
      v33 = 2114;
      v34 = v10;
      v35 = 2114;
      v36 = v15;
      v37 = 2048;
      v38 = v18;
      v39 = 2114;
      v40 = v20;
      v41 = 2114;
      v42 = _progressLogMessage;
      v22 = _os_log_send_and_compose_impl(v7, 0, buf, 512, &dword_19BF1F000, v6, 0, "%{public}@ Completed %{public}@ actions (type: %{public}@) %.2lfs%{public}@%{public}@", &v31, 62);

      [(PLFileBackedLogger *)self->_logger logWithMessage:v22 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:151, 0];
      if (v22 != buf)
      {
        free(v22);
      }
    }

    else
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        _generateActionMarker2 = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
        v13 = self->_type;
        if ((v13 - 1) > 5)
        {
          v14 = @"pre schema";
        }

        else
        {
          v14 = off_1E7569918[v13 - 1];
        }

        v23 = PLStringFromPLMigrationActionTypeShort(v13);
        v24 = self->_lifetimeToken;
        v25 = CFAbsoluteTimeGetCurrent() - v24;
        if (v24 <= 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v25;
        }

        v27 = self->_lifetimePerfCheck;
        if (v27)
        {
          v28 = [(PLTimedPerfCheck *)v27 perfCheckLogStringWithPerfCheckInfo:stop];
        }

        else
        {
          v28 = @", <perf check disabled>";
        }

        _progressLogMessage2 = [(PLModelMigrationActionProcessor *)self _progressLogMessage];
        *buf = 138544642;
        *&buf[4] = _generateActionMarker2;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        *&buf[24] = v23;
        *&buf[32] = 2048;
        *&buf[34] = v26;
        *&buf[42] = 2114;
        *&buf[44] = v28;
        *&buf[52] = 2114;
        *&buf[54] = _progressLogMessage2;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed %{public}@ actions (type: %{public}@) %.2lfs%{public}@%{public}@", buf, 0x3Eu);
      }
    }
  }

  if (self->_loggerCloseRequired)
  {
    [(PLFileBackedLogger *)self->_logger close];
  }

  v30.receiver = self;
  v30.super_class = PLModelMigrationActionProcessor;
  [(PLModelMigrationActionProcessor *)&v30 dealloc];
}

- (void)_initialLog
{
  v97 = *MEMORY[0x1E69E9840];
  self->_lifetimeToken = CFAbsoluteTimeGetCurrent();
  start = [MEMORY[0x1E69BF318] start];
  lifetimePerfCheck = self->_lifetimePerfCheck;
  self->_lifetimePerfCheck = start;

  _generateActionMarker = [(PLModelMigrationActionProcessor *)self _generateActionMarker];
  v6 = PLMigrationGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (self->_logger)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v72 = 0u;
      memset(v73, 0, sizeof(v73));
      memset(buf, 0, sizeof(buf));
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = self->_type - 1;
      if (v10 > 5)
      {
        v11 = @"pre schema";
      }

      else
      {
        v11 = off_1E7569918[v10];
      }

      currentBuildVersionString = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
      v16 = PLStringFromPLMigrationActionTypeShort(self->_type);
      qos_class_self();
      v17 = PLShortStringFromQoSClass();
      libraryURL = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
      lastPathComponent = [libraryURL lastPathComponent];
      v70.st_dev = 138544642;
      *&v70.st_mode = _generateActionMarker;
      WORD2(v70.st_ino) = 2114;
      *(&v70.st_ino + 6) = v11;
      HIWORD(v70.st_gid) = 2114;
      *&v70.st_rdev = currentBuildVersionString;
      LOWORD(v70.st_atimespec.tv_sec) = 2114;
      *(&v70.st_atimespec.tv_sec + 2) = v16;
      WORD1(v70.st_atimespec.tv_nsec) = 2114;
      *(&v70.st_atimespec.tv_nsec + 4) = v17;
      WORD2(v70.st_mtimespec.tv_sec) = 2114;
      *(&v70.st_mtimespec.tv_sec + 6) = lastPathComponent;
      v20 = _os_log_send_and_compose_impl(v9, 0, buf, 512, &dword_19BF1F000, v8, 0, "%{public}@ Start of %{public}@ actions (OS Build: %{public}@) (type: %{public}@) (QoS: %{public}@): %{public}@", &v70, 62);

      [(PLFileBackedLogger *)self->_logger logWithMessage:v20 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:136, 0];
      if (v20 != buf)
      {
        free(v20);
      }
    }

    else
    {
      v12 = PLMigrationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_type - 1;
        if (v13 > 5)
        {
          v14 = @"pre schema";
        }

        else
        {
          v14 = off_1E7569918[v13];
        }

        currentBuildVersionString2 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
        v22 = PLStringFromPLMigrationActionTypeShort(self->_type);
        qos_class_self();
        v23 = PLShortStringFromQoSClass();
        libraryURL2 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
        lastPathComponent2 = [libraryURL2 lastPathComponent];
        *buf = 138544642;
        *&buf[4] = _generateActionMarker;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        *&buf[24] = currentBuildVersionString2;
        *&buf[32] = 2114;
        *&buf[34] = v22;
        *&buf[42] = 2114;
        *&buf[44] = v23;
        *&buf[52] = 2114;
        *&buf[54] = lastPathComponent2;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Start of %{public}@ actions (OS Build: %{public}@) (type: %{public}@) (QoS: %{public}@): %{public}@", buf, 0x3Eu);
      }
    }
  }

  memset(&v70, 0, sizeof(v70));
  if (self->_type == 1)
  {
    libraryURL3 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
    v27 = stat([libraryURL3 fileSystemRepresentation], &v70);

    if (!v27)
    {
      __bp[11] = 0;
      strcpy(__bp, "          ");
      strmode(v70.st_mode, __bp);
      __bp[10] = 0;
      v28 = PLMigrationGetLog();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (v29)
      {
        if (self->_logger)
        {
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v72 = 0u;
          memset(v73, 0, sizeof(v73));
          memset(buf, 0, sizeof(buf));
          v30 = PLMigrationGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          v35 = 138547458;
          v36 = _generateActionMarker;
          v37 = 1024;
          st_dev = v70.st_dev;
          v39 = 2048;
          st_ino = v70.st_ino;
          v41 = 1024;
          st_mode = v70.st_mode;
          v43 = 2080;
          v44 = __bp;
          v45 = 1024;
          st_nlink = v70.st_nlink;
          v47 = 1024;
          st_uid = v70.st_uid;
          v49 = 1024;
          st_gid = v70.st_gid;
          v51 = 1024;
          st_rdev = v70.st_rdev;
          v53 = 2048;
          st_size = v70.st_size;
          v55 = 2048;
          tv_sec = v70.st_atimespec.tv_sec;
          v57 = 2048;
          v58 = v70.st_mtimespec.tv_sec;
          v59 = 2048;
          v60 = v70.st_ctimespec.tv_sec;
          v61 = 2048;
          v62 = v70.st_birthtimespec.tv_sec;
          v63 = 1024;
          st_blksize = v70.st_blksize;
          v65 = 2048;
          st_blocks = v70.st_blocks;
          v67 = 1024;
          st_flags = v70.st_flags;
          LODWORD(v34) = 140;
          v32 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 0, "%{public}@ stat: st_dev=%d st_ino=%llu st_mode=%d (%s) st_nlink=%d st_uid=%d st_gid=%d st_rdev=%d st_size=%lld st_atime=%ld st_mtime=%ld st_ctime=%ld st_birthtime=%ld st_blksize=%d st_block=%lld st_flags=%d", &v35, v34);

          [(PLFileBackedLogger *)self->_logger logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionProcessor.m" type:144, 0];
          if (v32 != buf)
          {
            free(v32);
          }
        }

        else
        {
          v33 = PLMigrationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138547458;
            *&buf[4] = _generateActionMarker;
            *&buf[12] = 1024;
            *&buf[14] = v70.st_dev;
            *&buf[18] = 2048;
            *&buf[20] = v70.st_ino;
            *&buf[28] = 1024;
            *&buf[30] = v70.st_mode;
            *&buf[34] = 2080;
            *&buf[36] = __bp;
            *&buf[44] = 1024;
            *&buf[46] = v70.st_nlink;
            *&buf[50] = 1024;
            *&buf[52] = v70.st_uid;
            *&buf[56] = 1024;
            *&buf[58] = v70.st_gid;
            *&buf[62] = 1024;
            LODWORD(v72) = v70.st_rdev;
            WORD2(v72) = 2048;
            *(&v72 + 6) = v70.st_size;
            HIWORD(v72) = 2048;
            *&v73[0] = v70.st_atimespec.tv_sec;
            WORD4(v73[0]) = 2048;
            *(v73 + 10) = v70.st_mtimespec.tv_sec;
            WORD1(v73[1]) = 2048;
            *(&v73[1] + 4) = v70.st_ctimespec.tv_sec;
            WORD6(v73[1]) = 2048;
            *(&v73[1] + 14) = v70.st_birthtimespec.tv_sec;
            WORD3(v73[2]) = 1024;
            DWORD2(v73[2]) = v70.st_blksize;
            WORD6(v73[2]) = 2048;
            *(&v73[2] + 14) = v70.st_blocks;
            WORD3(v73[3]) = 1024;
            DWORD2(v73[3]) = v70.st_flags;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ stat: st_dev=%d st_ino=%llu st_mode=%d (%s) st_nlink=%d st_uid=%d st_gid=%d st_rdev=%d st_size=%lld st_atime=%ld st_mtime=%ld st_ctime=%ld st_birthtime=%ld st_blksize=%d st_block=%lld st_flags=%d", buf, 0x8Cu);
          }
        }
      }
    }
  }
}

- (PLModelMigrationActionProcessor)initWithUUID:(id)d pathManager:(id)manager migrationActionType:(int64_t)type analyticsEventManager:(id)eventManager logger:(id)logger progressUnitCount:(unint64_t)count
{
  dCopy = d;
  managerCopy = manager;
  eventManagerCopy = eventManager;
  loggerCopy = logger;
  v30.receiver = self;
  v30.super_class = PLModelMigrationActionProcessor;
  v19 = [(PLModelMigrationActionProcessor *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->_success = 1;
    objc_storeStrong(&v19->_uuid, d);
    v21 = [dCopy substringToIndex:8];
    v22 = [v21 copy];
    uuidTruncated = v20->_uuidTruncated;
    v20->_uuidTruncated = v22;

    objc_storeStrong(&v20->_pathManager, manager);
    v20->_type = type;
    objc_storeStrong(&v20->_analyticsEventManager, eventManager);
    v20->_tag = 1;
    v20->_pid = getpid();
    if (count)
    {
      v24 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:count];
    }

    else
    {
      v24 = 0;
    }

    progress = v20->_progress;
    v20->_progress = v24;

    lifetimePerfCheck = v20->_lifetimePerfCheck;
    v20->_lifetimePerfCheck = 0;

    v20->_loggerCloseRequired = loggerCopy == 0;
    if (loggerCopy)
    {
      v27 = loggerCopy;
    }

    else
    {
      v27 = [MEMORY[0x1E69BF210] setupWithLibraryIdentifier:0 type:1];
    }

    logger = v20->_logger;
    v20->_logger = v27;

    [(PLModelMigrationActionProcessor *)v20 _initialLog];
  }

  return v20;
}

@end