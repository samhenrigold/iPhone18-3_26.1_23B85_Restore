@interface CPUEnergySnapshot
+ (id)snapshotCPUEnergy:(unint64_t)energy;
- (double)computeEnergyDiff:(id)diff;
@end

@implementation CPUEnergySnapshot

+ (id)snapshotCPUEnergy:(unint64_t)energy
{
  if (!energy)
  {
    v7 = processLogger(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

    goto LABEL_11;
  }

  v3 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
  if (!v3)
  {
    v7 = processLogger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

LABEL_11:

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v4 = v3;
  v5 = coalition_info_resource_usage();
  if (v5)
  {
    v6 = processLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

    free(v4);
    goto LABEL_12;
  }

  v8 = objc_alloc_init(CPUEnergySnapshot);
  [(CPUEnergySnapshot *)v8 setCpuEnergy:v4[11]];
  [(CPUEnergySnapshot *)v8 setCpuEnergyBilledToMe:v4[20]];
  [(CPUEnergySnapshot *)v8 setCpuEnergyBilledToOthers:v4[21]];
  date = [MEMORY[0x277CBEAA8] date];
  [(CPUEnergySnapshot *)v8 setTime:date];

  free(v4);
LABEL_13:

  return v8;
}

- (double)computeEnergyDiff:(id)diff
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  diffCopy = diff;
  v6 = [v4 numberWithUnsignedLongLong:{-[CPUEnergySnapshot cpuEnergy](self, "cpuEnergy") - objc_msgSend(diffCopy, "cpuEnergy")}];
  [v6 doubleValue];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[CPUEnergySnapshot cpuEnergyBilledToMe](self, "cpuEnergyBilledToMe") - objc_msgSend(diffCopy, "cpuEnergyBilledToMe")}];
  [v9 doubleValue];
  v11 = v10;

  v12 = MEMORY[0x277CCABB0];
  cpuEnergyBilledToOthers = [(CPUEnergySnapshot *)self cpuEnergyBilledToOthers];
  cpuEnergyBilledToOthers2 = [diffCopy cpuEnergyBilledToOthers];

  v15 = [v12 numberWithUnsignedLongLong:cpuEnergyBilledToOthers - cpuEnergyBilledToOthers2];
  [v15 doubleValue];
  v17 = v16;

  if (v8 < 0.0 || v11 < 0.0 || v17 < 0.0)
  {
    v20 = processLogger(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = v17;
      _os_log_error_impl(&dword_243DC3000, v20, OS_LOG_TYPE_ERROR, "unexpected energy values: %f %f %f", &v22, 0x20u);
    }

    goto LABEL_9;
  }

  v19 = (v8 + v11 - v17) / 3600000000.0;
  if (v19 < 0.0)
  {
    v20 = processLogger(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CPUEnergySnapshot computeEnergyDiff:];
    }

LABEL_9:

    return 0.0;
  }

  return v19;
}

@end