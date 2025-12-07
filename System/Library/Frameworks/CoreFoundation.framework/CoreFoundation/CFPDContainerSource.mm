@interface CFPDContainerSource
- (CFPDContainerSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name container:(__CFString *)container byHost:(BOOL)host managed:(BOOL)managed shmemIndex:(signed __int16)index daemon:(id)daemon;
- (void)dealloc;
@end

@implementation CFPDContainerSource

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  containerPath = self->_containerPath;
  if (containerPath)
  {
    CFRelease(containerPath);
  }

  v4.receiver = self;
  v4.super_class = CFPDContainerSource;
  [(CFPDSource *)&v4 dealloc];
}

- (CFPDContainerSource)initWithDomain:(__CFString *)domain userName:(__CFString *)name container:(__CFString *)container byHost:(BOOL)host managed:(BOOL)managed shmemIndex:(signed __int16)index daemon:(id)daemon
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CFPDContainerSource;
  v10 = [(CFPDSource *)&v13 initWithDomain:domain userName:name byHost:host managed:managed shmemIndex:index daemon:daemon];
  if (v10)
  {
    if (container)
    {
      v11 = CFRetain(container);
    }

    else
    {
      v11 = 0;
    }

    v10->_containerPath = v11;
  }

  return v10;
}

@end