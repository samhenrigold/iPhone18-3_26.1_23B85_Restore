@interface REResourceClientPorts
- (REResourceClientPorts)init;
- (REResourceClientPorts)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REResourceClientPorts

- (REResourceClientPorts)init
{
  v9.receiver = self;
  v9.super_class = REResourceClientPorts;
  v2 = [(REResourceClientPorts *)&v9 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_taskIdentifierToken = 0;
  identity_token = task_create_identity_token(*MEMORY[0x1E69E9A60], &v2->_taskIdentifierToken);
  if (!identity_token)
  {
    return v3;
  }

  v6 = abort_report_np("The task cannot get its own task identifier port, the task may be corrupt. %d", identity_token);
  return [(REResourceClientPorts *)v6 initWithCoder:v7, v8];
}

- (REResourceClientPorts)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = REResourceClientPorts;
    v5 = [(REResourceClientPorts *)&v10 init];
    if (v5)
    {
      v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"taskIDToken"];
      v5->_taskIdentifierToken = xpc_mach_send_copy_right();
    }

    return v5;
  }

  else
  {
    v8 = abort_report_np("This object may only be decoded by an NSXPCCoder.");
    [(REResourceClientPorts *)v8 dealloc];
  }

  return result;
}

- (void)dealloc
{
  taskIdentifierToken = self->_taskIdentifierToken;
  if (taskIdentifierToken + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], taskIdentifierToken);
  }

  v4.receiver = self;
  v4.super_class = REResourceClientPorts;
  [(REResourceClientPorts *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = xpc_mach_send_create();
    [coderCopy encodeXPCObject:v3 forKey:@"taskIDToken"];
  }

  else
  {
    v4 = abort_report_np("This object may only be encoded by an NSXPCCoder.");
    [(REResourceClientPorts *)v4 description];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = REResourceClientPorts;
  v4 = [(REResourceClientPorts *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@(taskIdentifierToken:%d)", v4, self->_taskIdentifierToken];

  return v5;
}

@end