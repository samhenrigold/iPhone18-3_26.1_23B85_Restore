@interface FigRoutingManagerContextUtilities
@end

@implementation FigRoutingManagerContextUtilities

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemAudioContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 528);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __FigRoutingManagerContextUtilities_CopyActivatedEndpoints_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (!ContextForUUIDFromDict)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
    return;
  }

  v3 = ContextForUUIDFromDict;
  v4 = *(ContextForUUIDFromDict + 15);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 15), i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
        if (Value)
        {
          CFArrayAppendValue(Mutable, Value);
        }
      }
    }

    if (Mutable)
    {
      goto LABEL_9;
    }

LABEL_14:
    **(a1 + 56) = 0;
    return;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_14;
  }

LABEL_9:
  **(a1 + 56) = CFRetain(Mutable);

  CFRelease(Mutable);
}

const UInt8 *__FigRoutingManagerContextUtilities_IsContextVideoAndIndependent_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    if (*result == 5)
    {
      result = _routingContextUtilities_getLeaderWeakRef(result);
      if (!result)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_CopySystemRoutingContext_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (routingContextUtilities_getSharedContextUtilities_sContextUtilitiesStateSetupOnce != -1)
  {
    FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_cold_1();
  }

  if (byte_1EB75CFA8)
  {
    v4 = &routingContextUtilities_getSharedContextUtilities_contextState;
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(v4[4 * v2 + 1], 0, v5);
  if (_routingContextUtilities_getContextFromWeakRef(*v5))
  {
    v6 = 0;
    *v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v6 = -17420;
  }

  free(v5);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void __FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E6962270];
      v7 = *MEMORY[0x1E695E480];
      v8 = *MEMORY[0x1E6962600];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v5);
        if (ValueAtIndex && (FigEndpointAggregateGetClassID(), CMBaseObjectIsMemberOfClass()))
        {
          theArray = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            v11(CMBaseObject, v6, v7, &theArray);
          }

          if (theArray)
          {
            MutableCopy = CFArrayCreateMutableCopy(v7, 0, theArray);
            if (theArray)
            {
              if (FigRoutingManagerIsEndpointOfSubtype(ValueAtIndex, v8))
              {
                v13 = FigRoutingManagerCopyLocalAirPlayEndpoint();
                if (v13)
                {
                  v14 = v13;
                  if (!FigRoutingManagerIsClusterLocalEndpoint(v13))
                  {
                    v16 = theArray;
                    v26.length = CFArrayGetCount(theArray);
                    v26.location = 0;
                    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v16, v26, v14);
                    if (FirstIndexOfValue != -1)
                    {
                      idx = FirstIndexOfValue;
                      v18 = *(a1 + 40);
                      v19 = *(v18 + 528);
                      if (v19)
                      {
                        v20 = CFRetain(v19);
                        v18 = *(a1 + 40);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      v24 = 0;
                      ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(v18 + 480), v20);
                      _routingContextUtilities_copyPickedEndpointAtIndex(ContextForUUIDFromDict, 0, &v24);
                      v22 = v24;
                      if (v24)
                      {
                        if (FigRoutingManagerIsEndpointWHAGroupable(v24))
                        {
                          CFArraySetValueAtIndex(MutableCopy, idx, v22);
                        }

                        CFRelease(v22);
                      }

                      if (v20)
                      {
                        CFRelease(v20);
                      }
                    }
                  }

                  CFRelease(v14);
                }
              }

              v15 = *(a1 + 48);
              v27.length = CFArrayGetCount(theArray);
              v27.location = 0;
              CFArrayAppendArray(v15, MutableCopy, v27);
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }
            }

            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }
        }

        else
        {
          CFArrayAppendValue(*(a1 + 48), ValueAtIndex);
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }
}

void __FigRoutingManagerContextUtilities_CopyPickedEndpoints_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = *(a1 + 56);

    _routingContextUtilities_copyPickedEndpoints(ContextForUUIDFromDict, v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void __FigRoutingManagerContextUtilities_CopyRoutingContextUUID_block_invoke(uint64_t a1)
{
  Count = FigCFDictionaryGetCount();
  v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 480), 0, v3);
  if (Count < 1)
  {
LABEL_9:
    free(v4);
    goto LABEL_10;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4[v5];
    if (v6)
    {
      break;
    }

LABEL_8:
    if (Count == ++v5)
    {
      goto LABEL_9;
    }
  }

  BytePtr = CFDataGetBytePtr(v6);
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = v8;
  if (*(a1 + 40) != v8)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_8;
  }

  v10 = *(BytePtr + 1);
  if (v10)
  {
    v11 = CFRetain(v10);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
LABEL_13:
      CFRelease(v9);
    }
  }

  free(v4);
  if (!v11)
  {
LABEL_10:
    **(a1 + 48) = 0;
    return;
  }

  **(a1 + 48) = CFRetain(v11);

  CFRelease(v11);
}

void __FigRoutingManagerContextUtilities_CopyCachedSelectedRouteDescriptors_block_invoke(uint64_t a1)
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
          v7 = *(BytePtr + 16);
          if (v7)
          {
            v7 = CFRetain(v7);
          }

          **(a1 + 56) = v7;
        }

        CFRelease(v5);
      }
    }

    else
    {
      v8 = *(v3 + 128);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      **(a1 + 56) = v8;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

const UInt8 *__FigRoutingManagerContextUtilities_GetContextType_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    v3 = *result;
    v4 = 40;
  }

  else
  {
    v3 = -17420;
    v4 = 32;
  }

  *(*(*(a1 + v4) + 8) + 24) = v3;
  return result;
}

