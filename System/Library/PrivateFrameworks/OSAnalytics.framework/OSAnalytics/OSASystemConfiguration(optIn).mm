@interface OSASystemConfiguration(optIn)
- (void)optInDRE;
@end

@implementation OSASystemConfiguration(optIn)

- (void)optInDRE
{
  xpc_dictionary_get_string(self, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end