@interface APDUUtil
+ (CApdu)getCXXApduWithCla:(SEL)cla ins:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 payload:(unsigned __int8)payload;
+ (id)getAPDUWithCla:(unsigned __int8)cla ins:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 payload:(id)payload;
@end

@implementation APDUUtil

+ (id)getAPDUWithCla:(unsigned __int8)cla ins:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 payload:(id)payload
{
  p2Copy = p2;
  p1Copy = p1;
  insCopy = ins;
  claCopy = cla;
  payloadCopy = payload;
  v12 = [MEMORY[0x29EDB8DF8] dataWithCapacity:{objc_msgSend(payloadCopy, "length") + 5}];
  [v12 appendU8:claCopy];
  [v12 appendU8:insCopy];
  [v12 appendU8:p1Copy];
  [v12 appendU8:p2Copy];
  [v12 appendU8:{objc_msgSend(payloadCopy, "length")}];
  if (payloadCopy)
  {
    [v12 appendData:payloadCopy];
  }

  return v12;
}

+ (CApdu)getCXXApduWithCla:(SEL)cla ins:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 payload:(unsigned __int8)payload
{
  v10 = [a2 getAPDUWithCla:ins ins:p1 p1:p2 p2:payload payload:a8];
  SERestoreInfo::CApdu::CApdu(retstr, [v10 bytes], objc_msgSend(v10, "length"), 0);
}

@end