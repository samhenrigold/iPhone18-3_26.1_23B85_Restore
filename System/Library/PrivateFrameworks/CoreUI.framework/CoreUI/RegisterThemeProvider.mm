@interface RegisterThemeProvider
@end

@implementation RegisterThemeProvider

void ___RegisterThemeProvider_block_invoke(uint64_t a1, NSMapTable *table)
{
  v4 = _RegisterThemeProvider_theme_seq;
  if (_RegisterThemeProvider_theme_seq != -1)
  {
    goto LABEL_4;
  }

  _RegisterThemeProvider_theme_seq = 100;
  _CUILog(3, "CoreUI: _RegisterThemeProvider() has registered a NSUIntegerMax number of themeRefs attempting to find a usable version");
  while (1)
  {
    v4 = _RegisterThemeProvider_theme_seq;
LABEL_4:
    _RegisterThemeProvider_theme_seq = v4 + 1;
    *(*(*(a1 + 40) + 8) + 24) = v4 + 1;
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5 == -1)
    {
      break;
    }

    if (!NSMapGet(table, v5))
    {
      NSMapInsertKnownAbsent(table, *(*(*(a1 + 40) + 8) + 24), *(a1 + 32));
      if (*(*(*(a1 + 40) + 8) + 24) != -1)
      {
        return;
      }

      break;
    }
  }

  _CUILog(4, "CoreUI: _RegisterThemeProvider() has not been able to find a new unique themeRef");
}

@end