_DWORD *__FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    if (*result == 3)
    {
      result = _routingContextUtilities_getLeaderWeakRef(result);
      if (!result)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_CopyEndpointsToDeactivateInfoAndUUIDsForPID_block_invoke(uint64_t a1)
{
  Count = FigCFDictionaryGetCount();
  v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (v3)
  {
    v4 = v3;
    CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 480), 0, v3);
    if (Count >= 1)
    {
      v5 = v4;
      do
      {
        if (*v5)
        {
          BytePtr = CFDataGetBytePtr(*v5);
          v7 = BytePtr;
          if (*BytePtr == 5)
          {
            if (*(a1 + 56) == 1)
            {
              goto LABEL_14;
            }
          }

          else if (*BytePtr == 6)
          {
            v8 = *(a1 + 56);
            v9 = v8 > 4;
            v10 = (1 << v8) & 0x16;
            if (!v9 && v10 != 0)
            {
LABEL_14:
              if (*(BytePtr + 8) == *(a1 + 60))
              {
                v12 = *(BytePtr + 15);
                if (v12)
                {
                  v13 = CFRetain(v12);
                  if (v13)
                  {
                    v14 = v13;
                    if (CFArrayGetCount(v13) >= 1)
                    {
                      v15 = *(a1 + 40);
                      ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
                      CFArrayAppendValue(v15, ValueAtIndex);
                      CFArrayAppendValue(*(a1 + 48), *(v7 + 1));
                    }

                    CFRelease(v14);
                  }
                }
              }
            }
          }
        }

        ++v5;
        --Count;
      }

      while (Count);
    }

    free(v4);
  }
}

void __FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    _routingContextUtilities_copyPickedEndpointAtIndex(ContextForUUIDFromDict, v3, v4);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

const UInt8 *__FigRoutingManagerContextUtilities_GetContextString_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = routingContextUtilities_getFeatureString(*result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemMusicContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 544);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 536);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs_block_invoke(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = Mutable;
  v4 = *(a1 + 32);
  v5 = v4[66];
  if (v5)
  {
    CFArrayAppendValue(Mutable, v5);
    v4 = *(a1 + 32);
  }

  v6 = v4[67];
  if (v6)
  {
    CFArrayAppendValue(v3, v6);
    v4 = *(a1 + 32);
  }

  v7 = v4[68];
  if (v7)
  {
    CFArrayAppendValue(v3, v7);
    v4 = *(a1 + 32);
  }

  v8 = v4[74];
  if (v8)
  {
    CFArrayAppendValue(v3, v8);
    v4 = *(a1 + 32);
  }

  v9 = v4[69];
  if (v9)
  {
    CFArrayAppendValue(v3, v9);
    v4 = *(a1 + 32);
  }

  v10 = v4[72];
  if (v10)
  {
    CFArrayAppendValue(v3, v10);
    v4 = *(a1 + 32);
  }

  v11 = v4[75];
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 600), i);
        CFArrayAppendValue(v3, ValueAtIndex);
      }
    }
  }

  v16 = *(*(a1 + 32) + 608);
  if (v16)
  {
    v17 = CFArrayGetCount(v16);
    if (v17 >= 1)
    {
      v18 = v17;
      for (j = 0; j != v18; ++j)
      {
        v20 = CFArrayGetValueAtIndex(*(*(a1 + 32) + 608), j);
        CFArrayAppendValue(v3, v20);
      }
    }
  }

  v21 = *(*(a1 + 32) + 616);
  if (v21)
  {
    v22 = CFArrayGetCount(v21);
    if (v22 >= 1)
    {
      v23 = v22;
      for (k = 0; k != v23; ++k)
      {
        v25 = CFArrayGetValueAtIndex(*(*(a1 + 32) + 616), k);
        CFArrayAppendValue(v3, v25);
      }
    }
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    if (v3)
    {
      v27 = CFRetain(v3);
      v26 = *(a1 + 40);
    }

    else
    {
      v27 = 0;
    }

    *v26 = v27;
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 592);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

const UInt8 *__FigRoutingManagerContextUtilities_IsContextSystemRemoteDisplay_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    if (*result == 14)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    if ((*ContextForUUIDFromDict | 2) == 3)
    {
      FigRoutingContextUtilities_LogRouteDescriptors(*(ContextForUUIDFromDict + 16), *(a1 + 56));
    }

    v4 = *(v3 + 16);
    v5 = *(a1 + 56);
    *(v3 + 16) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

void __FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);

  _routingContextUtilities_postNotificationToContextAndItsFollowers(v2, v3, v4);
}

