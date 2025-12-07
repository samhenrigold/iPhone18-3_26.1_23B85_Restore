@interface TTSEmojiUtilities
+ (_NSRange)emojiRangeFromString:(id)string withSearchRange:(_NSRange)range;
+ (id)stringByRemovingEmojiCharacters:(id)characters;
+ (id)stringByReplacingEmojiCharactersWithEmojiDescriptions:(id)descriptions stringForPauses:(id)pauses language:(id)language rangeReplacements:(id)replacements appendEmojiSuffix:(BOOL)suffix;
+ (void)_initializeEmojiStructures:(id)structures;
+ (void)enumerateEmojiCharactersInString:(id)string languageCode:(id)code withBlock:(id)block;
@end

@implementation TTSEmojiUtilities

+ (_NSRange)emojiRangeFromString:(id)string withSearchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_1A95FC00D;
  v17 = xmmword_1A9586960;
  v7 = [stringCopy substringWithRange:{location, length}];
  [v7 length];
  CEMEnumerateEmojiTokensInStringWithBlock();
  v8 = v14[4];
  v9 = v14[5];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8 + location;
  }

  _Block_object_dispose(&v13, 8);
  v11 = v10;
  v12 = v9;
  result.length = v12;
  result.location = v11;
  return result;
}

+ (void)_initializeEmojiStructures:(id)structures
{
  structuresCopy = structures;
  v4 = structuresCopy;
  if (qword_1ED970FF0 != -1)
  {
    sub_1A9578200();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!structuresCopy)
  {
LABEL_3:
    v5 = +[TTSSpeechManager currentLanguageCode];
    v4 = AXCRemapLanguageCodeToFallbackIfNeccessary();
  }

LABEL_4:
  v6 = qword_1ED9702A0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9342FB0;
  block[3] = &unk_1E787FE20;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, block);
}

+ (id)stringByRemovingEmojiCharacters:(id)characters
{
  charactersCopy = characters;
  [self _initializeEmojiStructures:0];
  v5 = [charactersCopy mutableCopy];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93431F0;
  block[3] = &unk_1E787FF60;
  block[4] = &v11;
  dispatch_sync(qword_1ED9702A0, block);
  v6 = objc_autoreleasePoolPush();
  [charactersCopy length];
  v7 = v5;
  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  v8 = v12[3];
  if (v8)
  {
    CFRelease(v8);
    v12[3] = 0;
  }

  objc_autoreleasePoolPop(v6);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);

  return v7;
}

+ (void)enumerateEmojiCharactersInString:(id)string languageCode:(id)code withBlock:(id)block
{
  stringCopy = string;
  codeCopy = code;
  blockCopy = block;
  if (stringCopy)
  {
    [self _initializeEmojiStructures:codeCopy];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9343424;
    block[3] = &unk_1E787FF60;
    block[4] = &v14;
    dispatch_sync(qword_1ED9702A0, block);
    [stringCopy length];
    v12 = blockCopy;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v11 = v15[3];
    if (v11)
    {
      CFRelease(v11);
      v15[3] = 0;
    }

    _Block_object_dispose(&v14, 8);
  }
}

+ (id)stringByReplacingEmojiCharactersWithEmojiDescriptions:(id)descriptions stringForPauses:(id)pauses language:(id)language rangeReplacements:(id)replacements appendEmojiSuffix:(BOOL)suffix
{
  descriptionsCopy = descriptions;
  pausesCopy = pauses;
  languageCopy = language;
  replacementsCopy = replacements;
  if (descriptionsCopy)
  {
    v15 = [descriptionsCopy mutableCopy];
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v16 = objc_opt_class();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A93436D8;
    v21[3] = &unk_1E78802C8;
    suffixCopy = suffix;
    v22 = languageCopy;
    v23 = pausesCopy;
    v24 = descriptionsCopy;
    v17 = v15;
    v25 = v17;
    v27 = v29;
    v26 = replacementsCopy;
    [v16 enumerateEmojiCharactersInString:v24 languageCode:v22 withBlock:v21];
    v18 = v26;
    v19 = v17;

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end