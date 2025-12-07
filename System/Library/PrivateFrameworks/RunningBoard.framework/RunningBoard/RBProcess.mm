@interface RBProcess
+ (id)processStateApplicationQueue;
+ (id)testProcessWithPid:(int)pid;
+ (id)testProcessWithPid:(int)pid andIdentity:(id)identity;
+ (id)testProcessWithPid:(int)pid identity:(id)identity launchdProps:(id)props andBundleProps:(id)bundleProps;
+ (void)_runOnDiagnosticQueue:(uint64_t)queue;
- (BOOL)_sendSignal:(int)signal;
- (BOOL)isContainerized;
- (BOOL)isTestApp;
- (BOOL)terminateWithContext:(id)context;
- (RBJetsamProperties)memoryLimits;
- (RBProcess)init;
- (RBSProcessExitContext)lastExitContext;
- (double)processStartTime;
- (id)_allowedLockedFilePaths;
- (id)_initWithInstance:(void *)instance auditToken:(void *)token bundleProperties:(void *)properties jetsamProperties:(void *)jetsamProperties initialState:(void *)state hostProcess:(void *)process properties:(char)a9 systemPreventsIdleSleep:(char)self0 cache:;
- (id)_lock_lockedFilePathsIgnoring:(uint64_t)ignoring;
- (id)createRBSTarget;
- (uint64_t)_generateStackshotWithDescription:(int)description domain:(uint64_t)domain code:(void *)code additionalPayload:;
- (uint64_t)_generateTailspin;
- (uint64_t)_lock_terminateWithContext:(uint64_t)context;
- (uint64_t)_memoryStatusControl:(uint64_t)control flags:;
- (void)_applyJetsamLenientModeState:(uint64_t)state;
- (void)_applyState:(id)state;
- (void)_generateTailspin;
- (void)_lock_applyCPULimits;
- (void)_lock_applyCarPlayMode;
- (void)_lock_applyCurrentStateIfPossible;
- (void)_lock_applyGPU;
- (void)_lock_applyJetsamLenientMode;
- (void)_lock_applyJetsamPriority;
- (void)_lock_applyMemoryLimits;
- (void)_lock_applyRole;
- (void)_lock_applySuspendState;
- (void)_lock_disableCPULimits;
- (void)_lock_logVisibility;
- (void)_lock_restoreCPULimitDefaults;
- (void)_lock_resume;
- (void)_lock_resumeCPUMonitoring;
- (void)_lock_setCPULimits:(uint64_t)limits violationPolicy:(unsigned int *)policy;
- (void)_lock_shutdownSocketsAndLog:(uint64_t)log;
- (void)_lock_suspend;
- (void)_setMemoryStatusFlags:(uint64_t)flags;
- (void)_systemPreventIdleSleepStateDidChange:(BOOL)change;
- (void)collectDiagnostic:(unint64_t)diagnostic description:(id)description domain:(unsigned int)domain code:(unint64_t)code additionalPayload:(id)payload completion:(id)completion;
- (void)invalidate;
- (void)invokeHandlerOnProcessDeath:(id)death onQueue:(id)queue;
- (void)memoryLimits;
- (void)processStartTime;
- (void)setAuditToken:(id)token;
- (void)setLastExitContext:(id)context;
- (void)setLaunchAssertionIdentifier:(id)identifier;
- (void)setTerminating:(BOOL)terminating;
@end

@implementation RBProcess

- (BOOL)isTestApp
{
  isTestApp = self->_isTestApp;
  if (!isTestApp)
  {
    if (os_variant_has_internal_content())
    {
      [(RBProcess *)self rbs_pid];
      v4 = RBSExecutablePathForPID();
      if ([v4 hasPrefix:@"/AppleInternal/Tests/RunningBoard/"])
      {
        v5 = 1;
      }

      else
      {
        v5 = -1;
      }

      self->_isTestApp = v5;

      isTestApp = self->_isTestApp;
    }

    else
    {
      isTestApp = -1;
      self->_isTestApp = -1;
    }
  }

  return isTestApp == 1;
}

- (void)_lock_applyRole
{
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if ((v3 & 2) == 0 && ([*(v1 + 64) forceRoleManage] & 1) == 0)
    {
      v24 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v24))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_1();
LABEL_19:
        _os_log_impl(v25, v26, v27, v28, v29, v30);
      }

LABEL_24:

      return;
    }

    v4 = *(v1 + 56);
    if (v4)
    {
      role = [v4 role];
    }

    else
    {
      role = 1;
    }

    role2 = [*(v1 + 64) role];
    v6 = role2;
    if (!*(v1 + 56) || role != role2)
    {
      v7 = RBSDarwinRoleFromRBSRole();
      if (!setpriority(6, *(v1 + 8), v7))
      {
        v31 = rbs_ttl_log();
        if (OUTLINED_FUNCTION_21(v31))
        {
          v32 = NSStringFromRBSRole();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_5_0();
          _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
        }

        goto LABEL_24;
      }

      __error();
      OUTLINED_FUNCTION_11();
      if (v8)
      {
        return;
      }

      v9 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v9))
      {
        __error();
        v10 = NSStringFromRBSRole();
        v11 = __error();
        strerror(*v11);
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_5_0();
        _os_log_impl(v12, v13, v14, v15, v16, 0x26u);
      }

      if (setpriority(4, *(v1 + 8), (v6 < 3) << 12))
      {
        __error();
        OUTLINED_FUNCTION_11();
        if (v8)
        {
          return;
        }

        v17 = rbs_process_log();
        if (OUTLINED_FUNCTION_26(v17))
        {
          __error();
          v18 = __error();
          strerror(*v18);
          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10();
          _os_log_error_impl(v19, v20, v21, v22, v23, 0x26u);
        }

        goto LABEL_24;
      }

      v38 = rbs_ttl_log();
      if (OUTLINED_FUNCTION_21(v38))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_5_0();
        v30 = 22;
        goto LABEL_19;
      }

      goto LABEL_24;
    }
  }
}

- (void)_lock_applyGPU
{
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if ((v3 & 4) != 0)
    {
      gpuRole = [*(v1 + 64) gpuRole];
      v12 = *(v1 + 56);
      if (!v12 || [v12 gpuRole] != gpuRole)
      {
        v13 = +[RBXNUWrapper sharedWrapper];
        [v13 setGPURole:gpuRole forPid:*(v1 + 8)];
      }
    }

    else
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }
    }
  }
}

- (void)_lock_applyCurrentStateIfPossible
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_assert_owner((self + 48));
    if (*(self + 136) == 1)
    {
      v2 = rbs_process_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_6();
        _os_log_debug_impl(&dword_262485000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ ignoring process state change because process is terminating", v17, 0xCu);
      }

LABEL_5:

      return;
    }

    v3 = *(self + 56);
    if (v3 != *(self + 64))
    {
      if (([v3 isEqualToProcessStateIgnoringInheritances:?] & 1) == 0)
      {
        v4 = rbs_sp_state_log();
        v5 = os_signpost_id_generate(v4);

        v6 = rbs_sp_assertion_log();
        v7 = v6;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
        {
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_18();
          _os_signpost_emit_with_name_impl(v8, v9, v10, v5, v11, v12, v13, 0xCu);
        }

        [(RBProcess *)self _lock_applyJetsamPriority];
        [(RBProcess *)self _lock_applySuspendState];
        [(RBProcess *)self _lock_applyRole];
        [(RBProcess *)self _lock_applyJetsamLenientMode];
        [(RBProcess *)self _lock_applyGPU];
        [(RBProcess *)self _lock_applyCPULimits];
        [(RBProcess *)self _lock_applyMemoryLimits];
        [(RBProcess *)self _lock_applyCarPlayMode];
        v14 = rbs_sp_assertion_log();
        v15 = v14;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *v17 = 0;
          _os_signpost_emit_with_name_impl(&dword_262485000, v15, OS_SIGNPOST_INTERVAL_END, v5, "StateApplication", "", v17, 2u);
        }
      }

      [(RBProcess *)self _lock_logVisibility];
      v16 = *(self + 64);
      v2 = *(self + 56);
      *(self + 56) = v16;
      goto LABEL_5;
    }
  }
}

+ (id)processStateApplicationQueue
{
  if (processStateApplicationQueue_onceToken != -1)
  {
    +[RBProcess processStateApplicationQueue];
  }

  v3 = processStateApplicationQueue_queue;

  return v3;
}

- (void)_lock_resume
{
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if ((v3 & 1) == 0)
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }

      goto LABEL_20;
    }

    v11 = rbs_ttl_log();
    if (OUTLINED_FUNCTION_21(v11))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
    }

    RBPowerlogEvent(4, *(v1 + 16), 0xFFFFFFFFLL, *(v1 + 8));
    if (MEMORY[0x2822399B8] && (*(v1 + 77) & 1) != 0 && MEMORY[0x266729FD0](*(v1 + 8)) == 5)
    {
      v18 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v18))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_10();
        _os_log_error_impl(v30, v31, v32, v33, v34, 0xCu);
      }
    }

    *(v1 + 137) = 0;
    if (!pid_resume())
    {
      if (!notify_resume_pid())
      {
        return;
      }

      v21 = rbs_process_log();
      if (!OUTLINED_FUNCTION_26(v21))
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10();
      v29 = 18;
      goto LABEL_26;
    }

    __error();
    OUTLINED_FUNCTION_11();
    if (v19)
    {
      return;
    }

    if (*(v1 + 56))
    {
      v20 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v20))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (*__error() != 1)
    {
      v22 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v22))
      {
LABEL_24:
        __error();
        v23 = __error();
        strerror(*v23);
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10();
        v29 = 28;
LABEL_26:
        _os_log_error_impl(v24, v25, v26, v27, v28, v29);
      }

LABEL_20:
    }
  }
}

