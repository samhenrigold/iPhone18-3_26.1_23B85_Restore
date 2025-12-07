uint64_t NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(void))
{
  v16 = v7[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v8))
  {
    result = closure #1 in NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(v7, a1, a2, a3, a4, a5, a6);
    if (!v8)
    {
      a7(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoPullLagunaSessionToTVRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 24);
  *v5 = 0;
  *(v5 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetDestinationCapabilitiesRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetDestinationCapabilitiesRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetDestinationCapabilitiesRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesRequest);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoGetDestinationCapabilitiesResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0);
  type metadata accessor for NCProtoDestinationCapabilities(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities, &protocol conformance descriptor for NCProtoDestinationCapabilities);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in NCProtoGetDestinationCapabilitiesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DestinationCapabilitiesResponse = type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(DestinationCapabilitiesResponse + 20), v7, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v11, type metadata accessor for NCProtoDestinationCapabilities);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities, &protocol conformance descriptor for NCProtoDestinationCapabilities);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoDestinationCapabilities);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetDestinationCapabilitiesResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetDestinationCapabilitiesResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetDestinationCapabilitiesResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoIncomingCallBannerActionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for NCProtoIncomingCallBannerActionRequest(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoIncomingCallBannerActionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoIncomingCallBannerActionRequest, 3);
      if (!v4)
      {
        type metadata accessor for NCProtoIncomingCallBannerActionRequest(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIncomingCallBannerActionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoAddressableContact@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoAddressableContact(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIncomingCallBannerActionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest, &protocol conformance descriptor for NCProtoIncomingCallBannerActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIncomingCallBannerActionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest, &protocol conformance descriptor for NCProtoIncomingCallBannerActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIncomingCallBannerActionRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest, &protocol conformance descriptor for NCProtoIncomingCallBannerActionRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIncomingCallBannerActionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse, &protocol conformance descriptor for NCProtoIncomingCallBannerActionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIncomingCallBannerActionResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse, &protocol conformance descriptor for NCProtoIncomingCallBannerActionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIncomingCallBannerActionResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse, &protocol conformance descriptor for NCProtoIncomingCallBannerActionResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoCallState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoCallState, lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode, &type metadata for NCProtoConversationAVMode);
        }

        else if (result == 4)
        {
          goto LABEL_4;
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for NCProtoCallState(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState);
    closure #3 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState, lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode, &type metadata for NCProtoConversationAVMode);
    closure #4 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NCProtoCallState(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoCallState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 256;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallState(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);

  return Message.hash(into:)();
}

uint64_t NCProtoCallStateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for NCProtoCallStateRequest(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static NCProtoCallStateRequest.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for NCProtoCallStateRequest(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest, &protocol conformance descriptor for NCProtoCallStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallStateRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest, &protocol conformance descriptor for NCProtoCallStateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallStateRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest, &protocol conformance descriptor for NCProtoCallStateRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoCallStateRequest(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoCallStateResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NCProtoCallStateResponse(0);
  type metadata accessor for NCProtoCallState(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoCallStateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NCProtoCallState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NCProtoCallStateResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v12 + 20), v7, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v11, type metadata accessor for NCProtoCallState);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallState);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallStateResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse, &protocol conformance descriptor for NCProtoCallStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallStateResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse, &protocol conformance descriptor for NCProtoCallStateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallStateResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse, &protocol conformance descriptor for NCProtoCallStateResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        closure #2 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 4:
          type metadata accessor for NCProtoDeviceTokenRequest(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 5:
          closure #5 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #2 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NCProtoDeviceTokenRequest(0);
  type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NCProtoDeviceTokenRequest(0);
  type metadata accessor for NCProtoCallState(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NCProtoDeviceTokenRequest(0);
  lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDeviceTokenRequest);
      closure #4 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for NCProtoDeviceTokenRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v12 + 24), v7, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v11, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
}

uint64_t closure #2 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for NCProtoCallState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v12 + 28), v7, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v11, type metadata accessor for NCProtoCallState);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallState);
}

uint64_t closure #4 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  if ((*(a1 + *(result + 36) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDeviceTokenRequest@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for NCProtoCallState(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = a1[9];
  a2[a1[8]] = 2;
  v10 = &a2[v9];
  *v10 = 0;
  *(v10 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeviceTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest, &protocol conformance descriptor for NCProtoDeviceTokenRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeviceTokenRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest, &protocol conformance descriptor for NCProtoDeviceTokenRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceTokenRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest, &protocol conformance descriptor for NCProtoDeviceTokenRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoDeviceTokenResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for NCProtoDeviceTokenResponse(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoDeviceTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NCProtoDeviceTokenResponse.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      type metadata accessor for NCProtoDeviceTokenResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoDeviceTokenResponse.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoDeviceTokenResponse(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoDeviceTokenResponse@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_2255D3AC0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeviceTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse, &protocol conformance descriptor for NCProtoDeviceTokenResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeviceTokenResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse, &protocol conformance descriptor for NCProtoDeviceTokenResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceTokenResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse, &protocol conformance descriptor for NCProtoDeviceTokenResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoDisconnectRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoDisconnectRequest, lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason, &type metadata for NCProtoDisconnectRequest.DisconnectReason);
          break;
        case 2:
          type metadata accessor for NCProtoDisconnectRequest(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  a5(0);
  a6();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoDisconnectRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDisconnectRequest);
  if (!v4)
  {
    closure #3 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDisconnectRequest, lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason, &type metadata for NCProtoDisconnectRequest.DisconnectReason);
    type metadata accessor for NCProtoDisconnectRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    a6(result, v10);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDisconnectRequest@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  result = UnknownStorage.init()();
  v5 = *(a1 + 28);
  *(a2 + *(a1 + 24)) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDisconnectRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest, &protocol conformance descriptor for NCProtoDisconnectRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDisconnectRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest, &protocol conformance descriptor for NCProtoDisconnectRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDisconnectRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest, &protocol conformance descriptor for NCProtoDisconnectRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoDisconnectResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoDisconnectResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for NCProtoDisconnectResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoDisconnectResponse.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for NCProtoDisconnectResponse(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDisconnectResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse, &protocol conformance descriptor for NCProtoDisconnectResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDisconnectResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse, &protocol conformance descriptor for NCProtoDisconnectResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDisconnectResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse, &protocol conformance descriptor for NCProtoDisconnectResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoDisconnectResponse(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoRingtoneConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = closure #1 in NCProtoRingtoneConfiguration.traverse<A>(visitor:)(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPrepareTransferRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest, &protocol conformance descriptor for NCProtoPrepareTransferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPrepareTransferRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest, &protocol conformance descriptor for NCProtoPrepareTransferRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPrepareTransferRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest, &protocol conformance descriptor for NCProtoPrepareTransferRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPrepareTransferResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse, &protocol conformance descriptor for NCProtoPrepareTransferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPrepareTransferResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse, &protocol conformance descriptor for NCProtoPrepareTransferResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPrepareTransferResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse, &protocol conformance descriptor for NCProtoPrepareTransferResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoEndedSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t static NCProtoEndedSessionEvent.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAudioRouteTransferRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest, &protocol conformance descriptor for NCProtoAudioRouteTransferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAudioRouteTransferRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest, &protocol conformance descriptor for NCProtoAudioRouteTransferRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAudioRouteTransferRequest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest, &protocol conformance descriptor for NCProtoAudioRouteTransferRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoEndedSessionEvent(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t static NCProtoLagunaConnectionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAudioRouteTransferResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse, &protocol conformance descriptor for NCProtoAudioRouteTransferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAudioRouteTransferResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse, &protocol conformance descriptor for NCProtoAudioRouteTransferResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAudioRouteTransferResponse(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse, &protocol conformance descriptor for NCProtoAudioRouteTransferResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoMemberAssociationPrimaryInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          goto LABEL_15;
        }

        if (result == 2)
        {
          type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 4:
LABEL_15:
            type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType();
            dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  if (!v4)
  {
    closure #1 in NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    closure #3 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType();
      dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    }

    type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

uint64_t closure #3 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoMemberAssociationPrimaryInfo@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2255D3AC0;
  v7 = a1[9];
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[8] = 1;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoMemberAssociationPrimaryInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoMemberAssociationPrimaryInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoMemberAssociationPrimaryInfo(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, &protocol conformance descriptor for NCProtoMemberAssociationPrimaryInfo);

  return Message.hash(into:)();
}

uint64_t NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v12, v19, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v19, v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v29 = v44;
    }

    else
    {
      outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
      v31 = v39;
      outlined init with take of NCProtoContactInfo(v17, v39, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      outlined init with take of NCProtoContactInfo(v31, v24, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData, &protocol conformance descriptor for NCProtoIDSProxyMessage.RawData);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v24, v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
    return outlined destroy of NCProtoContactInfo?(v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of NCProtoContactInfo(v32, v40, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
    v36 = v38;
    outlined destroy of NCProtoContactInfo?(v38, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v35, v36, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v12, v19, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v19, v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
      v31 = v40;
      outlined init with take of NCProtoContactInfo(v17, v40, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
      outlined init with take of NCProtoContactInfo(v31, v24, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate, &protocol conformance descriptor for NCProtoIDSProxyMessage.GroupUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v24, v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
    return outlined destroy of NCProtoContactInfo?(v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of NCProtoContactInfo(v32, v39, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
    v36 = v38;
    outlined destroy of NCProtoContactInfo?(v38, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v35, v36, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v12, v19, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v19, v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
      v31 = v40;
      outlined init with take of NCProtoContactInfo(v17, v40, type metadata accessor for NCProtoIDSProxyMessage.Resource);
      outlined init with take of NCProtoContactInfo(v31, v24, type metadata accessor for NCProtoIDSProxyMessage.Resource);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v29 = v44;
    }
  }

  v32 = v42;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v24, v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
    return outlined destroy of NCProtoContactInfo?(v32, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of NCProtoContactInfo(v32, v39, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
    v36 = v38;
    outlined destroy of NCProtoContactInfo?(v38, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v35, v36, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of NCProtoContactInfo?(v3, &v14 - v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v11 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for NCProtoIDSProxyMessage(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v11 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of NCProtoContactInfo(v7, v10, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData, &protocol conformance descriptor for NCProtoIDSProxyMessage.RawData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.RawData);
  }

  result = outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v11 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NCProtoContactInfo(v7, v10, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate, &protocol conformance descriptor for NCProtoIDSProxyMessage.GroupUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
  }

  result = outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v11 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of NCProtoContactInfo(v7, v10, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.Resource);
  }

  result = outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage, &protocol conformance descriptor for NCProtoIDSProxyMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage, &protocol conformance descriptor for NCProtoIDSProxyMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage, &protocol conformance descriptor for NCProtoIDSProxyMessage);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x617461447761522ELL, 0xE800000000000000, &static NCProtoIDSProxyMessage.RawData.protoMessageName, &qword_27D720580);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6372756F7365522ELL, 0xE900000000000065, &static NCProtoIDSProxyMessage.Resource.protoMessageName, &qword_27D7205B8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x705570756F72472ELL, 0xEC00000065746164, &static NCProtoIDSProxyMessage.GroupUpdate.protoMessageName, &qword_27D7205F0);
}

uint64_t NCProtoJoinEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        a4(v9 + 16, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoIDSProxyMessage.RawData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Google_Protobuf_Value();
  v4 = MEMORY[0x277D215F0];
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0], MEMORY[0x277D215E8]);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v4, MEMORY[0x277D215F8]);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.RawData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = v3[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[4] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Google_Protobuf_Value(), v13 = MEMORY[0x277D215F0], lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0], MEMORY[0x277D215E8]), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v13, MEMORY[0x277D215F8]), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
    {
      type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.RawData@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoContinuityFavorite@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoContinuityFavorite(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData, &protocol conformance descriptor for NCProtoIDSProxyMessage.RawData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData, &protocol conformance descriptor for NCProtoIDSProxyMessage.RawData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData, &protocol conformance descriptor for NCProtoIDSProxyMessage.RawData);

  return Message.hash(into:)();
}

uint64_t NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        closure #4 in NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t closure #4 in NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Google_Protobuf_Value();
  v4 = MEMORY[0x277D215F0];
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0], MEMORY[0x277D215E8]);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v4, MEMORY[0x277D215F8]);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.Resource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_19;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 != v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  v16 = v3[5];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v3[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[6] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Google_Protobuf_Value(), v18 = MEMORY[0x277D215F0], lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0], MEMORY[0x277D215E8]), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v18, MEMORY[0x277D215F8]), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
    {
      type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.Resource@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = xmmword_2255D3AB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoContactHandleAnonym@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoContactHandleAnonym(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.Resource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.Resource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.Resource(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource, &protocol conformance descriptor for NCProtoIDSProxyMessage.Resource);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AA66730](a2, a3);
  *a4 = 0xD000000000000017;
  *a5 = 0x80000002255E0640;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 7:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
      case 4:
      case 13:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 3:
      case 5:
      case 6:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 8:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 9:
      case 10:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 11:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        break;
      case 12:
        closure #12 in NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #12 in NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 24) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
      {
        v8 = *(v3 + 40);
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 48) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
          {
            if (!*(v3 + 56) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
            {
              if (*(v3 + 64) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
              {
                if (!*(v3 + 72) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
                {
                  v10 = *(v3 + 80);
                  v11 = *(v3 + 88);
                  v12 = v11 >> 62;
                  if ((v11 >> 62) > 1)
                  {
                    if (v12 != 2)
                    {
                      goto LABEL_30;
                    }

                    v13 = *(v10 + 16);
                    v14 = *(v10 + 24);
                  }

                  else
                  {
                    if (!v12)
                    {
                      if ((v11 & 0xFF000000000000) == 0)
                      {
                        goto LABEL_30;
                      }

                      goto LABEL_29;
                    }

                    v13 = v10;
                    v14 = v10 >> 32;
                  }

                  if (v13 == v14)
                  {
                    goto LABEL_30;
                  }

LABEL_29:
                  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                  if (v4)
                  {
                    return result;
                  }

LABEL_30:
                  v15 = *(v3 + 96);
                  v16 = *(v3 + 104);
                  v17 = v16 >> 62;
                  if ((v16 >> 62) > 1)
                  {
                    if (v17 != 2)
                    {
                      goto LABEL_39;
                    }

                    v18 = *(v15 + 16);
                    v19 = *(v15 + 24);
                  }

                  else
                  {
                    if (!v17)
                    {
                      if ((v16 & 0xFF000000000000) == 0)
                      {
LABEL_39:
                        if (!*(*(v3 + 112) + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
                        {
                          if (!*(*(v3 + 120) + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
                          {
                            v20 = *(v3 + 136);
                            v21 = HIBYTE(v20) & 0xF;
                            if ((v20 & 0x2000000000000000) == 0)
                            {
                              v21 = *(v3 + 128) & 0xFFFFFFFFFFFFLL;
                            }

                            if (!v21 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
                            {
                              type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
                              return UnknownStorage.traverse<A>(visitor:)();
                            }
                          }
                        }

                        return result;
                      }

LABEL_38:
                      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                      if (v4)
                      {
                        return result;
                      }

                      goto LABEL_39;
                    }

                    v18 = v15;
                    v19 = v15 >> 32;
                  }

                  if (v18 == v19)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_38;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.GroupUpdate@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_2255D3AD0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 104) = 0xC000000000000000;
  *(a1 + 112) = v2;
  *(a1 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoIDSProxyMessage.GroupUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate, &protocol conformance descriptor for NCProtoIDSProxyMessage.GroupUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate, &protocol conformance descriptor for NCProtoIDSProxyMessage.GroupUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate, &protocol conformance descriptor for NCProtoIDSProxyMessage.GroupUpdate);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x22AA66730](0xD000000000000012, 0x80000002255E07A0);
  static NCProtoIDSProxyMessage.ParticipantIDList.protoMessageName = 0xD000000000000017;
  *algn_27D720628 = 0x80000002255E0640;
  return result;
}

uint64_t static NCProtoIDSProxyMessage.RawData.protoMessageName.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2255D3B80;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static NCProtoConversationAVMode._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t NCProtoAddConversationParticipantsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t NCProtoAddConversationParticipantsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    (a5)(0, a2, a3, a4);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t *static NCProtoIDSProxyMessage.ParticipantIDList.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return (dispatch thunk of static Equatable.== infix(_:_:)() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int NCProtoContactInfo.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoActiveConversation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance NCProtoConversationAVMode@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NCProtoContactInfo(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList, &protocol conformance descriptor for NCProtoIDSProxyMessage.ParticipantIDList);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NCProtoContactInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v49 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = (&v49 - v15);
  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v54 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v53;
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    outlined init with copy of NCProtoContactInfo(*(v50 + 56) + *(v5 + 72) * v22, v10, type metadata accessor for NCProtoContactInfo);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    outlined init with take of NCProtoContactInfo(v10, v23 + v32, type metadata accessor for NCProtoContactInfo);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v52;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v23, v52, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v10;
    v38 = v5;
    v39 = *(v34 + 48);
    v41 = *v33;
    v40 = v33[1];
    outlined init with take of NCProtoContactInfo(v33 + v39, v8, type metadata accessor for NCProtoContactInfo);
    v42 = v51;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactInfo);
      return 0;
    }

    v46 = *(v42 + 56);
    v5 = v38;
    v10 = v37;
    outlined init with copy of NCProtoContactInfo(v46 + *(v38 + 72) * v43, v37, type metadata accessor for NCProtoContactInfo);
    v47 = specialized static NCProtoContactInfo.== infix(_:_:)(v37, v8);
    outlined destroy of NCProtoContactInfo(v37, type metadata accessor for NCProtoContactInfo);
    result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactInfo);
    v20 = v54;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v53;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v54 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v54 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v49 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = (&v49 - v15);
  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v54 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v53;
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    outlined init with copy of NCProtoContactInfo(*(v50 + 56) + *(v5 + 72) * v22, v10, type metadata accessor for NCProtoCallInfo);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    outlined init with take of NCProtoContactInfo(v10, v23 + v32, type metadata accessor for NCProtoCallInfo);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v52;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v23, v52, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v10;
    v38 = v5;
    v39 = *(v34 + 48);
    v41 = *v33;
    v40 = v33[1];
    outlined init with take of NCProtoContactInfo(v33 + v39, v8, type metadata accessor for NCProtoCallInfo);
    v42 = v51;
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoCallInfo);
      return 0;
    }

    v46 = *(v42 + 56);
    v5 = v38;
    v10 = v37;
    outlined init with copy of NCProtoContactInfo(v46 + *(v38 + 72) * v43, v37, type metadata accessor for NCProtoCallInfo);
    v47 = specialized static NCProtoCallInfo.== infix(_:_:)(v37, v8);
    outlined destroy of NCProtoContactInfo(v37, type metadata accessor for NCProtoCallInfo);
    result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoCallInfo);
    v20 = v54;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v53;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v54 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v54 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Value();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v20, v54, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0], MEMORY[0x277D21600]);
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt1g5(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
  v64 = *(v59 - 8);
  v4 = MEMORY[0x28223BE20](v59);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v12);
  v62 = (&v57 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a1 + 64);
  v57 = a1 + 64;
  v58 = a1;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v60 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_17:
    v28 = *(a1 + 56);
    v29 = (*(a1 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v61;
    outlined init with copy of NCProtoContactInfo(v28 + *(v64 + 72) * v23, v61, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
    v34 = *(v33 + 48);
    v35 = v63;
    *v63 = v31;
    v35[1] = v30;
    v36 = v35;
    outlined init with take of NCProtoContactInfo(v32, v35 + v34, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

LABEL_18:
    v37 = v36;
    v38 = v62;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v37, v62, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMR);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v6;
    v43 = v64;
    v44 = *(v39 + 48);
    v45 = v38;
    v46 = *v38;
    v47 = v38[1];
    outlined init with take of NCProtoContactInfo(v45 + v44, v9, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_30;
    }

    v6 = v42;
    outlined init with copy of NCProtoContactInfo(*(a2 + 56) + *(v43 + 72) * v48, v42, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v51 = *v42;
    v52 = *v9;
    v53 = *(*v42 + 16);
    if (v53 != *(*v9 + 16))
    {
      goto LABEL_29;
    }

    if (v53 && v51 != v52)
    {
      v54 = (v51 + 32);
      v55 = (v52 + 32);
      while (*v54 == *v55)
      {
        ++v54;
        ++v55;
        if (!--v53)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      outlined destroy of NCProtoContactInfo(v42, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
LABEL_30:
      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
      return 0;
    }

LABEL_6:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v42, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    result = outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    a1 = v58;
    v20 = v60;
    if ((v22 & 1) == 0)
    {
      return v41;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
      v36 = v63;
      (*(*(v56 - 8) + 56))(v63, 1, 1, v56);
      v60 = 0;
      v16 = v25;
      goto LABEL_18;
    }

    v27 = *(v57 + 8 * v26);
    ++v16;
    if (v27)
    {
      v60 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x22AA661C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x22AA661C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoAddressableContactV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v80 - v9);
  v11 = type metadata accessor for NCProtoContactInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v80 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v94 = &v80 - v19;
  v20 = type metadata accessor for NCProtoAddressableContact(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v97 = (&v80 - v26);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_110:
    v76 = 0;
    return v76 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v89 = *(a1 + 16);
  v90 = v24;
  v80 = 0;
  v81 = v14;
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = a1 + v28;
  v86 = a2 + v28;
  v87 = v18;
  v84 = v11;
  v85 = (v12 + 48);
  v30 = 0;
  v31 = *(v25 + 72);
  v93 = v23;
  v32 = v97;
  v82 = v31;
  v83 = v29;
  while (1)
  {
    v33 = v31 * v30;
    result = outlined init with copy of NCProtoContactInfo(v29 + v31 * v30, v32, type metadata accessor for NCProtoAddressableContact);
    if (v30 == v89)
    {
      goto LABEL_114;
    }

    v88 = v30;
    outlined init with copy of NCProtoContactInfo(v86 + v33, v23, type metadata accessor for NCProtoAddressableContact);
    v35 = *(v90 + 28);
    v36 = *(v87 + 48);
    v37 = v94;
    outlined init with copy of NCProtoContactInfo?(v32 + v35, v94, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    outlined init with copy of NCProtoContactInfo?(v23 + v35, v37 + v36, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    v38 = *v85;
    if ((*v85)(v37, 1, v11) == 1)
    {
      if (v38(v37 + v36, 1, v11) != 1)
      {
        goto LABEL_107;
      }

      result = outlined destroy of NCProtoContactInfo?(v37, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      goto LABEL_70;
    }

    outlined init with copy of NCProtoContactInfo?(v37, v17, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if (v38(v37 + v36, 1, v11) == 1)
    {
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoContactInfo);
LABEL_107:
      v77 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd;
      v78 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR;
      v79 = v37;
      goto LABEL_108;
    }

    v39 = v81;
    outlined init with take of NCProtoContactInfo(v37 + v36, v81, type metadata accessor for NCProtoContactInfo);
    if ((*v17 != *v39 || v17[1] != v39[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[2] != v39[2] || v17[3] != v39[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[4] != v39[4] || v17[5] != v39[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[6] != v39[6] || v17[7] != v39[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[8] != v39[8] || v17[9] != v39[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((result = v17[10], result != v39[10]) || v17[11] != v39[11]) && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_105:
      outlined destroy of NCProtoContactInfo(v39, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoContactInfo);
      v77 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd;
      v78 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR;
      v79 = v94;
LABEL_108:
      outlined destroy of NCProtoContactInfo?(v79, v77, v78);
LABEL_109:
      outlined destroy of NCProtoContactInfo(v93, type metadata accessor for NCProtoAddressableContact);
      outlined destroy of NCProtoContactInfo(v97, type metadata accessor for NCProtoAddressableContact);
      goto LABEL_110;
    }

    v41 = v17[12];
    v40 = v17[13];
    v43 = v39[12];
    v42 = v39[13];
    v44 = v40 >> 62;
    v45 = v42 >> 62;
    if (v40 >> 62 == 3)
    {
      v46 = 0;
      if (!v41 && v40 == 0xC000000000000000 && v42 >> 62 == 3)
      {
        v46 = 0;
        if (!v43 && v42 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v44)
    {
      if (v44 == 1)
      {
        LODWORD(v46) = HIDWORD(v41) - v41;
        if (__OFSUB__(HIDWORD(v41), v41))
        {
          goto LABEL_118;
        }

        v46 = v46;
      }

      else
      {
        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        v49 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v49)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v46 = BYTE6(v40);
    }

    if (v45 <= 1)
    {
      if (v45)
      {
        LODWORD(v50) = HIDWORD(v43) - v43;
        if (__OFSUB__(HIDWORD(v43), v43))
        {
          goto LABEL_116;
        }

        v50 = v50;
      }

      else
      {
        v50 = BYTE6(v42);
      }

LABEL_50:
      if (v46 != v50)
      {
        goto LABEL_105;
      }

      if (v46 >= 1)
      {
        outlined copy of Data._Representation(v39[12], v39[13]);
        v53 = v42;
        v54 = v80;
        v55 = specialized Data.withUnsafeBytes<A>(_:)(v41, v40, v43, v53);
        v80 = v54;
        if ((v55 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_55;
    }

    if (v45 == 2)
    {
      v52 = *(v43 + 16);
      v51 = *(v43 + 24);
      v49 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (v49)
      {
        goto LABEL_115;
      }

      goto LABEL_50;
    }

    if (v46)
    {
      goto LABEL_105;
    }

LABEL_55:
    v56 = *(v11 + 48);
    v57 = (v17 + v56);
    v58 = *(v17 + v56 + 8);
    v59 = (v39 + v56);
    v60 = v59[1];
    if (v58)
    {
      if (!v60 || (*v57 != *v59 || v58 != v60) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (v60)
    {
      goto LABEL_105;
    }

    v61 = *(v11 + 52);
    v62 = (v17 + v61);
    v63 = *(v17 + v61 + 8);
    v64 = (v39 + v61);
    v65 = v64[1];
    if (v63)
    {
      if (!v65 || (*v62 != *v64 || v63 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (v65)
    {
      goto LABEL_105;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v66 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v39, type metadata accessor for NCProtoContactInfo);
    outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoContactInfo);
    result = outlined destroy of NCProtoContactInfo?(v94, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if ((v66 & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_70:
    v67 = *v97;
    v68 = *v93;
    v69 = *(*v97 + 16);
    if (v69 != *(*v93 + 16))
    {
      goto LABEL_109;
    }

    if (v69 && v67 != v68)
    {
      break;
    }

LABEL_97:
    if ((v97[1] != v93[1] || v97[2] != v93[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_109;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = v97;
    v23 = v93;
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoAddressableContact);
    outlined destroy of NCProtoContactInfo(v32, type metadata accessor for NCProtoAddressableContact);
    if (v76)
    {
      v30 = v88 + 1;
      v29 = v83;
      v11 = v84;
      v31 = v82;
      if (v88 + 1 != v89)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  v70 = 0;
  v71 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v91 = v68 + v71;
  v92 = v67 + v71;
  while (v70 < *(v67 + 16))
  {
    v72 = *(v96 + 72) * v70;
    result = outlined init with copy of NCProtoContactInfo(v92 + v72, v10, type metadata accessor for NCProtoContactHandleAnonym);
    if (v70 >= *(v68 + 16))
    {
      goto LABEL_113;
    }

    outlined init with copy of NCProtoContactInfo(v91 + v72, v8, type metadata accessor for NCProtoContactHandleAnonym);
    if ((*v10 != *v8 || v10[1] != *(v8 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_104;
    }

    v73 = v10[2];
    v74 = *(v8 + 2);
    if (v8[24] == 1)
    {
      if (v74)
      {
        if (v74 == 1)
        {
          if (v73 != 1)
          {
            goto LABEL_104;
          }
        }

        else if (v73 != 2)
        {
          goto LABEL_104;
        }
      }

      else if (v73)
      {
        goto LABEL_104;
      }
    }

    else if (v73 != v74)
    {
      goto LABEL_104;
    }

    if ((v10[4] != *(v8 + 4) || v10[5] != *(v8 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v10[6] != *(v8 + 6) || v10[7] != *(v8 + 7)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_104:
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContactHandleAnonym);
      goto LABEL_109;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactHandleAnonym);
    result = outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContactHandleAnonym);
    if ((v75 & 1) == 0)
    {
      goto LABEL_109;
    }

    if (v69 == ++v70)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContinuityCall(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of NCProtoContactInfo(v13, v10, type metadata accessor for NCProtoContinuityCall);
      outlined init with copy of NCProtoContactInfo(v14, v7, type metadata accessor for NCProtoContinuityCall);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = closure #1 in static NCProtoContinuityCall.== infix(_:_:)(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoContinuityCall);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContinuityCall);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoContinuityCall);
    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContinuityCall);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          MEMORY[0x22AA661C0]();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          MEMORY[0x22AA661C0]();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v33);
          outlined consume of Data._Representation(v9, v8);
          outlined consume of Data._Representation(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      closure #1 in static Data.== infix(_:_:)(v33, v9, v8, &v32);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        outlined init with copy of NCProtoContactInfo(v20, v17, a4);
        outlined init with copy of NCProtoContactInfo(v21, v14, a4);
        v23 = a5(v17, v14);
        outlined destroy of NCProtoContactInfo(v14, a6);
        outlined destroy of NCProtoContactInfo(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_31:
    v19 = 0;
    return v19 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of NCProtoContactInfo(v13, v10, type metadata accessor for NCProtoContactHandleAnonym);
      outlined init with copy of NCProtoContactInfo(v14, v7, type metadata accessor for NCProtoContactHandleAnonym);
      v16 = *v10 == *v7 && v10[1] == *(v7 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v17 = v10[2];
      v18 = *(v7 + 2);
      if (v7[24] == 1)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            if (v17 != 1)
            {
              break;
            }
          }

          else if (v17 != 2)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      if ((v10[4] != *(v7 + 4) || v10[5] != *(v7 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v10[6] != *(v7 + 6) || v10[7] != *(v7 + 7)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContactHandleAnonym);
      if (v19)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoContactHandleAnonym);
    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoContactHandleAnonym);
    goto LABEL_31;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized NCProtoContinuityCall._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v38 - v4;
  *(v1 + 41) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 57) = 1;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 514;
  v5 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  v41 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  v6 = type metadata accessor for NCProtoCallInfo(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  *v7 = 0;
  v7[1] = 0;
  v40 = (v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData) = xmmword_2255D3AC0;
  v8 = v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  v43 = v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  *v8 = 0;
  *(v8 + 8) = 256;
  v44 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic) = 2;
  v45 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening) = 2;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v39 = *(a1 + 24);
  v10 = v39;
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v14;
  *(v1 + 57) = v15;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 72) = v17;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 81);
  swift_beginAccess();
  *(v1 + 81) = v16;
  v18 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  v19 = v42;
  outlined init with copy of NCProtoContactInfo?(a1 + v18, v42, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v20 = v41;
  swift_beginAccess();

  outlined assign with take of NCProtoCallInfo?(v19, v1 + v20, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  swift_beginAccess();
  *v7 = v22;
  v7[1] = v23;

  v24 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  v27 = v40;
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  *v27 = v26;
  v27[1] = v25;
  outlined copy of Data?(v26, v25);
  outlined consume of Data?(v28, v29);
  v30 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v25) = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 9);
  v32 = v43;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v25;
  *(v32 + 9) = v30;
  v33 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v44;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v35);
  v36 = v45;
  swift_beginAccess();
  *(v1 + v36) = a1;
  return v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMd, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit18NCProtoContactInfoVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit18NCProtoContactInfoVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v9, v5, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMd, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NCProtoContactInfo(0);
      result = outlined init with take of NCProtoContactInfo(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for NCProtoContactInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMd, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit15NCProtoCallInfoVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit15NCProtoCallInfoVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v9, v5, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMd, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NCProtoCallInfo(0);
      result = outlined init with take of NCProtoContactInfo(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for NCProtoCallInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined assign with take of NCProtoCallInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMd, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21InternalSwiftProtobuf07Google_E6_ValueVGMd, &_ss18_DictionaryStorageCySS21InternalSwiftProtobuf07Google_E6_ValueVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v9, v5, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMd, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Google_Protobuf_Value();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMd, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v9, v5, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMd, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
      result = outlined init with take of NCProtoContactInfo(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x22AA661C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static NCProtoSuggestionAdvertisementDidChangeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoSuggestionAdvertisement);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMR);
    goto LABEL_7;
  }

  v18 = v21[0];
  outlined init with take of NCProtoContactInfo(&v13[v15], v21[0], type metadata accessor for NCProtoSuggestionAdvertisement);
  v19 = specialized static NCProtoSuggestionAdvertisement.== infix(_:_:)(v9, v18);
  outlined destroy of NCProtoContactInfo(v18, type metadata accessor for NCProtoSuggestionAdvertisement);
  outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoSuggestionAdvertisement);
  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NCProtoGetDestinationCapabilitiesResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v23[0];
      outlined init with take of NCProtoContactInfo(&v13[v15], v23[0], type metadata accessor for NCProtoDestinationCapabilities);
      if (*v9 == *v20 && v9[1] == v20[1] && v9[2] == v20[2])
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoDestinationCapabilities);
        if (v22)
        {
          outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoDestinationCapabilities);
          goto LABEL_3;
        }
      }

      else
      {
        outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoDestinationCapabilities);
      }

      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoDestinationCapabilities);
      v18 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd;
      v19 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR;
LABEL_12:
      outlined destroy of NCProtoContactInfo?(v13, v18, v19);
      v17 = 0;
      return v17 & 1;
    }

    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoDestinationCapabilities);
LABEL_6:
    v18 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMd;
    v19 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMR;
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static NCProtoTransferActiveConversationRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  active = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  v6 = *(active + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = *(active + 28);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetDestinationCapabilitiesRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesRequest(0) + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 9);
    v8 = a2 + v5;
    v9 = *(a2 + v5 + 9);
    if (v7)
    {
      if (v9)
      {
LABEL_8:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }

    else if ((v9 & 1) == 0)
    {
      v11 = *v6;
      v12 = *v8;
      if (v8[8])
      {
        if (v12)
        {
          if (v12 == 1)
          {
            if (v11 == 1)
            {
              goto LABEL_8;
            }
          }

          else if (v11 == 2)
          {
            goto LABEL_8;
          }
        }

        else if (!v11)
        {
          goto LABEL_8;
        }
      }

      else if (v11 == v12)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t specialized static NCProtoGetRingtoneConfigurationResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  v15 = *(v11 + 56);
  v29[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoRingtoneConfiguration);
      goto LABEL_7;
    }

    v20 = v29[0];
    outlined init with take of NCProtoContactInfo(&v13[v15], v29[0], type metadata accessor for NCProtoRingtoneConfiguration);
    v21 = *(v4 + 20);
    v22 = &v9[v21];
    v23 = *&v9[v21 + 8];
    v24 = (v20 + v21);
    v25 = v24[1];
    if (v23)
    {
      if (v25)
      {
        v26 = *v22 == *v24 && v23 == v25;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_15:
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoRingtoneConfiguration);
          outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoRingtoneConfiguration);
          outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
          if (v27)
          {
            goto LABEL_4;
          }

LABEL_20:
          v17 = 0;
          return v17 & 1;
        }
      }
    }

    else if (!v25)
    {
      goto LABEL_15;
    }

    outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoRingtoneConfiguration);
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoRingtoneConfiguration);
    v18 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd;
    v19 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR;
    goto LABEL_19;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_7:
    v18 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMd;
    v19 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMR;
LABEL_19:
    outlined destroy of NCProtoContactInfo?(v13, v18, v19);
    goto LABEL_20;
  }

  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static NCProtoIncomingCallBannerActionRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for NCProtoIncomingCallBannerActionRequest(0) + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t specialized static NCProtoGetAddressableContactsResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoAddressableContactV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoTransferContinuityCallRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NCProtoTransferContinuityCallRequest(0) + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 2)
  {
    if (v7 != 2 && ((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v7 != 2)
  {
    return 0;
  }

LABEL_12:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoJoinActiveConversationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  v5 = active[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = active;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = active[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = active[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 == 2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

LABEL_21:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetCallDisplayDetailsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallInfo);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
    goto LABEL_7;
  }

  v18 = v21[0];
  outlined init with take of NCProtoContactInfo(&v13[v15], v21[0], type metadata accessor for NCProtoCallInfo);
  v19 = specialized static NCProtoCallInfo.== infix(_:_:)(v9, v18);
  outlined destroy of NCProtoContactInfo(v18, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NCProtoPullLagunaSessionToTVRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for NCProtoPullLagunaSessionToTVRequest(0) + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 9);
    v8 = a2 + v5;
    v9 = *(a2 + v5 + 9);
    if (v7)
    {
      if (v9)
      {
LABEL_8:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }

    else if ((v9 & 1) == 0)
    {
      v11 = *v6;
      v12 = *v8;
      if (v8[8])
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (v11 == 2)
            {
              goto LABEL_8;
            }
          }

          else if (v11 == 3)
          {
            goto LABEL_8;
          }
        }

        else if (v12)
        {
          if (v11 == 1)
          {
            goto LABEL_8;
          }
        }

        else if (!v11)
        {
          goto LABEL_8;
        }
      }

      else if (v11 == v12)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t specialized static NCProtoNearbyCallStatusChangedEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0) + 28);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v10 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (!v10)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_6;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[1], a2[1]))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoStartLagunaSessionResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(a1[2], a2[2], type metadata accessor for NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation, specialized static NCProtoActiveConversation.== infix(_:_:), type metadata accessor for NCProtoActiveConversation) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(a1[3], a2[3], type metadata accessor for NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite, specialized static NCProtoContinuityFavorite.== infix(_:_:), type metadata accessor for NCProtoContinuityFavorite) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(a1[4], a2[4]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoStartLagunaSessionResponse(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetImageForContactResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  ImageForContactResponse = type metadata accessor for NCProtoGetImageForContactResponse(0);
  v5 = *(ImageForContactResponse + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v13 = *(ImageForContactResponse + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if ((v15 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = *v14;
      v19 = *v16;
      if (v16[1])
      {
        if (v19)
        {
          if (v19 == 1)
          {
            if (v18 == 1)
            {
              goto LABEL_10;
            }
          }

          else if (v18 == 2)
          {
            goto LABEL_10;
          }
        }

        else if (!v18)
        {
          goto LABEL_10;
        }
      }

      else if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoUpdateBlockedStateRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &updated - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &updated - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &updated - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v15 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v15)
    {
      goto LABEL_18;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_18;
  }

  v17 = v12;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]))
  {
    updated = type metadata accessor for NCProtoUpdateBlockedStateRequest(0);
    v18 = *(updated + 28);
    v19 = *(v17 + 48);
    outlined init with copy of NCProtoContactInfo?(a1 + v18, v14, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v26 = v19;
    outlined init with copy of NCProtoContactInfo?(a2 + v18, &v14[v19], &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v20 = *(v5 + 48);
    if (v20(v14, 1, v4) == 1)
    {
      if (v20(&v14[v26], 1, v4) == 1)
      {
        outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
LABEL_21:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v22 & 1;
      }

      goto LABEL_17;
    }

    outlined init with copy of NCProtoContactInfo?(v14, v10, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v21 = v26;
    if (v20(&v14[v26], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoSpamCallModelInfo);
LABEL_17:
      outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMR);
      goto LABEL_18;
    }

    outlined init with take of NCProtoContactInfo(&v14[v21], v7, type metadata accessor for NCProtoSpamCallModelInfo);
    v24 = specialized static NCProtoSpamCallModelInfo.== infix(_:_:)(v10, v7);
    outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoSpamCallModelInfo);
    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoSpamCallModelInfo);
    outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    if (v24)
    {
      goto LABEL_21;
    }
  }

LABEL_18:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static NCProtoRecentCallsDidChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoRecentCallsDidChangeEvent(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoStartConversationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NCProtoStartConversationRequest(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (v10 == 2)
          {
            goto LABEL_3;
          }
        }

        else if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v11)
      {
        if (v10 == 1)
        {
          goto LABEL_3;
        }
      }

      else if (!v10)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t specialized static NCProtoSuggestionAdvertisement.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a1 + 40))
  {
    v6 = v6 != 0;
  }

  if (*(a2 + 40) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  type metadata accessor for NCProtoSuggestionAdvertisement(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoLagunaConnectionRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  v15 = *(v14 + 44);
  v16 = *(v11 + 48);
  v22 = v14;
  v23 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v15, v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v15, &v13[v16], &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v10, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      outlined init with take of NCProtoContactInfo(&v13[v16], v7, type metadata accessor for NCProtoCallState);
      v18 = specialized static NCProtoCallState.== infix(_:_:)(v10, v7);
      outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      if (v18)
      {
        goto LABEL_10;
      }

LABEL_15:
      v20 = 0;
      return v20 & 1;
    }

    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoCallState);
LABEL_8:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
    goto LABEL_15;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_10:
  v19 = v23;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(v23[2], a2[2], type metadata accessor for NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation, specialized static NCProtoActiveConversation.== infix(_:_:), type metadata accessor for NCProtoActiveConversation) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(v19[3], a2[3], type metadata accessor for NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite, specialized static NCProtoContinuityFavorite.== infix(_:_:), type metadata accessor for NCProtoContinuityFavorite) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(v19[4], a2[4]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(v19[5], a2[5]) & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static NCProtoDestinationCapabilities.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for NCProtoDestinationCapabilities(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoLinkConversationSendLetMeInRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoStartedSessionEvent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]))
  {
    goto LABEL_10;
  }

  v35 = v7;
  v36 = type metadata accessor for NCProtoStartedSessionEvent(0);
  v14 = v36[7];
  v15 = *(v11 + 48);
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v10, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = &v13[v15];
      v20 = v35;
      outlined init with take of NCProtoContactInfo(v19, v35, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      v21 = specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(v10, v20);
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
LABEL_9:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
LABEL_13:
  v22 = v36[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 9);
  v25 = a2 + v22;
  v26 = *(a2 + v22 + 9);
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_10;
    }

    v30 = *v23;
    v31 = *v25;
    if (v25[8])
    {
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          if (v30 != 2)
          {
            goto LABEL_10;
          }
        }

        else if (v30 != 3)
        {
          goto LABEL_10;
        }
      }

      else if (v31)
      {
        if (v30 != 1)
        {
          goto LABEL_10;
        }
      }

      else if (v30)
      {
        goto LABEL_10;
      }
    }

    else if (v30 != v31)
    {
      goto LABEL_10;
    }
  }

  v27 = v36[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    goto LABEL_10;
  }

  v32 = v36[10];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 == 2)
    {
LABEL_33:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v34 != 2 && ((v33 ^ v34) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NCProtoDeviceTokenResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
      outlined consume of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      if (v12)
      {
        goto LABEL_13;
      }

      return 0;
    }

LABEL_10:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_10;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
LABEL_13:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      outlined copy of Data?(v13, v12);
      outlined copy of Data?(v16, v15);
      outlined consume of Data?(v13, v12);
      goto LABEL_17;
    }

LABEL_14:
    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_14;
  }

  outlined copy of Data?(v13, v12);
  outlined copy of Data?(v16, v15);
  v18 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
  outlined consume of Data?(v16, v15);
  outlined consume of Data?(v13, v12);
  if (!v18)
  {
    return 0;
  }

LABEL_17:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v28 || (*v25 != *v27 || v26 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoDeviceTokenRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v10;
  v11 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v54 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = *a1;
  v22 = a1[1];
  v61 = a1;
  if ((v21 != *a2 || v22 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v54 = v6;
  v55 = v9;
  v56 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v23 = *(v56 + 24);
  v24 = *(v18 + 48);
  outlined init with copy of NCProtoContactInfo?(v61 + v23, v20, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v25 = a2 + v23;
  v26 = a2;
  outlined init with copy of NCProtoContactInfo?(v25, &v20[v24], &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v24], 1, v11) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v20, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      goto LABEL_11;
    }

LABEL_9:
    v28 = &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd;
    v29 = &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR;
    v30 = v20;
LABEL_17:
    outlined destroy of NCProtoContactInfo?(v30, v28, v29);
    goto LABEL_18;
  }

  outlined init with copy of NCProtoContactInfo?(v20, v17, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if (v27(&v20[v24], 1, v11) == 1)
  {
    outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    goto LABEL_9;
  }

  outlined init with take of NCProtoContactInfo(&v20[v24], v14, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v31 = specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(v17, v14);
  outlined destroy of NCProtoContactInfo(v14, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  outlined destroy of NCProtoContactInfo?(v20, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v32 = v56;
  v33 = *(v56 + 28);
  v34 = *(v55 + 48);
  v35 = v60;
  outlined init with copy of NCProtoContactInfo?(v61 + v33, v60, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(v26 + v33, v35 + v34, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v36 = v59;
  v37 = *(v58 + 48);
  if (v37(v35, 1, v59) != 1)
  {
    v38 = v57;
    outlined init with copy of NCProtoContactInfo?(v35, v57, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    if (v37(v35 + v34, 1, v36) != 1)
    {
      v41 = v35 + v34;
      v42 = v54;
      outlined init with take of NCProtoContactInfo(v41, v54, type metadata accessor for NCProtoCallState);
      v43 = specialized static NCProtoCallState.== infix(_:_:)(v38, v42);
      outlined destroy of NCProtoContactInfo(v42, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo(v38, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo?(v35, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      if ((v43 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of NCProtoContactInfo(v38, type metadata accessor for NCProtoCallState);
    goto LABEL_16;
  }

  if (v37(v35 + v34, 1, v36) != 1)
  {
LABEL_16:
    v28 = &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd;
    v29 = &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR;
    v30 = v35;
    goto LABEL_17;
  }

  outlined destroy of NCProtoContactInfo?(v35, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_21:
  v44 = *(v32 + 32);
  v45 = *(v61 + v44);
  v46 = *(v26 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      goto LABEL_18;
    }
  }

  else if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
  {
    goto LABEL_18;
  }

  v47 = *(v32 + 36);
  v48 = (v61 + v47);
  v49 = *(v61 + v47 + 9);
  v50 = v26 + v47;
  v51 = *(v26 + v47 + 9);
  if (v49)
  {
    if (v51)
    {
LABEL_28:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v39 & 1;
    }
  }

  else if ((v51 & 1) == 0)
  {
    v52 = *v48;
    v53 = *v50;
    if (v50[8])
    {
      if (v53 <= 1)
      {
        if (v53)
        {
          if (v52 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (!v52)
        {
          goto LABEL_28;
        }
      }

      else if (v53 == 2)
      {
        if (v52 == 2)
        {
          goto LABEL_28;
        }
      }

      else if (v53 == 3)
      {
        if (v52 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v52 == 4)
      {
        goto LABEL_28;
      }
    }

    else if (v52 == v53)
    {
      goto LABEL_28;
    }
  }

LABEL_18:
  v39 = 0;
  return v39 & 1;
}

uint64_t specialized static NCProtoContactHandleAnonym.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    type metadata accessor for NCProtoContactHandleAnonym(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoContinuityFavorite.== infix(_:_:)(void *a1, void *a2)
{
  v48 = a2;
  v3 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = (&v39 - v6);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMR);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for NCProtoContactInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for NCProtoContinuityFavorite(0);
  v19 = *(v43 + 32);
  v20 = *(v16 + 56);
  v47 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v19, v18, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v21 = v48;
  outlined init with copy of NCProtoContactInfo?(v48 + v19, &v18[v20], &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v18, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd;
    v24 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR;
    v25 = v18;
LABEL_17:
    outlined destroy of NCProtoContactInfo?(v25, v23, v24);
    goto LABEL_18;
  }

  outlined init with copy of NCProtoContactInfo?(v18, v14, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of NCProtoContactInfo(v14, type metadata accessor for NCProtoContactInfo);
    goto LABEL_6;
  }

  outlined init with take of NCProtoContactInfo(&v18[v20], v11, type metadata accessor for NCProtoContactInfo);
  v26 = specialized static NCProtoContactInfo.== infix(_:_:)(v14, v11);
  outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactInfo);
  outlined destroy of NCProtoContactInfo(v14, type metadata accessor for NCProtoContactInfo);
  outlined destroy of NCProtoContactInfo?(v18, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v27 = v47;
  if ((*v47 != *v21 || v47[1] != v21[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = *(v43 + 36);
  v29 = *(v42 + 48);
  v30 = v46;
  outlined init with copy of NCProtoContactInfo?(v27 + v28, v46, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  outlined init with copy of NCProtoContactInfo?(v21 + v28, v30 + v29, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    outlined init with copy of NCProtoContactInfo?(v30, v41, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v36 = v30 + v29;
      v37 = v40;
      outlined init with take of NCProtoContactInfo(v36, v40, type metadata accessor for NCProtoContactHandleAnonym);
      v38 = specialized static NCProtoContactHandleAnonym.== infix(_:_:)(v33, v37);
      outlined destroy of NCProtoContactInfo(v37, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v33, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo?(v30, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
      if ((v38 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of NCProtoContactInfo(v33, type metadata accessor for NCProtoContactHandleAnonym);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMd;
    v24 = &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMR;
    v25 = v30;
    goto LABEL_17;
  }

  outlined destroy of NCProtoContactInfo?(v30, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
LABEL_21:
  if (v27[2] == v21[2] && v27[3] == v21[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v27[4] == v21[4] && v27[5] == v21[5] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v34 & 1;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t specialized static NCProtoAddressableContact.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for NCProtoAddressableContact(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      outlined init with take of NCProtoContactInfo(&v13[v15], v24, type metadata accessor for NCProtoContactInfo);
      v18 = specialized static NCProtoContactInfo.== infix(_:_:)(v9, v17);
      outlined destroy of NCProtoContactInfo(v17, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoContactInfo);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
LABEL_8:
  v19 = v25;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV_Tt1g5(*v25, *a2) & 1) == 0 || (v19[1] != a2[1] || v19[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static NCProtoActiveConversation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  active = type metadata accessor for NCProtoActiveConversation(0);
  v5 = active[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = active;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = active[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = active;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = active[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 9);
  v24 = a2 + v21;
  v25 = *(a2 + v21 + 9);
  if (v23)
  {
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v25)
    {
      return 0;
    }

    v31 = *v22;
    v32 = *v24;
    if (v24[8])
    {
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v31 != 2)
          {
            return 0;
          }
        }

        else if (v31 != 3)
        {
          return 0;
        }
      }

      else if (v32)
      {
        if (v31 != 1)
        {
          return 0;
        }
      }

      else if (v31)
      {
        return 0;
      }
    }

    else if (v31 != v32)
    {
      return 0;
    }
  }

  v26 = active[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v33 = active;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2))
  {
    v34 = v33[10];
    v35 = (a1 + v34);
    v36 = *(a1 + v34 + 9);
    v37 = a2 + v34;
    v38 = *(a2 + v34 + 9);
    if (v36)
    {
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v38)
      {
        return 0;
      }

      v50 = *v35;
      v51 = *v37;
      if (v37[8])
      {
        if (v51 > 2)
        {
          if (v51 == 3)
          {
            if (v50 != 3)
            {
              return 0;
            }
          }

          else if (v51 == 4)
          {
            if (v50 != 4)
            {
              return 0;
            }
          }

          else if (v50 != 5)
          {
            return 0;
          }
        }

        else if (v51)
        {
          if (v51 == 1)
          {
            if (v50 != 1)
            {
              return 0;
            }
          }

          else if (v50 != 2)
          {
            return 0;
          }
        }

        else if (v50)
        {
          return 0;
        }
      }

      else if (v50 != v51)
      {
        return 0;
      }
    }

    v39 = v33[11];
    v40 = (a1 + v39);
    v41 = *(a1 + v39 + 9);
    v42 = a2 + v39;
    v43 = *(a2 + v39 + 9);
    if (v41)
    {
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v43)
      {
        return 0;
      }

      v52 = *v40;
      v53 = *v42;
      if (v42[8])
      {
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v52 != 1)
            {
              return 0;
            }
          }

          else if (v52)
          {
            return 0;
          }
        }

        else if (v53 == 2)
        {
          if (v52 != 2)
          {
            return 0;
          }
        }

        else if (v53 == 3)
        {
          if (v52 != 3)
          {
            return 0;
          }
        }

        else if (v52 != 4)
        {
          return 0;
        }
      }

      else if (v52 != v53)
      {
        return 0;
      }
    }

    v44 = v33[12];
    v46 = *(a1 + v44);
    v45 = *(a1 + v44 + 8);
    v47 = (a2 + v44);
    v49 = *v47;
    v48 = v47[1];
    if (v45 >> 60 == 15)
    {
      if (v48 >> 60 == 15)
      {
        outlined copy of Data?(v46, v45);
        outlined copy of Data?(v49, v48);
        outlined consume of Data?(v46, v45);
LABEL_75:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }

      goto LABEL_67;
    }

    if (v48 >> 60 == 15)
    {
LABEL_67:
      outlined copy of Data?(v46, v45);
      outlined copy of Data?(v49, v48);
      outlined consume of Data?(v46, v45);
      outlined consume of Data?(v49, v48);
      return 0;
    }

    outlined copy of Data?(v46, v45);
    outlined copy of Data?(v49, v48);
    v54 = specialized static Data.== infix(_:_:)(v46, v45, v49, v48);
    outlined consume of Data?(v49, v48);
    outlined consume of Data?(v46, v45);
    if (v54)
    {
      goto LABEL_75;
    }
  }

  return 0;
}

uint64_t specialized static NCProtoSpamCallModelInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40);
  v6 = *&a1[v4];
  v5 = *&a1[v4 + 8];
  v7 = &a2[v4];
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v8 >> 60 == 15)
  {
LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  v10 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
  outlined consume of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
  if (!v10)
  {
    return 0;
  }

LABEL_7:
  if (*a1 != *a2 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || a1[40] != a2[40])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoDisconnectRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for NCProtoDisconnectRequest(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 9);
  v11 = a2 + v8;
  v12 = *(a2 + v8 + 9);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      return 0;
    }

    v14 = *v9;
    v15 = *v11;
    if (*(v11 + 8))
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v14 != 2)
          {
            return 0;
          }
        }

        else if (v14 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (!v15)
        {
          if (!v14)
          {
            goto LABEL_9;
          }

          return 0;
        }

        if (v14 != 1)
        {
          return 0;
        }
      }
    }

    else if (v14 != v15)
    {
      return 0;
    }

LABEL_9:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t specialized static NCProtoCallStateResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v14, v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v14, &v13[v15], &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v13, v9, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallState);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
    goto LABEL_7;
  }

  v18 = v21[0];
  outlined init with take of NCProtoContactInfo(&v13[v15], v21[0], type metadata accessor for NCProtoCallState);
  v19 = specialized static NCProtoCallState.== infix(_:_:)(v9, v18);
  outlined destroy of NCProtoContactInfo(v18, type metadata accessor for NCProtoCallState);
  outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallState);
  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NCProtoAddMemberRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v6 != 5)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(type metadata accessor for NCProtoAddMemberRequest(0) + 32);
  v10 = *(a1 + v8);
  v9 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v13 = *v11;
  v12 = v11[1];
  if (v9 >> 60 != 15)
  {
    if (v12 >> 60 == 15)
    {
      goto LABEL_26;
    }

    outlined copy of Data?(v10, v9);
    outlined copy of Data?(v13, v12);
    v15 = specialized static Data.== infix(_:_:)(v10, v9, v13, v12);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v10, v9);
    if (v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (v12 >> 60 != 15)
  {
LABEL_26:
    outlined copy of Data?(v10, v9);
    outlined copy of Data?(v13, v12);
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v13, v12);
    return 0;
  }

  outlined copy of Data?(v10, v9);
  outlined copy of Data?(v13, v12);
  outlined consume of Data?(v10, v9);
LABEL_29:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of NCProtoContactInfo?(a1, &v20 - v13, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  outlined init with copy of NCProtoContactInfo?(a2, &v14[v15], &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
LABEL_9:
      type metadata accessor for NCProtoIDSProxyMessage(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v14, v10, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of NCProtoContactInfo(&v14[v15], v7, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  v18 = specialized static NCProtoIDSProxyMessage.OneOf_Message.== infix(_:_:)(v10, v7);
  outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.Resource.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || !specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.GroupUpdate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = a2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
  {
    v7 = a1;
    v8 = a2;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v8;
    v10 = v9;
    a1 = v7;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7))
  {
    return 0;
  }

  if (a1[64] != a2[64])
  {
    return 0;
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if (!specialized static Data.== infix(_:_:)(*(a1 + 10), *(a1 + 11), *(a2 + 10), *(a2 + 11)) || !specialized static Data.== infix(_:_:)(*(v11 + 12), *(v11 + 13), *(v12 + 12), *(v12 + 13)) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v11 + 14), *(v12 + 14)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt1g5(*(v11 + 15), *(v12 + 15)) & 1) == 0)
  {
    return 0;
  }

  if ((*(v11 + 16) != *(v12 + 16) || *(v11 + 17) != *(v12 + 17)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoContinuityCall.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static NCProtoContinuityCall.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoContactInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(a1[12], a1[13], a2[12], a2[13]))
  {
    return 0;
  }

  v6 = type metadata accessor for NCProtoContactInfo(0);
  v7 = *(v6 + 48);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    if (*v8 != *v10 || v9 != v11)
    {
      v12 = v6;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v14 = *(v6 + 52);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18 && (*v15 == *v17 && v16 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_36;
    }
  }

  else if (!v18)
  {
LABEL_36:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoJoinEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoJoinEvent(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoCallState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else if ((v15 & 1) == 0)
  {
    v19 = *v12;
    v20 = *v14;
    if (*(v14 + 8))
    {
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          if (v19 != 2)
          {
            return 0;
          }
        }

        else if (v19 != 3)
        {
          return 0;
        }
      }

      else if (v20)
      {
        if (v19 != 1)
        {
          return 0;
        }
      }

      else if (v19)
      {
        return 0;
      }
    }

    else if (v19 != v20)
    {
      return 0;
    }

LABEL_13:
    v16 = v4[8];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    if (v17 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
    {
      return 0;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoCallInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoSenderIdentity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v64 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for NCProtoCallInfo(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_63;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_63;
  }

  v23 = v14[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_63;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_63;
  }

  v31 = v14[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_63;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v14;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_63;
  }

  v38 = v14[9];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_63;
    }
  }

  else if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
  {
    goto LABEL_63;
  }

  v65 = v14;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_63;
  }

  v41 = v65[10];
  v42 = *(v11 + 48);
  outlined init with copy of NCProtoContactInfo?(a1 + v41, v13, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v43 = a2 + v41;
  v44 = v42;
  outlined init with copy of NCProtoContactInfo?(v43, &v13[v42], &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v45 = *(v5 + 48);
  if (v45(v13, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v13, v10, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
    if (v45(&v13[v44], 1, v4) != 1)
    {
      outlined init with take of NCProtoContactInfo(&v13[v44], v7, type metadata accessor for NCProtoSenderIdentity);
      if (*v10 == *v7 && v10[1] == v7[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v10[2] == v7[2] && v10[3] == v7[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoSenderIdentity);
        outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoSenderIdentity);
        outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
        if ((v49 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoSenderIdentity);
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoSenderIdentity);
      v46 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd;
      v47 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR;
LABEL_38:
      outlined destroy of NCProtoContactInfo?(v13, v46, v47);
      v48 = 0;
      return v48 & 1;
    }

    outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoSenderIdentity);
LABEL_37:
    v46 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMd;
    v47 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMR;
    goto LABEL_38;
  }

  if (v45(&v13[v44], 1, v4) != 1)
  {
    goto LABEL_37;
  }

  outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
LABEL_46:
  v50 = v65[11];
  v52 = *(a1 + v50);
  v51 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v55 = *v53;
  v54 = v53[1];
  if (v51 >> 60 == 15)
  {
    if (v54 >> 60 == 15)
    {
      outlined copy of Data?(v52, v51);
      outlined copy of Data?(v55, v54);
      outlined consume of Data?(v52, v51);
LABEL_53:
      v57 = v65[12];
      v58 = *(a1 + v57);
      v59 = *(a2 + v57);
      if (v58 == 2)
      {
        if (v59 != 2)
        {
          goto LABEL_63;
        }
      }

      else if (v59 == 2 || ((v58 ^ v59) & 1) != 0)
      {
        goto LABEL_63;
      }

      v60 = v65[13];
      v61 = *(a1 + v60);
      v62 = *(a2 + v60);
      if (v61 == 2)
      {
        if (v62 == 2)
        {
LABEL_65:
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v48 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v48 & 1;
        }
      }

      else if (v62 != 2 && ((v61 ^ v62) & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_63:
      v48 = 0;
      return v48 & 1;
    }
  }

  else if (v54 >> 60 != 15)
  {
    outlined copy of Data?(v52, v51);
    outlined copy of Data?(v55, v54);
    v56 = specialized static Data.== infix(_:_:)(v52, v51, v55, v54);
    outlined consume of Data?(v55, v54);
    outlined consume of Data?(v52, v51);
    if (!v56)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  outlined copy of Data?(v52, v51);
  outlined copy of Data?(v55, v54);
  outlined consume of Data?(v52, v51);
  outlined consume of Data?(v55, v54);
  v48 = 0;
  return v48 & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.RawData.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v33 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of NCProtoContactInfo(a1, &v33 - v22, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined init with copy of NCProtoContactInfo(v34, &v23[v24], type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NCProtoContactInfo(v23, v17, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of NCProtoContactInfo(&v23[v24], v7, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
        v26 = specialized static NCProtoIDSProxyMessage.GroupUpdate.== infix(_:_:)(v17, v7);
        v27 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate;
        outlined destroy of NCProtoContactInfo(v7, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
        v28 = v17;
LABEL_13:
        outlined destroy of NCProtoContactInfo(v28, v27);
        outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
        return v26 & 1;
      }

      v29 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate;
      v30 = v17;
    }

    else
    {
      outlined init with copy of NCProtoContactInfo(v23, v14, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        outlined init with take of NCProtoContactInfo(&v23[v24], v33, type metadata accessor for NCProtoIDSProxyMessage.Resource);
        v26 = specialized static NCProtoIDSProxyMessage.Resource.== infix(_:_:)(v14, v31);
        v27 = type metadata accessor for NCProtoIDSProxyMessage.Resource;
        outlined destroy of NCProtoContactInfo(v31, type metadata accessor for NCProtoIDSProxyMessage.Resource);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for NCProtoIDSProxyMessage.Resource;
      v30 = v14;
    }
  }

  else
  {
    outlined init with copy of NCProtoContactInfo(v23, v19, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NCProtoContactInfo(&v23[v24], v10, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v26 = specialized static NCProtoIDSProxyMessage.RawData.== infix(_:_:)(v19, v10);
      v27 = type metadata accessor for NCProtoIDSProxyMessage.RawData;
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for NCProtoIDSProxyMessage.RawData;
    v30 = v19;
  }

  outlined destroy of NCProtoContactInfo(v30, v29);
  outlined destroy of NCProtoContactInfo?(v23, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMR);
  v26 = 0;
  return v26 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType()
{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType()
{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext()
{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType()
{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest()
{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType()
{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action()
{
  result = lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action;
  if (!lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action;
  if (!lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action;
  if (!lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action;
  if (!lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType()
{
  result = lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType;
  if (!lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType;
  if (!lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType;
  if (!lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType;
  if (!lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode()
{
  result = lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode;
  if (!lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode;
  if (!lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode;
  if (!lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode;
  if (!lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoConversationState and conformance NCProtoConversationState()
{
  result = lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationState and conformance NCProtoConversationState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState()
{
  result = lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState;
  if (!lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status()
{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service()
{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service;
  if (!lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason()
{
  result = lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason;
  if (!lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason;
  if (!lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason;
  if (!lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason;
  if (!lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest.Reason and conformance NCProtoPullLagunaSessionToTVRequest.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType()
{
  result = lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType;
  if (!lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType;
  if (!lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType;
  if (!lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType;
  if (!lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest.DestinationType and conformance NCProtoGetDestinationCapabilitiesRequest.DestinationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType()
{
  result = lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType;
  if (!lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType;
  if (!lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType;
  if (!lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType;
  if (!lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason()
{
  result = lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason;
  if (!lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason;
  if (!lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason;
  if (!lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason;
  if (!lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [NCProtoConversationAVMode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for NCProtoContactInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for NCProtoContactHandleAnonym(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for NCProtoContinuityFavorite(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoContactInfo?, type metadata accessor for NCProtoContactInfo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoContactHandleAnonym?, type metadata accessor for NCProtoContactHandleAnonym, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for NCProtoContactInfo?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for NCProtoAddressableContact(uint64_t a1)
{
  type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContactHandleAnonym], type metadata accessor for NCProtoContactHandleAnonym, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoContactInfo?, type metadata accessor for NCProtoContactInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for NCProtoActiveConversation(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoConversationAVMode?, &type metadata for NCProtoConversationAVMode, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoConversationState?, &type metadata for NCProtoConversationState, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoConversationLetMeInRequestState?, &type metadata for NCProtoConversationLetMeInRequestState, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for NCProtoContinuityCall(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NCProtoContinuityCall._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for NCProtoStartedSessionEvent(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoMemberAssociationPrimaryInfo?, type metadata accessor for NCProtoMemberAssociationPrimaryInfo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for NCProtoConversationAVMode?, &type metadata for NCProtoConversationAVMode, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for NCProtoAddMemberResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = a6(319, a4, a5);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for NCProtoRecentCallsDidChangeEvent(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoContactInfo], type metadata accessor for NCProtoContactInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoCallInfo], type metadata accessor for NCProtoCallInfo);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for NCProtoLagunaConnectionRequest(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoContactInfo], type metadata accessor for NCProtoContactInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoActiveConversation], type metadata accessor for NCProtoActiveConversation, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContinuityFavorite], type metadata accessor for NCProtoContinuityFavorite, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContinuityCall], type metadata accessor for NCProtoContinuityCall, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [String : NCProtoContactInfo](319, &lazy cache variable for type metadata for [String : NCProtoCallInfo], type metadata accessor for NCProtoCallInfo);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UnknownStorage();
              if (v7 <= 0x3F)
              {
                type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for NCProtoCallState?, type metadata accessor for NCProtoCallState, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for NCProtoNearbyCallStatusChangedEvent(uint64_t a1)
{
  type metadata accessor for NCProtoContactInfo?(319, &lazy cache variable for type metadata for [NCProtoContinuityCall], type metadata accessor for NCProtoContinuityCall, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for NCProtoBlockedListUpdateEvent(uint64_t a1)
{
  type metadata accessor for [String : Bool](319, &lazy cache variable for type metadata for [String : Bool], MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}