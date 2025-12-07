@interface FigNote
@end

@implementation FigNote

uint64_t __FigNote_ChangeValue_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 32));
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          result = CFArrayGetValueAtIndex(v3, i);
          **(result + 8) = *(a1 + 56);
        }
      }

      **(a1 + 48) = 0;
    }
  }

  return result;
}

uint64_t __FigNote_GetValue_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 32));
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        result = CFArrayGetValueAtIndex(v3, 0);
        v4 = *(a1 + 56);
        **(a1 + 48) = **(result + 8);
        *v4 = 0;
      }
    }
  }

  return result;
}

uint64_t __FigNote_ConfigureRingBuffer_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v9 = *(*(result + 40) + 8);
  if (v9)
  {
    if (v9 >= 0x200000)
    {
      return __FigNote_ConfigureRingBuffer_block_invoke_cold_1(result);
    }
  }

  else
  {
    v9 = 0x100000;
  }

  qword_1ED4CC180 = v9;
  if (byte_1ED4CC169)
  {
    fig_note_dropRingBufferDataStructuresInternal(result, a2, a3, a4, a5, a6, a7, a8);

    return fig_note_makeRingBufferDataStructuresInternal(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }

  return result;
}

void __FigNote_EnableRingBuffer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    v9 = byte_1ED4CC169 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    fig_note_makeRingBufferDataStructuresInternal(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    if (*(a1 + 32))
    {
      v10 = 1;
    }

    else
    {
      v10 = byte_1ED4CC169 == 0;
    }

    if (!v10)
    {
      fig_note_dropRingBufferDataStructuresInternal(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  byte_1ED4CC169 = *(a1 + 32);
}

void __FigNote_CopyRingBufferLogArrayAndResetRing_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v10 = atomic_load(&qword_1ED4CC178);
  *(*(*(a1 + 32) + 8) + 24) = v10;
  v11 = qword_1ED4CC170;
  if (qword_1ED4CC170)
  {
    v11 = CFRetain(qword_1ED4CC170);
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = qword_1ED4CC180;
    if (!*(a1 + 56) || (~*(*(*(a1 + 32) + 8) + 24) & 0x1FFFFF) != 0)
    {
      fig_note_dropRingBufferDataStructuresInternal(v11, a2, a3, a4, a5, a6, a7, a8);
      if (*(a1 + 56))
      {

        fig_note_makeRingBufferDataStructuresInternal(v12, v13, v14, v15, v16, v17, v18, v19, a9);
      }

      else
      {
        byte_1ED4CC169 = 0;
      }
    }
  }
}

void __FigNote_CopyKeys_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 40));
  if (Value)
  {
    v3 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v3, v6, 0);
      v7 = 0;
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      do
      {
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6[v7++]);
      }

      while (v5 != v7);

      free(v6);
    }
  }
}

size_t __FigNote_ConfigureRingBuffer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBED8uLL, "|FigNote|", 0xA83, v3, v4, v5, v7);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end