- (void)_lock_applyJetsamPriority
{
  v28 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ((*(self + 109) & 8) == 0)
    {
      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v3))
      {
        OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_8();
LABEL_13:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    explicitJetsamBand = [*(self + 64) explicitJetsamBand];
    if (!*(self + 56) || *(self + 72) != explicitJetsamBand)
    {
      *(self + 72) = explicitJetsamBand;
      v19 = explicitJetsamBand;
      if (memorystatus_control())
      {
        __error();
        OUTLINED_FUNCTION_11();
        if (v11)
        {
          return;
        }

        v12 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v12))
        {
          v13 = *(self + 32);
          v14 = __error();
          v15 = strerror(*v14);
          *buf = 138544130;
          v21 = v13;
          v22 = 1024;
          v23 = v19;
          v24 = 2048;
          v25 = 0;
          v26 = 2080;
          v27 = v15;
          _os_log_error_impl(&dword_262485000, v1, OS_LOG_TYPE_ERROR, "%{public}@ Error setting jetsam priority to %d [%#llx]: %s", buf, 0x26u);
        }

        goto LABEL_14;
      }

      v16 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v16))
      {
        OUTLINED_FUNCTION_33();
        v22 = 1024;
        v23 = v17;
        v24 = 2048;
        v25 = v18;
        v26 = 1024;
        LODWORD(v27) = 1;
        v4 = &dword_262485000;
        v7 = "%{public}@ Set jetsam priority to %d [%#llx] flag[%d]";
        v8 = buf;
        v5 = v1;
        v6 = OS_LOG_TYPE_DEFAULT;
        v9 = 34;
        goto LABEL_13;
      }

LABEL_14:
    }
  }
}

- (void)_lock_applySuspendState
{
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if (v3)
    {
      v11 = *(v1 + 56);
      if (v11)
      {
        preventSuspend = [v11 preventSuspend];
      }

      else
      {
        preventSuspend = 0;
      }

      preventSuspend2 = [*(v1 + 64) preventSuspend];
      if (!*(v1 + 56) || preventSuspend != preventSuspend2)
      {
        if (preventSuspend2)
        {

          [(RBProcess *)v1 _lock_resume];
        }

        else
        {

          [(RBProcess *)v1 _lock_suspend];
        }
      }
    }

    else
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }
    }
  }
}

- (RBJetsamProperties)memoryLimits
{
  os_unfair_lock_lock(&self->_dataLock);
  if (!self->_memoryLimits)
  {
    if ((self->_manageFlags & 8) != 0)
    {
      v5 = rbs_assertion_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(RBProcess *)self memoryLimits];
      }
    }

    else
    {
      v3 = objc_opt_new();
      memoryLimits = self->_memoryLimits;
      self->_memoryLimits = v3;
    }
  }

  os_unfair_lock_unlock(&self->_dataLock);
  v6 = self->_memoryLimits;

  return v6;
}

- (void)_lock_applyJetsamLenientMode
{
  if (result)
  {
    effectiveJetsamLenientMode = [result[7] effectiveJetsamLenientMode];
    effectiveJetsamLenientMode2 = [result[8] effectiveJetsamLenientMode];
    if (effectiveJetsamLenientMode != effectiveJetsamLenientMode2)
    {

      [(RBProcess *)result _applyJetsamLenientModeState:effectiveJetsamLenientMode2];
    }
  }
}

- (void)_lock_applyCPULimits
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if ((v2 & 0x10) != 0)
    {
      effectiveMaxCPUPercentage = [*(v1 + 56) effectiveMaxCPUPercentage];
      effectiveMaxCPUDuration = [*(v1 + 56) effectiveMaxCPUDuration];
      effectiveMinCPUPercentage = [*(v1 + 56) effectiveMinCPUPercentage];
      effectiveMinCPUDuration = [*(v1 + 56) effectiveMinCPUDuration];
      if (effectiveMinCPUDuration <= effectiveMaxCPUDuration)
      {
        v8 = effectiveMaxCPUDuration;
      }

      else
      {
        v8 = effectiveMinCPUDuration;
      }

      if (effectiveMinCPUPercentage <= effectiveMaxCPUPercentage)
      {
        v9 = effectiveMaxCPUPercentage;
      }

      else
      {
        v9 = effectiveMinCPUPercentage;
      }

      effectiveMaxCPUPercentage2 = [*(v1 + 64) effectiveMaxCPUPercentage];
      effectiveMaxCPUDuration2 = [*(v1 + 64) effectiveMaxCPUDuration];
      LODWORD(v12) = [*(v1 + 64) effectiveMinCPUPercentage];
      effectiveMinCPUDuration2 = [*(v1 + 64) effectiveMinCPUDuration];
      if (effectiveMinCPUDuration2 <= effectiveMaxCPUDuration2)
      {
        v14 = effectiveMaxCPUDuration2;
      }

      else
      {
        v14 = effectiveMinCPUDuration2;
      }

      if (v12 <= effectiveMaxCPUPercentage2)
      {
        v12 = effectiveMaxCPUPercentage2;
      }

      else
      {
        v12 = v12;
      }

      effectiveMaxCPUUsageViolationPolicy = [*(v1 + 56) effectiveMaxCPUUsageViolationPolicy];
      effectiveMaxCPUUsageViolationPolicy2 = [*(v1 + 64) effectiveMaxCPUUsageViolationPolicy];
      v18 = v9 < 1 || v8 < 1;
      v19 = v12 < 1 || v14 < 1;
      v20 = v19;
      if (!v19)
      {
        v18 = 0;
      }

      if (v9 == v12 && v8 == v14 && effectiveMaxCPUUsageViolationPolicy == effectiveMaxCPUUsageViolationPolicy2)
      {
        v18 = 1;
      }

      if (!v18 || *(v1 + 56) == 0)
      {
        [(RBProcess *)v1 _lock_disableCPULimits];
        if (v20)
        {
          [(RBProcess *)v1 _lock_restoreCPULimitDefaults];
        }

        else
        {
          [RBProcess _lock_setCPULimits:v1 violationPolicy:v24];
        }

        [(RBProcess *)v1 _lock_resumeCPUMonitoring];
      }
    }

    else
    {
      v3 = rbs_process_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_6();
        _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "%{public}@ Ignoring CPU limits because this process is not CPU limit managed", v24, 0xCu);
      }
    }
  }
}

- (void)_lock_disableCPULimits
{
  if (self)
  {
    *__error() = 0;
    v1 = proc_disable_cpumon();
    v2 = rbs_process_log();
    v3 = v2;
    if (v1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_0();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }
}

- (void)_lock_restoreCPULimitDefaults
{
  if (self)
  {
    *__error() = 0;
    if (proc_set_cpumon_defaults())
    {
      __error();
      OUTLINED_FUNCTION_11();
      if (v2)
      {
        return;
      }

      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_27(v3))
      {
        __error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
      }
    }

    else
    {
      v9 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v9))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }
    }
  }
}

- (void)_lock_resumeCPUMonitoring
{
  if (self)
  {
    *__error() = 0;
    if (proc_resume_cpumon())
    {
      __error();
      OUTLINED_FUNCTION_11();
      if (v2)
      {
        return;
      }

      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_27(v3))
      {
        __error();
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
      }
    }

    else
    {
      v9 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v9))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }
    }
  }
}

- (void)_lock_applyMemoryLimits
{
  v79 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ((*(self + 109) & 8) != 0)
    {
      if ([*(self + 88) isValid])
      {
        v68 = 0;
        v69 = 0;
        [self rbs_pid];
        memoryLimitCategory = [*(self + 64) memoryLimitCategory];
        memoryLimitStrength = [*(self + 64) memoryLimitStrength];
        if (memorystatus_control())
        {
          __error();
          OUTLINED_FUNCTION_11();
          if (!v5)
          {
            v6 = rbs_process_log();
            if (OUTLINED_FUNCTION_39(v6))
            {
              shortDescription = [self shortDescription];
              v36 = __error();
              v37 = strerror(*v36);
              __error();
              v70 = 138543874;
              v71 = shortDescription;
              v72 = 2080;
              *v73 = v37;
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_16();
              _os_log_error_impl(v38, v39, v40, v41, v42, v43);
            }
          }
        }

        memoryLimit = [*(self + 64) memoryLimit];
        if (![*(self + 64) memoryLimit])
        {
          memoryLimit = [*(self + 88) memoryLimitForCategory:memoryLimitCategory strength:&memoryLimitStrength];
        }

        if (![*(self + 64) preventBaseMemoryLimitReduction] || (objc_msgSend(*(self + 64), "memoryLimit") ? (memoryLimit = memoryLimit) : (memoryLimit = v69), memoryLimit >= *(self + 104)))
        {
          v21 = HIDWORD(v69) & 0xFFFFFFFE;
          if (memoryLimitStrength == 1)
          {
            ++v21;
          }

          v69 = __PAIR64__(v21, memoryLimit);
          v22 = HIDWORD(v68) & 0xFFFFFFFE;
          if (memoryLimitStrength == 1)
          {
            ++v22;
          }

          v68 = __PAIR64__(v22, memoryLimit);
          v23 = _os_feature_enabled_impl();
          if (v23)
          {
            if (memorystatus_control())
            {
              __error();
              OUTLINED_FUNCTION_11();
              if (!v5)
              {
                v24 = rbs_process_log();
                if (OUTLINED_FUNCTION_39(v24))
                {
                  shortDescription2 = [self shortDescription];
                  v59 = __error();
                  v60 = strerror(*v59);
                  __error();
                  v70 = 138543874;
                  v71 = shortDescription2;
                  v72 = 2080;
                  *v73 = v60;
                  OUTLINED_FUNCTION_25();
                  OUTLINED_FUNCTION_16();
                  _os_log_error_impl(v61, v62, v63, v64, v65, v66);
                }

                goto LABEL_23;
              }
            }
          }

          else
          {
            if (memorystatus_control() <= 0x17)
            {
              v25 = rbs_process_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                shortDescription3 = [self shortDescription];
                v45 = __error();
                v46 = strerror(*v45);
                __error();
                v70 = 138543874;
                v71 = shortDescription3;
                v72 = 2080;
                *v73 = v46;
                OUTLINED_FUNCTION_25();
                OUTLINED_FUNCTION_37();
                OUTLINED_FUNCTION_16();
                _os_log_error_impl(v47, v48, v49, v50, v51, v52);
              }
            }

            if (memoryLimit)
            {
              v26 = rbs_process_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                shortDescription4 = [self shortDescription];
                v70 = 138543874;
                v71 = shortDescription4;
                v72 = 1024;
                *v73 = memoryLimit;
                *&v73[4] = 1024;
                *&v73[6] = 0;
                OUTLINED_FUNCTION_37();
                _os_log_error_impl(v54, v55, OS_LOG_TYPE_ERROR, v56, v57, 0x18u);
              }
            }
          }

          if (*(self + 104) != memoryLimit)
          {
            v27 = rbs_process_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(self + 32);
              if (v23)
              {
                v29 = &stru_287507640;
              }

              else
              {
                v29 = @"would ";
              }

              v30 = NSStringFromRBSMemoryLimitStrength();
              v70 = 138544386;
              v71 = v28;
              v72 = 2114;
              *v73 = v29;
              *&v73[8] = 2114;
              v74 = v30;
              v75 = 2114;
              v76 = memoryLimitCategory;
              v77 = 1024;
              v78 = memoryLimit;
              OUTLINED_FUNCTION_37();
              _os_log_impl(v31, v32, OS_LOG_TYPE_DEFAULT, v33, v34, 0x30u);
            }

            *(self + 104) = memoryLimit;
          }

          goto LABEL_23;
        }

        v8 = rbs_process_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_19();
          v72 = 1024;
          *v73 = v9;
          *&v73[4] = 1024;
          *&v73[6] = memoryLimit;
          OUTLINED_FUNCTION_37();
          _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 0x18u);
        }
      }

      else
      {
        v14 = rbs_process_log();
        if (OUTLINED_FUNCTION_23(v14))
        {
LABEL_22:
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v15, v16, v17, v18, v19, v20);
        }
      }
    }

    else
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v4))
      {
        goto LABEL_22;
      }
    }

