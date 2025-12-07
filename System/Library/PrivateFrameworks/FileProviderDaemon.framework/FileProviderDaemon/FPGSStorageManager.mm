@interface FPGSStorageManager
- (FPGSStorageManager)init;
- (id)permanentStorageForItemAtURL:(id)l allocateIfNone:(BOOL)none error:(id *)error;
- (id)permanentStorageForItemWithDocID:(unsigned int)d deviceID:(int)iD allocateIfNone:(BOOL)none error:(id *)error;
@end

@implementation FPGSStorageManager

- (FPGSStorageManager)init
{
  v6.receiver = self;
  v6.super_class = FPGSStorageManager;
  v2 = [(FPGSStorageManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    gs = v2->_gs;
    v2->_gs = v3;
  }

  return v2;
}

- (id)permanentStorageForItemAtURL:(id)l allocateIfNone:(BOOL)none error:(id *)error
{
  gs = self->_gs;
  v14 = 0;
  v7 = [(GSStorageManager *)gs permanentStorageForItemAtURL:l allocateIfNone:none error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
  }

  else if (error)
  {
    if (v8)
    {
      v12 = v8;
      *error = v9;
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22];
      *error = v13;
    }
  }

  return v7;
}

- (id)permanentStorageForItemWithDocID:(unsigned int)d deviceID:(int)iD allocateIfNone:(BOOL)none error:(id *)error
{
  gs = self->_gs;
  v15 = 0;
  v8 = [(GSStorageManager *)gs permanentStorageForItemWithDocID:*&d deviceID:*&iD allocateIfNone:none error:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    if (v9)
    {
      v13 = v9;
      *error = v10;
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22];
      *error = v14;
    }
  }

  return v8;
}

@end