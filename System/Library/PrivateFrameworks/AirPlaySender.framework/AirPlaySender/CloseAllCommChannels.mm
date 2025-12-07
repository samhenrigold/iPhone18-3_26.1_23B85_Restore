@interface CloseAllCommChannels
@end

@implementation CloseAllCommChannels

uint64_t __endpointAggregate_CloseAllCommChannels_block_invoke(uint64_t a1, const void *a2)
{
  result = endpointAggregate_CloseCommChannel(*(a1 + 32), a2);
  if (result)
  {
    if (gLogCategory_APEndpointAggregate <= 60)
    {
      v5 = result;
      if (gLogCategory_APEndpointAggregate != -1)
      {
        return LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_CloseAllCommChannels(FigEndpointExtendedRef)_block_invoke", 33554492, "[%{ptr}] Closing comm channel with ID: [%@] returned err: %d\n", *(a1 + 32), a2, v5);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_CloseAllCommChannels(FigEndpointExtendedRef)_block_invoke", 33554492, "[%{ptr}] Closing comm channel with ID: [%@] returned err: %d\n", *(a1 + 32), a2, v5);
      }
    }
  }

  return result;
}

@end