LABEL_23:
  }
}

- (void)_lock_applyCarPlayMode
{
  v31 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ((*(self + 109) & 1) == 0)
    {
      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_29(v3))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7_0();
        v9 = 12;
LABEL_12:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    carPlayMode = [*(self + 64) carPlayMode];
    v11 = *(self + 56);
    if (!v11 || carPlayMode != [v11 carPlayMode])
    {
      if (setpriority(8, *(self + 8), carPlayMode))
      {
        v12 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v12))
        {
          v13 = *(self + 32);
          v14 = *__error();
          v15 = __error();
          strerror(*v15);
          v23 = 138544130;
          v24 = v13;
          OUTLINED_FUNCTION_14();
          v26 = v14;
          v27 = 1026;
          v28 = carPlayMode;
          v29 = 2080;
          v30 = v16;
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v17, v18, v19, v20, v21, 0x22u);
        }

        goto LABEL_13;
      }

      v22 = rbs_ttl_log();
      if (OUTLINED_FUNCTION_23(v22))
      {
        OUTLINED_FUNCTION_6();
        v25 = 1026;
        v26 = carPlayMode;
        v4 = &dword_262485000;
        v7 = "%{public}@ Set Carplay mode to: %{public}d";
        v8 = &v23;
        v5 = v1;
        v6 = OS_LOG_TYPE_DEFAULT;
        v9 = 18;
        goto LABEL_12;
      }

LABEL_13:
    }
  }
}

- (void)_lock_logVisibility
{
  if (self)
  {
    inheritances = [*(self + 64) inheritances];
    allNamespaces = [inheritances allNamespaces];
    v4 = [allNamespaces containsObject:*MEMORY[0x277D470D0]];

    if (*(self + 108) != v4)
    {
      v5 = rbs_ttl_log();
      v6 = OUTLINED_FUNCTION_32(v5);
      if (v4)
      {
        if (v6)
        {
          goto LABEL_7;
        }
      }

      else if (v6)
      {
LABEL_7:
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }

      *(self + 108) = v4;
    }
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessState *)self->_lock_state jetsamLenientMode])
  {
    [(RBProcess *)self _applyJetsamLenientModeState:?];
  }

  os_unfair_lock_lock(&self->_dataLock);
  lastExitContext = self->_lastExitContext;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [(RBSProcessExitContext *)lastExitContext copyWithTimestamp:date];
  v6 = self->_lastExitContext;
  self->_lastExitContext = v5;

  os_unfair_lock_unlock(&self->_dataLock);
  self->_appliedJetsamPriority = -1;
  self->_terminating = 1;
  os_unfair_lock_unlock(&self->_lock);
  mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__RBProcess_invalidate__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  dispatch_async(mEMORY[0x277D47028], block);
}

void __23__RBProcess_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  if (v1)
  {
    dispatch_source_cancel(v1);
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __23__RBProcess_invalidate__block_invoke_cold_1();
    }
  }
}

- (RBSProcessExitContext)lastExitContext
{
  os_unfair_lock_lock(&self->_dataLock);
  if (self->_intendedExitStatus)
  {
    v3 = [(RBSProcessExitContext *)self->_lastExitContext copyWithStatus:?];
    lastExitContext = self->_lastExitContext;
    self->_lastExitContext = v3;
  }

  if (![(RBSProcessExitContext *)self->_lastExitContext type])
  {
    consistentLaunchdJobLabel = [(RBSProcessIdentity *)self->_identity consistentLaunchdJobLabel];
    if (consistentLaunchdJobLabel)
    {
      v6 = [RBLaunchdJobManager lastExitStatusForLabel:consistentLaunchdJobLabel error:0];
      v7 = [(RBSProcessExitContext *)self->_lastExitContext copyWithStatus:v6];
      v8 = self->_lastExitContext;
      self->_lastExitContext = v7;
    }
  }

  v9 = self->_lastExitContext;
  os_unfair_lock_unlock(&self->_dataLock);

  return v9;
}

void __26__RBProcess__lock_suspend__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [(RBProcess *)*(a1 + 32) _allowedLockedFilePaths];
  os_unfair_lock_lock((*v1 + 48));
  v3 = *v1;
  if (*(*v1 + 137) == 1 && (v3[34]._os_unfair_lock_opaque & 1) == 0)
  {
    v4 = rbs_process_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*v1 + 32);
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ check if suspended process is holding locks", buf, 0xCu);
    }

    v6 = [(RBProcess *)*v1 _lock_lockedFilePathsIgnoring:v2];
    if ([v6 count])
    {
      v7 = [v6 allObjects];
      v8 = [v7 componentsJoinedByString:@"\n"];

      v9 = [v2 allObjects];
      v10 = [v9 componentsJoinedByString:@"\n"];

      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __26__RBProcess__lock_suspend__block_invoke_cold_1();
      }

      v12 = rbs_process_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __26__RBProcess__lock_suspend__block_invoke_cold_2();
      }

      if ([*(*v1 + 16) platform] == 6)
      {
        v13 = rbs_process_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*v1 + 16);
          *buf = 138412290;
          v25 = v14;
          _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "Not emitting 0xdead10cc error for process %@ suspended with locked system files because it is a Mac Catalyst app. Mac Catalyst apps should always be terminated on suspension, regardless of whether the app holds a shared file lock.", buf, 0xCu);
        }
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x277D47010]);
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"BUG IN %@: RunningBoard terminated %@ because it was suspended while holding a shared file lock:\n%@\nFile locks MUST be held in one of the following directories:\n%@", *(*v1 + 32), *(*v1 + 32), v8, v10];
        v13 = [v15 initWithExplanation:v16];

        [v13 setExceptionCode:3735883980];
        [v13 setExceptionDomain:15];
        [v13 setMaximumTerminationResistance:50];
        [v13 setReportType:1];
        v17 = rbs_sp_telemetry_log();
        if (os_signpost_enabled(v17))
        {
          v18 = [*(*v1 + 16) embeddedApplicationIdentifier];
          v19 = v18;
          if (v18)
          {
            v20 = 0;
            v21 = v18;
          }

          else
          {
            v22 = [*(*v1 + 16) xpcServiceIdentifier];
            if (v22)
            {
              v20 = 0;
              v23 = v22;
              v21 = v22;
            }

            else
            {
              v21 = [*(*v1 + 16) consistentLaunchdJobLabel];
              v23 = 0;
              v20 = 1;
            }
          }

          *buf = 138543362;
          v25 = v21;
          _os_signpost_emit_with_name_impl(&dword_262485000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SuspendedWithLockedFiles", "BundleIdOverride=%{public, signpost.description:attribute}@ enableTelemetry=YES ", buf, 0xCu);
          if (v20)
          {
          }

          if (!v19)
          {
          }
        }

        [(RBProcess *)*v1 _lock_terminateWithContext:v13];
      }
    }

    v3 = *v1;
  }

  os_unfair_lock_unlock(v3 + 12);
}

