@interface MCMXPCMessageRepairUserData
- (MCMXPCMessageRepairUserData)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
- (void)dealloc;
@end

@implementation MCMXPCMessageRepairUserData

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    free(sandboxToken);
    memset_s(&self->_sandboxToken, 8uLL, 0, 8uLL);
  }

  v4.receiver = self;
  v4.super_class = MCMXPCMessageRepairUserData;
  [(MCMXPCMessageBase *)&v4 dealloc];
}

- (unsigned)disposition
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MCMXPCMessageRepairUserData;
  disposition = [(MCMXPCMessageBase *)&v5 disposition];
  if (disposition == 1)
  {
    v3 = containermanager_copy_global_configuration();
    disposition = [v3 runmode] == 0;
  }

  return disposition;
}

- (MCMXPCMessageRepairUserData)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = MCMXPCMessageRepairUserData;
  v9 = [(MCMXPCMessageBase *)&v16 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    string = xpc_dictionary_get_string(objectCopy, "SandboxToken");
    if (string)
    {
      string = strndup(string, 0x800uLL);
    }

    v9->_sandboxToken = string;
    url = v9->_url;
    v9->_url = 0;

    v12 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"Path"];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:1 relativeToURL:0];
      v14 = v9->_url;
      v9->_url = v13;
    }
  }

  return v9;
}

@end