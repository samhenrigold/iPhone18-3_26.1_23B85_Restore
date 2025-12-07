@interface MnemonicRepresentation
+ (id)entropyFromMnemonic:(id)mnemonic;
+ (id)mnemonicFrom:(id)from;
+ (id)mnemonicWordList;
+ (id)potentialWords:(id)words;
+ (id)seedFromMnemonic:(id)mnemonic;
+ (id)textfieldAutoCompleteBuilder:(id)builder forNextLetter:(id)letter;
@end

@implementation MnemonicRepresentation

+ (id)mnemonicWordList
{
  if (mnemonicWordList_wordlistToken != -1)
  {
    +[MnemonicRepresentation mnemonicWordList];
  }

  v3 = mnemonicWordList__wordlist;

  return v3;
}

void __42__MnemonicRepresentation_mnemonicWordList__block_invoke()
{
  v0 = mnemonicWordList__wordlist;
  mnemonicWordList__wordlist = &unk_1F29983E8;
}

+ (id)mnemonicFrom:(id)from
{
  v35 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (([fromCopy length] & 3) != 0 || objc_msgSend(fromCopy, "length") < 0xC || objc_msgSend(fromCopy, "length") >= 0x21)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = [fromCopy length];
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "input entropy to mnemonic generation is of incorrect length, %lu", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    CC_SHA256([fromCopy bytes], objc_msgSend(fromCopy, "length"), buf);
    v7 = buf[0];
    v8 = 8 * [fromCopy length];
    v9 = ([fromCopy length] >> 2) + v8;
    v10 = (390451573 * v9) >> 32;
    v11 = &v28[-((2 * v10 + 15) & 0x7FFF0)];
    bytes = [fromCopy bytes];
    if ([fromCopy length])
    {
      v29 = v9;
      v30 = (390451573 * v9) >> 32;
      v31 = v7;
      v32 = v28;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        if (v16 > 0xA)
        {
          v18 = v16;
          v17 = v14;
        }

        else
        {
          do
          {
            v17 = (v14 + 1);
            v15 = *(bytes + v14) | (v15 << 8);
            v18 = v16 + 8;
            LODWORD(v14) = v14 + 1;
            v19 = v16 >= 3;
            v16 += 8;
          }

          while (!v19);
        }

        v20 = v18 - 11;
        v21 = v13 + 1;
        v11[v13] = v15 >> (v18 - 11);
        v16 = (v18 - 11);
        v15 &= ~(-1 << (v18 - 11));
        v22 = [fromCopy length];
        v13 = v21;
        v14 = v17;
      }

      while (v22 > v17);
      v23 = v21;
      v7 = v31;
      v10 = v30;
      v9 = v29;
    }

    else
    {
      v20 = 0;
      LOWORD(v15) = 0;
      v23 = 0;
    }

    v11[v23] = (v15 << (11 - v20)) | (v7 >> (v20 - 3));
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
    if (v9 >= 0xB)
    {
      if (v10 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v10;
      }

      do
      {
        mnemonicWordList = [self mnemonicWordList];
        v26 = *v11++;
        v27 = [mnemonicWordList objectAtIndexedSubscript:v26];
        [v5 addObject:v27];

        --v24;
      }

      while (v24);
    }
  }

  return v5;
}

+ (id)entropyFromMnemonic:(id)mnemonic
{
  v26 = *MEMORY[0x1E69E9840];
  mnemonicCopy = mnemonic;
  if (0xAAAAAAAAAAAAAAABLL * [mnemonicCopy count] <= 0x5555555555555555 && objc_msgSend(mnemonicCopy, "count") >= 9 && objc_msgSend(mnemonicCopy, "count") < 0x19)
  {
    v7 = [mnemonicCopy count];
    v8 = 11 * v7 / 0x21uLL;
    v9 = [MEMORY[0x1E695DF88] dataWithLength:(11 * v7 - v8) >> 3];
    bytes = [v9 bytes];
    if ([mnemonicCopy count])
    {
      v21 = v8;
      v22 = v9;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        if (v11 <= 7u)
        {
          v15 = v13 + 1;
          v16 = [mnemonicCopy objectAtIndexedSubscript:v13];
          lowercaseString = [v16 lowercaseString];

          mnemonicWordList = [self mnemonicWordList];
          v19 = [mnemonicWordList indexOfObject:lowercaseString];

          v12 = v19 | (v12 << 11);
          v11 += 11;
          v13 = v15;
        }

        v11 -= 8;
        *(bytes + v14) = v12 >> v11;
        v12 &= ~(-1 << v11);
        ++v14;
      }

      while ([mnemonicCopy count] > v13);
      v20 = v12;
      LOBYTE(v8) = v21;
      v9 = v22;
    }

    else
    {
      v20 = 0;
    }

    CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), buf);
    if (buf[0] >> (8 - v8) == v20)
    {
      v5 = v9;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "provided mnemonic has incorrect checksum", v23, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = [mnemonicCopy count];
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "input mnemonic is of incorrect length, %lu", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)seedFromMnemonic:(id)mnemonic
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [mnemonic componentsJoinedByString:@" "];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [@"mnemonic" dataUsingEncoding:4];
  CCKeyDerivationPBKDF(2u, [v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), 5u, 0x800u, derivedKey, 0x40uLL);
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:derivedKey length:64];

  return v6;
}

+ (id)potentialWords:(id)words
{
  wordsCopy = words;
  v4 = wordsCopy;
  if (wordsCopy && [wordsCopy length])
  {
    lowercaseString = [v4 lowercaseString];
    v6 = [lowercaseString mutableCopy];

    CFStringTrimWhitespace(v6);
    if ([(__CFString *)v6 length])
    {
      v7 = +[MnemonicRepresentation mnemonicWordList];
      v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self beginswith[cd] %@", v6];
      v9 = [v7 filteredArrayUsingPredicate:v8];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

+ (id)textfieldAutoCompleteBuilder:(id)builder forNextLetter:(id)letter
{
  builderCopy = builder;
  letterCopy = letter;
  v7 = [builderCopy mutableCopy];
  CFStringTrimWhitespace(v7);
  v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@" " withString:@"-"];
  v9 = [v8 componentsSeparatedByString:@"-"];

  lastObject = [v9 lastObject];
  letterCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", lastObject, letterCopy];
  v12 = [MnemonicRepresentation potentialWords:letterCopy];
  if ([v12 count])
  {
    if ([v12 count] == 1)
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
      [v13 removeLastObject];
      firstObject = [v12 firstObject];
      [v13 addObject:firstObject];

      v15 = [v13 componentsJoinedByString:@"-"];

      goto LABEL_7;
    }

    letterCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", builderCopy, letterCopy];
  }

  else
  {
    letterCopy2 = builderCopy;
  }

  v15 = letterCopy2;
LABEL_7:

  return v15;
}

@end