void *__FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = result[8];
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 56) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 584);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __FigRoutingManagerContextUtilities_SetPickedEndpoints_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (!v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = -17422;
    return;
  }

  if (*v2 == 13 || *v2 == 3)
  {
    FigRoutingContextUtilities_LogRouteDescriptors(*(v2 + 128), *(a1 + 64));
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v4 = *(v2 + 72);
  v5 = *(a1 + 72);
  *(v2 + 72) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(v6 + 128);
  v8 = *(a1 + 64);
  *(v6 + 128) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (!*(v9 + 72))
  {
    v10 = *(v9 + 96);
    if (v10)
    {
      _routingContextUtilities_setLeaderUUIDForContext(*(a1 + 56), v10);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    Value = CFDictionaryGetValue(v11, @"clientRouteRequestID");
    if (Value)
    {
      v13 = CFRetain(Value);
    }

    else
    {
      v13 = 0;
    }

    v15 = CFDictionaryGetValue(*(a1 + 80), @"initiator");
    if (v15)
    {
      v14 = CFRetain(v15);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v16 = 0;
  v17 = 0;
  v29 = *MEMORY[0x1E69620F8];
  alloc = *MEMORY[0x1E695E480];
  v18 = *MEMORY[0x1E69626B0];
  while (1)
  {
    Count = *(*(*(*(a1 + 32) + 8) + 24) + 112);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v16 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(*(a1 + 32) + 8) + 24) + 112), v16);
    v21 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
    cf = 0;
    FigRoutingManagerLogEndpointID(@"currently activating endpoint:", v21, 0, 1);
    if (v21)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v23(CMBaseObject, v29, alloc, &cf);
      }
    }

    if (FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(*(a1 + 72), v21))
    {
      if (v13)
      {
LABEL_37:
        if (!FigRoutingManagerIsEndpointOfType(v21, v18))
        {
          CFArrayRemoveValueAtIndex(*(*(*(*(a1 + 32) + 8) + 24) + 112), v16--);
        }

        _routingContextUtilities_removeCurrentlyActivatingEndpointWithID(*(a1 + 56), cf);
        _routingContextUtilities_notifyClientsOfChangeInPickedEndpoints(*(a1 + 88), v13, v14, *(a1 + 56));
        if (v13)
        {
          CFRelease(v13);
        }

        if (v14)
        {
          CFRelease(v14);
          v14 = 0;
        }

        v13 = 0;
        v17 = 1;
        goto LABEL_44;
      }

      v24 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
      if (!v24)
      {
        v13 = 0;
        goto LABEL_37;
      }

      v25 = v24;
      v26 = CFDictionaryGetValue(v24, @"clientRouteRequestID");
      if (v26)
      {
        v13 = CFRetain(v26);
        if (v14)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v13 = 0;
        if (v14)
        {
LABEL_50:
          CFRelease(v14);
        }
      }

      v27 = CFDictionaryGetValue(v25, @"initiator");
      if (v27)
      {
        v14 = CFRetain(v27);
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_37;
    }

LABEL_44:
    if (cf)
    {
      CFRelease(cf);
    }

    ++v16;
  }

  if (!v17)
  {
    if (!v13)
    {
      if (v14)
      {
        CFRelease(v14);
      }

      v28 = mach_absolute_time();
      v13 = CFStringCreateWithFormat(alloc, 0, @"%lld", v28);
      v14 = 0;
    }

    _routingContextUtilities_notifyClientsOfChangeInPickedEndpoints(*(a1 + 88), v13, v14, *(a1 + 56));
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void *__FigRoutingManagerContextUtilities_Create_block_invoke(void *result)
{
  *(result[5] + 488) = result[6];
  *(result[5] + 496) = result[4];
  return result;
}

void __FigRoutingManagerContextUtilities_AddContext_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigCFDictionaryGetInt32IfPresent();
  *(*(a1 + 56) + 8) = CFRetain(*(a1 + 32));
  *(*(a1 + 56) + 16) = CFUUIDCreateString(v2, v3);
  *(*(a1 + 56) + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  **(a1 + 56) = *(a1 + 88);
  FigCFDictionaryGetBooleanIfPresent();
  v5 = MEMORY[0x1E695E9C0];
  *(*(a1 + 56) + 88) = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  *(*(a1 + 56) + 80) = CFArrayCreateMutable(v2, 0, v5);
  *(*(a1 + 56) + 120) = CFArrayCreateMutable(v2, 0, v5);
  *(*(a1 + 56) + 112) = CFArrayCreateMutable(v2, 0, v5);
  *(*(a1 + 56) + 136) = 1;
  *(*(a1 + 56) + 128) = CFArrayCreateMutable(v2, 0, v5);
  *(*(a1 + 56) + 160) = 0;
  *(*(a1 + 56) + 168) = 0;
  v6 = *(a1 + 56);
  v6[25] = 0;
  v6[22] = 0;
  v6[23] = 0;
  *(*(a1 + 56) + 192) = 0;
  *(*(a1 + 56) + 208) = CFArrayCreateMutable(v2, 0, v5);
  *(*(a1 + 56) + 64) = 0;
  *(*(a1 + 56) + 64) = 0;
  *(*(a1 + 56) + 152) = -1082130432;
  *(*(a1 + 56) + 144) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFDictionarySetValue(*(*(a1 + 80) + 32 * *(a1 + 88) + 8), *(a1 + 32), v7);
  CFDictionarySetValue(*(*(a1 + 80) + 480), *(a1 + 32), *(a1 + 72));
  v8 = *(a1 + 88);
  if (v8 > 8)
  {
    if (v8 > 11)
    {
      switch(v8)
      {
        case 12:
          v15 = *(*(a1 + 56) + 8);
          if (v15)
          {
            v15 = CFRetain(v15);
          }

          *(*(a1 + 80) + 552) = v15;
          if (v7)
          {
            goto LABEL_56;
          }

          break;
        case 13:
          v18 = *(*(a1 + 56) + 8);
          if (v18)
          {
            v18 = CFRetain(v18);
          }

          *(*(a1 + 80) + 584) = v18;
          if (v7)
          {
            goto LABEL_56;
          }

          break;
        case 14:
          v12 = *(*(a1 + 56) + 8);
          if (v12)
          {
            v12 = CFRetain(v12);
          }

          *(*(a1 + 80) + 592) = v12;
          if (v7)
          {
            goto LABEL_56;
          }

          break;
        default:
          goto LABEL_55;
      }
    }

    else if (v8 == 9)
    {
      v14 = *(*(a1 + 56) + 8);
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *(*(a1 + 80) + 560) = v14;
      if (v7)
      {
        goto LABEL_56;
      }
    }

    else if (v8 == 10)
    {
      v17 = *(*(a1 + 56) + 8);
      if (v17)
      {
        v17 = CFRetain(v17);
      }

      *(*(a1 + 80) + 576) = v17;
      if (v7)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v10 = *(*(a1 + 56) + 8);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *(*(a1 + 80) + 568) = v10;
      if (v7)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (v8 > 3)
    {
      switch(v8)
      {
        case 4:
          v11 = *(*(a1 + 80) + 616);
          if (!v11)
          {
            goto LABEL_55;
          }

          break;
        case 5:
          v11 = *(*(a1 + 80) + 608);
          if (!v11)
          {
            goto LABEL_55;
          }

          break;
        case 6:
          v11 = *(*(a1 + 80) + 600);
          if (!v11)
          {
            goto LABEL_55;
          }

          break;
        default:
          goto LABEL_55;
      }

      CFArrayAppendValue(v11, *(*(a1 + 56) + 8));
      goto LABEL_55;
    }

    switch(v8)
    {
      case 1:
        v13 = *(*(a1 + 56) + 8);
        if (v13)
        {
          v13 = CFRetain(v13);
        }

        *(*(a1 + 80) + 528) = v13;
        if (v7)
        {
          goto LABEL_56;
        }

        break;
      case 2:
        v16 = *(*(a1 + 56) + 8);
        if (v16)
        {
          v16 = CFRetain(v16);
        }

        *(*(a1 + 80) + 536) = v16;
        if (v7)
        {
          goto LABEL_56;
        }

        break;
      case 3:
        v9 = *(*(a1 + 56) + 8);
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        *(*(a1 + 80) + 544) = v9;
        if (!v7)
        {
          break;
        }

LABEL_56:
        CFRelease(v7);
        break;
      default:
LABEL_55:
        if (!v7)
        {
          break;
        }

        goto LABEL_56;
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(ContextForUUIDFromDict + 14);
    if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 112), v7);
        if (CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint") == *(a1 + 56))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
      v9 = Value;
      if (Value)
      {
        v12 = CFDictionaryGetValue(Value, @"clientRouteRequestID");
        if (v12)
        {
          v12 = CFRetain(v12);
        }

        *(*(*(a1 + 32) + 8) + 24) = v12;
        v13 = CFDictionaryGetValue(v9, @"initiator");
        if (v13)
        {
          v9 = CFRetain(v13);
        }

        else
        {
          v9 = 0;
        }
      }

      CFArrayRemoveValueAtIndex(*(v3 + 112), v7);
    }

    else
    {
LABEL_7:
      v9 = 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    _routingContextUtilities_postNotificationToContextAndItsFollowers(v3, @"routeConfigUpdated", Mutable);
    *(v3 + 136) = 1;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

void __FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (!ContextForUUIDFromDict)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
    return;
  }

  v3 = ContextForUUIDFromDict;
  v4 = *(ContextForUUIDFromDict + 14);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 14), v7);
        if (CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint") == *(a1 + 56))
        {
          break;
        }

        if (v6 == ++v7)
        {
          return;
        }
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_SubEndpoints");
      if (!Value)
      {
        v14 = 0;
LABEL_22:
        CFArrayRemoveValueAtIndex(*(v3 + 14), v7);
LABEL_23:
        if (v14)
        {
          *(v3 + 136) = 1;
        }

        return;
      }

      v10 = Value;
      v11 = CFArrayGetCount(Value);
      if (v11 >= 1)
      {
        v12 = v11;
        v13 = 0;
        while (CFArrayGetValueAtIndex(v10, v13) != *(a1 + 64))
        {
          if (v12 == ++v13)
          {
            goto LABEL_15;
          }
        }

        CFArrayRemoveValueAtIndex(v10, v13);
        if (*(a1 + 88) || *(a1 + 89))
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 72);
          v17 = *(a1 + 80);
LABEL_20:
          _routingContextUtilities_postRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v15, v16, v17);
          v14 = 1;
LABEL_21:
          if (CFArrayGetCount(v10))
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        if (!FigCFEqual())
        {
          *(v3 + 136) = 0;
        }

        if (!CFArrayGetCount(v10))
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 72);
          if (v3[136])
          {
            v17 = @"configUpdateReasonEndedSuccess";
          }

          else
          {
            v17 = @"configUpdateReasonEndedFailed";
          }

          goto LABEL_20;
        }
      }

