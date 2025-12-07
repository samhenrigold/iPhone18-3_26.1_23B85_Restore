@interface NSString(ParsecExtras)
- (id)safari_normalizedParsecInputString;
@end

@implementation NSString(ParsecExtras)

- (id)safari_normalizedParsecInputString
{
  v29[2] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"‘’‚‛");
  v28[0] = v3;
  v29[0] = @"'";
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08]);
  v28[1] = v4;
  v29[1] = @"";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [whitespaceCharacterSet mutableCopy];

  [v6 addCharactersInRange:{0x2000, 12}];
  [v6 addCharactersInString:@"  ᠎  　﻿"];
  precomposedStringWithCanonicalMapping = [self precomposedStringWithCanonicalMapping];
  lowercaseString = [precomposedStringWithCanonicalMapping lowercaseString];

  string = [MEMORY[0x1E696AD60] string];
  v10 = [lowercaseString length];
  if (v10)
  {
    LOBYTE(v11) = 0;
    for (i = 0; i != v10; ++i)
    {
      v13 = v11;
      v14 = [lowercaseString characterAtIndex:i];
      v27 = v14;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v11 = [v6 characterIsMember:v14];
      if (v11)
      {
        if ((v13 & 1) == 0)
        {
          if ([string length])
          {
            [string appendString:@" "];
          }

          *(v24 + 24) = 1;
        }
      }

      else if ((v24[3] & 1) == 0)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __60__NSString_ParsecExtras__safari_normalizedParsecInputString__block_invoke;
        v19[3] = &unk_1E7FC9000;
        v22 = v27;
        v15 = string;
        v20 = v15;
        v21 = &v23;
        [v18 enumerateKeysAndObjectsUsingBlock:v19];
        if ((v24[3] & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v27 length:1];
          [v15 appendString:v16];
        }
      }

      _Block_object_dispose(&v23, 8);
    }
  }

  return string;
}

@end