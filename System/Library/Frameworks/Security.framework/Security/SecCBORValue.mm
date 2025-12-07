@interface SecCBORValue
- (unint64_t)getNumUintBytes:(unint64_t)bytes;
- (void)encodeStartItems:(unint64_t)items output:(id)output;
- (void)setUint:(unsigned __int8)uint item2:(unint64_t)item2 output:(id)output;
@end

@implementation SecCBORValue

- (unint64_t)getNumUintBytes:(unint64_t)bytes
{
  v3 = 1;
  v4 = 2;
  v5 = 8;
  if (!HIDWORD(bytes))
  {
    v5 = 4;
  }

  if (bytes >= 0x10000)
  {
    v4 = v5;
  }

  if (bytes >= 0x100)
  {
    v3 = v4;
  }

  if (bytes >= 0x18)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)setUint:(unsigned __int8)uint item2:(unint64_t)item2 output:(id)output
{
  uintCopy = uint;
  outputCopy = output;
  v9 = [(SecCBORValue *)self getNumUintBytes:item2];
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v10 = 25;
        v11 = 1;
        break;
      case 4:
        v10 = 26;
        v11 = 3;
        break;
      case 8:
        v10 = 27;
        v11 = 7;
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    [(SecCBORValue *)self setAdditionalInformation:uintCopy item2:item2 output:outputCopy];
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    v11 = 0;
    v10 = 24;
LABEL_11:
    [(SecCBORValue *)self setAdditionalInformation:uintCopy item2:v10 output:outputCopy];
    v12 = v11 + 1;
    v13 = 8 * v11;
    do
    {
      v15 = item2 >> v13;
      [outputCopy appendBytes:&v15 length:1];
      v13 -= 8;
    }

    while (v12-- > 1);
  }

LABEL_14:
}

- (void)encodeStartItems:(unint64_t)items output:(id)output
{
  outputCopy = output;
  [(SecCBORValue *)self setUint:[(SecCBORValue *)self fieldValue] item2:items output:outputCopy];
}

@end