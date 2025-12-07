@interface FigRoutingContextUtilities
@end

@implementation FigRoutingContextUtilities

const UInt8 *__FigRoutingContextUtilities_IsFollowingAnotherContext_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = _routingContextUtilities_getLeaderWeakRef(result);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void __FigRoutingContextUtilities_CopyLeaderUUIDForContext_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    if (_routingContextUtilities_getLeaderWeakRef(ContextForUUIDFromDict))
    {
      _routingContextUtilities_getLeaderWeakRef(v3);
      v4 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v4)
      {
        v5 = v4;
        BytePtr = CFDataGetBytePtr(v4);
        if (BytePtr)
        {
          v7 = *(BytePtr + 1);
          if (v7)
          {
            v7 = CFRetain(v7);
          }

          **(a1 + 56) = v7;
        }

        CFRelease(v5);
      }
    }

    v8 = *(a1 + 56);
    if (!*v8)
    {
      v9 = *(v3 + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
        v8 = *(a1 + 56);
      }

      *v8 = v9;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

const UInt8 *__FigRoutingContextUtilities_SetLeaderUUIDForContext_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_setLeaderUUIDForContext(*(a1 + 48), *(a1 + 56));
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 64) + 480), *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __FigRoutingContextUtilities_UnfollowUUIDFromLeader_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  LeaderWeakRef = _routingContextUtilities_getLeaderWeakRef(*(*(*(a1 + 32) + 8) + 24));
  ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(LeaderWeakRef);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    v5 = ContextFromWeakRef == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = -17420;
  }

  else
  {
    v6 = ContextFromWeakRef;
    IndexOfFollower = _routingContextUtilities_getIndexOfFollower(ContextFromWeakRef, v4);
    if ((IndexOfFollower & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(v6 + 11), IndexOfFollower);
    }

    v8 = *(*(*(a1 + 32) + 8) + 24);

    _routingContextUtilities_removeLeader(v8);
  }
}

uint64_t __FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *(a1 + 56);
    while (1)
    {
      result = *(v3 + 112);
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (v4 >= result)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 112), v4);
      Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_SubEndpoints");
      result = MXCFArrayAreArrayContentsEqual(Value, v5);
      if (result)
      {
        goto LABEL_9;
      }

      ++v4;
    }

    v4 = -1;
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return result;
}

