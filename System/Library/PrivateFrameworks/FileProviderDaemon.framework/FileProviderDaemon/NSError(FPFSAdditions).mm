@interface NSError(FPFSAdditions)
+ (id)fp_errorForDataProtectionClass:()FPFSAdditions;
+ (id)fp_nonEvictableChildrenErrorWithFD:()FPFSAdditions trashIno:busyIno:;
+ (id)purgeabilityErrorForReason:()FPFSAdditions atURL:;
- (id)fp_protectionClassBehindError;
@end

@implementation NSError(FPFSAdditions)

+ (id)purgeabilityErrorForReason:()FPFSAdditions atURL:
{
  v5 = a4;
  v6 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:v5 debugDescription:@"Unable to stat(2) item after eviction attempt"];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v7 = FPEvictionWithUnsyncedEditsError();
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v7 = FPEvictionOnBusyItemError();
        break;
      case 4:
        v7 = FPEvictionOnItemWithHardlinkError();
        break;
      case 5:
        v7 = FPMissingAllowsEvictingCapabilitiesError();
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v7;
LABEL_13:

  return v6;
}

+ (id)fp_nonEvictableChildrenErrorWithFD:()FPFSAdditions trashIno:busyIno:
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  fpfs_fgetpath();
  v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v11 isDirectory:1 relativeToURL:0];
  v10 = objc_opt_new();
  v6 = v10;
  v7 = v5;
  fpfs_fopendir();
  v8 = FPNonEvictableChildrenError();

  return v8;
}

- (id)fp_protectionClassBehindError
{
  if (([self fp_isCocoaErrorCode:257] & 1) != 0 || objc_msgSend(self, "fp_isPOSIXErrorCode:", 1))
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:@"dataProtectionClass"];

    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = v3;
      v4 = v3;
    }

    else
    {
      userInfo2 = [self userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A998]];

      if (v6)
      {
        v10 = 0;
        v7 = [v6 getResourceValue:&v10 forKey:*MEMORY[0x1E695DAF0] error:0];
        v8 = v10;

        if (v7)
        {
          v3 = v8;
          v4 = v3;
        }

        else
        {
          v4 = 0;
          v3 = v8;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fp_errorForDataProtectionClass:()FPFSAdditions
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v9 = @"dataProtectionClass";
    v10 = *MEMORY[0x1E695DAE0];
    v3 = MEMORY[0x1E695DF20];
    v4 = &v10;
    v5 = &v9;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v11 = @"dataProtectionClass";
    v12[0] = *MEMORY[0x1E695DAD8];
    v3 = MEMORY[0x1E695DF20];
    v4 = v12;
    v5 = &v11;
LABEL_5:
    v6 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v6];

  return v7;
}

@end