@interface SPIProcessUtils
+ (id)getProcessNameForPid:(int)pid;
+ (int)getUsageForPid:(int)pid withOutput:(SPIResourceUsage *)output;
+ (unsigned)getProcessForPid:(int)pid;
@end

@implementation SPIProcessUtils

+ (id)getProcessNameForPid:(int)pid
{
  v6 = *MEMORY[0x277D85DE8];
  if (proc_name(pid, buffer, 0x400u) < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
  }

  return v3;
}

+ (unsigned)getProcessForPid:(int)pid
{
  v3 = [SPIProcessUtils getProcessNameForPid:*&pid];
  v4 = [processNameToTypeMapping objectForKey:v3];

  if (v4)
  {
    v5 = [processNameToTypeMapping objectForKeyedSubscript:v3];
    LOBYTE(v4) = [v5 unsignedShortValue];
  }

  return v4;
}

+ (int)getUsageForPid:(int)pid withOutput:(SPIResourceUsage *)output
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  result = proc_pid_rusage(pid, 5, v6);
  if (!result)
  {
    *&output->cpuCycles = vextq_s8(*(v18 + 8), *(v18 + 8), 8uLL);
    output->memPhysFootprint = *(&v7 + 1);
  }

  return result;
}

@end