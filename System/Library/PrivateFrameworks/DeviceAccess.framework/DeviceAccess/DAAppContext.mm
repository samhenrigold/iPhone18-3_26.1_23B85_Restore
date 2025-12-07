@interface DAAppContext
- (DAAppContext)initWithCoder:(id)coder;
- (DAAppContext)initWithXPCObject:(id)object error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAAppContext

- (DAAppContext)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DAAppContext;
  coderCopy = coder;
  v4 = [(DAAppContext *)&v10 init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = coderCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 decodeXPCObjectOfType:MEMORY[0x277D86478] forKey:@"xpcE"];
    xpcEndpoint = v4->_xpcEndpoint;
    v4->_xpcEndpoint = v6;

    v8 = v4;
  }

  else
  {
    [(DAAppContext *)coderCopy initWithCoder:?];
    coderCopy = v11;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (self->_xpcEndpoint)
  {
    v5 = (isKindOfClass & 1) == 0;
    v6 = coderCopy;
    if (v5)
    {
      v6 = 0;
    }

    [v6 encodeXPCObject:? forKey:?];
  }
}

- (DAAppContext)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = DAAppContext;
  v7 = [(DAAppContext *)&v13 init];
  if (!v7)
  {
    if (error)
    {
      v12 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v12);
LABEL_13:
      *error = v10 = 0;
      goto LABEL_8;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_8;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      DAErrorF(350004, "XPC non-dict");
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = xpc_dictionary_get_value(objectCopy, "xpcE");
  v9 = v8;
  if (v8)
  {
    if (MEMORY[0x24C1DC9E0](v8) != MEMORY[0x277D86478])
    {
      if (error)
      {
        DAErrorF(350001, "XPC non-endpoint");
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_7;
    }

    objc_storeStrong(&v7->_xpcEndpoint, v9);
  }

  v10 = v7;
LABEL_7:

LABEL_8:
  return v10;
}

- (void)encodeWithXPCObject:(id)object
{
  xpcEndpoint = self->_xpcEndpoint;
  if (xpcEndpoint)
  {
    xpc_dictionary_set_value(object, "xpcE", xpcEndpoint);
  }
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  v5 = DAErrorF(350001, "%@ init failed", v4);
  *a2 = v5;
  [a1 failWithError:v5];
}

@end