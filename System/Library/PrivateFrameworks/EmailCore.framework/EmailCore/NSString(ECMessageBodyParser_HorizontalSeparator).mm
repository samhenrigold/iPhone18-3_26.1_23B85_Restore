@interface NSString(ECMessageBodyParser_HorizontalSeparator)
- (BOOL)ec_isHorizontalSeparator;
@end

@implementation NSString(ECMessageBodyParser_HorizontalSeparator)

- (BOOL)ec_isHorizontalSeparator
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if ((v2 - 201) < 0xFFFFFFFFFFFFFF3ALL)
  {
    return 0;
  }

  v4 = v2;
  _fastCharacterContents = [self _fastCharacterContents];
  if (_fastCharacterContents)
  {

    return bufferIsHorizontalSeparator(_fastCharacterContents, &_fastCharacterContents[2 * v4]);
  }

  else
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7[23] = v6;
    v7[24] = v6;
    v7[21] = v6;
    v7[22] = v6;
    v7[19] = v6;
    v7[20] = v6;
    v7[17] = v6;
    v7[18] = v6;
    v7[15] = v6;
    v7[16] = v6;
    v7[13] = v6;
    v7[14] = v6;
    v7[11] = v6;
    v7[12] = v6;
    v7[9] = v6;
    v7[10] = v6;
    v7[7] = v6;
    v7[8] = v6;
    v7[5] = v6;
    v7[6] = v6;
    v7[3] = v6;
    v7[4] = v6;
    v7[1] = v6;
    v7[2] = v6;
    v7[0] = v6;
    [self getCharacters:v7 range:{0, v4}];
    return bufferIsHorizontalSeparator(v7, v7 + 2 * v4);
  }
}

@end