@interface _GCAppClientProxy(GCPhotoVideoXPCProxyService)
@end

@implementation _GCAppClientProxy(GCPhotoVideoXPCProxyService)

- (void)onVideoRecordingStopWithURL:()GCPhotoVideoXPCProxyService reply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.4(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.5(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }
}

- (void)takeScreenshotWithReply:()GCPhotoVideoXPCProxyService .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

@end