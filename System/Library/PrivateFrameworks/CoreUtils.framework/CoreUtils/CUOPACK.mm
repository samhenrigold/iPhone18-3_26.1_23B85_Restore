@interface CUOPACK
+ (id)decodeData:(id)data flags:(unsigned int)flags error:(id *)error;
+ (id)encodeObject:(id)object flags:(unsigned int)flags error:(id *)error;
@end

@implementation CUOPACK

+ (id)decodeData:(id)data flags:(unsigned int)flags error:(id *)error
{
  v11 = -6700;
  v6 = OPACKDecodeData(data, flags, &v11);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (error)
  {
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = 4294960596;
    }

    *error = NSErrorF_safe(*MEMORY[0x1E696A768], v10, "OPACK decode failed");
  }

  return v7;
}

+ (id)encodeObject:(id)object flags:(unsigned int)flags error:(id *)error
{
  v11 = -6700;
  DataMutable = OPACKEncoderCreateDataMutable(object, *&flags, &v11);
  v7 = DataMutable;
  if (DataMutable)
  {
    v8 = DataMutable;
  }

  else if (error)
  {
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = 4294960596;
    }

    *error = NSErrorF_safe(*MEMORY[0x1E696A768], v10, "OPACK encode failed");
  }

  return v7;
}

@end