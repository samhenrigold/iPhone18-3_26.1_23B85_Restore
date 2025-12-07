@interface CIContext(CIRenderDestination)
@end

@implementation CIContext(CIRenderDestination)

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s A destination with unassociated alpha does not support blend modes.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a2, a3, "CIRenderDestination.captureTraceURL: Failed to start capture, error %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.6(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x600u);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s %{public}s", v3, v4, v5, v6, v7);
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.7(int a1)
{
  CI::name_for_format(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is not supported on GLES.", v3, v4, v5, v6, v7);
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s The image extent and destination extent do not intersect.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s The destination is invalid.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s The destination is nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_startTaskToRender:()CIRenderDestination toDestination:forPrepareRender:forClear:error:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s The CIContext is invalid.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end