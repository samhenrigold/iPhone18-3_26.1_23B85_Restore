@interface WFPausedShortcutData
- (WFPausedShortcutData)initWithCoder:(id)coder;
- (WFPausedShortcutData)initWithContext:(id)context descriptor:(id)descriptor;
- (WFWorkflowRunDescriptor)descriptor;
- (WFWorkflowRunningContext)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPausedShortcutData

- (WFWorkflowRunDescriptor)descriptor
{
  v18 = *MEMORY[0x1E69E9840];
  descriptor = self->_descriptor;
  if (!descriptor)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    descriptorData = self->_descriptorData;
    v13 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:descriptorData error:&v13];
    v8 = v13;
    v9 = self->_descriptor;
    self->_descriptor = v7;

    if (v8)
    {
      v10 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v15 = "[WFPausedShortcutData descriptor]";
        v16 = 2112;
        v17 = localizedDescription;
        _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "%s Unable to decode run descriptor: %@", buf, 0x16u);
      }
    }

    descriptor = self->_descriptor;
  }

  return descriptor;
}

- (WFWorkflowRunningContext)context
{
  v18 = *MEMORY[0x1E69E9840];
  context = self->_context;
  if (!context)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    contextData = self->_contextData;
    v13 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:contextData error:&v13];
    v8 = v13;
    v9 = self->_context;
    self->_context = v7;

    if (v8)
    {
      v10 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v15 = "[WFPausedShortcutData context]";
        v16 = 2112;
        v17 = localizedDescription;
        _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "%s Unable to decode running context: %@", buf, 0x16u);
      }
    }

    context = self->_context;
  }

  return context;
}

- (WFPausedShortcutData)initWithContext:(id)context descriptor:(id)descriptor
{
  contextCopy = context;
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = WFPausedShortcutData;
  v8 = [(WFPausedShortcutData *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:0];
    contextData = v8->_contextData;
    v8->_contextData = v9;

    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:descriptorCopy requiringSecureCoding:1 error:0];
    descriptorData = v8->_descriptorData;
    v8->_descriptorData = v11;

    v13 = v8;
  }

  return v8;
}

- (WFPausedShortcutData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFPausedShortcutData;
  v5 = [(WFPausedShortcutData *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"contextData"];
    contextData = v5->_contextData;
    v5->_contextData = v6;

    v8 = [coderCopy decodeObjectForKey:@"descriptorData"];
    descriptorData = v5->_descriptorData;
    v5->_descriptorData = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contextData = [(WFPausedShortcutData *)self contextData];
  [coderCopy encodeObject:contextData forKey:@"contextData"];

  descriptorData = [(WFPausedShortcutData *)self descriptorData];
  [coderCopy encodeObject:descriptorData forKey:@"descriptorData"];
}

@end