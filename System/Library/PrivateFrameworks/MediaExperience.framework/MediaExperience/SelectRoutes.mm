@interface SelectRoutes
@end

@implementation SelectRoutes

uint64_t __routingContextResilientRemote_SelectRoutes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

void __routingContext_SelectRoutes_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && CFArrayGetCount(v2))
  {
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 40) + 8), *(a1 + 32));
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4D0]);
  if (FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(*(*(a1 + 40) + 8)))
  {
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_RoutingContextSupportsMultiDeviceRouting", v6);
  v7 = *(a1 + 32);
  if (v7)
  {
    MutableCopy = CFArrayCreateMutableCopy(v3, 0, v7);
  }

  else
  {
    MutableCopy = 0;
  }

  v9 = 0;
  v10 = *MEMORY[0x1E69626D8];
  if (!MutableCopy)
  {
    goto LABEL_12;
  }

LABEL_11:
  for (i = CFArrayGetCount(MutableCopy); v9 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v9);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v10) && FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
    {
      v13 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      if (v13)
      {
        v14 = v13;
        CFArraySetValueAtIndex(MutableCopy, v9, v13);
        CFRelease(v14);
      }
    }

    ++v9;
    if (MutableCopy)
    {
      goto LABEL_11;
    }

LABEL_12:
    ;
  }

  FigRoutingManagerPickEndpointsForContext(*(*(a1 + 40) + 8), MutableCopy, *(a1 + 48), Mutable);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {

    CFRelease(v17);
  }
}

@end