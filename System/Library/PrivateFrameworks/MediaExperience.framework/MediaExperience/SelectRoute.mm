@interface SelectRoute
@end

@implementation SelectRoute

uint64_t __routingContextResilientRemote_SelectRoute_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

void __routingContext_SelectRoute_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 40))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(a1 + 40), 0}];
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(DerivedStorage + 8), v3);
  }

  if (*DerivedStorage == 2)
  {
    IsTestCodeEnabled = MXSystemMirroring_IsTestCodeEnabled();
    v5 = *(a1 + 40);
    if (IsTestCodeEnabled)
    {
      MXSystemMirroring_PickEndpoint(*(DerivedStorage + 8), v5, *(a1 + 48), 0);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 40);
  }

  FigRoutingManagerPickEndpointForContext(*(DerivedStorage + 8), v5, *(a1 + 48), 0);
LABEL_8:
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

@end