@interface CUSPAKECommon
+ (BOOL)scryptWithPasswordData:(id)data outputPtr:(char *)ptr outputLen:(unint64_t)len error:(id *)error;
@end

@implementation CUSPAKECommon

+ (BOOL)scryptWithPasswordData:(id)data outputPtr:(char *)ptr outputLen:(unint64_t)len error:(id *)error
{
  dataCopy = data;
  v8 = ccscrypt_storage_size();
  if (v8 <= 0)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960553, "bad scrypt storage size: %lld bytes");
LABEL_11:
    *error = v11 = 0;
    goto LABEL_4;
  }

  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v9)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "scrypt storage malloc failed: %lld bytes");
    goto LABEL_11;
  }

  v10 = v9;
  [dataCopy length];
  [dataCopy bytes];
  v11 = 1;
  v12 = ccscrypt();
  free(v10);
  if (v12)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccscrypt failed: %d");
      goto LABEL_11;
    }

LABEL_12:
    v11 = 0;
  }

LABEL_4:

  return v11;
}

@end