- (id)_allowedLockedFilePaths
{
  v80 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v2 = *(self + 16);
    v3 = *(self + 208);
    v4 = *(self + 216);
    v5 = *(self + 176);
    v6 = *(self + 32);
    v7 = *(self + 8);
    os_unfair_lock_unlock((self + 48));
    if ([v2 isXPCService])
    {
      v8 = 0;
LABEL_63:

      goto LABEL_64;
    }

    array = [MEMORY[0x277CBEB18] array];
    if (v3)
    {
      v10 = rbs_process_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_36(5.8382e-34);
        *v78 = v3;
        OUTLINED_FUNCTION_30(&dword_262485000, v54, v55, "%{public}@: home directory '%{public}@' allowed", &buffer);
      }

      [array addObject:v3];
    }

    if (v4)
    {
      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_36(5.8382e-34);
        *v78 = v4;
        OUTLINED_FUNCTION_30(&dword_262485000, v56, v57, "%{public}@: tmp directory '%{public}@' allowed", &buffer);
      }

      [array addObject:v4];
    }

    environmentVariables = [v5 environmentVariables];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __36__RBProcess__allowedLockedFilePaths__block_invoke;
    v68[3] = &unk_279B332D0;
    v13 = array;
    v69 = v13;
    [environmentVariables enumerateKeysAndObjectsUsingBlock:v68];

    if (([v2 isEmbeddedApplication] & 1) == 0 && !objc_msgSend(v2, "isAngel"))
    {
LABEL_55:
      v63 = v2;
      v43 = v5;
      v44 = v4;
      v45 = v3;
      v46 = v6;
      v8 = [MEMORY[0x277CBEB58] set];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v47 = v13;
      v48 = [v47 countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v65;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v65 != v50)
            {
              objc_enumerationMutation(v47);
            }

            stringByStandardizingPath = [*(*(&v64 + 1) + 8 * i) stringByStandardizingPath];
            [v8 addObject:stringByStandardizingPath];
          }

          v49 = [v47 countByEnumeratingWithState:&v64 objects:v70 count:16];
        }

        while (v49);
      }

      v6 = v46;
      v3 = v45;
      v4 = v44;
      v5 = v43;
      v2 = v63;
      goto LABEL_63;
    }

    dataContainerURL = [v5 dataContainerURL];
    path = [dataContainerURL path];

    if (path && [path length])
    {
      [v13 addObject:path];
      v16 = rbs_process_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        buffer = 138543618;
        v76 = v6;
        v77 = 2114;
        *v78 = path;
        _os_log_debug_impl(&dword_262485000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: adding allowed path from bundle %{public}@", &buffer, 0x16u);
      }

      goto LABEL_54;
    }

    bzero(&buffer, 0x88uLL);
    if (proc_pidinfo(*(self + 8), 3, 0, &buffer, 136) != 136)
    {
      v27 = rbs_process_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v72) = v7;
        _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_DEFAULT, "Could not get proc_pidinfo for pid %d to get ruid/euid", buf, 8u);
      }

      [@"/var/root" stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      v28 = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

      if (v28 && [v28 length])
      {
        [v13 addObject:v28];
        v29 = rbs_process_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_9();
          *(v58 + 14) = v28;
          OUTLINED_FUNCTION_30(&dword_262485000, v59, v60, "%{public}@: adding fallback allowed path %{public}@", buf);
        }
      }

      [@"/var/mobile" stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      path = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

      if (!path || ![path length])
      {
        goto LABEL_54;
      }

      [v13 addObject:path];
      v30 = rbs_process_log();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_9();
      *(v31 + 14) = path;
      v32 = "%{public}@: adding fallback allowed path %{public}@";
      goto LABEL_49;
    }

    v17 = v79;
    *__error() = 0;
    v61 = v17;
    v18 = getpwuid(v17);
    v19 = 0x277CCA000uLL;
    v62 = v13;
    if (v18)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18->pw_dir];
      [v20 stringByAppendingPathComponent:@"/Library/Caches/"];
      objc_claimAutoreleasedReturnValue();
      embeddedApplicationIdentifier = [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
      v22 = [0x277CCA000 stringByAppendingPathComponent:embeddedApplicationIdentifier];

      v23 = v22;
      if (!v22)
      {
        v19 = 0x277CCA000uLL;
        goto LABEL_41;
      }

      v24 = [v22 length];
      v13 = v62;
      if (!v24)
      {
        v19 = 0x277CCA000;
        goto LABEL_42;
      }

      v25 = v23;
      [v62 addObject:v23];
      v26 = rbs_process_log();
      v19 = 0x277CCA000;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v72 = v6;
        v73 = 2114;
        *v74 = v25;
        _os_log_debug_impl(&dword_262485000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: adding allowed path from real uid %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v26 = rbs_process_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        __error();
        OUTLINED_FUNCTION_28();
        *(v33 + 14) = v17;
        *&v74[4] = v34;
        *&v74[6] = v35;
        _os_log_impl(&dword_262485000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: no passwd data for ruid %d (errno %d)", buf, 0x18u);
      }

      v25 = path;
    }

    v23 = v25;
LABEL_41:
    v13 = v62;
LABEL_42:
    v36 = *&v78[6];
    if (*&v78[6] == v61)
    {
      path = v23;
      goto LABEL_54;
    }

    *__error() = 0;
    v37 = getpwuid(v36);
    if (!v37)
    {
      v30 = rbs_process_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        __error();
        OUTLINED_FUNCTION_28();
        *(v40 + 14) = v36;
        *&v74[4] = v41;
        *&v74[6] = v42;
        _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: no passwd data for euid %d (errno %d)", buf, 0x18u);
      }

      path = v23;
      goto LABEL_53;
    }

    v38 = [*(v19 + 3240) stringWithUTF8String:v37->pw_dir];
    [v38 stringByAppendingPathComponent:@"/Library/Caches/"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_35() embeddedApplicationIdentifier];
    objc_claimAutoreleasedReturnValue();
    path = [OUTLINED_FUNCTION_22() stringByAppendingPathComponent:?];

    if (!path)
    {
      v13 = v62;
      goto LABEL_54;
    }

    v13 = v62;
    if (![path length])
    {
LABEL_54:

      goto LABEL_55;
    }

    [v62 addObject:path];
    v30 = rbs_process_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
LABEL_53:

      goto LABEL_54;
    }

    OUTLINED_FUNCTION_9();
    *(v39 + 14) = path;
    v32 = "%{public}@: adding allowed path from effective uid %{public}@";
LABEL_49:
    _os_log_debug_impl(&dword_262485000, v30, OS_LOG_TYPE_DEBUG, v32, buf, 0x16u);
    goto LABEL_53;
  }

  v8 = 0;
LABEL_64:

  return v8;
}

- (void)_lock_suspend
{
  v42 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_20();
    if ((v3 & 1) == 0)
    {
      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_21(v4))
      {
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_4_1();
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }

LABEL_17:

      return;
    }

    v11 = rbs_ttl_log();
    if (OUTLINED_FUNCTION_21(v11))
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_4_1();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
    }

    RBPowerlogEvent(3, *(v1 + 16), 0xFFFFFFFFLL, *(v1 + 8));
    if (MEMORY[0x2822399B0] && (*(v1 + 77) & 1) != 0 && MEMORY[0x266729FC0](*(v1 + 8)) == 5)
    {
      v18 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v18))
      {
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ spd_client_start_monitoring_all_sockets_for_pid() failed", buf, 0xCu);
      }
    }

    if (pid_suspend())
    {
      __error();
      OUTLINED_FUNCTION_11();
      if (v19)
      {
        return;
      }

      v20 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v20))
      {
        v25 = *(v1 + 32);
        v26 = *__error();
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 138543874;
        v37 = v25;
        v38 = 1024;
        v39 = v26;
        v40 = 2080;
        v41 = v28;
        OUTLINED_FUNCTION_16();
        _os_log_error_impl(v29, v30, v31, v32, v33, v34);
      }

      goto LABEL_17;
    }

    *(v1 + 137) = 1;
    v21 = notify_suspend_pid();
    if (v21)
    {
      v22 = v21;
      v23 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v23))
      {
        OUTLINED_FUNCTION_19();
        v38 = 1024;
        v39 = v22;
        _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ notify_suspend_pid() failed with error %d (see <notify.h>)", buf, 0x12u);
      }
    }

    mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__RBProcess__lock_suspend__block_invoke;
    block[3] = &unk_279B32CB0;
    block[4] = v1;
    dispatch_async(mEMORY[0x277D47028], block);

    [(RBProcess *)v1 _lock_shutdownSocketsAndLog:?];
  }
}

void __36__RBProcess__allowedLockedFilePaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualToString:@"CFFIXED_USER_HOME"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HOME") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"TMPDIR"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __41__RBProcess_processStateApplicationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.rbprocess-state-application", v2);
  v1 = processStateApplicationQueue_queue;
  processStateApplicationQueue_queue = v0;
}

+ (id)testProcessWithPid:(int)pid
{
  v3 = *&pid;
  v4 = [MEMORY[0x277D46F50] identifierWithPid:?];
  v5 = [MEMORY[0x277D46F60] identityForExecutablePath:@"/test" pid:v3 auid:0];
  v6 = [MEMORY[0x277D46F70] instanceWithIdentifier:v4 identity:v5];
  portForSelf = [MEMORY[0x277D46ED8] portForSelf];
  v8 = [RBProcess alloc];
  auditToken = [portForSelf auditToken];
  v10 = +[RBJetsamPropertyManager testJetsamProperties];
  LOBYTE(v13) = 0;
  v11 = [(RBProcess *)v8 _initWithInstance:v6 auditToken:auditToken bundleProperties:0 jetsamProperties:v10 initialState:0 hostProcess:0 properties:0 systemPreventsIdleSleep:v13];

  return v11;
}

+ (id)testProcessWithPid:(int)pid andIdentity:(id)identity
{
  v4 = *&pid;
  v5 = MEMORY[0x277D46F50];
  identityCopy = identity;
  v7 = [v5 identifierWithPid:v4];
  v8 = [MEMORY[0x277D46F70] instanceWithIdentifier:v7 identity:identityCopy];

  portForSelf = [MEMORY[0x277D46ED8] portForSelf];
  v10 = [RBProcess alloc];
  auditToken = [portForSelf auditToken];
  v12 = +[RBJetsamPropertyManager testJetsamProperties];
  LOBYTE(v15) = 0;
  v13 = [(RBProcess *)v10 _initWithInstance:v8 auditToken:auditToken bundleProperties:0 jetsamProperties:v12 initialState:0 hostProcess:0 properties:0 systemPreventsIdleSleep:v15];

  return v13;
}

