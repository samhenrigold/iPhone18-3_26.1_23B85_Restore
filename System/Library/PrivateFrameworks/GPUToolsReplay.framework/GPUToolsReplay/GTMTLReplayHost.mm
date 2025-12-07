@interface GTMTLReplayHost
@end

@implementation GTMTLReplayHost

void __GTMTLReplayHost_computeDerivedCountersFromData_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (g_runningInCI)
  {
    v3 = "#CI_ERROR# ";
  }

  else
  {
    v3 = "";
  }

  v4 = a3;
  v6 = [v4 toString];
  v5 = [v4 toDictionary];

  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData_block_invoke_2", 103, 2, "%s%s %u: [DYJSScripting] %@ %@\n", v3, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)_block_invoke_2", 103, v6, v5);
}

void __GTMTLReplayHost_computeDerivedCountersFromData_block_invoke(uint64_t a1, uint64_t a2)
{
  if (g_runningInCI)
  {
    v2 = "#CI_ERROR# ";
  }

  else
  {
    v2 = "";
  }

  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData_block_invoke", 99, 2, "%s%s %u: %@\n", v2, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)_block_invoke", 99, a2);
}

@end