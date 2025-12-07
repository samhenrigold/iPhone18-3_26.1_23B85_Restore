@interface DAAppSession
- (DAAppSession)initWithXPCObject:(id)object error:(id *)error;
@end

@implementation DAAppSession

- (DAAppSession)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = DAAppSession;
  v7 = [(DAAppSession *)&v11 init];
  if (!v7)
  {
    if (error)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v10);
LABEL_9:
      *error = v8 = 0;
      goto LABEL_4;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_4;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      DAErrorF(350004, "XPC non-dict");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

@end