LABEL_15:
      v14 = 0;
      goto LABEL_21;
    }
  }
}

void __FigRoutingManagerContextUtilities_SaveCommChannelUUID_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(ContextForUUIDFromDict + 13);
    v5 = *(a1 + 56);
    *(v3 + 13) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (!ContextForUUIDFromDict)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
    return;
  }

  v3 = ContextForUUIDFromDict;
  v4 = MEMORY[0x1E695E480];
  if (*(a1 + 56))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    CFArrayAppendValue(*(v3 + 14), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  FigCFDictionaryGetInt32IfPresent();
  v6 = *(a1 + 72);
  if (v6 && (Value = CFDictionaryGetValue(v6, @"clientRouteRequestID")) != 0)
  {
    v8 = CFRetain(Value);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  if (v9 && !FigRoutingManagerIsEndpointOfType(v9, *MEMORY[0x1E69626C8]))
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      CFRetain(v10);
    }

    if (v8)
    {
      CFRetain(v8);
    }

    v11 = dispatch_time(0, 60000000000);
    v12 = *(a1 + 40);
    v13 = *(v12 + 496);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke_2;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = v12;
    block[5] = v8;
    block[6] = *(a1 + 56);
    dispatch_after(v11, v13, block);
  }

  _routingContextUtilities_postRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 48), *(a1 + 72), @"configUpdateReasonStarted");
  if (v8)
  {
    CFRelease(v8);
  }

  if (FigRoutingManagerIsEndpointOfType(*(a1 + 56), *MEMORY[0x1E69626A8]))
  {
    number = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, *MEMORY[0x1E6962280], *v4, &number);
      valuePtr = 0;
      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
        CFRelease(number);
        number = 0;
        if ((valuePtr & 0x10) != 0)
        {
          return;
        }
      }
    }

    else
    {
      valuePtr = 0;
    }

    FigRouteDiscoveryManagerLowerBTDiscoveryModeFromDetailed();
  }
}