+ (id)testProcessWithPid:(int)pid identity:(id)identity launchdProps:(id)props andBundleProps:(id)bundleProps
{
  v8 = *&pid;
  v9 = MEMORY[0x277D46F50];
  bundlePropsCopy = bundleProps;
  propsCopy = props;
  identityCopy = identity;
  v13 = [v9 identifierWithPid:v8];
  v14 = [MEMORY[0x277D46F70] instanceWithIdentifier:v13 identity:identityCopy];

  portForSelf = [MEMORY[0x277D46ED8] portForSelf];
  v16 = [RBProcess alloc];
  auditToken = [portForSelf auditToken];
  v18 = +[RBJetsamPropertyManager testJetsamProperties];
  LOBYTE(v21) = 0;
  v19 = [(RBProcess *)v16 _initWithInstance:v14 auditToken:auditToken bundleProperties:bundlePropsCopy jetsamProperties:v18 initialState:0 hostProcess:0 properties:propsCopy systemPreventsIdleSleep:v21];

  return v19;
}

+ (void)_runOnDiagnosticQueue:(uint64_t)queue
{
  block = a2;
  objc_opt_self();
  if (_runOnDiagnosticQueue__onceToken != -1)
  {
    +[RBProcess _runOnDiagnosticQueue:];
  }

  currentContext = [MEMORY[0x277D47038] currentContext];
  v3 = currentContext;
  if (currentContext)
  {
    [currentContext handoffToQueue:_runOnDiagnosticQueue__diagnosticQ block:block];
  }

  else
  {
    dispatch_async(_runOnDiagnosticQueue__diagnosticQ, block);
  }
}

void __35__RBProcess__runOnDiagnosticQueue___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.diagnostics", v2);
  v1 = _runOnDiagnosticQueue__diagnosticQ;
  _runOnDiagnosticQueue__diagnosticQ = v0;
}

- (RBProcess)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBProcess.m" lineNumber:208 description:@"-init is not allowed on RBProcess"];

  return 0;
}

- (id)_initWithInstance:(void *)instance auditToken:(void *)token bundleProperties:(void *)properties jetsamProperties:(void *)jetsamProperties initialState:(void *)state hostProcess:(void *)process properties:(char)a9 systemPreventsIdleSleep:(char)self0 cache:
{
  v86 = *MEMORY[0x277D85DE8];
  v18 = a2;
  instanceCopy = instance;
  tokenCopy = token;
  propertiesCopy = properties;
  jetsamPropertiesCopy = jetsamProperties;
  stateCopy = state;
  processCopy = process;
  if (!self)
  {
LABEL_6:
    v23 = jetsamPropertiesCopy;
    v22 = propertiesCopy;
    v24 = stateCopy;
    goto LABEL_7;
  }

  if (v18)
  {
    if (instanceCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [RBProcess _initWithInstance:self auditToken:? bundleProperties:? jetsamProperties:? initialState:? hostProcess:? properties:? systemPreventsIdleSleep:? cache:?];
    if (instanceCopy)
    {
      goto LABEL_4;
    }
  }

  [RBProcess _initWithInstance:self auditToken:? bundleProperties:? jetsamProperties:? initialState:? hostProcess:? properties:? systemPreventsIdleSleep:? cache:?];
LABEL_4:
  identity = [v18 identity];
  if ([identity osServiceType] == 1)
  {
    [RBProcess _initWithInstance:auditToken:bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:];
  }

  v77.receiver = self;
  v77.super_class = RBProcess;
  self = objc_msgSendSuper2(&v77, sel_init);
  if (!self)
  {
    goto LABEL_6;
  }

  *(self + 2) = [v18 rbs_pid];
  objc_storeStrong(self + 19, a2);
  identifier = [v18 identifier];
  v27 = self[18];
  self[18] = identifier;

  identity2 = [v18 identity];
  v29 = self[2];
  self[2] = identity2;

  self[16] = 0;
  homeDirectory = [processCopy homeDirectory];
  v31 = self[26];
  self[26] = homeDirectory;

  tmpDirectory = [processCopy tmpDirectory];
  v33 = self[27];
  self[27] = tmpDirectory;

  *(self + 21) = [instanceCopy pidversion];
  objc_storeStrong(self + 11, properties);
  if ([processCopy doesOverrideManagement])
  {
    overrideManageFlags = [processCopy overrideManageFlags];
LABEL_16:
    *(self + 109) = overrideManageFlags;
    goto LABEL_20;
  }

  if (![self[2] isExtension])
  {
    overrideManageFlags = [self[2] defaultManageFlags];
    goto LABEL_16;
  }

  extensionPointIdentifier = [tokenCopy extensionPointIdentifier];
  if (extensionPointIdentifier)
  {
    if ([MEMORY[0x277D46F60] shouldManageExtensionWithExtensionPoint:extensionPointIdentifier])
    {
      *(self + 109) = -1;
    }
  }

  else
  {
    v36 = rbs_process_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [RBProcess _initWithInstance:auditToken:bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:];
    }
  }

  overrideManageFlags = *(self + 109);
LABEL_20:
  if ((overrideManageFlags & 8) == 0)
  {
    v37 = objc_opt_new();
    v38 = self[11];
    self[11] = v37;
  }

  managedEndpointByLaunchIdentifier = [processCopy managedEndpointByLaunchIdentifier];
  v40 = [managedEndpointByLaunchIdentifier copy];
  v41 = self[28];
  self[28] = v40;

  clientRestriction = [processCopy clientRestriction];
  v42 = [RBDomainRestriction domainRestrictionForDictionary:"domainRestrictionForDictionary:withError:" withError:?];
  v43 = self[29];
  self[29] = v42;

  objc_storeStrong(self + 22, token);
  *(self + 77) = [tokenCopy usesSocketMonitoring];
  v44 = objc_alloc_init(MEMORY[0x277D46F28]);
  v45 = self[20];
  self[20] = v44;

  self[6] = 0;
  *(self + 78) = a9;
  objc_storeStrong(self + 5, state);
  v46 = objc_alloc(MEMORY[0x277D46F48]);
  v47 = self[19];
  v48 = *(self + 109);
  beforeTranslocationBundlePath = [processCopy beforeTranslocationBundlePath];
  executablePath = [processCopy executablePath];
  LOBYTE(v70) = sleep;
  v51 = [v46 initWithInstance:v47 auditToken:instanceCopy bundleData:tokenCopy manageFlags:v48 beforeTranslocationBundlePath:beforeTranslocationBundlePath executablePath:executablePath cache:v70];
  v52 = self[3];
  self[3] = v51;

  objc_storeStrong(self + 23, instance);
  v53 = objc_alloc(MEMORY[0x277CCACA8]);
  shortDescription = [self[2] shortDescription];
  v55 = [v53 initWithFormat:@"[%@:%d]", shortDescription, objc_msgSend(self[18], "rbs_pid")];
  v56 = self[4];
  self[4] = v55;

  underlyingAssertion = [processCopy underlyingAssertion];
  v58 = self[24];
  self[24] = underlyingAssertion;

  v76 = 2;
  v59 = [self[11] memoryLimitForCategory:*MEMORY[0x277D47070] strength:&v76];
  v76 = 2;
  v60 = [self[11] memoryLimitForCategory:*MEMORY[0x277D47078] strength:&v76];
  objc_opt_class();
  LOBYTE(v53) = objc_opt_isKindOfClass();
  v61 = rbs_process_log();
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (v53)
  {
    v23 = jetsamPropertiesCopy;
    v22 = propertiesCopy;
    v24 = stateCopy;
    if (v62)
    {
      v63 = self[4];
      *buf = 138543362;
      v79 = v63;
      v64 = "%{public}@ is not RunningBoard jetsam managed.";
      v65 = v61;
      v66 = 12;
LABEL_27:
      _os_log_impl(&dword_262485000, v65, OS_LOG_TYPE_DEFAULT, v64, buf, v66);
    }
  }

  else
  {
    v23 = jetsamPropertiesCopy;
    v22 = propertiesCopy;
    v24 = stateCopy;
    if (v62)
    {
      v67 = self[4];
      v68 = self[11];
      *buf = 138544130;
      v79 = v67;
      v80 = 1024;
      v81 = v59;
      v82 = 1024;
      v83 = v60;
      v84 = 2112;
      v85 = v68;
      v64 = "%{public}@ Memory Limits: active %d inactive %d\n %@";
      v65 = v61;
      v66 = 34;
      goto LABEL_27;
    }
  }

  v69 = self[23];
  if (v69)
  {
    objc_msgSend_realToken(v69);
    *(self + 76) = RBSAuditTokenRepresentsPlatformBinary();
  }

  [(RBProcess *)self _setMemoryStatusFlags:processCopy];
  if (v23 && self[24] && ![self[8] memoryLimit])
  {
    [self _applyState:v23];
  }

LABEL_7:
  return self;
}

- (void)setAuditToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (tokenCopy)
  {
    objc_msgSend_realToken(tokenCopy);
  }

  v6 = RBSAuditTokenRepresentsPlatformBinary();
  os_unfair_lock_lock(&self->_dataLock);
  auditToken = self->_auditToken;
  self->_auditToken = v5;

  self->_platformBinary = v6;
  os_unfair_lock_unlock(&self->_dataLock);
}

