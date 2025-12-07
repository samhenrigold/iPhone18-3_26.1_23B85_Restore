@interface RBSOSServiceProcessIdentity
- (BOOL)_matchesIdentity:(id)identity;
- (BOOL)treatedAsAnAppByFrontBoard:(id *)board;
- (RBSOSServiceProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSOSServiceProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_initServiceWithJobLabel:(id)label pid:(int)pid auid:(unsigned int)auid type:(unsigned __int8)type;
- (id)angelJobLabel;
- (id)consistentLaunchdJobLabel;
- (id)daemonJobLabel;
- (id)debugDescription;
- (id)encodeForJob;
- (void)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
- (void)setOsServiceType:(unsigned __int8)type;
@end

@implementation RBSOSServiceProcessIdentity

- (id)consistentLaunchdJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (id)encodeForJob
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_type <= 1u)
  {
    [(RBSOSServiceProcessIdentity *)&v7 encodeForJob];
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 6);
  jobLabel = self->_jobLabel;
  if (jobLabel)
  {
    uTF8String = [(NSString *)jobLabel UTF8String];
    if (uTF8String)
    {
      xpc_dictionary_set_string(empty, "l", uTF8String);
    }
  }

  xpc_dictionary_set_int64(empty, "p", self->super._pid);
  xpc_dictionary_set_int64(empty, "t", self->_type);

  return empty;
}

- (id)_initServiceWithJobLabel:(id)label pid:(int)pid auid:(unsigned int)auid type:(unsigned __int8)type
{
  v7 = *&auid;
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = RBSOSServiceProcessIdentity;
  _init = [(RBSProcessIdentity *)&v22 _init];
  v13 = _init;
  if (_init)
  {
    *(_init + 2) = pid;
    objc_storeStrong(_init + 7, label);
    if (v7)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"osservice<%@(%d)>", v13[7], v7];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"osservice<%@>", v13[7], v21];
    }
    v14 = ;
    v15 = v13[2];
    v13[2] = v14;

    v16 = *(v13 + 2);
    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%d", v13[2], v16];
      v18 = v13[2];
      v13[2] = v17;
    }

    v13[3] = [v13[2] hash];
    *(v13 + 64) = type;
    v19 = v13;
  }

  return v13;
}

- (BOOL)_matchesIdentity:(id)identity
{
  identityCopy = identity;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && ((jobLabel = self->_jobLabel, v9 = identityCopy[7], jobLabel == v9) || (jobLabel ? (v10 = v9 == 0) : (v10 = 1), !v10 && [(NSString *)jobLabel isEqual:?])) && self->super._pid == *(identityCopy + 2);

  return v6;
}

- (id)debugDescription
{
  v3 = self->_jobLabel;
  auid = [(RBSProcessIdentity *)self auid];
  v5 = auid;
  v6 = MEMORY[0x1E696AEC0];
  pid = self->super._pid;
  if (pid <= 0)
  {
    v8 = &stru_1F01CD8F0;
  }

  else
  {
    v8 = @" pid=";
  }

  if (pid < 1)
  {
    v9 = &stru_1F01CD8F0;
    if (auid)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:pid];
    if (v5)
    {
LABEL_6:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
      v11 = [v6 stringWithFormat:@"<type=%@ identifier=%@%@%@%@%@>", @"daemon", v3, v8, v9, @" AUID=", v10];

      goto LABEL_9;
    }
  }

  v11 = [v6 stringWithFormat:@"<type=%@ identifier=%@%@%@%@%@>", @"daemon", v3, v8, v9, &stru_1F01CD8F0, &stru_1F01CD8F0];
LABEL_9:
  if (pid >= 1)
  {
  }

  return v11;
}

- (RBSOSServiceProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  v8 = uuidCopy;
  if (uuidCopy)
  {
    v9 = rbs_general_log(uuidCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [RBSOSServiceProcessIdentity initWithDecodeFromJob:v8 uuid:v9];
    }
  }

  int64 = xpc_dictionary_get_int64(jobCopy, "p");
  string = xpc_dictionary_get_string(jobCopy, "l");
  if (string)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(RBSOSServiceProcessIdentity *)self _initServiceWithJobLabel:v12 pid:int64 auid:0 type:xpc_dictionary_get_int64(jobCopy, "t")];

  return v13;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  jobLabel = self->_jobLabel;
  coderCopy = coder;
  [coderCopy encodeObject:jobLabel forKey:@"_jobLabel"];
  [coderCopy encodeInt64:self->super._pid forKey:@"_pid"];
  [coderCopy encodeInt64:self->_type forKey:@"_type"];
}

- (RBSOSServiceProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_pid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_jobLabel"];
  v7 = [coderCopy decodeInt64ForKey:@"_type"];

  v8 = [(RBSOSServiceProcessIdentity *)self _initServiceWithJobLabel:v6 pid:v5 auid:0 type:v7];
  return v8;
}

- (id)daemonJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (id)angelJobLabel
{
  v2 = [(NSString *)self->_jobLabel copy];

  return v2;
}

- (void)setOsServiceType:(unsigned __int8)type
{
  if (self->_type == 1)
  {
    self->_type = type;
  }
}

- (BOOL)treatedAsAnAppByFrontBoard:(id *)board
{
  type = self->_type;
  if (type == 2)
  {
    return 0;
  }

  if (type == 3)
  {
    return 1;
  }

  v7 = +[RBSConnection sharedInstance];
  LOBYTE(board) = [v7 isIdentityAnAngel:self withError:board];

  return board;
}

- (void)encodeForJob
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x1E69E9C10];
  v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v8 = *a3;
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10[0] = 67109120;
  v10[1] = v8;
  _os_log_send_and_compose_impl(v9, self, a2, 80, &dword_18E8AD000, v6, 16, "assertion failure: can only encode well defined types : type=%i", v10);
  _os_crash_msg();
  __break(1u);
}

- (void)initWithDecodeFromJob:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "There is no reason a daemon should have a UUID: %@", &v2, 0xCu);
}

@end