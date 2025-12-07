@interface MusicStringContainsCJKScripts
@end

@implementation MusicStringContainsCJKScripts

void __MusicStringContainsCJKScripts_block_invoke(id a1)
{
  HIDWORD(v4) = 0;
  v1 = [@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" length];
  if ([@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" _fastCharacterContents])
  {
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = uset_openPattern();
  }

  else
  {
    *&v2 = __chkstk_darwin().n128_u64[0];
    [@"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]" getCharacters:&v4 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v1, v2}];
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = uset_openPattern();
  }

  if (SHIDWORD(v4) >= 1)
  {
    NSLog(@"Couldn’t create USet from pattern %@", @"[^[[:Hani:][:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙]]]");
    MusicStringContainsCJKScripts_sNonCJKCharacterSet = 0;
  }
}

@end