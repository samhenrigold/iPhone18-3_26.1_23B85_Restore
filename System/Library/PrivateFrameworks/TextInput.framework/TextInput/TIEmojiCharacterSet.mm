@interface TIEmojiCharacterSet
@end

@implementation TIEmojiCharacterSet

void ____TIEmojiCharacterSet_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __EmojiFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4BAD8;
    v5 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v3[0];
    if (EmojiFoundationLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v3[0]);
    }

    free(v0);
  }

LABEL_4:
  v1 = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v2 = __TIEmojiCharacterSet___emojiCharacterSet;
  __TIEmojiCharacterSet___emojiCharacterSet = v1;
}

@end