@interface BMFrameStore(V2)
@end

@implementation BMFrameStore(V2)

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.1(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 attributes];
  v3 = [v2 path];
  v4 = [v1 privacyPathname:v3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.2(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.3(_DWORD *a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = MEMORY[0x1E698E9C8];
  v7 = [a2 attributes];
  v8 = [v7 path];
  v9 = [v6 privacyPathname:v8];
  v10[0] = 68290050;
  v10[1] = 4;
  v11 = 2082;
  v12 = a1;
  v13 = 1024;
  v14 = v5;
  v15 = 2114;
  v16 = v9;
  v17 = 1042;
  v18 = 4;
  v19 = 2082;
  v20 = "SEGB";
  _os_log_error_impl(&dword_1C928A000, a3, OS_LOG_TYPE_ERROR, "Segment header magic '%{public}.4s' (0x%04X) in file %{public}@ doesn't match expected magic '%{public}.4s'.", v10, 0x32u);
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.4(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 attributes];
  v3 = [v2 path];
  v4 = [v1 privacyPathname:v3];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)getSegmentHeader:()V2 fromFileV2:fileSize:.cold.5(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)initWithFileHandleV2:()V2 permission:.cold.2(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 backingFile];
  v3 = [v2 attributes];
  v4 = [v3 path];
  v5 = [v1 privacyPathname:v4];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)initWithFileHandleV2:()V2 permission:.cold.3(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 segmentPath];
  v3 = [v1 privacyPathname:v2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)initWithFileHandleV2:()V2 permission:.cold.4(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 backingFile];
  v3 = [v2 attributes];
  v4 = [v3 path];
  v5 = [v1 privacyPathname:v4];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)frameWithOffsetV2:()V2 expectedState:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)enumerateWithOptionsV2:()V2 fromOffset:usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMFrameStoreV2.m" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)determineFrameNumberToBeWritten:()V2 .cold.1(void *a1)
{
  v1 = MEMORY[0x1E698E9C8];
  v2 = [a1 segmentPath];
  v3 = [v1 privacyPathname:v2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:()V2 state:length:outFrameNumber:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkBoundsLength:()V2 .cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)writeFrameV2ForBytes:()V2 length:dataVersion:timestamp:outOffset:.cold.1(int *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109632;
  v4[1] = v3;
  v5 = 1024;
  v6 = 1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1C928A000, log, OS_LOG_TYPE_ERROR, "Unable to update status to written, someone else seems to have overwritten the value. We expect to see %u, but instead are seeing %u. The write status is %d", v4, 0x14u);
}

@end