@interface MCMXPCMessageStageSharedContent
- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageStageSharedContent

- (unsigned)disposition
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MCMXPCMessageStageSharedContent;
  disposition = [(MCMXPCMessageBase *)&v5 disposition];
  if (disposition == 1)
  {
    v3 = containermanager_copy_global_configuration();
    disposition = [v3 dispositionForContainerClass:13];
  }

  return disposition;
}

- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageStageSharedContent;
  v9 = [(MCMXPCMessageWithIdentifierBase *)&v16 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    v13 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:objectCopy key:"DestPath"];
    destinationRelativePath = v10->_destinationRelativePath;
    v10->_destinationRelativePath = v13;
  }

  return v10;
}

@end