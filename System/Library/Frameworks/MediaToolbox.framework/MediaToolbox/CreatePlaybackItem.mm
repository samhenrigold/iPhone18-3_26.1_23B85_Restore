@interface CreatePlaybackItem
@end

@implementation CreatePlaybackItem

void __playerairplay_CreatePlaybackItem_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  v6 = OUTLINED_FUNCTION_173_0();
  Mutable = CFDictionaryCreateMutable(v6, v7, v4, v5);
  v9 = OUTLINED_FUNCTION_173_0();
  v11 = CFDictionaryCreateMutable(v9, v10, v4, v5);
  cf = 0;
  if (!*(DerivedStorage + 72) && !*(DerivedStorage + 352))
  {
    FigPlayerGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_111_2();
      v13(v12);
    }

    FigCFDictionarySetValue();
    FigPlayerGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v14 = OUTLINED_FUNCTION_111_2();
      v15(v14);
    }

    FigCFDictionarySetValue();
    FigPlayerGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v16 = OUTLINED_FUNCTION_111_2();
      v17(v16);
    }

    FigCFDictionarySetValue();
    FigPlayerGetFigBaseObject();
    v19 = v18;
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections", v3, &cf);
    }

    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    FigCFDictionarySetValue();
    pap_playbackSessionGetBooleanProperty();
    FigCFDictionarySetBoolean();
    v21 = OUTLINED_FUNCTION_104_0();
    FigAirPlayMediaSelectionCreate(v21, v22, Mutable, v23, v24);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    CFRelease(v26);
  }
}

@end