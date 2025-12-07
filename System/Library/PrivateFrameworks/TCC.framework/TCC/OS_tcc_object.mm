@interface OS_tcc_object
- (void)dealloc;
@end

@implementation OS_tcc_object

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  selfCopy = self;
  v5 = 2080;
  ClassName = object_getClassName(self);
  _os_log_debug_impl(&dword_1B1686000, a2, OS_LOG_TYPE_DEBUG, "disposing: %p(%s)", &v3, 0x16u);
}

@end