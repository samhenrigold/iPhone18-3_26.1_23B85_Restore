@interface FBProcessCPUStatistics
- (FBProcessCPUStatistics)initWithProcessHandle:(id)handle;
- (double)totalElapsedIdleTime;
- (double)totalElapsedSystemTime;
- (double)totalElapsedUserTime;
- (id)descriptionForCrashReport;
- (void)_hostwideUserElapsedCPUTime:(double *)time systemElapsedCPUTime:(double *)uTime idleElapsedCPUTime:(double *)pUTime;
- (void)_lock_getApplicationCPUTimesForUser:(double *)user system:(double *)system idle:(double *)idle;
- (void)reset;
@end

@implementation FBProcessCPUStatistics

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _hostwideUserElapsedCPUTime:&self->_times systemElapsedCPUTime:&self->_times.beginSystemCPUElapsedTime idleElapsedCPUTime:&self->_times.beginIdleCPUElapsedTime];
  [(RBSProcessHandle *)self->_handle elapsedCPUTimeForFrontBoard];
  self->_times.beginApplicationCPUElapsedTime = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (FBProcessCPUStatistics)initWithProcessHandle:(id)handle
{
  handleCopy = handle;
  NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
  if (!handleCopy)
  {
    [(FBProcessCPUStatistics *)a2 initWithProcessHandle:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBProcessCPUStatistics *)a2 initWithProcessHandle:?];
  }

  v7 = [handleCopy pid];
  if (v7 == getpid())
  {
    goto LABEL_7;
  }

  if (initWithProcessHandle__onceToken != -1)
  {
    [FBProcessCPUStatistics initWithProcessHandle:];
  }

  if (initWithProcessHandle__entitled == 1)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = FBProcessCPUStatistics;
    v8 = [(FBProcessCPUStatistics *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v8->_handle, handle);
      [(FBProcessCPUStatistics *)v9 reset];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __48__FBProcessCPUStatistics_initWithProcessHandle___block_invoke()
{
  result = BSSelfTaskHasEntitlement();
  initWithProcessHandle__entitled = result;
  return result;
}

- (double)totalElapsedUserTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:&v4 system:0 idle:0];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)totalElapsedSystemTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:0 system:&v4 idle:0];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)totalElapsedIdleTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:0 system:0 idle:&v4];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)descriptionForCrashReport
{
  v14[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:&v13 system:&v12 idle:&v11];
  v3 = v13 + v12 + v11;
  v4 = llround((v13 + v12) * 100.0 / v3);
  [(RBSProcessHandle *)self->_handle elapsedCPUTimeForFrontBoard];
  v6 = v5 - self->_times.beginApplicationCPUElapsedTime;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Elapsed total CPU time (seconds): %.3f (user %.3f, system %.3f), %i%% CPU", v13 + v12, *&v13, *&v12, v4];
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Elapsed application CPU time (seconds): %.3f, %i%% CPU", *&v6, llround(v6 * 100.0 / v3)];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  return v9;
}

- (void)_lock_getApplicationCPUTimesForUser:(double *)user system:(double *)system idle:(double *)idle
{
  os_unfair_lock_assert_owner(&self->_lock);
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  [(FBProcessCPUStatistics *)self _hostwideUserElapsedCPUTime:&v13 systemElapsedCPUTime:&v12 idleElapsedCPUTime:&v11];
  beginSystemCPUElapsedTime = self->_times.beginSystemCPUElapsedTime;
  beginIdleCPUElapsedTime = self->_times.beginIdleCPUElapsedTime;
  if (user)
  {
    *user = v13 - self->_times.beginUserCPUElapsedTime;
  }

  if (system)
  {
    *system = v12 - beginSystemCPUElapsedTime;
  }

  if (idle)
  {
    *idle = v11 - beginIdleCPUElapsedTime;
  }
}

- (void)_hostwideUserElapsedCPUTime:(double *)time systemElapsedCPUTime:(double *)uTime idleElapsedCPUTime:(double *)pUTime
{
  v27 = *MEMORY[0x1E69E9840];
  *host_info_out = 0;
  v21 = 0;
  host_info_outCnt = 4;
  v8 = MEMORY[0x1AC572B20](self, a2);
  v9 = host_statistics(v8, 3, host_info_out, &host_info_outCnt);
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (!v9)
  {
    v13 = (HIDWORD(v21) + host_info_out[0]);
    v14 = _cpuTicksToTimeInterval_microsecondsPerTick;
    if (_cpuTicksToTimeInterval_microsecondsPerTick < 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v22 = 20;
      *v26 = 0xC00000001;
      if (sysctl(v26, 2u, &v23, &v22, 0, 0))
      {
        v15 = _cpuTicksToTimeInterval_microsecondsPerTick;
      }

      else
      {
        v15 = HIDWORD(v23);
        _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v23);
      }

      v14 = v15;
      v10 = (v15 * v13) / 1000000.0;
      v13 = host_info_out[1];
      if (v15 <= 0)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v22 = 20;
        *v26 = 0xC00000001;
        if (sysctl(v26, 2u, &v23, &v22, 0, 0))
        {
          v18 = _cpuTicksToTimeInterval_microsecondsPerTick;
        }

        else
        {
          v18 = HIDWORD(v23);
          _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v23);
        }

        v14 = v18;
        v16 = v18 * v13;
        v17 = v21;
        if (v18 <= 0)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v22 = 20;
          *v26 = 0xC00000001;
          if (sysctl(v26, 2u, &v23, &v22, 0, 0))
          {
            LODWORD(v14) = _cpuTicksToTimeInterval_microsecondsPerTick;
          }

          else
          {
            LODWORD(v14) = HIDWORD(v23);
            _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v23);
          }

          v14 = v14;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v10 = (_cpuTicksToTimeInterval_microsecondsPerTick * v13) / 1000000.0;
      LODWORD(v13) = host_info_out[1];
    }

    v16 = v14 * v13;
    v17 = v21;
LABEL_9:
    v11 = v16 / 1000000.0;
    v12 = (v14 * v17) / 1000000.0;
  }

  if (time)
  {
    *time = v10;
  }

  if (uTime)
  {
    *uTime = v11;
  }

  if (pUTime)
  {
    *pUTime = v12;
  }
}

- (void)initWithProcessHandle:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:RBSProcessHandleClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBProcessCPUStatistics.m";
    v10 = 1024;
    v11 = 32;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProcessHandle:(const char *)a1 .cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"FBProcessCPUStatistics.m";
    v10 = 1024;
    v11 = 32;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end