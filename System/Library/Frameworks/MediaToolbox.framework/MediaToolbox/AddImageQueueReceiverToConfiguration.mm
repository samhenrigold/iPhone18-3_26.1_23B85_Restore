@interface AddImageQueueReceiverToConfiguration
@end

@implementation AddImageQueueReceiverToConfiguration

void __videoReceiver_AddImageQueueReceiverToConfiguration_block_invoke(void *a1)
{
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1[5]);
  if (ChannelCount >= 1)
  {
    v3 = ChannelCount;
    v4 = 0;
    while (1)
    {
      while (FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a1[5], v4) != 1)
      {
        if (++v4 >= v3)
        {
          return;
        }
      }

      CAImageQueueIDAtIndex = FigDataChannelConfigurationGetCAImageQueueIDAtIndex();
      if (!videoReceiver_getImageQueueReceiverByIDOnSyncQueue(a1[6], CAImageQueueIDAtIndex))
      {
        break;
      }

      FigDataChannelConfigurationSetCAImageQueueReceiverAtIndex(a1[5], v4);
      *(*(a1[4] + 8) + 24) = v6;
      ++v4;
      if (*(*(a1[4] + 8) + 24))
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 < v3;
      }

      if (!v7)
      {
        return;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
    *(*(a1[4] + 8) + 24) = v8;
  }
}

@end