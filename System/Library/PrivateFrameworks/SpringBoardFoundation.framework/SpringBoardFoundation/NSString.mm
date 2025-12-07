@interface NSString
@end

@implementation NSString

uint64_t __47__NSString_SBAdditions__sb_emojiWithoutVS16Set__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"©®‼⁉™ℹ↔↕↖↗↘↙↩↪⌨⏏⏭⏮⏯⏱⏲⏸⏹⏺Ⓜ▪▫▶◀◻◼☀☁☂☃☄☎☑☘☝☠☢☣☦☪☮☯☸☹☺♀♂♟♠♣♥♦♨♻♾⚒⚔⚕⚖⚗⚙⚛⚜⚠⚧⚰⚱⛈⛏⛑⛓⛩⛰⛱⛴⛷⛸⛹✂✈✉✌✍✏✒✔✖✝✡✳✴❄❇❣❤➡⤴⤵⬅⬆⬇〰〽㊗㊙🅰🅱🅾🅿🈂🈷🌡🌤🌥🌦🌧🌨🌩🌪🌫🌬🌶🍽🎖🎗🎙🎚🎛🎞🎟🏋🏌🏍🏎🏔🏕🏖🏗🏘🏙🏚🏛🏜🏝🏞🏟🏳🏵🏷🐿👁📽🕉🕊🕯🕰🕳🕴🕵🕶🕷🕸🕹🖇🖊🖋🖌🖍🖐🖥🖨🖱🖲🖼🗂🗃🗄🗑🗒🗓🗜🗝🗞🗡🗣🗨🗯🗳🗺🛋🛍🛎🛏🛠🛡🛢🛣🛤🛥🛩🛰🛳"];
  v1 = sb_emojiWithoutVS16Set___emojiWithoutVS16Set;
  sb_emojiWithoutVS16Set___emojiWithoutVS16Set = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __55__NSString_SBAdditions___isEntirelyCharactersInScript___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = *(a1 + 40) - 1;
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E807FE10[v2];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@%@]", v3, @"[:punct:][:space:]–—[:Common:][:Inherited:]"];
  _isEntirelyCharactersInScript____set = SBCopyCharacterUSetWithPattern(v4, &v6);
  if (_isEntirelyCharactersInScript____set)
  {
    v5 = v6 < 1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    __55__NSString_SBAdditions___isEntirelyCharactersInScript___block_invoke_cold_1(a1, &v6);
  }
}

void __42__NSString_SBAdditions___isEntirelyCommon__block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", @"[:punct:][:space:]–—[:Common:][:Inherited:]"];
  _isEntirelyCommon___charSet = SBCopyCharacterUSetWithPattern(v2, &v4);
  if (_isEntirelyCommon___charSet)
  {
    v3 = v4 < 1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    __42__NSString_SBAdditions___isEntirelyCommon__block_invoke_cold_1(a1, &v4);
  }
}

void __55__NSString_SBAdditions___isEntirelyCharactersInScript___block_invoke_cold_1(uint64_t a1, UErrorCode *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"NSString+SBFAdditions.m" lineNumber:109 description:{@"uset_openPattern failed to create pattern; &s", u_errorName(*a2)}];
}

void __42__NSString_SBAdditions___isEntirelyCommon__block_invoke_cold_1(uint64_t a1, UErrorCode *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NSString+SBFAdditions.m" lineNumber:124 description:{@"uset_openPattern failed to create pattern; %s", u_errorName(*a2)}];
}

@end