void __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 504);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke_3;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v6 = *(a1 + 40);
  MXDispatchSync("FigRoutingManagerContextUtilities_AddCurrentlyActivatingEndpoint_block_invoke_2", "FigRoutingManagerContextUtilities.m", 1622, 0, 0, v2, v5);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    RouteConfigUpdatedPayload = routingContextUtilities_createRouteConfigUpdatedPayload(*(a1 + 56), @"configUpdateReasonStarted");
    _routingContextUtilities_postNotificationToContextAndItsFollowers(v3, @"routeConfigUpdated", RouteConfigUpdatedPayload);
    _routingContextUtilities_removeCurrentlyActivatingEndpointWithID(*(a1 + 48), *(a1 + 64));
    if (RouteConfigUpdatedPayload)
    {

      CFRelease(RouteConfigUpdatedPayload);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void __FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionaryGetInt32IfPresent();
    v6 = *(a1 + 64);
    if (v6)
    {
      MutableCopy = CFArrayCreateMutableCopy(v4, 0, v6);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    }

    v8 = MutableCopy;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v9 = *(v3 + 14);
    if (v9 && (Count = CFArrayGetCount(v9), Count >= 1))
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 14), v12);
        if (CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint") == *(a1 + 80))
        {
          break;
        }

        if (v11 == ++v12)
        {
          goto LABEL_11;
        }
      }

      FigCFDictionaryGetBooleanIfPresent();
      CFDictionarySetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_SubEndpoints", v8);
    }

    else
    {
LABEL_11:
      CFArrayAppendValue(*(v3 + 14), Mutable);
    }

    _routingContextUtilities_postRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 48), *(a1 + 56), @"configUpdateReasonStarted");
    if (v8)
    {
      CFRelease(v8);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void __FigRoutingManagerContextUtilities_AddActivatedEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (!ContextForUUIDFromDict)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
    return;
  }

  v3 = ContextForUUIDFromDict;
  v4 = *(ContextForUUIDFromDict + 15);
  if (!v4 || (Count = CFArrayGetCount(v4)) == 0)
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    v10 = *(v3 + 15);
    v11 = *(a1 + 56);

    CFArrayAppendValue(v10, v11);
    return;
  }

  v6 = Count;
  if (Count < 1)
  {
    goto LABEL_17;
  }

  v12 = 0;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 15), v7);
    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (Value == *(a1 + 80))
    {
      break;
    }

LABEL_9:
    if (v6 == ++v7)
    {
      goto LABEL_16;
    }
  }

  if (!*(a1 + 88))
  {
    v12 = 1;
    goto LABEL_9;
  }

  FigCFDictionarySetValue();
LABEL_16:
  if (!v12)
  {
LABEL_17:
    CFArrayAppendValue(*(v3 + 15), *(a1 + 56));
  }
}

void __FigRoutingManagerContextUtilities_RemoveActivatedEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(ContextForUUIDFromDict + 15);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 15), v7);
          Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
          FigCFDictionaryGetInt64IfPresent();
          if (Value == *(a1 + 56) && !*(a1 + 64))
          {
            break;
          }

          if (v6 == ++v7)
          {
            return;
          }
        }

        if (!FigRoutingManagerIsEndpointOfType(Value, *MEMORY[0x1E69626B0]) || (v10 = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_SubEndpointsInfo")) == 0 || !CFArrayGetCount(v10))
        {
          CFArrayRemoveValueAtIndex(*(v3 + 15), v7);
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

const UInt8 *__FigRoutingManagerContextUtilities_GetPickingState_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    **(a1 + 56) = *(result + 14);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

const UInt8 *__FigRoutingManagerContextUtilities_SetPickingState_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    *(result + 14) = *(a1 + 56);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

void *__FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    result = *(a1 + 56);
    if (result)
    {
      result = CFRetain(result);
    }

    v3[12] = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

const UInt8 *__FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (result)
  {
    result = FigCFWeakReferenceHolderCopyReferencedObject();
    **(a1 + 48) = result;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_CopyAllAudioContexts_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 616);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 616), i);
        if (_routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), ValueAtIndex))
        {
          v7 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v7)
          {
            v8 = v7;
            CFArrayAppendValue(*(a1 + 40), v7);
            CFRelease(v8);
          }
        }
      }
    }
  }
}

void __FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (!ContextForUUIDFromDict)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
    return;
  }

  v3 = *ContextForUUIDFromDict;
  if (*ContextForUUIDFromDict == 9)
  {
LABEL_5:
    v4 = *(ContextForUUIDFromDict + 8);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    **(a1 + 56) = v4;
    return;
  }

  if (v3 != 7)
  {
    if (v3 != 3)
    {
      **(a1 + 56) = 0;
      return;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 56);

  _routingContextUtilities_copyPickedEndpointAtIndex(ContextForUUIDFromDict, 0, v5);
}

