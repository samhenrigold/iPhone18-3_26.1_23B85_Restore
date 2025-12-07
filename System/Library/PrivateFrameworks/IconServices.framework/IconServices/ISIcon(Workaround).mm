@interface ISIcon(Workaround)
@end

@implementation ISIcon(Workaround)

- (void)_prepareImageForImageDescriptor:()Workaround .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[ISIcon(Workaround) _prepareImageForImageDescriptor:]";
  _os_log_fault_impl(&dword_1A77B8000, log, OS_LOG_TYPE_FAULT, "Unauthorized use of internal IS implementation: %s. Returning generic app icon data.", &v1, 0xCu);
}

@end