- (double)processStartTime
{
  v22 = *MEMORY[0x277D85DE8];
  result = self->_cachedProcessStartTime;
  if (result == 0.0)
  {
    v21 = 0;
    v20 = 0u;
    memset(buffer, 0, sizeof(buffer));
    p_pid = &self->_pid;
    if (proc_pidinfo(self->_pid, 3, 0, buffer, 136) == 136)
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      v7 = v6;

      self->_cachedProcessStartTime = v7 - (CFAbsoluteTimeGetCurrent() + *MEMORY[0x277CBECD0]) + *(&v20 + 1) + v21 / 1000000.0;
      RBSMachAbsoluteTime();
      v9 = v8;
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        cachedProcessStartTime = self->_cachedProcessStartTime;
        v13 = 134218496;
        v14 = cachedProcessStartTime;
        v15 = 2048;
        v16 = v9;
        v17 = 2048;
        v18 = v9 - cachedProcessStartTime;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "processStartTime calculated start is %f (now:%f, diff%f)", &v13, 0x20u);
      }

      return self->_cachedProcessStartTime;
    }

    else
    {
      v12 = rbs_assertion_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)p_pid processStartTime];
      }

      self->_cachedProcessStartTime = 0.0001;
      return 0.0001;
    }
  }

  return result;
}

- (BOOL)isContainerized
{
  auditToken = self->_auditToken;
  if (auditToken)
  {
    objc_msgSend_realToken(auditToken, a2);
  }

  v4 = sandbox_check_by_audit_token();
  if (v4)
  {
    v5 = self->_auditToken;
    if (v5)
    {
      objc_msgSend_realToken(v5);
    }

    LOBYTE(v4) = sandbox_container_path_for_audit_token() == 0;
  }

  return v4;
}

- (void)_systemPreventIdleSleepStateDidChange:(BOOL)change
{
  os_unfair_lock_lock(&self->_lock);
  self->_systemPreventsIdleSleep = change;
  if (!self->_terminating && !change && self->_suspended && [(RBProcess *)self isLifecycleManaged])
  {
    [(RBProcess *)self _lock_shutdownSocketsAndLog:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLastExitContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_dataLock);
  lastExitContext = self->_lastExitContext;
  self->_lastExitContext = contextCopy;

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)setLaunchAssertionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_dataLock);
  launchAssertionIdentifier = [(RBProcess *)self launchAssertionIdentifier];

  if (!launchAssertionIdentifier)
  {
    v6 = [identifierCopy copy];
    launchAssertionIdentifier = self->_launchAssertionIdentifier;
    self->_launchAssertionIdentifier = v6;

    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(RBProcess *)self description];
      rbs_pid = [(RBProcess *)self rbs_pid];
      v11 = self->_launchAssertionIdentifier;
      v12 = 138412802;
      v13 = v9;
      v14 = 1024;
      v15 = rbs_pid;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Process: %@ with pid: %d; launch assertion: %@", &v12, 0x1Cu);
    }
  }

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)setTerminating:(BOOL)terminating
{
  if (!terminating)
  {
    [(RBProcess *)a2 setTerminating:?];
  }

  self->_terminating = 1;
}

- (void)_applyState:(id)state
{
  stateCopy = state;
  v5 = +[RBProcess processStateApplicationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__RBProcess__applyState___block_invoke;
  v8[3] = &unk_279B32B80;
  v8[4] = self;
  v9 = stateCopy;
  v6 = stateCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v8);
  dispatch_async(v5, v7);
}

void __25__RBProcess__applyState___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  [(RBProcess *)*(a1 + 32) _lock_applyCurrentStateIfPossible];
  v2 = (*(a1 + 32) + 48);

  os_unfair_lock_unlock(v2);
}

- (void)collectDiagnostic:(unint64_t)diagnostic description:(id)description domain:(unsigned int)domain code:(unint64_t)code additionalPayload:(id)payload completion:(id)completion
{
  descriptionCopy = description;
  payloadCopy = payload;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  self->_terminating = 1;
  diagnosticsStarted = self->_diagnosticsStarted;
  self->_diagnosticsStarted = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (diagnosticsStarted)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke;
    v33[3] = &unk_279B33280;
    v33[4] = self;
    v34 = completionCopy;
    v18 = MEMORY[0x266729AD0](v33);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2;
    v26[3] = &unk_279B332A8;
    diagnosticCopy = diagnostic;
    v26[4] = self;
    domainCopy = domain;
    v27 = descriptionCopy;
    codeCopy = code;
    v28 = payloadCopy;
    v19 = v18;
    v29 = v19;
    [RBProcess _runOnDiagnosticQueue:v26];
    if (diagnostic == 3)
    {
      v20 = 20000000000;
    }

    else
    {
      v20 = 5000000000;
    }

    v21 = dispatch_time(0, v20);
    v22 = dispatch_get_global_queue(25, 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_55;
    v24[3] = &unk_279B32F50;
    v25 = v19;
    v23 = v19;
    dispatch_after(v21, v22, v24);
  }
}

void __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 48));
  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

uint64_t __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2 == 3)
  {
    v3 = rbs_process_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 32);
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "%{public}@ Taking tailspin...", &v10, 0xCu);
    }

    v5 = [(RBProcess *)*(a1 + 32) _generateTailspin];
    v6 = rbs_process_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 32) + 32);
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "%{public}@ Tailspin complete", &v10, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2_cold_1();
      }
    }
  }

  else if (v2 == 2)
  {
    [(RBProcess *)*(a1 + 32) _generateStackshotWithDescription:*(a1 + 80) domain:*(a1 + 72) code:*(a1 + 48) additionalPayload:?];
  }

  return (*(*(a1 + 56) + 16))();
}

- (uint64_t)_generateTailspin
{
  v1 = 0;
  if (self && MEMORY[0x2822399C8])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/com.apple.runningboardd/"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v3])
    {
      v5 = 0;
    }

    else
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v3 _generateTailspin:v6];
      }

      v34 = 0;
      [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v34];
      v5 = v34;
    }

    if (([defaultManager fileExistsAtPath:v3] & 1) == 0)
    {
      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(RBProcess *)v5 _generateTailspin:v13];
      }

      v1 = 0;
      goto LABEL_23;
    }

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v14 = MEMORY[0x277CCACA8];
    v15 = *(self + 32);
    date = [MEMORY[0x277CBEAA8] date];
    v17 = [v13 stringFromDate:date];
    v18 = [v14 stringWithFormat:@"ts-%@-%@.tailspin", v15, v17];

    v19 = [v3 stringByAppendingPathComponent:v18];
    v20 = [v19 cStringUsingEncoding:1];

    v21 = open(v20, 514, 420);
    if (v21 == -1)
    {
      v31 = rbs_process_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [RBProcess _generateTailspin];
      }
    }

    else
    {
      v22 = v21;
      v23 = tailspin_config_create_with_default_config();
      if (v23)
      {
        v24 = v23;
        v1 = 1;
        tailspin_enabled_set();
        tailspin_dump_output_sync();
        MEMORY[0x26672A040](v24);
        close(v22);
LABEL_22:

LABEL_23:
        return v1;
      }

      v32 = rbs_process_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [RBProcess _generateTailspin];
      }

      close(v22);
    }

    v1 = 0;
    goto LABEL_22;
  }

  return v1;
}

- (BOOL)terminateWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcess *)self _lock_terminateWithContext:contextCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (uint64_t)_lock_terminateWithContext:(uint64_t)context
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    v4 = rbs_process_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(context + 32);
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Terminating with context: %{public}@", buf, 0x16u);
    }

    *(context + 136) = 1;
    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x277D47010]);
      [v3 setReportType:0];
      [v3 setMaximumTerminationResistance:40];
    }

    os_unfair_lock_lock((context + 52));
    v6 = [*(context + 160) copyWithTerminationContext:v3];
    v7 = *(context + 160);
    *(context + 160) = v6;

    os_unfair_lock_unlock((context + 52));
    [v3 reportType];
    [v3 exceptionDomain];
    [v3 exceptionCode];
    v8 = [v3 description];
    [v8 UTF8String];
    v9 = terminate_with_reason();

    v10 = rbs_process_log();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RBProcess _lock_terminateWithContext:];
      }

      v12 = [context _sendSignal:9];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(context + 32);
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate_with_reason() success", buf, 0xCu);
      }

      v12 = 1;
    }

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_sendSignal:(int)signal
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = self->_shortDescription;
    v9 = 138543618;
    v10 = shortDescription;
    v11 = 1024;
    signalCopy = signal;
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending kill(%d)", &v9, 0x12u);
  }

  if (!kill(self->_pid, signal) || *__error() == 3)
  {
    return 1;
  }

  v8 = rbs_process_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [RBProcess _sendSignal:];
  }

  return 0;
}

- (void)invokeHandlerOnProcessDeath:(id)death onQueue:(id)queue
{
  deathCopy = death;
  queueCopy = queue;
  if (self->_procSource)
  {
    [RBProcess invokeHandlerOnProcessDeath:onQueue:];
  }

  v8 = queueCopy;
  pid = self->_pid;
  mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  v11 = dispatch_source_create(MEMORY[0x277D85D20], pid, 0xA0000000uLL, mEMORY[0x277D47028]);
  procSource = self->_procSource;
  self->_procSource = v11;

  dispatch_set_qos_class_fallback();
  v13 = self->_procSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke;
  handler[3] = &unk_279B32F78;
  handler[4] = self;
  v17 = v8;
  v18 = deathCopy;
  v14 = deathCopy;
  v15 = v8;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_activate(self->_procSource);
}