void __FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(ContextForUUIDFromDict + 15);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 15), i);
          if (CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint") == *(a1 + 56))
          {
            FigCFDictionaryGetInt64IfPresent();
          }
        }
      }
    }

    if (!**(a1 + 64))
    {
      v9 = FigCFDictionaryGetCount();
      v10 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
      if (v10)
      {
        v11 = v10;
        CFDictionaryGetKeysAndValues(*(*(a1 + 40) + 480), 0, v10);
        if (v9 >= 1)
        {
          for (j = 0; j != v9; ++j)
          {
            v13 = v11[j];
            if (v13)
            {
              BytePtr = CFDataGetBytePtr(v13);
              v15 = *(BytePtr + 15);
              if (v15)
              {
                v16 = CFArrayGetCount(v15);
                if (v16 >= 1)
                {
                  v17 = v16;
                  for (k = 0; k != v17; ++k)
                  {
                    v19 = CFArrayGetValueAtIndex(*(BytePtr + 15), k);
                    if (CFDictionaryGetValue(v19, @"ActivatedEndpointsInfo_Endpoint") == *(a1 + 56))
                    {
                      FigCFDictionaryGetInt64IfPresent();
                    }
                  }
                }
              }
            }
          }
        }

        free(v11);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void __FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(ContextForUUIDFromDict + 15);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 15), i);
          if (CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint") == *(a1 + 56))
          {
            FigCFDictionaryGetInt64IfPresent();
          }
        }
      }
    }

    if (!**(a1 + 64))
    {
      v9 = FigCFDictionaryGetCount();
      v10 = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
      if (v10)
      {
        v11 = v10;
        CFDictionaryGetKeysAndValues(*(*(a1 + 40) + 480), 0, v10);
        if (v9 >= 1)
        {
          for (j = 0; j != v9; ++j)
          {
            v13 = v11[j];
            if (v13)
            {
              BytePtr = CFDataGetBytePtr(v13);
              v15 = *(BytePtr + 15);
              if (v15)
              {
                v16 = CFArrayGetCount(v15);
                if (v16 >= 1)
                {
                  v17 = v16;
                  for (k = 0; k != v17; ++k)
                  {
                    v19 = CFArrayGetValueAtIndex(*(BytePtr + 15), k);
                    if (CFDictionaryGetValue(v19, @"ActivatedEndpointsInfo_Endpoint") == *(a1 + 56))
                    {
                      FigCFDictionaryGetInt64IfPresent();
                    }
                  }
                }
              }
            }
          }
        }

        free(v11);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }
}

void *__FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointInfoAtIndex_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result && (v3 = *(a1 + 56), (v3 & 0x8000000000000000) == 0) && (v4 = result, (result = result[14]) != 0) && (result = CFArrayGetCount(result), v3 < result))
  {
    result = CFArrayGetValueAtIndex(v4[14], *(a1 + 56));
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 64) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_RemoveCurrentlyActivatingEndpointInfoAtIndex_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = *(a1 + 56);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = ContextForUUIDFromDict;
      v5 = *(ContextForUUIDFromDict + 14);
      if (v5)
      {
        if (v3 < CFArrayGetCount(v5))
        {
          v6 = *(v4 + 14);
          v7 = *(a1 + 56);

          CFArrayRemoveValueAtIndex(v6, v7);
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

void __FigRoutingManagerContextUtilities_AppendCurrentlyActivatingEndpointInfo_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = *(ContextForUUIDFromDict + 14);
    v4 = *(a1 + 56);

    CFArrayAppendValue(v3, v4);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

void __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(a1 + 56);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v6 = *(v3 + 14);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 14), i);
          Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
          if (Value)
          {
            CFArrayAppendValue(Mutable, Value);
          }
        }
      }
    }

    if (Mutable)
    {
      *v4 = CFRetain(Mutable);

      CFRelease(Mutable);
    }

    else
    {
      *v4 = 0;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

void *__FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsInfo_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = result[14];
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 56) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

uint64_t __FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    result = *(result + 112);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v4 = result;
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 112), v5);
          result = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
          if (result == *(a1 + 56))
          {
            break;
          }

          if (v4 == ++v5)
          {
            return result;
          }
        }

        result = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_SubEndpoints");
        if (result)
        {
          result = CFRetain(result);
        }

        **(a1 + 64) = result;
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

void *__FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = result[15];
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 56) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_CopyRoutingContextUUIDForActivatedEndpoint_block_invoke(uint64_t a1)
{
  Count = FigCFDictionaryGetCount();
  v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (v3)
  {
    v4 = v3;
    CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 480), 0, v3);
    if (Count <= 0)
    {
      free(v4);
    }

    else
    {
      cf = 0;
      for (i = 0; i != Count; ++i)
      {
        v6 = v4[i];
        if (v6)
        {
          BytePtr = CFDataGetBytePtr(v6);
          v8 = *(BytePtr + 15);
          if (v8)
          {
            v9 = CFRetain(v8);
            if (v9)
            {
              v10 = v9;
              v11 = CFArrayGetCount(v9);
              if (v11 >= 1)
              {
                v12 = v11;
                v13 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
                  if (CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint") == *(a1 + 40))
                  {
                    Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_ActivationSeed");
                    valuePtr = 0;
                    if (Value)
                    {
                      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
                      v16 = valuePtr;
                    }

                    else
                    {
                      v16 = 0;
                    }

                    if (v16 == *(a1 + 48))
                    {
                      break;
                    }
                  }

                  if (v12 == ++v13)
                  {
                    goto LABEL_15;
                  }
                }

                v17 = *(BytePtr + 1);
                if (v17)
                {
                  cf = CFRetain(v17);
                }

                else
                {
                  cf = 0;
                }
              }

LABEL_15:
              CFRelease(v10);
            }
          }
        }
      }

      free(v4);
      if (cf)
      {
        **(a1 + 56) = CFRetain(cf);
        CFRelease(cf);
        return;
      }
    }
  }

  **(a1 + 56) = 0;
}