int *__FigRoutingContextUtilities_CreateStateInfoStringForContext_block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    [*(a1 + 32) appendFormat:@"[type: %@]\n", routingContextUtilities_getFeatureString(*result)];
    [*(a1 + 32) appendFormat:@"[uuid: %@]\n", *(v3 + 1)];
    [*(a1 + 32) appendFormat:@"[hijackID: %@]\n", *(v3 + 2)];
    [*(a1 + 32) appendFormat:@"[clientPID: %d]\n", v3[6]];
    [*(a1 + 32) appendFormat:@"[avoidAuthPrompt: %hhu]\n", *(v3 + 28)];
    [*(a1 + 32) appendFormat:@"[routeSelectionClientPID: %d]\n", v3[8]];
    [*(a1 + 32) appendFormat:@"[groupID: %@]\n", *(v3 + 5)];
    [*(a1 + 32) appendFormat:@"[pickingState: %d]\n", v3[14]];
    v4 = *(a1 + 32);
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = CFCopyDescription(v5);
    }

    else
    {
      v6 = @"NULL";
    }

    [v4 appendFormat:@"[aggregateEndpoint: %@]\n", v6];
    v58 = v3;
    v59 = a1;
    v66 = *(a1 + 32);
    v7 = *(v3 + 9);
    v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v83 objects:v87 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v84;
      obj = *MEMORY[0x1E69620F8];
      v12 = *MEMORY[0x1E695E480];
      v13 = *MEMORY[0x1E69621E8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v84 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v83 + 1) + 8 * i);
          cf[0] = 0;
          v73[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v17)
          {
            v17(CMBaseObject, obj, v12, cf);
          }

          v18 = FigEndpointGetCMBaseObject();
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v19)
          {
            v19(v18, v13, v12, v73);
          }

          [v8 appendFormat:@"endpoint: %@ endpointID: %@ endpointName: %@\n", v15, cf[0], v73[0]];
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v73[0])
          {
            CFRelease(v73[0]);
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v83 objects:v87 count:16];
      }

      while (v10);
    }

    [v66 appendFormat:@"[currentEndpoints: %@]\n", v8];
    [*(v59 + 32) appendFormat:@"[defaultLeaderUUID: %@]\n", *(v58 + 12)];
    [*(v59 + 32) appendFormat:@"[commChannelUUID: %@]\n", *(v58 + 13)];
    v67 = *(v59 + 32);
    v20 = *(v58 + 14);
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v22 = [v20 countByEnumeratingWithState:&v83 objects:v87 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v84;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(v20);
          }

          Value = FigCFDictionaryGetValue();
          v27 = FigCFDictionaryGetValue();
          v28 = FigCFDictionaryGetValue();
          [v21 appendFormat:@"endpoint: %@ clientRoutingContextUUID: %@ ClientRouteChangeOptions: %@ internalRouteChangeOptions:%@\r", Value, v27, v28, FigCFDictionaryGetValue()];
          v29 = FigCFDictionaryGetValue();
          v30 = 0;
          if (v29)
          {
LABEL_26:
            Count = CFArrayGetCount(v29);
            goto LABEL_28;
          }

          while (1)
          {
            Count = 0;
LABEL_28:
            if (v30 >= Count)
            {
              break;
            }

            [v21 appendFormat:@"\tsubEndpoint: %@\r", CFArrayGetValueAtIndex(v29, v30++)];
            if (v29)
            {
              goto LABEL_26;
            }
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v83 objects:v87 count:16];
      }

      while (v23);
    }

    [v67 appendFormat:@"[currentlyActivatingEndpointsInfo: %@]\n", v21];
    v57 = *(v59 + 32);
    v32 = *(v58 + 15);
    obja = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *cf = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v60 = v32;
    v63 = [v32 countByEnumeratingWithState:cf objects:v87 count:16];
    if (v63)
    {
      v61 = *v80;
      v68 = *MEMORY[0x1E69621E8];
      v65 = *MEMORY[0x1E69620F8];
      theArray = Mutable;
      do
      {
        v34 = 0;
        do
        {
          if (*v80 != v61)
          {
            objc_enumerationMutation(v60);
          }

          v64 = v34;
          v35 = *(cf[1] + v34);
          v36 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v37 = FigCFDictionaryGetValue();
          v38 = FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          v39 = CFDictionaryGetValue(v35, @"ActivatedEndpointsInfo_SubEndpointsInfo");
          v77 = 0;
          v78 = 0;
          if (v37)
          {
            v40 = FigEndpointGetCMBaseObject();
            v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v41)
            {
              v41(v40, v68, obja, &v78);
            }

            v42 = FigEndpointGetCMBaseObject();
            v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v43)
            {
              v43(v42, v65, obja, &v77);
            }
          }

          v45 = v77;
          v44 = v78;
          UInt64 = FigCFNumberGetUInt64();
          [v36 appendFormat:@"<endpoint %p endpointName: %@ endpointID %@ activationSeed %llu transportType: %@ endpointFeatures: %llu>\r", v37, v44, v45, UInt64, v38, FigCFNumberGetUInt64()];
          if (v78)
          {
            CFRelease(v78);
            v78 = 0;
          }

          if (v77)
          {
            CFRelease(v77);
            v77 = 0;
          }

          v75 = 0u;
          v76 = 0u;
          *v73 = 0u;
          v74 = 0u;
          v47 = [v39 countByEnumeratingWithState:v73 objects:&v83 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v74;
            do
            {
              for (k = 0; k != v48; ++k)
              {
                if (*v74 != v49)
                {
                  objc_enumerationMutation(v39);
                }

                v51 = FigCFDictionaryGetValue();
                FigCFDictionaryGetValue();
                v71 = 0;
                v72 = 0;
                if (v51)
                {
                  v52 = FigEndpointGetCMBaseObject();
                  v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v53)
                  {
                    v53(v52, v68, obja, &v72);
                  }

                  v54 = FigEndpointGetCMBaseObject();
                  v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v55)
                  {
                    v55(v54, v65, obja, &v71);
                  }
                }

                [v36 appendFormat:@"\t<subEndpoint %p subEndpointName: %@ subEndpointID %@ activationSeed %llu>\r", v51, v72, v71, FigCFNumberGetUInt64()];
                if (v72)
                {
                  CFRelease(v72);
                  v72 = 0;
                }

                if (v71)
                {
                  CFRelease(v71);
                }
              }

              v48 = [v39 countByEnumeratingWithState:v73 objects:&v83 count:16];
            }

            while (v48);
          }

          Mutable = theArray;
          CFArrayAppendValue(theArray, v36);

          v34 = v64 + 1;
        }

        while (v64 + 1 != v63);
        v63 = [v60 countByEnumeratingWithState:cf objects:v87 count:16];
      }

      while (v63);
    }

    v56 = [(__CFArray *)Mutable componentsJoinedByString:@"\n"];
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    [v57 appendFormat:@"[activatedEndpointsInfo: %@]\n", v56];
    [*(v59 + 32) appendFormat:@"[currentPickedRouteDescriptors: %@]\n", *(v58 + 16)];
    [*(v59 + 32) appendFormat:@"[multiRouteSelectionSucceeded: %hhu]\n", *(v58 + 136)];
    [*(v59 + 32) appendFormat:@"[scaleFactorsForEndpoints: %@]\n", *(v58 + 18)];
    [*(v59 + 32) appendFormat:@"[mainVolume: %f]\n", *(v58 + 38)];
    [*(v59 + 32) appendFormat:@"[cachedScreenEndpointID: %@]\n", *(v58 + 20)];
    [*(v59 + 32) appendFormat:@"[cachedAudioEndpointID: %@]\n", *(v58 + 21)];
    return [*(v59 + 32) appendFormat:@"[supportedOutputChannelLayouts: %@]\n", *(v58 + 26)];
  }

  return result;
}

@end