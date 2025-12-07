@interface CopyProperty
@end

@implementation CopyProperty

uint64_t __routingContextResilientRemote_CopyProperty_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a2, v3, v4, v5);
}

void __routingContext_CopyProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"currentGroupID"))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 48) + 8);

    FigRoutingManagerCopyCurrentGroupUUID(v3, v2);
  }

  else
  {
    if (CFEqual(*(a1 + 40), @"associatedAudioDevice"))
    {
      CMBaseObjectGetDerivedStorage();
      **(a1 + 56) = 0;
      return;
    }

    if (CFEqual(*(a1 + 40), @"isWHASilentPrimary"))
    {
      IsConfigurationWHASilentPrimary = FigRoutingManagerIsConfigurationWHASilentPrimary(*(*(a1 + 48) + 8));
      v5 = MEMORY[0x1E695E4D0];
      if (!IsConfigurationWHASilentPrimary)
      {
        v5 = MEMORY[0x1E695E4C0];
      }

      **(a1 + 56) = CFRetain(*v5);
    }

    else
    {
      if (CFEqual(*(a1 + 40), @"selectedEndpointsForDiagnostics"))
      {
        theDict = 0;
        *(*(*(a1 + 32) + 8) + 24) = FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
        if (theDict)
        {
          MutableCopy = FigCFArrayCreateMutableCopy();
          CFDictionaryApplyFunction(theDict, routingContext_collectPickedEndpoints, MutableCopy);
        }

        else
        {
          MutableCopy = 0;
        }

        **(a1 + 56) = MutableCopy;
      }

      else
      {
        if (!CFEqual(*(a1 + 40), @"IsAnyRoutePickedOrBeingPicked"))
        {
          *(*(*(a1 + 32) + 8) + 24) = -12784;
          return;
        }

        theDict = 0;
        FigRoutingManagerCopyPickedEndpointForRoutingContext(*(*(a1 + 48) + 8), &theDict);
        if (!theDict)
        {
          return;
        }

        **(a1 + 56) = CFRetain(*MEMORY[0x1E695E4D0]);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }
}

uint64_t __endpointAggregate_CopyProperty_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, v2, v3, v4);
}

@end