void __FigRoutingManagerContextUtilities_RemoveContext_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 64) + 480), *(a1 + 72));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (!v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = -17420;
    return;
  }

  *(*(*(a1 + 48) + 8) + 24) = *v2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  switch(v3)
  {
    case 4:
      v12 = *(a1 + 64);
      v13 = *(v12 + 616);
      if (v13)
      {
        v20.length = CFArrayGetCount(*(v12 + 616));
        v20.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v20, *(a1 + 72));
        if (FirstIndexOfValue != -1)
        {
          v7 = FirstIndexOfValue;
          v8 = 616;
          goto LABEL_15;
        }
      }

      break;
    case 6:
      v9 = *(a1 + 64);
      v10 = *(v9 + 600);
      if (v10)
      {
        v19.length = CFArrayGetCount(*(v9 + 600));
        v19.location = 0;
        v11 = CFArrayGetFirstIndexOfValue(v10, v19, *(a1 + 72));
        if (v11 != -1)
        {
          v7 = v11;
          v8 = 600;
          goto LABEL_15;
        }
      }

      break;
    case 5:
      v4 = *(a1 + 64);
      v5 = *(v4 + 608);
      if (v5)
      {
        v18.length = CFArrayGetCount(*(v4 + 608));
        v18.location = 0;
        v6 = CFArrayGetFirstIndexOfValue(v5, v18, *(a1 + 72));
        if (v6 != -1)
        {
          v7 = v6;
          v8 = 608;
LABEL_15:
          CFArrayRemoveValueAtIndex(*(*(a1 + 64) + v8), v7);
        }
      }

      break;
  }

  if (CFDictionaryGetValue(*(*(a1 + 64) + 32 * *(*(*(a1 + 48) + 8) + 24) + 8), *(a1 + 72)))
  {
    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v15)
    {
      v16 = v15;
      *(*(*(a1 + 32) + 8) + 24) = CFDataGetBytePtr(v15);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      CFRelease(v16);
    }
  }
}

void __FigRoutingManagerContextUtilities_RemoveContext_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(v2 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(*(a1 + 32) + 8) + 24) + 64) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(*(a1 + 32) + 8) + 24) + 8) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(*(a1 + 32) + 8) + 24) + 16) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v6 = *(v2 + 80);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(*(a1 + 32) + 8) + 24) + 80) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v7 = *(v2 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(*(a1 + 32) + 8) + 24) + 88) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v8 = *(v2 + 48);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(*(a1 + 32) + 8) + 24) + 48) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v9 = *(v2 + 72);
  if (v9)
  {
    CFRelease(v9);
    *(*(*(*(a1 + 32) + 8) + 24) + 72) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v10 = *(v2 + 112);
  if (v10)
  {
    CFRelease(v10);
    *(*(*(*(a1 + 32) + 8) + 24) + 112) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v11 = *(v2 + 120);
  if (v11)
  {
    CFRelease(v11);
    *(*(*(*(a1 + 32) + 8) + 24) + 120) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v12 = *(v2 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(*(*(*(a1 + 32) + 8) + 24) + 40) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v13 = *(v2 + 128);
  if (v13)
  {
    CFRelease(v13);
    *(*(*(*(a1 + 32) + 8) + 24) + 128) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  v14 = *(v2 + 144);
  if (v14)
  {
    CFRelease(v14);
    *(*(*(*(a1 + 32) + 8) + 24) + 144) = 0;
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  *(v2 + 24) = 0;
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = 0;
  *(*(*(*(a1 + 32) + 8) + 24) + 28) = 0;
  *(*(*(*(a1 + 32) + 8) + 24) + 152) = -1082130432;
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 24);
  v17 = v16[21];
  if (v17)
  {
    CFRelease(v17);
    *(*(*(*(a1 + 32) + 8) + 24) + 168) = 0;
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
  }

  v18 = v16[20];
  if (v18)
  {
    CFRelease(v18);
    *(*(*(*(a1 + 32) + 8) + 24) + 160) = 0;
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
  }

  v19 = v16[22];
  if (v19)
  {
    dispatch_source_cancel(v19);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
    v20 = v16[22];
    if (v20)
    {
      dispatch_release(v20);
      *(*(*(*(a1 + 32) + 8) + 24) + 176) = 0;
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 24);
    }
  }

  v21 = v16[23];
  if (v21)
  {
    dispatch_source_cancel(v21);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
    v22 = v16[23];
    if (v22)
    {
      dispatch_release(v22);
      *(*(*(*(a1 + 32) + 8) + 24) + 184) = 0;
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 24);
    }
  }

  v23 = v16[25];
  if (v23)
  {
    CFRelease(v23);
    *(*(*(*(a1 + 32) + 8) + 24) + 200) = 0;
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
  }

  v24 = v16[24];
  if (v24)
  {
    dispatch_release(v24);
    *(*(*(*(a1 + 32) + 8) + 24) + 192) = 0;
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 24);
  }

  v25 = v16[26];
  if (v25)
  {
    CFRelease(v25);
    *(*(*(*(a1 + 32) + 8) + 24) + 208) = 0;
    v15 = *(*(a1 + 32) + 8);
  }

  *(v15 + 24) = 0;
  CFDictionaryRemoveValue(*(*(a1 + 48) + 32 * *(*(*(a1 + 40) + 8) + 24) + 8), *(a1 + 56));
  v26 = *(a1 + 56);
  v27 = *(*(a1 + 48) + 480);

  CFDictionaryRemoveValue(v27, v26);
}

void *__FigRoutingManagerContextUtilities_CopyHijackID_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    result = result[2];
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_SetAggregateEndpoint_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(v3 + 8);
    v6 = *(a1 + 56);
    *(v3 + 8) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

void *__FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = result[8];
    if (result)
    {
      result = CFRetain(result);
    }

    **(a1 + 56) = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_CopyNonControlPickedContexts_block_invoke(uint64_t a1)
{
  Count = CFDictionaryGetCount(*(*(a1 + 32) + 480));
  v3 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 480), v3, 0);
  if (Count >= 1)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    v8 = v3;
    do
    {
      ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *v8);
      if (*ContextForUUIDFromDict != 7 && *ContextForUUIDFromDict != 9)
      {
        v11 = ContextForUUIDFromDict;
        v12 = CFDictionaryCreateMutable(v4, 0, v6, v7);
        v13 = v12;
        v14 = *(v11 + 9);
        if (v14)
        {
          CFDictionarySetValue(v12, @"CurrentEndpoints", v14);
        }

        v15 = *(v11 + 14);
        if (v15 && CFArrayGetCount(v15) >= 1)
        {
          CFDictionarySetValue(v13, @"CurrentlyActivatingEndpointsInfo", *(v11 + 14));
        }

        v16 = *(v11 + 15);
        if (v16)
        {
          CFDictionarySetValue(v13, @"ActivatedEndpointsInfo", v16);
        }

        CFDictionarySetValue(Mutable, *(v11 + 1), v13);
        if (v13)
        {
          CFRelease(v13);
        }
      }

      ++v8;
      --Count;
    }

    while (Count);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    *v17 = Mutable;

    free(v3);
  }

  else
  {
    free(v3);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySidePlayContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 552);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 560);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopySystemVideoContextUUID_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 568);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopyAudioContextUUIDs_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 616);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __FigRoutingManagerContextUtilities_CopyPerAppSecondDisplayContextUUIDs_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 600);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __FigRoutingManagerContextUtilities_CopyArrayOfFollowerUUIDs_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v5 = *(v3 + 11);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 11), i);
          ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(ValueAtIndex);
          if (ContextFromWeakRef)
          {
            v11 = *(ContextFromWeakRef + 1);
            if (v11)
            {
              CFArrayAppendValue(Mutable, v11);
            }
          }
        }
      }
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      *v12 = Mutable;
    }

    else if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