void __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke_2;
  activity_block[3] = &unk_279B32F78;
  v2 = *(a1 + 40);
  activity_block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  _os_activity_initiate(&dword_262485000, "Process Event", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__RBProcess_invokeHandlerOnProcessDeath_onQueue___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  data = dispatch_source_get_data(*(*(a1 + 32) + 120));
  if ((data & 0x20000000) != 0)
  {
    RBSMachAbsoluteTime();
    v4 = v3;
    [*(a1 + 32) processStartTime];
    v6 = v5;
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2048;
      v17 = v4 - v6;
      _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "NOTE: unexpected exec event for %{public}@ after %f seconds - hoping it is a delayed xpcproxy exec notification", &v14, 0x16u);
    }
  }

  if (data < 0)
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 32);
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ termination reported by proc_exit", &v14, 0xCu);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 120));
    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;

    v12 = dispatch_time(0, 100000000);
    dispatch_after(v12, *(a1 + 40), *(a1 + 48));
  }
}

- (id)createRBSTarget
{
  v2 = MEMORY[0x277D47008];
  rbs_pid = [(RBProcess *)self rbs_pid];

  return [v2 targetWithPid:rbs_pid];
}

- (uint64_t)_memoryStatusControl:(uint64_t)control flags:
{
  if (!self)
  {
    return 0;
  }

  v4 = memorystatus_control();
  if (v4)
  {
    __error();
    OUTLINED_FUNCTION_11();
    if (!v5 && *__error() != 45)
    {
      v6 = rbs_process_log();
      if (OUTLINED_FUNCTION_26(v6))
      {
        v8 = __error();
        strerror(*v8);
        __error();
        OUTLINED_FUNCTION_10();
        _os_log_error_impl(v9, v10, v11, v12, v13, 0x1Cu);
      }
    }
  }

  return v4;
}

- (void)_setMemoryStatusFlags:(uint64_t)flags
{
  v4 = a2;
  if (flags)
  {
    v5 = *(flags + 109);
    v6 = rbs_process_log();
    v7 = OUTLINED_FUNCTION_32(v6);
    if ((v5 & 8) != 0)
    {
      if (v7)
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v14, v15, v16, v17, v18, v19);
      }

      [(RBProcess *)flags _memoryStatusControl:1 flags:?];
      if (([*(flags + 88) isFreezerEligible] & 1) == 0)
      {
        v27 = rbs_process_log();
        if (OUTLINED_FUNCTION_32(v27))
        {
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v28, v29, v30, v31, v32, v33);
        }

        [(RBProcess *)flags _memoryStatusControl:0 flags:?];
      }

      if ((_deviceSupportsAppSwapping & 1) == 0 && [*(flags + 16) isApplication] && -[RBProcess _memoryStatusControl:flags:](flags, 25, 0) == 45)
      {
        v20 = rbs_process_log();
        if (OUTLINED_FUNCTION_32(v20))
        {
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_8();
          _os_log_impl(v21, v22, v23, v24, v25, v26);
        }

        _deviceSupportsAppSwapping = 1;
      }
    }

    else
    {
      if (v7)
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

- (void)_lock_shutdownSocketsAndLog:(uint64_t)log
{
  v17 = *MEMORY[0x277D85DE8];
  if (log)
  {
    if (pid_shutdown_sockets())
    {
      __error();
      OUTLINED_FUNCTION_11();
      if (v3)
      {
        return;
      }

      v4 = rbs_process_log();
      if (OUTLINED_FUNCTION_27(v4))
      {
        v5 = __error();
        strerror(*v5);
        OUTLINED_FUNCTION_17();
        v15 = 2080;
        v16 = v6;
        OUTLINED_FUNCTION_5();
        _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
      }
    }

    else
    {
      if (!a2)
      {
        return;
      }

      v12 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v12))
      {
        OUTLINED_FUNCTION_6();
        v15 = 2080;
        v16 = v13;
        _os_log_impl(&dword_262485000, a2, OS_LOG_TYPE_DEFAULT, "%{public}@ Shutdown sockets (%s)", v14, 0x16u);
      }
    }
  }
}

- (void)_applyJetsamLenientModeState:(uint64_t)state
{
  if (state)
  {
    if ((*(state + 109) & 8) == 0)
    {
      v3 = rbs_process_log();
      if (OUTLINED_FUNCTION_23(v3))
      {
LABEL_4:
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_8();
LABEL_16:
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }

LABEL_17:

      return;
    }

    v2 = a2;
    os_unfair_lock_lock(&_MergedGlobals_0);
    v10 = qword_2814AA0F0;
    if (!v2)
    {
      --qword_2814AA0F0;
      os_unfair_lock_unlock(&_MergedGlobals_0);
      if (v10 != 1)
      {
        v14 = rbs_process_log();
        if (!OUTLINED_FUNCTION_29(v14))
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (!OUTLINED_FUNCTION_38(12))
      {
        v22 = rbs_process_log();
        if (!OUTLINED_FUNCTION_23(v22))
        {
          goto LABEL_17;
        }

        goto LABEL_4;
      }

      __error();
      OUTLINED_FUNCTION_11();
      if (v12)
      {
        return;
      }

      v13 = rbs_process_log();
      if (!OUTLINED_FUNCTION_27(v13))
      {
        goto LABEL_17;
      }

LABEL_22:
      __error();
      v16 = __error();
      strerror(*v16);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_5();
      _os_log_error_impl(v17, v18, v19, v20, v21, 0x1Cu);
      goto LABEL_17;
    }

    ++qword_2814AA0F0;
    os_unfair_lock_unlock(&_MergedGlobals_0);
    if (v10)
    {
      v11 = rbs_process_log();
      if (!OUTLINED_FUNCTION_29(v11))
      {
        goto LABEL_17;
      }

LABEL_15:
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_0();
      v9 = 22;
      goto LABEL_16;
    }

    if (!OUTLINED_FUNCTION_38(11))
    {
      v23 = rbs_process_log();
      if (!OUTLINED_FUNCTION_23(v23))
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    __error();
    OUTLINED_FUNCTION_11();
    if (!v12)
    {
      v15 = rbs_process_log();
      if (!OUTLINED_FUNCTION_27(v15))
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }
}

- (uint64_t)_generateStackshotWithDescription:(int)description domain:(uint64_t)domain code:(void *)code additionalPayload:
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  codeCopy = code;
  if (!self)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v11 = rbs_process_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_33();
    _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_INFO, "%{public}@ Taking stackshot...", buf, 0xCu);
  }

  v24 = 0;
  *buf = description;
  domainCopy = domain;
  if (domain != 2343432205)
  {
    [self _sendSignal:17];
  }

  if (codeCopy)
  {
    if (WriteCrashReportWithStackshotWithPayload())
    {
      goto LABEL_8;
    }

LABEL_11:
    v12 = rbs_process_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
    }

    v13 = 0;
    goto LABEL_14;
  }

  if (!WriteCrashReportWithStackshot())
  {
    goto LABEL_11;
  }

LABEL_8:
  v12 = rbs_process_log();
  v13 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6();
    _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_INFO, "%{public}@ Stackshot complete", v21, 0xCu);
  }

LABEL_14:

LABEL_15:
  return v13;
}

- (id)_lock_lockedFilePathsIgnoring:(uint64_t)ignoring
{
  v166 = *MEMORY[0x277D85DE8];
  v146 = a2;
  if (ignoring)
  {
    v4 = *(ignoring + 8);
    v5 = proc_pidinfo(v4, 1, 0, 0, 0);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v5;
      ignoringCopy = ignoring;
      HIDWORD(v141) = v4;
      v138 = malloc_type_malloc(v5, 0x339F2B4BuLL);
      v7 = (proc_pidinfo(v4, 1, 0, v138, v6) >> 3);
      v8 = [MEMORY[0x277CBEB58] set];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      if (v7 >= 1)
      {
        v9 = v138;
        while (v9[1] != 1)
        {
LABEL_19:
          v9 += 2;
          if (!--v7)
          {
            goto LABEL_20;
          }
        }

        bzero(&buffer, 0x200uLL);
        v10 = proc_pidfdinfo(SHIDWORD(v141), *v9, 2, &buffer, 1200);
        if (v10)
        {
          v11 = v10;
          if (v10 > 0x4AF)
          {
            v21 = strlen(v165);
            if (v21)
            {
              v22 = [defaultManager stringWithFileSystemRepresentation:v165 length:v21];
              v12 = v22;
              if (v22)
              {
                stringByStandardizingPath = [v22 stringByStandardizingPath];
                [v8 addObject:stringByStandardizingPath];
              }

              goto LABEL_18;
            }

            v12 = rbs_process_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_13();
              *buf = 138543362;
              *&buf[4] = v24;
              v15 = v12;
              v16 = "%{public}@ nodeFDInfo.pvip.vip_path is empty for one fd";
              v17 = 12;
              goto LABEL_17;
            }
          }

          else
          {
            v12 = rbs_process_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_13();
              v13 = *v9;
              *buf = 138544130;
              *&buf[4] = v14;
              *&buf[12] = 1024;
              *&buf[14] = v11;
              *&buf[18] = 2048;
              *&buf[20] = 1200;
              *&buf[28] = 1024;
              *&buf[30] = v13;
              v15 = v12;
              v16 = "%{public}@ Weird size (%d != %lu) for fd %d";
              v17 = 34;
LABEL_17:
              _os_log_error_impl(&dword_262485000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
            }
          }
        }

        else
        {
          v12 = rbs_process_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v18 = *(ignoring + 32);
            v19 = *v9;
            v20 = *__error();
            *buf = 138543874;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v19;
            *&buf[18] = 1024;
            *&buf[20] = v20;
            v15 = v12;
            v16 = "%{public}@ proc_pidfdinfo failed for fd %d with errno %d";
            v17 = 24;
            goto LABEL_17;
          }
        }

LABEL_18:

        goto LABEL_19;
      }

LABEL_20:
      v140 = [MEMORY[0x277CBEB58] set];
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v2 = v8;
      v25 = [v2 countByEnumeratingWithState:&v153 objects:v162 count:16];
      if (!v25)
      {
        goto LABEL_72;
      }

      v27 = v25;
      v147 = *v154;
      *&v26 = 138543618;
      v143 = v26;
      *&v26 = 138543874;
      v142 = v26;
      obj = v2;
