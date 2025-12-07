@interface ASDStreamFormat(ASDTHelpers)
- (id)asdtEquivalentNativeFloatPacked;
- (void)asdtEquivalentNativeFloatPacked;
@end

@implementation ASDStreamFormat(ASDTHelpers)

- (id)asdtEquivalentNativeFloatPacked
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v2 = objc_msgSend_audioStreamBasicDescription(self, a2, 0);
  if (DWORD2(v7) == 1819304813)
  {
    *(&v7 + 1) = 0x96C70636DLL;
    LODWORD(v9) = 32;
    DWORD2(v8) = 4 * HIDWORD(v8);
    LODWORD(v8) = DWORD1(v8) * 4 * HIDWORD(v8);
    v4 = [objc_alloc(MEMORY[0x277CEFB78]) initWithAudioStreamBasicDescription:&v7];
  }

  else
  {
    v5 = ASDTBaseLogType(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ASDStreamFormat(ASDTHelpers) *)&v7 + 2 asdtEquivalentNativeFloatPacked];
    }

    v4 = 0;
  }

  return v4;
}

- (void)asdtEquivalentNativeFloatPacked
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = HIBYTE(*self);
  if ((*self - 0x20000000) >> 24 >= 0x5F)
  {
    v3 = 32;
  }

  v4 = BYTE2(v2);
  if (BYTE2(v2) - 32 >= 0x5F)
  {
    v4 = 32;
  }

  v5 = BYTE1(v2);
  if (BYTE1(v2) - 32 >= 0x5F)
  {
    v5 = 32;
  }

  v6 = *self;
  v7[0] = 67109888;
  v7[1] = v3;
  v8 = 1024;
  v9 = v4;
  v10 = 1024;
  v11 = v5;
  if ((v6 - 32) >= 0x5F)
  {
    v6 = 32;
  }

  v12 = 1024;
  v13 = v6;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "Cannot convert format with ID: %c%c%c%c", v7, 0x1Au);
}

@end