const UInt8 *__FigRoutingManagerContextUtilities_IsContextSidePlay_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    if (*result == 12)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

const UInt8 *__FigRoutingManagerContextUtilities_IsContextSystemAudio_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  if (result)
  {
    if (*result == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17422;
  }

  return result;
}

CFDictionaryRef *__FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = CFDictionaryGetValue(result[18], *(a1 + 56));
    if (result)
    {
      v3 = (*(*(a1 + 32) + 8) + 24);

      return CFNumberGetValue(result, kCFNumberFloat32Type, v3);
    }
  }

  return result;
}

void __FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID_block_invoke(uint64_t a1)
{
  if (_routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40)))
  {
    v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, (a1 + 56));
    FigCFDictionarySetValue();
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void __FigRoutingManagerContextUtilities_SetScreenEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    v4 = *(a1 + 48);
    v5 = *(v3 + 20);
    if (v4)
    {
      *(v3 + 20) = v4;
      CFRetain(v4);
      if (v5)
      {

        CFRelease(v5);
      }
    }

    else if (v5)
    {
      CFRelease(*(v3 + 20));
      *(v3 + 20) = 0;
    }
  }
}

void *__FigRoutingManagerContextUtilities_CopyScreenEndpointUUID_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = result[20];
    if (result)
    {
      result = CFRetain(result);
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void __FigRoutingManagerContextUtilities_SetAudioEndpoint_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (ContextForUUIDFromDict)
  {
    v3 = *(ContextForUUIDFromDict + 21);
    v4 = *(a1 + 48);
    *(ContextForUUIDFromDict + 21) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {

      CFRelease(v3);
    }
  }
}

const UInt8 *__FigRoutingManagerContextUtilities_IsRoutedToLocalAirplayReceiver_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = FigCFEqual();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void __FigRoutingManagerContextUtilities_StopDiscoveryTimer_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (ContextForUUIDFromDict)
  {
    v2 = ContextForUUIDFromDict;
    v3 = *(ContextForUUIDFromDict + 23);
    if (v3)
    {
      dispatch_source_cancel(v3);
    }

    v4 = *(v2 + 25);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 25) = 0;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      dispatch_release(v5);
      *(v2 + 24) = 0;
    }
  }
}

void __FigRoutingManagerContextUtilities_StopMirroringTimer_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (ContextForUUIDFromDict)
  {
    v2 = ContextForUUIDFromDict;
    if (*(ContextForUUIDFromDict + 20))
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *(v2 + 22);
      if (v4)
      {
        dispatch_source_cancel(v4);
        v5 = *(v2 + 22);
        if (v5)
        {
          dispatch_release(v5);
          *(v2 + 22) = 0;
        }
      }

      v6 = *(v2 + 20);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 20) = 0;
      }
    }
  }
}

void __FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 32) + 480), *(a1 + 40));
  if (ContextForUUIDFromDict)
  {
    v3 = *(ContextForUUIDFromDict + 26);
    v4 = *(a1 + 48);
    *(ContextForUUIDFromDict + 26) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __FigRoutingManagerContextUtilities_CopySupportedOutputChannelLayouts_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
    v5 = *(ContextForUUIDFromDict + 26);
    *(v3 + 24) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

@end