LABEL_22:
      v28 = 0;
      while (1)
      {
        if (*v154 != v147)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v153 + 1) + 8 * v28);
        uTF8String = [v29 UTF8String];
        bzero(&buffer, 0x90uLL);
        if (stat(uTF8String, &buffer))
        {
          break;
        }

        if ((buffer.st_mode & 0xF000) == 0x8000)
        {
          goto LABEL_30;
        }

        v66 = rbs_process_log();
        v67 = OUTLINED_FUNCTION_31(v66);
        if (v67)
        {
          OUTLINED_FUNCTION_0_5(v67, v68, v69, v70, v71, v72, v73, v74, v75, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v76, v143, *(&v143 + 1), obj);
          OUTLINED_FUNCTION_18();
          v52 = "%{public}@ Not checking lock on special file: %{public}@";
          goto LABEL_49;
        }

LABEL_50:

LABEL_51:
        if (++v28 == v27)
        {
          v2 = obj;
          v123 = [obj countByEnumeratingWithState:&v153 objects:v162 count:16];
          v27 = v123;
          if (!v123)
          {
LABEL_72:

            free(v138);
            goto LABEL_76;
          }

          goto LABEL_22;
        }
      }

      v31 = rbs_process_log();
      if (OUTLINED_FUNCTION_39(v31))
      {
        v88 = *(ignoringCopy + 32);
        v89 = __error();
        v90 = strerror(*v89);
        *buf = v142;
        *&buf[4] = v88;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        *&buf[22] = 2082;
        *&buf[24] = v90;
        _os_log_error_impl(&dword_262485000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Could not stat %{public}@: %{public}s", buf, 0x20u);
      }

LABEL_30:
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v2 = v146;
      v32 = [v2 countByEnumeratingWithState:&v149 objects:v161 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v150;
LABEL_32:
        v35 = 0;
        while (1)
        {
          if (*v150 != v34)
          {
            objc_enumerationMutation(v2);
          }

          v36 = *(*(&v149 + 1) + 8 * v35);
          if ([v29 hasPrefix:v36])
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [v2 countByEnumeratingWithState:&v149 objects:v161 count:16];
            if (v33)
            {
              goto LABEL_32;
            }

            goto LABEL_38;
          }
        }

        v53 = rbs_process_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_13();
          *buf = v142;
          *&buf[4] = v54;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          *&buf[22] = 2114;
          *&buf[24] = v36;
          _os_log_impl(&dword_262485000, v53, OS_LOG_TYPE_INFO, "%{public}@: Ignoring file %{public}@ because it is in an allowed path:  %{public}@", buf, 0x20u);
        }

        v55 = rbs_process_log();
        v56 = OUTLINED_FUNCTION_31(v55);
        if (v56)
        {
          OUTLINED_FUNCTION_0_5(v56, v57, v58, v59, v60, v61, v62, v63, v64, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v65, v143, *(&v143 + 1), obj);
          OUTLINED_FUNCTION_18();
          v52 = "%{public}@: Ignoring file because it is in an allowed path: %{public}@";
          goto LABEL_49;
        }

        goto LABEL_50;
      }

LABEL_38:

      if (([v29 hasSuffix:@"-shm"] & 1) != 0 || (objc_msgSend(v29, "hasSuffix:", @"-wal") & 1) != 0 || objc_msgSend(v29, "hasSuffix:", @"-journal"))
      {
        v37 = rbs_process_log();
        v38 = OUTLINED_FUNCTION_31(v37);
        if (v38)
        {
          OUTLINED_FUNCTION_0_5(v38, v39, v40, v41, v42, v43, v44, v45, v46, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v47, v143, *(&v143 + 1), obj);
          OUTLINED_FUNCTION_18();
          v52 = "%{public}@ Ignoring SQLite journal file: %{public}@";
LABEL_49:
          _os_log_impl(v48, v49, v50, v52, v51, 0x16u);
          goto LABEL_50;
        }
      }

      else
      {
        value = 0;
        if (getxattr(uTF8String, "com.apple.runningboard.can-suspend-locked", 0, 0, 0, 0) == 1)
        {
          getxattr(uTF8String, "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
        }

        if (value)
        {
          v77 = rbs_process_log();
          v78 = OUTLINED_FUNCTION_31(v77);
          if (!v78)
          {
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_0_5(v78, v79, v80, v81, v82, v83, v84, v85, v86, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v87, v143, *(&v143 + 1), obj);
          OUTLINED_FUNCTION_18();
          v52 = "%{public}@ Ignoring file with can-suspend-locked: %{public}@";
          goto LABEL_49;
        }

        v91 = _sqlite3_lockstate();
        if (v91)
        {
          if (v91 == 1)
          {
            v92 = rbs_process_log();
            v93 = OUTLINED_FUNCTION_31(v92);
            if (v93)
            {
              OUTLINED_FUNCTION_0_5(v93, v94, v95, v96, v97, v98, v99, v100, v101, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v102, v143, *(&v143 + 1), obj);
              OUTLINED_FUNCTION_18();
              v107 = "%{public}@ Found locked SQLite database: %{public}@";
              goto LABEL_62;
            }
          }

          else
          {
            *&buf[8] = 0;
            *&buf[20] = 3;
            *buf = 0;
            *&buf[16] = HIDWORD(v141);
            v119 = open(uTF8String, 0x20000);
            if (v119 < 1)
            {
              goto LABEL_51;
            }

            v2 = v119;
            v136 = buf;
            v120 = fcntl(v119, 66);
            close(v2);
            if (v120 == -1 || (*&buf[20] & 0xFFFD) != 1)
            {
              goto LABEL_51;
            }

            v121 = rbs_process_log();
            if (OUTLINED_FUNCTION_32(v121))
            {
              OUTLINED_FUNCTION_13();
              v157 = v143;
              v158 = v122;
              v159 = 2114;
              v160 = v29;
              v106 = &v157;
              v103 = &dword_262485000;
              v104 = v2;
              v105 = OS_LOG_TYPE_DEFAULT;
              v107 = "%{public}@ Found locked file lock: %{public}@";
LABEL_62:
              _os_log_impl(v103, v104, v105, v107, v106, 0x16u);
            }
          }

          [v140 addObject:v29];
          goto LABEL_51;
        }

        v108 = rbs_process_log();
        v109 = OUTLINED_FUNCTION_31(v108);
        if (v109)
        {
          OUTLINED_FUNCTION_0_5(v109, v110, v111, v112, v113, v114, v115, v116, v117, v136, v137, v138, defaultManager, v140, v141, v142, *(&v142 + 1), v118, v143, *(&v143 + 1), obj);
          OUTLINED_FUNCTION_18();
          v52 = "%{public}@ Ignoring unlocked SQLite database: %{public}@";
          goto LABEL_49;
        }
      }

      goto LABEL_50;
    }

    v124 = rbs_process_log();
    if (OUTLINED_FUNCTION_39(v124))
    {
      v126 = *(ignoring + 32);
      v127 = *__error();
      v128 = __error();
      v129 = strerror(*v128);
      buffer.st_dev = 138543874;
      *&buffer.st_mode = v126;
      WORD2(buffer.st_ino) = 1024;
      *(&buffer.st_ino + 6) = v127;
      HIWORD(buffer.st_uid) = 2080;
      *&buffer.st_gid = v129;
      OUTLINED_FUNCTION_16();
      _os_log_error_impl(v130, v131, v132, v133, v134, v135);
    }

    v140 = 0;
LABEL_76:
  }

  else
  {
    v140 = 0;
  }

  return v140;
}

- (void)_lock_setCPULimits:(uint64_t)limits violationPolicy:(unsigned int *)policy
{
  if (limits)
  {
    *__error() = 0;
    if ([*(limits + 64) effectiveMaxCPUUsageViolationPolicy] == 2)
    {
      if (proc_set_cpumon_params_fatal())
      {
LABEL_4:
        __error();
        OUTLINED_FUNCTION_11();
        if (v4)
        {
          return;
        }

        v5 = rbs_process_log();
        if (OUTLINED_FUNCTION_27(v5))
        {
          __error();
          OUTLINED_FUNCTION_3_0();
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
        }

        goto LABEL_10;
      }
    }

    else if (proc_set_cpumon_params())
    {
      goto LABEL_4;
    }

    v11 = rbs_process_log();
    if (OUTLINED_FUNCTION_29(v11))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7_0();
      _os_log_impl(v12, v13, v14, v15, v16, 0x18u);
    }

LABEL_10:
  }
}

- (void)_initWithInstance:(uint64_t)a1 auditToken:(uint64_t)a2 bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"instance"}];
}

- (void)_initWithInstance:(uint64_t)a1 auditToken:(uint64_t)a2 bundleProperties:jetsamProperties:initialState:hostProcess:properties:systemPreventsIdleSleep:cache:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"auditToken"}];
}

- (void)memoryLimits
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "Memory Limits for process:%{public}@ unknown", &v2, 0xCu);
}

- (void)processStartTime
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Could not get proc_pidinfo for pid %d, using defaults", v3, 8u);
}

- (void)setTerminating:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcess.m" lineNumber:560 description:{@"Cannot set a RBProcess terminating to NO, once terminating has started it cannot be stopped"}];
}

void __23__RBProcess_invalidate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "RBProcess %{public}@ invalidated before invokeHandlerOnProcessDeath handler was invoked", v2, v3, v4, v5);
}

void __84__RBProcess_collectDiagnostic_description_domain_code_additionalPayload_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "%{public}@ Tailspin generation failed!", v2, v3, v4, v5);
}

- (void)_generateTailspin
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "Failed to create directory with error: %@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_lock_terminateWithContext:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_sendSignal:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  __error();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void __26__RBProcess__lock_suspend__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __26__RBProcess__lock_suspend__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_15(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_24_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end