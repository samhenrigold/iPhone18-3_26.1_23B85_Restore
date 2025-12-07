@interface SetOutputCallback
@end

@implementation SetOutputCallback

void __basicVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v2 = result[5];
  v3 = result[6];
  if (*(v2 + 296) != *(result + 3))
  {
    if (*(v2 + 296))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(v2 + 296) = v3;
      *(result[5] + 304) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
      *(*(result[4] + 8) + 24) = v5;
    }
  }
}

void __openglVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v2 = result[5];
  v3 = result[6];
  if (*(v2 + 648) != *(result + 3))
  {
    if (*(v2 + 648))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(v2 + 648) = v3;
      *(result[5] + 656) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
      *(*(result[4] + 8) + 24) = v5;
    }
  }
}

void __mvc_SetOutputCallback_block_invoke(void *result)
{
  v2 = result[5];
  v3 = result[6];
  if (*(v2 + 24) != *(result + 3))
  {
    if (*(v2 + 24))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(v2 + 24) = v3;
      *(result[5] + 32) = result[7];
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
      *(*(result[4] + 8) + 24) = v5;
    }
  }
}

void __customVideoCompositor_SetOutputCallback_block_invoke(void *result)
{
  v2 = result[5];
  v3 = result[6];
  if (*(v2 + 176) != *(result + 3))
  {
    if (*(v2 + 176))
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      *(v2 + 176) = v3;
      *(result[5] + 184) = result[7];
      if (!*(result[5] + 176))
      {
        FigSimpleMutexLock();
        CFSetApplyFunction(*(result[5] + 304), customVideoCompositor_purgePendingFrame, result[8]);
        CFSetRemoveAllValues(*(result[5] + 304));

        FigSimpleMutexUnlock();
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
      *(*(result[4] + 8) + 24) = v5;
    }
  }
}

@end