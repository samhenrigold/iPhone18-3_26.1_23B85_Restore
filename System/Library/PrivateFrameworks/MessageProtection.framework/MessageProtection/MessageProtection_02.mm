uint64_t MPPB_SKPaddedStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for MPPB_SKPaddedStatus(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

void MPPB_SKPaddedStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_SKPaddedStatus);
  if (!v4)
  {
    closure #2 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_SKPaddedStatus, 2);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

double protocol witness for Message.init() in conformance MPPB_SKPaddedStatus@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_22B48D7D0;
  *(a2 + v5) = xmmword_22B48D7D0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_SKPaddedStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus, &protocol conformance descriptor for MPPB_SKPaddedStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_SKPaddedStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus, &protocol conformance descriptor for MPPB_SKPaddedStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_SKPaddedStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus, &protocol conformance descriptor for MPPB_SKPaddedStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t MPPB_KeyAndIndex.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for MPPB_KeyAndIndex(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for MPPB_KeyAndIndex(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

void MPPB_KeyAndIndex.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_KeyAndIndex);
  if (!v4)
  {
    closure #2 in MPPB_KeyAndIndex.traverse<A>(visitor:)(v3, a1, a2, a3);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #1 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1 + *(a5(0) + 20);
  v6 = *(v5 + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v5 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v7, v6);
  }
}

uint64_t closure #2 in MPPB_KeyAndIndex.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MPPB_KeyAndIndex(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance MPPB_KeyAndIndex@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_22B48D7D0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isInitialized.getter in conformance MPPB_KeyAndIndex(uint64_t a1)
{
  if (*(v1 + *(a1 + 20) + 8) >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return (*(v1 + *(a1 + 24) + 8) ^ 1) & 1;
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_KeyAndIndex(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_KeyAndIndex(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_KeyAndIndex(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t MPPB_RatchetState.isInitialized.getter()
{
  v1 = type metadata accessor for MPPB_KeyAndIndex(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for MPPB_RatchetState(0) + 24);
  outlined init with copy of MPPB_KeyAndIndex?(v0 + v11, v10);
  v12 = *(v2 + 48);
  v13 = v12(v10, 1, v1);
  outlined destroy of TetraSessionStates?(v10, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  if (v13 == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of MPPB_KeyAndIndex?(v0 + v11, v8);
  if (v12(v8, 1, v1) == 1)
  {
    outlined destroy of TetraSessionStates?(v8, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
LABEL_5:
    specialized _arrayForceCast<A, B>(_:)(*v0);
    v14 = static Internal.areAllInitialized(_:)();

    return v14 & 1;
  }

  outlined init with take of MPPB_KeyAndIndex(v8, v4);
  if (*&v4[*(v1 + 20) + 8] >> 60 == 15)
  {
    outlined destroy of MPPB_KeyAndIndex(v4);
  }

  else
  {
    v16 = v4[*(v1 + 24) + 8];
    outlined destroy of MPPB_KeyAndIndex(v4);
    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_2:
  v14 = 0;
  return v14 & 1;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MPPB_KeyAndIndex(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      outlined init with copy of MPPB_KeyAndIndex(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      outlined init with copy of MPPB_KeyAndIndex(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      outlined init with take of ContiguousBytes(&v14, v7 + 40 * v11 + 32);
      outlined destroy of MPPB_KeyAndIndex(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t MPPB_RatchetState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in MPPB_RatchetState.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for MPPB_KeyAndIndex(0);
        lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in MPPB_RatchetState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MPPB_RatchetState(0);
  type metadata accessor for MPPB_KeyAndIndex(0);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t MPPB_RatchetState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in MPPB_RatchetState.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for MPPB_KeyAndIndex(0);
      lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for MPPB_RatchetState(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in MPPB_RatchetState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MPPB_KeyAndIndex(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MPPB_RatchetState(0);
  outlined init with copy of MPPB_KeyAndIndex?(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of TetraSessionStates?(v7, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  }

  outlined init with take of MPPB_KeyAndIndex(v7, v11);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of MPPB_KeyAndIndex(v11);
}

uint64_t protocol witness for Message.init() in conformance MPPB_RatchetState@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for MPPB_KeyAndIndex(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_RatchetState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState, &protocol conformance descriptor for MPPB_RatchetState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_RatchetState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState, &protocol conformance descriptor for MPPB_RatchetState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_RatchetState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_RatchetState and conformance MPPB_RatchetState, type metadata accessor for MPPB_RatchetState, &protocol conformance descriptor for MPPB_RatchetState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t MPPB_SKIncomingRatchet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for MPPB_KeyAndIndex(0);
          lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
LABEL_10:
          type metadata accessor for MPPB_SKIncomingRatchet(0);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

void MPPB_SKIncomingRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #2 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_SKIncomingRatchet, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for MPPB_KeyAndIndex(0);
      lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #2 in MPPB_SKIncomingRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for MPPB_SKIncomingRatchet(0);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #2 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v6 = a1 + *(a5(0) + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v8, v7);
  }
}

void closure #2 in MPPB_SKIncomingRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for MPPB_SKIncomingRatchet(0) + 28);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

double protocol witness for Message.init() in conformance MPPB_SKIncomingRatchet@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 28);
  *(a2 + *(a1 + 24)) = xmmword_22B48D7D0;
  *(a2 + v5) = xmmword_22B48D7D0;
  return result;
}

uint64_t protocol witness for Message.isInitialized.getter in conformance MPPB_SKIncomingRatchet(uint64_t a1)
{
  if (*(v1 + *(a1 + 24) + 8) >> 60 == 15 || *(v1 + *(a1 + 28) + 8) >> 60 == 15)
  {
    return 0;
  }

  specialized _arrayForceCast<A, B>(_:)(*v1);
  v3 = static Internal.areAllInitialized(_:)();

  return v3 & 1;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance MPPB_RatchetState@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance MPPB_RatchetState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_SKIncomingRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet, &protocol conformance descriptor for MPPB_SKIncomingRatchet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_SKIncomingRatchet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet, &protocol conformance descriptor for MPPB_SKIncomingRatchet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_SKIncomingRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet, &protocol conformance descriptor for MPPB_SKIncomingRatchet);

  return MEMORY[0x28217E440](a1, a2, v4);
}

BOOL MPPB_SKOutgoingRatchet.isInitialized.getter()
{
  v1 = type metadata accessor for MPPB_KeyAndIndex(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  if (*(v0 + v20[5] + 8) >> 60 == 15)
  {
    return 0;
  }

  if (*(v0 + v20[6] + 8) >> 60 == 15)
  {
    return 0;
  }

  v34 = v20;
  v21 = v20[7];
  v32 = v5;
  v33 = v21;
  outlined init with copy of MPPB_KeyAndIndex?(v0 + v21, v19);
  v22 = *(v2 + 48);
  v23 = v22(v19, 1, v1);
  outlined destroy of TetraSessionStates?(v19, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  if (v23 == 1)
  {
    return 0;
  }

  v24 = v34[8];
  outlined init with copy of MPPB_KeyAndIndex?(v0 + v24, v17);
  v25 = v22(v17, 1, v1);
  outlined destroy of TetraSessionStates?(v17, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  if (v25 == 1)
  {
    return 0;
  }

  outlined init with copy of MPPB_KeyAndIndex?(v0 + v33, v14);
  if (v22(v14, 1, v1) == 1)
  {
    outlined destroy of TetraSessionStates?(v14, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  }

  else
  {
    outlined init with take of MPPB_KeyAndIndex(v14, v7);
    if (*&v7[*(v1 + 20) + 8] >> 60 == 15)
    {
      v27 = v7;
LABEL_14:
      outlined destroy of MPPB_KeyAndIndex(v27);
      return 0;
    }

    v29 = v7[*(v1 + 24) + 8];
    outlined destroy of MPPB_KeyAndIndex(v7);
    if (v29)
    {
      return 0;
    }
  }

  outlined init with copy of MPPB_KeyAndIndex?(v0 + v24, v11);
  if (v22(v11, 1, v1) == 1)
  {
    outlined destroy of TetraSessionStates?(v11, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    return 1;
  }

  v28 = v32;
  outlined init with take of MPPB_KeyAndIndex(v11, v32);
  if (*(v28 + *(v1 + 20) + 8) >> 60 == 15)
  {
    v27 = v28;
    goto LABEL_14;
  }

  v30 = *(v28 + *(v1 + 24) + 8);
  outlined destroy of MPPB_KeyAndIndex(v28);
  return (v30 & 1) == 0;
}

uint64_t MPPB_SKOutgoingRatchet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in MPPB_SKOutgoingRatchet.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in MPPB_SKOutgoingRatchet.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for MPPB_SKOutgoingRatchet(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in MPPB_SKOutgoingRatchet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MPPB_SKOutgoingRatchet(0);
  type metadata accessor for MPPB_KeyAndIndex(0);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in MPPB_SKOutgoingRatchet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MPPB_SKOutgoingRatchet(0);
  type metadata accessor for MPPB_KeyAndIndex(0);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

void MPPB_SKOutgoingRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_SKOutgoingRatchet);
  if (!v4)
  {
    closure #2 in MPPB_SKPaddedStatus.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for MPPB_SKOutgoingRatchet, 2);
    closure #3 in MPPB_SKOutgoingRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in MPPB_SKOutgoingRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #3 in MPPB_SKOutgoingRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MPPB_KeyAndIndex(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  outlined init with copy of MPPB_KeyAndIndex?(a1 + *(v12 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of TetraSessionStates?(v7, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  }

  outlined init with take of MPPB_KeyAndIndex(v7, v11);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of MPPB_KeyAndIndex(v11);
}

uint64_t closure #4 in MPPB_SKOutgoingRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for MPPB_KeyAndIndex(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  outlined init with copy of MPPB_KeyAndIndex?(a1 + *(v12 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of TetraSessionStates?(v7, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  }

  outlined init with take of MPPB_KeyAndIndex(v7, v11);
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_KeyAndIndex and conformance MPPB_KeyAndIndex, type metadata accessor for MPPB_KeyAndIndex, &protocol conformance descriptor for MPPB_KeyAndIndex);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of MPPB_KeyAndIndex(v11);
}

uint64_t protocol witness for Message.init() in conformance MPPB_SKOutgoingRatchet@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  *(a2 + v4) = xmmword_22B48D7D0;
  v5 = a1[7];
  v6 = type metadata accessor for MPPB_KeyAndIndex(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[8];

  return v9(v7, 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance MPPB_SKPaddedStatus@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance MPPB_SKPaddedStatus(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_SKOutgoingRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet, type metadata accessor for MPPB_SKOutgoingRatchet, &protocol conformance descriptor for MPPB_SKOutgoingRatchet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance MPPB_SKPaddedStatus@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_SKOutgoingRatchet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet, type metadata accessor for MPPB_SKOutgoingRatchet, &protocol conformance descriptor for MPPB_SKOutgoingRatchet);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPPB_SKPaddedStatus(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_SKOutgoingRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet, type metadata accessor for MPPB_SKOutgoingRatchet, &protocol conformance descriptor for MPPB_SKOutgoingRatchet);

  return MEMORY[0x28217E440](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPPB_SKPaddedStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of MPPB_KeyAndIndex?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MPPB_KeyAndIndex(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MPPB_KeyAndIndex(uint64_t a1)
{
  v2 = type metadata accessor for MPPB_KeyAndIndex(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ17MessageProtection16MPPB_KeyAndIndexV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v66[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v58 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_84;
  }

  if (!v11 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v63 = 0;
  v64 = v15;
  v62 = v4;
  while (1)
  {
    outlined init with copy of MPPB_KeyAndIndex(v13, v10);
    outlined init with copy of MPPB_KeyAndIndex(v14, v7);
    v16 = *(v4 + 20);
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = &v7[v16];
    v20 = *v19;
    v21 = v19[1];
    if (v18 >> 60 == 15)
    {
      if (v21 >> 60 != 15)
      {
        goto LABEL_80;
      }

      outlined copy of Data?(v17, v18);
      outlined copy of Data?(v20, v21);
      goto LABEL_48;
    }

    if (v21 >> 60 == 15)
    {
LABEL_80:
      outlined copy of Data?(v17, v18);
      outlined copy of Data?(v20, v21);
      outlined consume of Data?(v17, v18);
      v55 = v20;
      v56 = v21;
      goto LABEL_82;
    }

    v22 = v18 >> 62;
    v23 = v21 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v17)
      {
        v24 = 0;
      }

      else
      {
        v24 = v18 == 0xC000000000000000;
      }

      if (v24 && v21 >> 62 == 3 && !v20 && v21 == 0xC000000000000000)
      {
        outlined copy of Data?(0, 0xC000000000000000);
        outlined copy of Data?(0, 0xC000000000000000);
        v27 = 0;
        v28 = 0xC000000000000000;
        goto LABEL_47;
      }

LABEL_33:
      v29 = 0;
      if (v23 > 1)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    if (v22 <= 1)
    {
      break;
    }

    if (v22 != 2)
    {
      goto LABEL_33;
    }

    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v32)
    {
      goto LABEL_89;
    }

    if (v23 > 1)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v23)
    {
      LODWORD(v33) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      v33 = v33;
    }

    else
    {
      v33 = BYTE6(v21);
    }

LABEL_40:
    if (v29 != v33)
    {
      goto LABEL_81;
    }

    if (v29 < 1)
    {
      goto LABEL_46;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        memset(v66, 0, 14);
        outlined copy of Data?(v17, v18);
        outlined copy of Data?(v20, v21);
        goto LABEL_70;
      }

      v42 = *(v17 + 16);
      v59 = *(v17 + 24);
      v60 = v42;
      outlined copy of Data?(v17, v18);
      v61 = v20;
      outlined copy of Data?(v20, v21);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = v43;
        v45 = __DataStorage._offset.getter();
        v46 = v60;
        if (__OFSUB__(v60, v45))
        {
          goto LABEL_92;
        }

        v58 = v60 - v45 + v44;
      }

      else
      {
        v58 = 0;
        v46 = v60;
      }

      if (__OFSUB__(v59, v46))
      {
        goto LABEL_91;
      }

      MEMORY[0x231890D50]();
      v52 = v58;
    }

    else
    {
      if (!v22)
      {
        v66[0] = v17;
        LOWORD(v66[1]) = v18;
        BYTE2(v66[1]) = BYTE2(v18);
        BYTE3(v66[1]) = BYTE3(v18);
        BYTE4(v66[1]) = BYTE4(v18);
        BYTE5(v66[1]) = BYTE5(v18);
        outlined copy of Data?(v17, v18);
        outlined copy of Data?(v20, v21);
LABEL_70:
        v50 = v63;
        closure #1 in static Data.== infix(_:_:)(v66, v20, v21, &v65);
        v63 = v50;
        outlined consume of Data?(v20, v21);
        v51 = v65;
        goto LABEL_77;
      }

      v60 = (v17 >> 32) - v17;
      if (v17 >> 32 < v17)
      {
        goto LABEL_90;
      }

      outlined copy of Data?(v17, v18);
      v61 = v20;
      outlined copy of Data?(v20, v21);
      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v59 = v47;
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v48))
        {
          goto LABEL_93;
        }

        v49 = v17 - v48 + v59;
      }

      else
      {
        v49 = 0;
      }

      MEMORY[0x231890D50]();
      v52 = v49;
    }

    v53 = v61;
    v54 = v63;
    closure #1 in static Data.== infix(_:_:)(v52, v61, v21, v66);
    v63 = v54;
    outlined consume of Data?(v53, v21);
    v51 = v66[0];
LABEL_77:
    outlined consume of Data?(v17, v18);
    v4 = v62;
    if ((v51 & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_49:
    v36 = *(v4 + 24);
    v37 = &v10[v36];
    v38 = v10[v36 + 8];
    v39 = &v7[v36];
    v40 = v7[v36 + 8];
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        goto LABEL_83;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of MPPB_KeyAndIndex(v7);
    outlined destroy of MPPB_KeyAndIndex(v10);
    if (v41)
    {
      v14 += v64;
      v13 += v64;
      if (--v11)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  if (!v22)
  {
    v29 = BYTE6(v18);
    if (v23 > 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  LODWORD(v29) = HIDWORD(v17) - v17;
  if (__OFSUB__(HIDWORD(v17), v17))
  {
    goto LABEL_88;
  }

  v29 = v29;
  if (v23 <= 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (v23 == 2)
  {
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      goto LABEL_87;
    }

    goto LABEL_40;
  }

  if (!v29)
  {
LABEL_46:
    outlined copy of Data?(v17, v18);
    outlined copy of Data?(v20, v21);
    v27 = v20;
    v28 = v21;
LABEL_47:
    outlined consume of Data?(v27, v28);
LABEL_48:
    outlined consume of Data?(v17, v18);
    goto LABEL_49;
  }

LABEL_81:
  outlined copy of Data?(v17, v18);
  outlined copy of Data?(v20, v21);
  outlined consume of Data?(v20, v21);
  v55 = v17;
  v56 = v18;
LABEL_82:
  outlined consume of Data?(v55, v56);
LABEL_83:
  outlined destroy of MPPB_KeyAndIndex(v7);
  outlined destroy of MPPB_KeyAndIndex(v10);
LABEL_84:
  v41 = 0;
  return v41 & 1;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR, type metadata accessor for TetraSessionState);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17MessageProtection16MPPB_KeyAndIndexVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection16MPPB_KeyAndIndexVGMR, type metadata accessor for MPPB_KeyAndIndex);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf7Message_pGMd, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf7Message_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pMd, &_s21InternalSwiftProtobuf7Message_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t specialized static MPPB_SKOutgoingRatchet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMd, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMR);
  v13 = MEMORY[0x28223BE20](v12);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  v18 = v17[5];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 != 15)
    {
      goto LABEL_10;
    }

    v50 = a1;
    v24 = a2;
    outlined copy of Data?(v20, v19);
    outlined copy of Data?(v23, v22);
    outlined consume of Data?(v20, v19);
  }

  else
  {
    if (v22 >> 60 == 15)
    {
      goto LABEL_10;
    }

    v50 = a1;
    v24 = a2;
    outlined copy of Data?(v20, v19);
    outlined copy of Data?(v23, v22);
    v25 = specialized static Data.== infix(_:_:)(v20, v19, v23, v22);
    outlined consume of Data?(v23, v22);
    outlined consume of Data?(v20, v19);
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  v26 = v17[6];
  v20 = *(v50 + v26);
  v19 = *(v50 + v26 + 8);
  v27 = (v24 + v26);
  v23 = *v27;
  v22 = v27[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v49 = v24;
      outlined copy of Data?(v20, v19);
      outlined copy of Data?(v23, v22);
      outlined consume of Data?(v20, v19);
      goto LABEL_14;
    }

LABEL_10:
    outlined copy of Data?(v20, v19);
    outlined copy of Data?(v23, v22);
    outlined consume of Data?(v20, v19);
    outlined consume of Data?(v23, v22);
    goto LABEL_11;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v49 = v24;
  outlined copy of Data?(v20, v19);
  outlined copy of Data?(v23, v22);
  v30 = specialized static Data.== infix(_:_:)(v20, v19, v23, v22);
  outlined consume of Data?(v23, v22);
  outlined consume of Data?(v20, v19);
  if (!v30)
  {
    goto LABEL_11;
  }

LABEL_14:
  v31 = v17[7];
  v32 = *(v12 + 48);
  v33 = v50;
  outlined init with copy of MPPB_KeyAndIndex?(v50 + v31, v16);
  v34 = v49;
  outlined init with copy of MPPB_KeyAndIndex?(v49 + v31, &v16[v32]);
  v35 = v54;
  v37 = v55 + 48;
  v36 = *(v55 + 48);
  if (v36(v16, 1, v54) != 1)
  {
    outlined init with copy of MPPB_KeyAndIndex?(v16, v11);
    if (v36(&v16[v32], 1, v35) != 1)
    {
      v55 = v37;
      v39 = v52;
      outlined init with take of MPPB_KeyAndIndex(&v16[v32], v52);
      v40 = specialized static MPPB_KeyAndIndex.== infix(_:_:)(v11, v39);
      outlined destroy of MPPB_KeyAndIndex(v39);
      outlined destroy of MPPB_KeyAndIndex(v11);
      outlined destroy of TetraSessionStates?(v16, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    outlined destroy of MPPB_KeyAndIndex(v11);
LABEL_19:
    v38 = v16;
LABEL_27:
    outlined destroy of TetraSessionStates?(v38, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMd, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMR);
    goto LABEL_11;
  }

  if (v36(&v16[v32], 1, v35) != 1)
  {
    goto LABEL_19;
  }

  v55 = v37;
  outlined destroy of TetraSessionStates?(v16, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
LABEL_21:
  v41 = v34;
  v42 = v17[8];
  v43 = *(v12 + 48);
  v44 = v53;
  outlined init with copy of MPPB_KeyAndIndex?(v33 + v42, v53);
  outlined init with copy of MPPB_KeyAndIndex?(v41 + v42, v44 + v43);
  if (v36(v44, 1, v35) == 1)
  {
    if (v36((v44 + v43), 1, v35) == 1)
    {
      outlined destroy of TetraSessionStates?(v44, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
LABEL_29:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_26;
  }

  v45 = v51;
  outlined init with copy of MPPB_KeyAndIndex?(v44, v51);
  if (v36((v44 + v43), 1, v35) == 1)
  {
    outlined destroy of MPPB_KeyAndIndex(v45);
LABEL_26:
    v38 = v44;
    goto LABEL_27;
  }

  v46 = v52;
  outlined init with take of MPPB_KeyAndIndex(v44 + v43, v52);
  v47 = specialized static MPPB_KeyAndIndex.== infix(_:_:)(v45, v46);
  outlined destroy of MPPB_KeyAndIndex(v46);
  outlined destroy of MPPB_KeyAndIndex(v45);
  outlined destroy of TetraSessionStates?(v44, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  if (v47)
  {
    goto LABEL_29;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static MPPB_SKIncomingRatchet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MPPB_SKIncomingRatchet(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_5;
    }

    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_5;
    }

    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    v11 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ17MessageProtection16MPPB_KeyAndIndexV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 28);
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
LABEL_13:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v14 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (v14)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t specialized static MPPB_SKPaddedStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_SKPaddedStatus(0);
  v5 = *(v4 + 20);
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
      goto LABEL_7;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    outlined consume of Data?(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v13 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v13)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    v21 = specialized static Data.== infix(_:_:)(v16, v15, v19, v18);
    outlined consume of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    outlined copy of Data?(v16, v15);
    outlined copy of Data?(v19, v18);
    outlined consume of Data?(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  outlined copy of Data?(v16, v15);
  outlined copy of Data?(v19, v18);
  outlined consume of Data?(v16, v15);
LABEL_15:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static MPPB_RatchetState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMd, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for MPPB_RatchetState(0) + 24);
  v16 = *(v12 + 56);
  outlined init with copy of MPPB_KeyAndIndex?(a1 + v15, v14);
  outlined init with copy of MPPB_KeyAndIndex?(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      outlined destroy of TetraSessionStates?(v14, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of MPPB_KeyAndIndex?(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    outlined destroy of MPPB_KeyAndIndex(v10);
LABEL_6:
    outlined destroy of TetraSessionStates?(v14, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMd, &_s17MessageProtection16MPPB_KeyAndIndexVSg_ADtMR);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  outlined init with take of MPPB_KeyAndIndex(&v14[v16], v7);
  v18 = specialized static MPPB_KeyAndIndex.== infix(_:_:)(v10, v7);
  outlined destroy of MPPB_KeyAndIndex(v7);
  outlined destroy of MPPB_KeyAndIndex(v10);
  outlined destroy of TetraSessionStates?(v14, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ17MessageProtection16MPPB_KeyAndIndexV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static MPPB_KeyAndIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_KeyAndIndex(0);
  v5 = *(v4 + 20);
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
      goto LABEL_7;
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

LABEL_7:
  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void type metadata completion function for MPPB_SKPaddedStatus(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for MPPB_SKIncomingRatchet(uint64_t a1)
{
  type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for [MPPB_KeyAndIndex], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for MPPB_SKOutgoingRatchet(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [MPPB_KeyAndIndex](319, &lazy cache variable for type metadata for MPPB_KeyAndIndex?, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for TetraOuterMessageType(uint64_t a1)
{
  result = type metadata accessor for TetraRatchetOuterMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TetraNoRatchetOuterMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for TetraNoRatchetOuterMessage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for P256.KeyAgreement.PublicKey();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Kyber768.PublicKey?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Kyber768.PublicKey?)
  {
    type metadata accessor for Kyber768.PublicKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Kyber768.PublicKey?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for P256.KeyAgreement.PublicKey();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for P256.KeyAgreement.PublicKey();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for TetraRatchetOuterMessage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for P256.KeyAgreement.PublicKey();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Kyber768.PublicKey?(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *TetraRatchetOuterMessage.serializedData(signedBy:)(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for TetraRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TetraPB_TetraMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized TetraOuterMessage._serialize()(type metadata accessor for TetraRatchetOuterMessage, v9);
  outlined init with copy of TetraNoRatchetOuterMessage(v1, v6, type metadata accessor for TetraRatchetOuterMessage);
  v10 = type metadata accessor for TetraMessageSignerFormatter();
  v11 = objc_allocWithZone(v10);
  v12 = specialized TetraOuterMessage._signedData(hasRatchet:)(1, type metadata accessor for TetraRatchetOuterMessage);
  v13 = &v11[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData];
  *v13 = v12;
  v13[1] = v14;
  v26.receiver = v11;
  v26.super_class = v10;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  outlined destroy of TetraNoRatchetOuterMessage(v6, type metadata accessor for TetraRatchetOuterMessage);
  v25 = 0;
  v16 = [a1 signDataWithMessageFormatter:v15 error:&v25];

  v17 = v25;
  if (!v16)
  {
    v23 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined destroy of TetraNoRatchetOuterMessage(v9, type metadata accessor for TetraPB_TetraMessage);
    return v23;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = &v9[*(v7 + 28)];
  outlined consume of Data?(*v21, *(v21 + 1));
  *v21 = v18;
  *(v21 + 1) = v20;
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage();
  v22 = Message.serializedData(partial:)();
  if (!v2)
  {
    v23 = v22;
    outlined destroy of TetraNoRatchetOuterMessage(v9, type metadata accessor for TetraPB_TetraMessage);
    return v23;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t parseTetraOuterMessage(serializedData:authenticatedData:signedBy:onSessionWithDST:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v244 = a7;
  v246 = a6;
  v247 = a5;
  v245 = a4;
  v250 = a3;
  *&v253 = a1;
  *(&v253 + 1) = a2;
  v240 = a8;
  v263 = *MEMORY[0x277D85DE8];
  v248 = type metadata accessor for TetraRatchetOuterMessage(0);
  v8 = MEMORY[0x28223BE20](v248);
  v242 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v243 = &v221 - v11;
  MEMORY[0x28223BE20](v10);
  v239 = &v221 - v12;
  v235 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v13 = MEMORY[0x28223BE20](v235);
  v236 = &v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v237 = (&v221 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v249 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v241 = &v221 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v238 = &v221 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v251 = &v221 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v221 - v25;
  v27 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v252 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v221 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v221 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v221 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v221 - v37;
  v39 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v39 - 8);
  v40 = type metadata accessor for TetraPB_TetraMessage(0);
  MEMORY[0x28223BE20](v40);
  v42 = &v221 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = v253;
  v261 = 0;
  v259 = 0u;
  v260 = 0u;
  outlined copy of Data._Representation(v253, *(&v253 + 1));
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage();
  v43 = v254;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v43)
  {
    v234 = v36;
    *&v253 = v33;
    *(&v253 + 1) = v30;
    v45 = v252;
    v46 = &v42[v40[8]];
    v47 = *v46;
    v48 = v46[1];
    if (v48 >> 60 == 15)
    {
      v49 = 0;
    }

    else
    {
      v49 = *v46;
    }

    v50 = 0xC000000000000000;
    if (v48 >> 60 != 15)
    {
      v50 = v48;
    }

    *&v259 = v49;
    *(&v259 + 1) = v50;
    outlined copy of Data?(v47, v48);
    P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
    v254 = 0;
    v233 = v38;
    v51 = type metadata accessor for Kyber768.PublicKey();
    v52 = *(*(v51 - 8) + 56);
    v231 = v51;
    v52(v26, 1, 1);
    v53 = &v42[v40[9]];
    v54 = *(v53 + 1);
    v232 = v27;
    if (v54 >> 60 == 15)
    {
      v55 = v26;
      goto LABEL_14;
    }

    v56 = v52;
    *&v259 = *v53;
    *(&v259 + 1) = v54;
    outlined copy of Data?(v259, v54);
    v57 = v251;
    v58 = v254;
    Kyber768.PublicKey.init<A>(dataRepresentation:)();
    v254 = v58;
    if (!v58)
    {
      v55 = v26;
      outlined destroy of Kyber768.PublicKey?(v26);
      (v56)(v57, 0, 1, v231);
      v59 = v57;
      v52 = v56;
      outlined init with take of Kyber768.PublicKey?(v59, v26);
LABEL_14:
      v60 = &v42[v40[10]];
      v61 = v60[1];
      if (v61 >> 60 == 15)
      {
        v229 = 0;
        v251 = 0xF000000000000000;
      }

      else
      {
        v229 = *v60;
        v251 = v61;
        outlined copy of Data?(v229, v61);
      }

      v62 = &v42[v40[12]];
      v63 = v62[1];
      if (v63 >> 60 == 15)
      {
        v230 = 0;
        v63 = 0xF000000000000000;
      }

      else
      {
        v230 = *v62;
        outlined copy of Data?(v230, v63);
      }

      v64 = &v42[v40[5]];
      if ((v64[4] & 1) != 0 || (*v64 - 32) < 0xFFFFFFED)
      {
        lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
        swift_allocError();
        *v116 = 1;
        swift_willThrow();
        outlined consume of Data?(v230, v63);
        v117 = v229;
        v118 = v251;
      }

      else
      {
        v226 = *v64;
        v228 = v63;
        *(&v260 + 1) = &type metadata for MessageProtectionFeatureFlags;
        v261 = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags();
        LOBYTE(v259) = 3;
        v65 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(&v259);
        if ((v65 & 1) == 0)
        {
          v119 = &v42[v40[6]];
          v120 = *v119;
          v239 = *v119;
          v121 = v55;
          v122 = v119[1];
          v238 = v122;
          if (v122 >> 60 == 15)
          {
            v123 = 0;
          }

          else
          {
            v123 = v120;
          }

          v236 = v123;
          v124 = 0xC000000000000000;
          if (v122 >> 60 != 15)
          {
            v124 = v122;
          }

          v235 = v124;
          v125 = v40[11];
          v224 = v40;
          v126 = &v42[v125];
          if (v126[4])
          {
            v127 = 0;
          }

          else
          {
            v127 = *v126;
          }

          LODWORD(v222) = v127;
          v128 = v45;
          v129 = v232;
          (*(v45 + 16))(*(&v253 + 1), v233, v232);
          v225 = v121;
          outlined init with copy of Kyber768.PublicKey?(v121, v249);
          v130 = &v42[v40[13]];
          v131 = *v130;
          v223 = *v130;
          v227 = v42;
          v132 = v130[1];
          if (v132 >> 60 == 15)
          {
            v133 = 0;
          }

          else
          {
            v133 = v131;
          }

          *&v253 = v133;
          if (v132 >> 60 == 15)
          {
            v134 = 0xC000000000000000;
          }

          else
          {
            v134 = v132;
          }

          v241 = v134;
          v135 = v248;
          v234 = v248[8];
          v136 = v242;
          (v52)(v242 + v234, 1, 1, v231);
          v84 = v136;
          v137 = v136 + v135[9];
          *v137 = xmmword_22B48D7D0;
          v138 = v136 + v135[10];
          *v138 = xmmword_22B48D7D0;
          v139 = v135[12];
          v237 = (v84 + v135[13]);
          v140 = v235;
          *(v84 + 8) = v236;
          *(v84 + 16) = v140;
          v141 = (v84 + v139);
          v142 = v250;
          v143 = v245;
          *v141 = v250;
          v141[1] = v143;
          *(v84 + 24) = v222;
          (*(v128 + 32))(v84 + v135[7], *(&v253 + 1), v129);
          outlined copy of Data._Representation(v142, v143);
          outlined copy of Data?(v239, v238);
          v144 = v132;
          v42 = v227;
          outlined copy of Data?(v223, v144);
          outlined assign with take of Kyber768.PublicKey?(v249, v84 + v234);
          outlined consume of Data?(*v137, *(v137 + 8));
          v145 = v251;
          *v137 = v229;
          *(v137 + 8) = v145;
          outlined consume of Data?(*v138, *(v138 + 8));
          v146 = v228;
          *v138 = v230;
          *(v138 + 8) = v146;
          v147 = (v84 + v135[11]);
          v148 = v241;
          *v147 = v253;
          v147[1] = v148;
          *v84 = v226;
          v149 = (v84 + v135[14]);
          v150 = v246;
          v151 = v244;
          *v149 = v246;
          v149[1] = v151;
          v152 = v237;
          *v237 = 0;
          *(v152 + 4) = 1;
          v153 = &v42[v224[7]];
          v154 = *v153;
          v155 = v153[1];
          if (v155 >> 60 == 15)
          {
            v156 = 0;
          }

          else
          {
            v156 = *v153;
          }

          if (v155 >> 60 == 15)
          {
            v157 = 0xC000000000000000;
          }

          else
          {
            v157 = v153[1];
          }

          outlined copy of Data._Representation(v150, v151);
          outlined copy of Data?(v154, v155);
          isa = Data._bridgeToObjectiveC()().super.isa;
          outlined consume of Data._Representation(v156, v157);
          v159 = v243;
          outlined init with copy of TetraNoRatchetOuterMessage(v84, v243, type metadata accessor for TetraRatchetOuterMessage);
          v160 = type metadata accessor for TetraMessageSignerFormatter();
          v161 = objc_allocWithZone(v160);
          v162 = specialized TetraOuterMessage._signedData(hasRatchet:)(1, type metadata accessor for TetraRatchetOuterMessage);
          v163 = &v161[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData];
          *v163 = v162;
          v163[1] = v164;
          v258.receiver = v161;
          v258.super_class = v160;
          v165 = objc_msgSendSuper2(&v258, sel_init);
          outlined destroy of TetraNoRatchetOuterMessage(v159, type metadata accessor for TetraRatchetOuterMessage);
          LODWORD(v160) = [v247 verifyTetraMessageSignature:isa formatter:v165];

          if (v160)
          {
            outlined destroy of Kyber768.PublicKey?(v225);
            (*(v252 + 8))(v233, v232);
            goto LABEL_69;
          }

          lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
          swift_allocError();
          *v167 = 2;
          swift_willThrow();
          outlined destroy of Kyber768.PublicKey?(v225);
          (*(v252 + 8))(v233, v232);
          goto LABEL_75;
        }

        v66 = v40;
        v67 = &v42[v40[14]];
        v68 = v248;
        if (v67[4])
        {
          v69 = &v42[v66[6]];
          v70 = *v69;
          v242 = *v69;
          v71 = v55;
          v72 = v69[1];
          v238 = v72;
          if (v72 >> 60 == 15)
          {
            v73 = 0;
          }

          else
          {
            v73 = v70;
          }

          v236 = v73;
          v74 = 0xC000000000000000;
          if (v72 >> 60 != 15)
          {
            v74 = v72;
          }

          v235 = v74;
          v75 = &v42[v66[11]];
          if (v75[4])
          {
            v76 = 0;
          }

          else
          {
            v76 = *v75;
          }

          LODWORD(v223) = v76;
          v77 = v253;
          (*(v45 + 16))(v253, v233, v232);
          v225 = v71;
          outlined init with copy of Kyber768.PublicKey?(v71, v241);
          v78 = &v42[v66[13]];
          v79 = *v78;
          v234 = *v78;
          v227 = v42;
          v80 = v78[1];
          if (v80 >> 60 == 15)
          {
            v81 = 0;
          }

          else
          {
            v81 = v79;
          }

          *(&v253 + 1) = v81;
          v82 = 0xC000000000000000;
          if (v80 >> 60 != 15)
          {
            v82 = v80;
          }

          v249 = v82;
          v222 = v68[8];
          v224 = v66;
          v83 = v239;
          (v52)(v239 + v222, 1, 1, v231);
          v84 = v83;
          v85 = v83 + v68[9];
          *v85 = xmmword_22B48D7D0;
          v86 = v84 + v68[10];
          *v86 = xmmword_22B48D7D0;
          v87 = v68[12];
          v237 = (v84 + v68[13]);
          v88 = v235;
          *(v84 + 8) = v236;
          *(v84 + 16) = v88;
          v89 = (v84 + v87);
          v90 = v250;
          v91 = v245;
          *v89 = v250;
          v89[1] = v91;
          *(v84 + 24) = v223;
          v92 = v45;
          v93 = v232;
          (*(v92 + 32))(v84 + v68[7], v77, v232);
          outlined copy of Data._Representation(v90, v91);
          outlined copy of Data?(v242, v238);
          v94 = v80;
          v42 = v227;
          outlined copy of Data?(v234, v94);
          outlined assign with take of Kyber768.PublicKey?(v241, v84 + v222);
          outlined consume of Data?(*v85, *(v85 + 8));
          v95 = v251;
          *v85 = v229;
          *(v85 + 8) = v95;
          outlined consume of Data?(*v86, *(v86 + 8));
          v96 = v228;
          *v86 = v230;
          *(v86 + 8) = v96;
          v97 = (v84 + v68[11]);
          v98 = v249;
          *v97 = *(&v253 + 1);
          v97[1] = v98;
          *v84 = v226;
          v99 = (v84 + v68[14]);
          v100 = v246;
          v101 = v244;
          *v99 = v246;
          v99[1] = v101;
          v102 = v237;
          *v237 = 0;
          *(v102 + 4) = 1;
          v103 = &v42[v224[7]];
          v104 = *v103;
          v105 = v103[1];
          if (v105 >> 60 == 15)
          {
            v106 = 0;
          }

          else
          {
            v106 = *v103;
          }

          if (v105 >> 60 == 15)
          {
            v107 = 0xC000000000000000;
          }

          else
          {
            v107 = v103[1];
          }

          outlined copy of Data._Representation(v100, v101);
          outlined copy of Data?(v104, v105);
          v108 = Data._bridgeToObjectiveC()().super.isa;
          outlined consume of Data._Representation(v106, v107);
          v109 = v243;
          outlined init with copy of TetraNoRatchetOuterMessage(v84, v243, type metadata accessor for TetraRatchetOuterMessage);
          v110 = type metadata accessor for TetraMessageSignerFormatter();
          v111 = objc_allocWithZone(v110);
          v112 = specialized TetraOuterMessage._signedData(hasRatchet:)(1, type metadata accessor for TetraRatchetOuterMessage);
          v113 = &v111[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData];
          *v113 = v112;
          v113[1] = v114;
          v257.receiver = v111;
          v257.super_class = v110;
          v115 = objc_msgSendSuper2(&v257, sel_init);
          outlined destroy of TetraNoRatchetOuterMessage(v109, type metadata accessor for TetraRatchetOuterMessage);
          LODWORD(v110) = [v247 verifyTetraMessageSignature:v108 formatter:v115];

          if (v110)
          {
            outlined destroy of Kyber768.PublicKey?(v225);
            (*(v252 + 8))(v233, v93);
LABEL_69:
            outlined destroy of TetraNoRatchetOuterMessage(v42, type metadata accessor for TetraPB_TetraMessage);
            _s17MessageProtection017TetraRatchetOuterA0VWObTm_0(v84, v240, type metadata accessor for TetraRatchetOuterMessage);
LABEL_70:
            type metadata accessor for TetraOuterMessageType(0);
            return swift_storeEnumTagMultiPayload();
          }

          lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
          swift_allocError();
          *v168 = 2;
          swift_willThrow();
          outlined destroy of Kyber768.PublicKey?(v225);
          (*(v252 + 8))(v233, v93);
LABEL_75:
          outlined destroy of TetraNoRatchetOuterMessage(v84, type metadata accessor for TetraRatchetOuterMessage);
          goto LABEL_76;
        }

        if (v251 >> 60 != 15)
        {
          DWORD2(v253) = *v67;
          v170 = &v42[v66[6]];
          v171 = *v170;
          v248 = *v170;
          v172 = v55;
          v173 = v170[1];
          v243 = v173;
          if (v173 >> 60 == 15)
          {
            v174 = 0;
          }

          else
          {
            v174 = v171;
          }

          v242 = v174;
          v175 = 0xC000000000000000;
          if (v173 >> 60 != 15)
          {
            v175 = v173;
          }

          v241 = v175;
          v176 = &v42[v66[11]];
          if (v176[4])
          {
            v177 = 0;
          }

          else
          {
            v177 = *v176;
          }

          LODWORD(v222) = v177;
          v178 = v250;
          v179 = v232;
          (*(v45 + 16))(v234, v233, v232);
          v225 = v172;
          outlined init with copy of Kyber768.PublicKey?(v172, v238);
          v180 = &v42[v66[13]];
          v227 = v42;
          v181 = *v180;
          v223 = *v180;
          v224 = v66;
          v182 = v180[1];
          if (v182 >> 60 == 15)
          {
            v183 = 0;
          }

          else
          {
            v183 = v181;
          }

          *&v253 = v183;
          v184 = 0xC000000000000000;
          if (v182 >> 60 != 15)
          {
            v184 = v182;
          }

          v249 = v184;
          v185 = v235;
          v239 = *(v235 + 32);
          v186 = v237;
          (v52)(v237 + v239, 1, 1, v231);
          v187 = v186;
          v188 = v186 + v185[9];
          *v188 = xmmword_22B48D7D0;
          v189 = v186 + v185[10];
          *v189 = xmmword_22B48D7D0;
          v190 = v241;
          *(v187 + 8) = v242;
          *(v187 + 16) = v190;
          v191 = (v187 + v185[12]);
          v192 = v245;
          *v191 = v178;
          v191[1] = v192;
          *(v187 + 24) = v222;
          (*(v45 + 32))(v187 + v185[7], v234, v179);
          outlined copy of Data?(v248, v243);
          outlined copy of Data._Representation(v178, v192);
          outlined copy of Data?(v223, v182);
          outlined assign with take of Kyber768.PublicKey?(v238, v187 + v239);
          outlined consume of Data?(*v188, *(v188 + 1));
          v193 = v251;
          *v188 = v229;
          *(v188 + 1) = v193;
          outlined consume of Data?(*v189, *(v189 + 1));
          v194 = v228;
          *v189 = v230;
          *(v189 + 1) = v194;
          v195 = (v187 + v185[11]);
          v196 = v249;
          *v195 = v253;
          v195[1] = v196;
          *v187 = v226;
          v197 = (v187 + v185[14]);
          v198 = v246;
          v199 = v244;
          *v197 = v246;
          v197[1] = v199;
          *(v187 + v185[13]) = DWORD2(v253);
          v200 = &v227[v224[7]];
          v201 = *v200;
          v202 = v200[1];
          if (v202 >> 60 == 15)
          {
            v203 = 0;
          }

          else
          {
            v203 = *v200;
          }

          if (v202 >> 60 == 15)
          {
            v204 = 0xC000000000000000;
          }

          else
          {
            v204 = v200[1];
          }

          outlined copy of Data._Representation(v198, v199);
          outlined copy of Data?(v201, v202);
          v205 = Data._bridgeToObjectiveC()().super.isa;
          outlined consume of Data._Representation(v203, v204);
          v206 = v236;
          outlined init with copy of TetraNoRatchetOuterMessage(v187, v236, type metadata accessor for TetraNoRatchetOuterMessage);
          v207 = type metadata accessor for TetraMessageSignerFormatter();
          v208 = objc_allocWithZone(v207);
          __src = *(v206 + v185[13]);
          v209 = specialized Data.InlineData.init(_:)(&__src, &v257);
          v211 = v210 & 0xFFFFFFFFFFFFFFLL;
          v212 = specialized TetraOuterMessage._signedData(hasRatchet:)(0, type metadata accessor for TetraNoRatchetOuterMessage);
          v214 = v213;
          *&v262 = v212;
          *(&v262 + 1) = v213;
          *(&v260 + 1) = MEMORY[0x277CC9318];
          v261 = MEMORY[0x277CC9300];
          *&v259 = v209;
          *(&v259 + 1) = v211;
          v215 = __swift_project_boxed_opaque_existential_1(&v259, MEMORY[0x277CC9318]);
          v216 = *v215;
          v217 = v215[1];
          outlined copy of Data._Representation(v212, v214);
          v218 = v254;
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v216, v217, &v262);
          v254 = v218;
          outlined consume of Data._Representation(v212, v214);
          __swift_destroy_boxed_opaque_existential_1(&v259);
          *&v208[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData] = v262;
          v255.receiver = v208;
          v255.super_class = v207;
          v219 = objc_msgSendSuper2(&v255, sel_init);
          outlined destroy of TetraNoRatchetOuterMessage(v206, type metadata accessor for TetraNoRatchetOuterMessage);
          LODWORD(v207) = [v247 verifyTetraMessageSignature:v205 formatter:v219];

          if (v207)
          {
            outlined destroy of Kyber768.PublicKey?(v225);
            (*(v252 + 8))(v233, v232);
            outlined destroy of TetraNoRatchetOuterMessage(v227, type metadata accessor for TetraPB_TetraMessage);
            _s17MessageProtection017TetraRatchetOuterA0VWObTm_0(v187, v240, type metadata accessor for TetraNoRatchetOuterMessage);
            goto LABEL_70;
          }

          lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
          swift_allocError();
          *v220 = 2;
          swift_willThrow();
          outlined destroy of Kyber768.PublicKey?(v225);
          (*(v252 + 8))(v233, v232);
          outlined destroy of TetraNoRatchetOuterMessage(v187, type metadata accessor for TetraNoRatchetOuterMessage);
          v169 = v227;
          return outlined destroy of TetraNoRatchetOuterMessage(v169, type metadata accessor for TetraPB_TetraMessage);
        }

        lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
        swift_allocError();
        *v166 = 8;
        swift_willThrow();
        v117 = v230;
        v118 = v228;
      }

      outlined consume of Data?(v117, v118);
      outlined destroy of Kyber768.PublicKey?(v55);
      (*(v45 + 8))(v233, v232);
LABEL_76:
      v169 = v42;
      return outlined destroy of TetraNoRatchetOuterMessage(v169, type metadata accessor for TetraPB_TetraMessage);
    }

    outlined destroy of Kyber768.PublicKey?(v26);
    (*(v45 + 8))(v233, v27);
    return outlined destroy of TetraNoRatchetOuterMessage(v42, type metadata accessor for TetraPB_TetraMessage);
  }

  return result;
}

void specialized TetraOuterMessage._serialize()(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for Kyber768.PublicKey();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v10 = type metadata accessor for TetraPB_TetraMessage(0);
  v11 = a2 + v10[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10[6];
  *v12 = xmmword_22B48D7D0;
  *(a2 + v10[7]) = xmmword_22B48D7D0;
  v13 = a2 + v10[8];
  *v13 = xmmword_22B48D7D0;
  v14 = a2 + v10[9];
  *v14 = xmmword_22B48D7D0;
  v15 = a2 + v10[10];
  *v15 = xmmword_22B48D7D0;
  v16 = a2 + v10[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  v52 = (a2 + v10[12]);
  *v52 = xmmword_22B48D7D0;
  v17 = a2 + v10[13];
  *v17 = xmmword_22B48D7D0;
  v18 = a2 + v10[14];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = *(v3 + 8);
  v20 = *(v3 + 16);
  v21 = *v12;
  v22 = *(v12 + 8);
  *v12 = v19;
  *(v12 + 8) = v20;
  outlined copy of Data._Representation(v19, v20);
  outlined consume of Data?(v21, v22);
  *v16 = *(v3 + 24);
  *(v16 + 4) = 0;
  v23 = v55(0);
  v24 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    outlined consume of Data?(*v13, *(v13 + 8));
    *v13 = v26;
    *(v13 + 8) = v27;
    *v11 = *v3;
    *(v11 + 4) = 0;
    v28 = (v3 + v23[11]);
    v29 = *v28;
    v30 = v28[1];
    v31 = *v17;
    v32 = *(v17 + 8);
    *v17 = *v28;
    *(v17 + 8) = v30;
    outlined copy of Data._Representation(v29, v30);
    outlined consume of Data?(v31, v32);
    v33 = v3 + v23[9];
    v34 = *(v33 + 8);
    if (v34 >> 60 != 15)
    {
      v35 = *v33;
      v36 = *v15;
      v37 = *(v15 + 8);
      outlined copy of Data._Representation(*v33, *(v33 + 8));
      outlined consume of Data?(v36, v37);
      *v15 = v35;
      *(v15 + 8) = v34;
    }

    outlined init with copy of Kyber768.PublicKey?(v3 + v23[8], v7);
    v39 = v53;
    v38 = v54;
    if ((*(v53 + 48))(v7, 1, v54) == 1)
    {
      outlined destroy of Kyber768.PublicKey?(v7);
    }

    else
    {
      v40 = v51;
      (*(v39 + 32))(v51, v7, v38);
      v41 = Kyber768.PublicKey.dataRepresentation.getter();
      v43 = v42;
      (*(v39 + 8))(v40, v38);
      outlined consume of Data?(*v14, *(v14 + 8));
      *v14 = v41;
      *(v14 + 8) = v43;
    }

    v44 = v3 + v23[10];
    v45 = *(v44 + 8);
    if (v45 >> 60 != 15)
    {
      v46 = *v44;
      v47 = v52;
      v48 = *v52;
      v49 = v52[1];
      outlined copy of Data._Representation(*v44, *(v44 + 8));
      outlined consume of Data?(v48, v49);
      *v47 = v46;
      v47[1] = v45;
    }
  }
}

uint64_t specialized TetraOuterMessage._signedData(hasRatchet:)(int a1, uint64_t (*a2)(void))
{
  v210 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v191 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v198 = &v184 - v8;
  v9 = *v2;
  if ((v9 < 0xF) | a1 & 1)
  {
    v10 = "oRatchet.MessageSignature";
  }

  else
  {
    v10 = "n/TetraMessages.swift";
  }

  if ((v9 < 0xF) | a1 & 1)
  {
    v11 = 0xD000000000000020;
  }

  else
  {
    v11 = 0xD000000000000029;
  }

  v196 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v11, v10 | 0x8000000000000000);
  v197 = v12;
  __src = v2[6];
  v13 = specialized Data.InlineData.init(_:)(&__src, &v202);
  v15 = v14;
  v200 = a2(0);
  v16 = (v2 + v200[12]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    v20 = 0;
    if (v19 != 2)
    {
      goto LABEL_16;
    }

    v22 = v17 + 16;
    v17 = *(v17 + 16);
    v21 = *(v22 + 8);
    v20 = v21 - v17;
    if (!__OFSUB__(v21, v17))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v23 = __OFSUB__(HIDWORD(v17), v17);
    v24 = HIDWORD(v17) - v17;
    if (v23)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v20 = v24;
    goto LABEL_16;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v20 = BYTE6(v18);
LABEL_16:
  LODWORD(v187) = a1;
  v190 = v9;
  v188 = v15;
  v25 = I2OSP(value:outputByteCount:)(v20, 4);
  v199 = v2;
  v27 = v26;
  v28 = *v16;
  v29 = v16[1];
  v208 = v25;
  v209 = v26;
  v30 = MEMORY[0x277CC9318];
  v206 = MEMORY[0x277CC9318];
  v207 = MEMORY[0x277CC9300];
  v204 = v28;
  v205 = v29;
  v31 = __swift_project_boxed_opaque_existential_1(&v204, MEMORY[0x277CC9318]);
  v33 = *v31;
  v32 = v31[1];
  outlined copy of Data._Representation(v25, v27);
  outlined copy of Data._Representation(v28, v29);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v33, v32, &v208);
  outlined consume of Data._Representation(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v35 = (v199 + v200[10]);
  v36 = v35[1];
  v189 = v13;
  v192 = v209;
  v193 = v208;
  if (v36 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v56 = *v35;
  v57 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (v57)
    {
      v23 = __OFSUB__(HIDWORD(v56), v56);
      v182 = HIDWORD(v56) - v56;
      if (v23)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v37 = v182;
    }

    else
    {
      v37 = BYTE6(v36);
    }

    goto LABEL_18;
  }

  if (v57 != 2)
  {
LABEL_17:
    v37 = 0;
  }

  else
  {
    v101 = v56 + 16;
    v61 = *(v56 + 16);
    v100 = *(v101 + 8);
    v37 = v100 - v61;
    if (__OFSUB__(v100, v61))
    {
      __break(1u);
      goto LABEL_55;
    }
  }

LABEL_18:
  v38 = MEMORY[0x277CC9300];
  v39 = I2OSP(value:outputByteCount:)(v37, 2);
  v41 = v39;
  v42 = v40;
  v43 = *v35;
  v29 = v35[1];
  if (v29 >> 60 == 15)
  {
    v44 = 0;
  }

  else
  {
    v44 = *v35;
  }

  if (v29 >> 60 == 15)
  {
    v45 = 0xC000000000000000;
  }

  else
  {
    v45 = v35[1];
  }

  v208 = v39;
  v209 = v40;
  v206 = v30;
  v207 = v38;
  v204 = v44;
  v205 = v45;
  v46 = __swift_project_boxed_opaque_existential_1(&v204, v30);
  v48 = *v46;
  v47 = v46[1];
  outlined copy of Data?(v43, v29);
  outlined copy of Data._Representation(v41, v42);
  outlined copy of Data._Representation(v44, v45);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v48, v47, &v208);
  outlined consume of Data._Representation(v44, v45);
  outlined consume of Data._Representation(v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v194 = v209;
  v195 = v208;
  v13 = v200[8];
  v49 = v198;
  outlined init with copy of Kyber768.PublicKey?(v199 + v13, v198);
  v25 = type metadata accessor for Kyber768.PublicKey();
  v32 = *(v25 - 8);
  v30 = v32 + 48;
  v33 = *(v32 + 48);
  if (v33(v49, 1, v25) == 1)
  {
    outlined destroy of Kyber768.PublicKey?(v198);
LABEL_26:
    v50 = 0;
    goto LABEL_27;
  }

  v58 = v198;
  v27 = Kyber768.PublicKey.dataRepresentation.getter();
  v60 = v59;
  (*(v32 + 8))(v58, v25);
  v34 = v60;
  v61 = v60 >> 62;
  if ((v60 >> 62) <= 1)
  {
    if (v61)
    {
      outlined consume of Data._Representation(v27, v60);
      if (__OFSUB__(HIDWORD(v27), v27))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v50 = HIDWORD(v27) - v27;
    }

    else
    {
      outlined consume of Data._Representation(v27, v60);
      v50 = BYTE6(v60);
    }

    goto LABEL_27;
  }

LABEL_55:
  if (v61 != 2)
  {
    outlined consume of Data._Representation(v27, v34);
    goto LABEL_26;
  }

  v66 = v27[2];
  v65 = v27[3];
  outlined consume of Data._Representation(v27, v34);
  v50 = v65 - v66;
  if (__OFSUB__(v65, v66))
  {
    __break(1u);
    goto LABEL_59;
  }

LABEL_27:
  v51 = v191;
  v27 = I2OSP(value:outputByteCount:)(v50, 4);
  v53 = v52;
  outlined init with copy of Kyber768.PublicKey?(v199 + v13, v51);
  if (v33(v51, 1, v25) == 1)
  {
    outlined destroy of Kyber768.PublicKey?(v51);
    v54 = 0;
    v55 = 0xC000000000000000;
  }

  else
  {
    v54 = Kyber768.PublicKey.dataRepresentation.getter();
    v55 = v62;
    (*(v32 + 8))(v51, v25);
  }

  v30 = MEMORY[0x277CC9318];
  v13 = MEMORY[0x277CC9300];
  v202 = v27;
  v203 = v53;
  v206 = MEMORY[0x277CC9318];
  v207 = MEMORY[0x277CC9300];
  v204 = v54;
  v205 = v55;
  v63 = __swift_project_boxed_opaque_existential_1(&v204, MEMORY[0x277CC9318]);
  v64 = *v63;
  v25 = v63[1];
  outlined copy of Data._Representation(v27, v53);
  outlined copy of Data._Representation(v54, v55);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v64, v25, &v202);
  outlined consume of Data._Representation(v54, v55);
  outlined consume of Data._Representation(v27, v53);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v65 = v202;
  v66 = v203;
  v29 = v199 + v200[9];
  v67 = *(v29 + 8);
  if (v67 >> 60 == 15)
  {
    goto LABEL_37;
  }

  v93 = *v29;
  v94 = v67 >> 62;
  if ((v67 >> 62) <= 1)
  {
    if (v94)
    {
      v23 = __OFSUB__(HIDWORD(v93), v93);
      v183 = HIDWORD(v93) - v93;
      if (v23)
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

      v68 = v183;
    }

    else
    {
      v68 = BYTE6(v67);
    }

    goto LABEL_38;
  }

LABEL_59:
  if (v94 != 2)
  {
LABEL_37:
    v68 = 0;
    goto LABEL_38;
  }

  v104 = v93 + 16;
  v102 = *(v93 + 16);
  v103 = *(v104 + 8);
  v68 = v103 - v102;
  if (__OFSUB__(v103, v102))
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_38:
  v69 = I2OSP(value:outputByteCount:)(v68, 4);
  v71 = v70;
  v208 = v65;
  v209 = v66;
  v206 = v30;
  v207 = v13;
  v204 = v69;
  v205 = v70;
  v72 = __swift_project_boxed_opaque_existential_1(&v204, v30);
  v73 = *v72;
  v74 = v72[1];
  outlined copy of Data._Representation(v65, v66);
  outlined copy of Data._Representation(v69, v71);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v73, v74, &v208);
  outlined consume of Data._Representation(v69, v71);
  outlined consume of Data._Representation(v65, v66);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v75 = v208;
  v76 = v209;
  v77 = *v29;
  v78 = *(v29 + 8);
  if (v78 >> 60 == 15)
  {
    v79 = 0;
  }

  else
  {
    v79 = *v29;
  }

  v191 = 0xC000000000000000;
  if (v78 >> 60 == 15)
  {
    v80 = 0xC000000000000000;
  }

  else
  {
    v80 = v78;
  }

  v202 = v208;
  v203 = v209;
  v206 = v30;
  v207 = MEMORY[0x277CC9300];
  v204 = v79;
  v205 = v80;
  v81 = __swift_project_boxed_opaque_existential_1(&v204, v30);
  v82 = *v81;
  v83 = v81[1];
  outlined copy of Data?(v77, v78);
  outlined copy of Data._Representation(v75, v76);
  outlined copy of Data._Representation(v79, v80);
  v84 = v82;
  v30 = MEMORY[0x277CC9318];
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v84, v83, &v202);
  v85 = v79;
  v13 = MEMORY[0x277CC9300];
  outlined consume of Data._Representation(v85, v80);
  outlined consume of Data._Representation(v75, v76);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v86 = v202;
  v87 = v203;
  v208 = v202;
  v209 = v203;
  v206 = v30;
  v207 = v13;
  v89 = v194;
  v88 = v195;
  v204 = v195;
  v205 = v194;
  v90 = __swift_project_boxed_opaque_existential_1(&v204, v30);
  v91 = *v90;
  v92 = v90[1];
  outlined copy of Data._Representation(v86, v87);
  outlined copy of Data._Representation(v88, v89);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v91, v92, &v208);
  outlined consume of Data._Representation(v86, v87);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v65 = v190;
  v186 = v208;
  v185 = v209;
  if (v190 < 0xF)
  {
    v25 = 0;
    v27 = v199;
LABEL_50:
    v97 = (v27 + v200[11]);
    v98 = *v97;
    v99 = *v97;
    v198 = v97[1];
    outlined copy of Data._Representation(v99, v198);
    goto LABEL_64;
  }

  v27 = v199;
  v95 = (v199 + v200[14]);
  v25 = *v95;
  v96 = *v95;
  v191 = v95[1];
  outlined copy of Data._Representation(v96, v191);
  if (v187)
  {
    goto LABEL_50;
  }

LABEL_63:
  v98 = 0;
  v198 = 0xC000000000000000;
LABEL_64:
  v105 = I2OSP(value:outputByteCount:)(v65, 4);
  v107 = v106;
  v109 = v196;
  v108 = v197;
  v208 = v196;
  v209 = v197;
  v206 = v30;
  v207 = v13;
  v204 = v105;
  v205 = v106;
  v110 = __swift_project_boxed_opaque_existential_1(&v204, v30);
  v111 = *v110;
  v112 = v110[1];
  outlined copy of Data._Representation(v109, v108);
  outlined copy of Data._Representation(v105, v107);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v111, v112, &v208);
  outlined consume of Data._Representation(v105, v107);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v113 = v208;
  v114 = v209;
  v115 = v27[1];
  v116 = v27[2];
  v117 = v116 >> 62;
  v187 = v25;
  v199 = v98;
  if ((v116 >> 62) <= 1)
  {
    if (!v117)
    {
      v118 = BYTE6(v116);
      goto LABEL_74;
    }

LABEL_71:
    v23 = __OFSUB__(HIDWORD(v115), v115);
    v121 = HIDWORD(v115) - v115;
    if (!v23)
    {
      v118 = v121;
      goto LABEL_74;
    }

    goto LABEL_84;
  }

  if (v117 == 2)
  {
    v120 = v115 + 16;
    v115 = *(v115 + 16);
    v119 = *(v120 + 8);
    v118 = v119 - v115;
    if (__OFSUB__(v119, v115))
    {
      __break(1u);
      goto LABEL_71;
    }
  }

  else
  {
    v118 = 0;
  }

LABEL_74:
  v122 = I2OSP(value:outputByteCount:)(v118, 4);
  v124 = v123;
  v202 = v113;
  v203 = v114;
  v125 = MEMORY[0x277CC9318];
  v206 = MEMORY[0x277CC9318];
  v126 = MEMORY[0x277CC9300];
  v207 = MEMORY[0x277CC9300];
  v204 = v122;
  v205 = v123;
  v127 = __swift_project_boxed_opaque_existential_1(&v204, MEMORY[0x277CC9318]);
  v129 = *v127;
  v128 = v127[1];
  outlined copy of Data._Representation(v113, v114);
  outlined copy of Data._Representation(v122, v124);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v129, v128, &v202);
  outlined consume of Data._Representation(v122, v124);
  outlined consume of Data._Representation(v113, v114);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v130 = v202;
  v131 = v203;
  v132 = v27[1];
  v133 = v27[2];
  v208 = v202;
  v209 = v203;
  v206 = v125;
  v207 = v126;
  v204 = v132;
  v205 = v133;
  v134 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v135 = *v134;
  v136 = v134[1];
  outlined copy of Data._Representation(v130, v131);
  outlined copy of Data._Representation(v132, v133);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v135, v136, &v208);
  outlined consume of Data._Representation(v130, v131);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v137 = v208;
  v138 = v209;
  v202 = v208;
  v203 = v209;
  v206 = v125;
  v207 = v126;
  v140 = v192;
  v139 = v193;
  v204 = v193;
  v205 = v192;
  v141 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v142 = *v141;
  v143 = v141[1];
  outlined copy of Data._Representation(v137, v138);
  outlined copy of Data._Representation(v139, v140);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v142, v143, &v202);
  outlined consume of Data._Representation(v137, v138);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v144 = v202;
  v145 = v203;
  v208 = v202;
  v209 = v203;
  v206 = v125;
  v207 = v126;
  v146 = v126;
  v148 = v198;
  v147 = v199;
  v204 = v199;
  v205 = v198;
  v149 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v150 = *v149;
  v151 = v149[1];
  outlined copy of Data._Representation(v144, v145);
  v198 = v148;
  outlined copy of Data._Representation(v147, v148);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v150, v151, &v208);
  outlined consume of Data._Representation(v144, v145);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v152 = v208;
  v153 = v209;
  v154 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v155 >> 60 == 15)
  {
    goto LABEL_88;
  }

  v156 = v188 & 0xFFFFFFFFFFFFFFLL;
  v202 = v152;
  v203 = v153;
  v206 = v125;
  v207 = v146;
  v157 = v146;
  v204 = v154;
  v205 = v155;
  v158 = v154;
  v159 = v155;
  v160 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v162 = *v160;
  v161 = v160[1];
  outlined copy of Data._Representation(v152, v153);
  outlined copy of Data?(v158, v159);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v162, v161, &v202);
  outlined consume of Data?(v158, v159);
  outlined consume of Data._Representation(v152, v153);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v163 = v202;
  v164 = v203;
  v208 = v202;
  v209 = v203;
  v206 = v125;
  v207 = v157;
  v165 = v189;
  v204 = v189;
  v205 = v156;
  v166 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v167 = *v166;
  v168 = v166[1];
  outlined copy of Data._Representation(v163, v164);
  outlined copy of Data._Representation(v165, v156);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v167, v168, &v208);
  outlined consume of Data._Representation(v163, v164);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v169 = v208;
  v170 = v209;
  v202 = v208;
  v203 = v209;
  v206 = v125;
  v207 = v157;
  v171 = v187;
  v172 = v191;
  v204 = v187;
  v205 = v191;
  v173 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v174 = *v173;
  v175 = v173[1];
  outlined copy of Data._Representation(v169, v170);
  outlined copy of Data._Representation(v171, v172);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v174, v175, &v202);
  outlined consume of Data._Representation(v169, v170);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v176 = v202;
  v177 = v203;
  v208 = v202;
  v209 = v203;
  v206 = v125;
  v207 = MEMORY[0x277CC9300];
  v204 = v186;
  v205 = v185;
  v178 = __swift_project_boxed_opaque_existential_1(&v204, v125);
  v179 = *v178;
  v180 = v178[1];
  outlined copy of Data._Representation(v176, v177);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v179, v180, &v208);
  outlined consume of Data._Representation(v176, v177);
  outlined consume of Data._Representation(v171, v172);
  outlined consume of Data._Representation(v165, v156);
  outlined consume of Data._Representation(v199, v198);
  outlined consume of Data._Representation(v193, v192);
  outlined consume of Data._Representation(v196, v197);
  outlined consume of Data._Representation(v195, v194);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  return v208;
}

void *TetraNoRatchetOuterMessage.serializedData(signedBy:)(void *a1)
{
  v33 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TetraPB_TetraMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized TetraOuterMessage._serialize()(type metadata accessor for TetraNoRatchetOuterMessage, v8);
  v9 = &v8[*(v6 + 56)];
  *v9 = *(v1 + *(v3 + 60));
  v9[4] = 0;
  outlined init with copy of TetraNoRatchetOuterMessage(v1, v5, type metadata accessor for TetraNoRatchetOuterMessage);
  v10 = type metadata accessor for TetraMessageSignerFormatter();
  v11 = objc_allocWithZone(v10);
  __src = *&v5[*(v3 + 60)];
  v12 = specialized Data.InlineData.init(_:)(&__src, v36);
  v14 = (v13 & 0xFFFFFFFFFFFFFFLL);
  v15 = specialized TetraOuterMessage._signedData(hasRatchet:)(0, type metadata accessor for TetraNoRatchetOuterMessage);
  v17 = v16;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  v36[3] = MEMORY[0x277CC9318];
  v36[4] = MEMORY[0x277CC9300];
  v36[0] = v12;
  v36[1] = v14;
  v18 = __swift_project_boxed_opaque_existential_1(v36, MEMORY[0x277CC9318]);
  v20 = *v18;
  v19 = v18[1];
  outlined copy of Data._Representation(v15, v17);
  v21 = v32;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v19, &v37);
  outlined consume of Data._Representation(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *&v11[OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData] = v37;
  v34.receiver = v11;
  v34.super_class = v10;
  v22 = objc_msgSendSuper2(&v34, sel_init);
  outlined destroy of TetraNoRatchetOuterMessage(v5, type metadata accessor for TetraNoRatchetOuterMessage);
  v36[0] = 0;
  v23 = [v33 signDataWithMessageFormatter:v22 error:v36];

  v24 = v36[0];
  if (!v23)
  {
    v30 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined destroy of TetraNoRatchetOuterMessage(v8, type metadata accessor for TetraPB_TetraMessage);
    return v30;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = &v8[*(v6 + 28)];
  outlined consume of Data?(*v28, *(v28 + 1));
  *v28 = v25;
  *(v28 + 1) = v27;
  lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage();
  v29 = Message.serializedData(partial:)();
  if (!v21)
  {
    v30 = v29;
    outlined destroy of TetraNoRatchetOuterMessage(v8, type metadata accessor for TetraPB_TetraMessage);
    return v30;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t outlined destroy of TetraNoRatchetOuterMessage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage()
{
  result = lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage;
  if (!lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage)
  {
    type metadata accessor for TetraPB_TetraMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage);
  }

  return result;
}

uint64_t outlined init with copy of Kyber768.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Kyber768.PublicKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Kyber768.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraNoRatchetOuterMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s17MessageProtection017TetraRatchetOuterA0VWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Kyber768.PublicKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SymmetricKey.bitCount.getter();
  if (result == 256)
  {
    v12 = 0xD00000000000001ALL;
    v13 = 0x800000022B4956C0;
    MEMORY[0x2318919B0](0x2D5254432D534541, 0xEE00676E6979654BLL);
    v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v12, v13);
    v13 = v7;
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    lazy protocol witness table accessor for type SHA384 and conformance SHA384(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    lazy protocol witness table accessor for type Data and conformance Data();
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v12, v13);
    MEMORY[0x28223BE20](v8);
    v9 = SymmetricKey.withUnsafeBytes<A>(_:)();
    v10 = v12;
    MEMORY[0x28223BE20](v9);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v3 + 8))(v5, v2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SHA384 and conformance SHA384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t closure #1 in static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = specialized Collection.prefix(_:)(a3, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  v17[3] = v12;
  v17[4] = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  v13 = swift_allocObject();
  v17[0] = v13;
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v9;
  v13[5] = v11;
  __swift_project_boxed_opaque_existential_1(v17, v12);
  Slice<>.withUnsafeBytes<A>(_:)();
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  *a4 = v15;
  a4[1] = v16;
  return result;
}

uint64_t closure #2 in static TetraSymmetric.deriveSymmetricSenderAuthenticationMode(messageKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  specialized BidirectionalCollection.suffix(_:)(a3, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
  return SymmetricKey.init<A>(data:)();
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v4 = v3 >= result;
  result = v3 - result;
  if (!v4)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
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

void specialized BidirectionalCollection.suffix(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -a1;
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    v11 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v12 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v12 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v12 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    v11 = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    v11 = 0;
    v12 = BYTE6(a3);
    goto LABEL_27;
  }

  v11 = v5;
LABEL_26:
  v12 = v5 >> 32;
LABEL_27:
  if (v12 >= v11)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    outlined consume of Data._Representation(v5, a3);
    *a4 = v13;
    a4[1] = v15;
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance MessageProtectionFeatureFlags()
{
  v1 = "visionOSSyncs";
  v2 = "KyberInTheSEPRatchetingKeys";
  if (*v0 != 2)
  {
    v2 = "TetraScheduledSend";
  }

  if (*v0)
  {
    v1 = "KyberInTheSEPRegisteredKeys";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for TetraECDHKey(uint64_t a1)
{
  result = type metadata singleton initialization cache for TetraECDHKey;
  if (!type metadata singleton initialization cache for TetraECDHKey)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TetraECDHKey(uint64_t a1)
{
  type metadata accessor for TetraECDHSecKey?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for TetraECDHSecKey?()
{
  if (!lazy cache variable for type metadata for TetraECDHSecKey?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TetraECDHSecKey?);
    }
  }
}

void type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SecureEnclave.P256.KeyAgreement.PrivateKey?)
  {
    type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SecureEnclave.P256.KeyAgreement.PrivateKey?);
    }
  }
}

const __CFString *one-time initialization function for AKSTokenID()
{
  result = MEMORY[0x231891960](0xD000000000000015, 0x800000022B495750);
  AKSTokenID = result;
  return result;
}

const __CFString *one-time initialization function for TokenOID()
{
  result = MEMORY[0x231891960](1684631412, 0xE400000000000000);
  TokenOID = result;
  return result;
}

void TetraECDHSecKey.sharedSecretFromKeyAgreement(with:)(uint64_t a1, __SecKey *a2)
{
  v2 = MEMORY[0x2318915A0]();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48DAE0;
  v7 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v8 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v9 = MEMORY[0x277CDBFE0];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v11;
  *(inited + 72) = v10;
  v12 = *MEMORY[0x277CDC000];
  *(inited + 80) = *MEMORY[0x277CDC000];
  v13 = *MEMORY[0x277CDC018];
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 256;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = SecKeyCreateWithData(isa, v19, 0);

  if (v20)
  {
    v21 = *MEMORY[0x277CDC280];
    v22 = v20;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v23 = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = SecKeyCopyKeyExchangeResult(a2, v21, v22, v23, 0);

    if (v24)
    {

      v25 = v24;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      SymmetricKey.init<A>(data:)();
    }

    else
    {
      lazy protocol witness table accessor for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }
}

void TetraECDHKey.publicKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TetraECDHKey(0);
  outlined init with copy of SecureEnclave.P256.KeyAgreement.PrivateKey?(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of SecureEnclave.P256.KeyAgreement.PrivateKey?(v3);
    if (*v0)
    {
      v9 = SecKeyCopyPublicKey(*v0);
      if (v9)
      {
        v10 = v9;
        v11 = SecKeyCopyExternalRepresentation(v9, 0);

        if (v11)
        {
          v12 = v11;
          v14[2] = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v12);
          v14[3] = v13;
          P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();

          return;
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  SecureEnclave.P256.KeyAgreement.PrivateKey.publicKey.getter();
  (*(v5 + 8))(v7, v4);
}

void TetraECDHKey.sharedSecretFromKeyAgreement(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v5 = type metadata accessor for SharedSecret();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TetraECDHKey(0);
  outlined init with copy of SecureEnclave.P256.KeyAgreement.PrivateKey?(v2 + *(v13 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of SecureEnclave.P256.KeyAgreement.PrivateKey?(v8);
    if (*v2)
    {
      TetraECDHSecKey.sharedSecretFromKeyAgreement(with:)(a1, *v2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    SecureEnclave.P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    if (!v3)
    {
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type SharedSecret and conformance SharedSecret, MEMORY[0x277CC5308], MEMORY[0x277CC52F8]);
      SymmetricKey.init<A>(data:)();
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraECDHKey.CodingKeys()
{
  if (*v0)
  {
    return 0x79654B706573;
  }

  else
  {
    return 0x79654B736B61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraECDHKey.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B736B61 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B706573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraECDHKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraECDHKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraECDHKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection12TetraECDHKeyV10CodingKeys33_8DBB73CD2A2F188CBCF836BAA44E29C1LLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection12TetraECDHKeyV10CodingKeys33_8DBB73CD2A2F188CBCF836BAA44E29C1LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  lazy protocol witness table accessor for type TetraECDHSecKey and conformance TetraECDHSecKey();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for TetraECDHKey(0);
    v10[6] = 1;
    type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey, MEMORY[0x277CC5388], &protocol conformance descriptor for SecureEnclave.P256.KeyAgreement.PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void TetraECDHKey.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection12TetraECDHKeyV10CodingKeys33_8DBB73CD2A2F188CBCF836BAA44E29C1LLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection12TetraECDHKeyV10CodingKeys33_8DBB73CD2A2F188CBCF836BAA44E29C1LLOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TetraECDHKey(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v10;
    v13 = v12;
    v14 = v19;
    v22 = 0;
    lazy protocol witness table accessor for type TetraECDHSecKey and conformance TetraECDHSecKey();
    v15 = v20;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v23;
    *v13 = v23;
    type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey();
    v21 = 1;
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type SecureEnclave.P256.KeyAgreement.PrivateKey and conformance SecureEnclave.P256.KeyAgreement.PrivateKey, MEMORY[0x277CC5388], &protocol conformance descriptor for SecureEnclave.P256.KeyAgreement.PrivateKey);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v14 + 8))(v9, v15);
    outlined init with take of SecureEnclave.P256.KeyAgreement.PrivateKey?(v6, v13 + *(v17 + 20));
    outlined init with copy of TetraECDHKey(v13, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of TetraECDHKey(v13);
  }
}

SecKeyRef specialized TetraECDHSecKey.init(aksBlob:)(uint64_t a1, unint64_t a2)
{
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yXltGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B48D990;
  v6 = *MEMORY[0x277CDC158];
  *(inited + 32) = *MEMORY[0x277CDC158];
  v7 = one-time initialization token for AKSTokenID;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = AKSTokenID;
  *(inited + 40) = AKSTokenID;
  v10 = one-time initialization token for TokenOID;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = TokenOID;
  *(inited + 48) = TokenOID;
  v13 = v12;
  outlined copy of Data._Representation(a1, a2);
  *(inited + 56) = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_yXlTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yXltMd, &_sSo11CFStringRefa_yXltMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = SecKeyCreateWithData(v4.super.isa, isa, 0);

  if (!v15)
  {
    lazy protocol witness table accessor for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
  }

  return v15;
}

unint64_t lazy protocol witness table accessor for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors()
{
  result = lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKeyErrors and conformance TetraECDHSecKeyErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHKey.CodingKeys and conformance TetraECDHKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraECDHSecKey and conformance TetraECDHSecKey()
{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey;
  if (!lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraECDHSecKey and conformance TetraECDHSecKey);
  }

  return result;
}

uint64_t outlined init with take of SecureEnclave.P256.KeyAgreement.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TetraECDHKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraECDHKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraECDHKey(uint64_t a1)
{
  v2 = type metadata accessor for TetraECDHKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SecureEnclave.P256.KeyAgreement.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SecureEnclave.P256.KeyAgreement.PrivateKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMd, _s9CryptoKit13SecureEnclaveO4P256O12KeyAgreementO07PrivateF0VSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TetraECDHKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraECDHKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *specialized Data.withUnsafeBytes<A>(_:)(void *(*a1)(unsigned int *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void specialized Collection.prefix(_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = specialized RandomAccessCollection<>.distance(from:to:)(v10, v9, a2, a3);
  if (a1 && v11 < a1)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    v13 = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, a1, a2, a3);
  v13 = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    v13 = a2;
  }

LABEL_27:
  if (v12 >= v13)
  {
LABEL_28:
    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    outlined consume of Data._Representation(a2, a3);
    *a4 = v14;
    a4[1] = v16;
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t one-time initialization function for ciphersuite()
{
  v14 = type metadata accessor for HPKE.AEAD();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HPKE.KDF();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HPKE.KEM();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HPKE.Ciphersuite();
  __swift_allocate_value_buffer(v11, static GFTKeyWrapper.ciphersuite);
  __swift_project_value_buffer(v11, static GFTKeyWrapper.ciphersuite);
  (*(v8 + 104))(v10, *MEMORY[0x277CC5450], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277CC5438], v3);
  (*(v0 + 104))(v2, *MEMORY[0x277CC5460], v14);
  return HPKE.Ciphersuite.init(kem:kdf:aead:)();
}

id @objc static GFTKeyWrapper.encrypt(_:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, id))
{
  v8 = a3;
  v9 = a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = a6(v10, v12, v9);
  outlined consume of Data._Representation(v10, v12);

  return v13;
}

id GFTKeyWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GFTKeyWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void closure #1 in static GFTLegacyWrappingAlgorithm.wrap(sharedSecret:seed:privateKey:publicKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char **a5@<X4>, _DWORD *a6@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(&v15[1], 0, 14);
LABEL_10:
      closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.wrap(sharedSecret:seed:privateKey:publicKey:)(a5, v15);
      if (!v6)
      {
        v14 = v15[0];
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
  }

  else
  {
    if (!v11)
    {
      *&v15[1] = a3;
      LOWORD(v15[3]) = a4;
      BYTE2(v15[3]) = BYTE2(a4);
      HIBYTE(v15[3]) = BYTE3(a4);
      LOBYTE(v15[4]) = BYTE4(a4);
      BYTE1(v15[4]) = BYTE5(a4);
      goto LABEL_10;
    }

    v12 = a3;
    v13 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  v14 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v12, v13, a4 & 0x3FFFFFFFFFFFFFFFLL, a1, a2, a5);
  if (!v6)
  {
LABEL_12:
    *a6 = v14;
    return;
  }

LABEL_14:

  __break(1u);
}

uint64_t closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.wrap(sharedSecret:seed:privateKey:publicKey:)@<X0>(char **a5@<X4>, _DWORD *a6@<X8>)
{
  ccaes_siv_encrypt_mode();
  v8 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2), 0, v8);
  }

  *a5 = v8;
  result = ccsiv_one_shot();
  *a6 = result;
  return result;
}

void closure #1 in static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)(uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v8 = a3[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v17, 0, 14);
      goto LABEL_16;
    }

    v14 = a5;
    v15 = v5;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);

    a5 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    if (__DataStorage._bytes.getter())
    {
      a5 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      if (__OFSUB__(v11, __DataStorage._offset.getter()))
      {
        goto LABEL_20;
      }
    }

    if (!__OFSUB__(v12, v11))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v17[0] = *a3;
    LOWORD(v17[1]) = v8;
    BYTE2(v17[1]) = BYTE2(v8);
    BYTE3(v17[1]) = BYTE3(v8);
    BYTE4(v17[1]) = BYTE4(v8);
    BYTE5(v17[1]) = BYTE5(v8);
LABEL_16:
    closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)(a4, &v16);
    if (!v5)
    {
      v13 = v16;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v9 >> 32 < v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = a5;
  v15 = v5;

  if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
  {
LABEL_21:
    __break(1u);
  }

LABEL_13:
  MEMORY[0x231890D50]();
  closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)(a4, v17);
  a5 = v15;
  if (!v15)
  {
    outlined consume of Data._Representation(v9, v8);
    v13 = v17[0];
    a5 = v14;
LABEL_18:
    *a5 = v13;
    return;
  }

LABEL_23:

  __break(1u);
}

uint64_t closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)@<X0>(void *a4@<X4>, void *a5@<X8>)
{
  ccaes_siv_decrypt_mode();
  [a4 mutableBytes];
  result = ccsiv_one_shot();
  *a5 = result;
  return result;
}

id closure #1 in static GondolaWrappingAlgorithm.unwrap(wrappedSeed:using:privateKey:publicKey:)@<X0>(id a1@<X2>, const void *a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v8 = a1;
  result = [a1 mutableBytes];
  if (a2)
  {
    v10 = result;
    result = memcpy(result, a2, a3 - a2);
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  MEMORY[0x231890D50]();
  result = closure #1 in closure #1 in static GFTLegacyWrappingAlgorithm.wrap(sharedSecret:seed:privateKey:publicKey:)(a6, &v11);
  if (!v6)
  {
    return v11;
  }

  return result;
}

void *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = MEMORY[0x231890D50]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

id specialized static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)(uint64_t a1, unint64_t a2)
{
  v22 = type metadata accessor for SymmetricKey();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SHA256();
  v23 = xmmword_22B48D660;
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  lazy protocol witness table accessor for type Data and conformance Data();
  SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
  outlined consume of Data._Representation(v23, *(&v23 + 1));
  *&v23 = a1;
  *(&v23 + 1) = a2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSMutableData, 0x277CBEB28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  outlined copy of Data._Representation(a1, a2);
  result = [ObjCClassFromMetadata _newZeroingDataWithBytes_length_];
  if (!result)
  {
    goto LABEL_19;
  }

  v9 = result;
  v10 = [result increaseLengthBy_];
  MEMORY[0x28223BE20](v10);
  *(&v21 - 2) = &v23;
  *(&v21 - 1) = v9;
  result = SymmetricKey.withUnsafeBytes<A>(_:)();
  if (!v24)
  {
LABEL_16:
    (*(v4 + 8))(v6, v22);
    outlined consume of Data._Representation(v23, *(&v23 + 1));
    return v9;
  }

  while (1)
  {
    v11 = *(&v23 + 1) >> 62;
    if ((*(&v23 + 1) >> 62) <= 1)
    {
      break;
    }

    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = *(v23 + 16);
    v12 = *(v23 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (v14)
    {
      goto LABEL_18;
    }

    if (v15 <= 48)
    {
      goto LABEL_15;
    }

LABEL_13:
    v16 = Data.advanced(by:)();
    v18 = v17;
    outlined consume of Data._Representation(v23, *(&v23 + 1));
    *&v23 = v16;
    *(&v23 + 1) = v18;
    MEMORY[0x28223BE20](v19);
    *(&v21 - 2) = &v23;
    *(&v21 - 1) = v9;
    result = SymmetricKey.withUnsafeBytes<A>(_:)();
    if (!v24)
    {
      goto LABEL_16;
    }
  }

  if (!v11)
  {
    if (BYTE14(v23) <= 0x30uLL)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!__OFSUB__(DWORD1(v23), v23))
  {
    if (DWORD1(v23) - v23 <= 48)
    {
LABEL_15:
      lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
      swift_allocError();
      *v20 = 6;
      swift_willThrow();

      goto LABEL_16;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void specialized static GondolaWrappingAlgorithm.unwrap(wrappedSeed:using:privateKey:publicKey:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v60 = a5;
  v61 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v59 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymmetricKey();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v58 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - v18;
  v67 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000010, 0x800000022B495890);
  v68 = v19;
  v20 = P256.KeyAgreement.PrivateKey.publicKey.getter();
  v21 = MEMORY[0x231891580](v20);
  v23 = v22;
  (*(v12 + 8))(v14, v59);
  Data.append(_:)();
  outlined consume of Data._Representation(v21, v23);
  v24 = MEMORY[0x231891580]();
  v26 = v25;
  Data.append(_:)();
  outlined consume of Data._Representation(v24, v26);
  type metadata accessor for SHA256();
  v69 = MEMORY[0x277D84F90];
  v65 = v67;
  v66 = v68;
  outlined copy of Data._Representation(v67, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  lazy protocol witness table accessor for type Data and conformance Data();
  SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
  outlined consume of Data._Representation(v65, v66);
  outlined consume of Data._Representation(v67, v68);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSMutableData, 0x277CBEB28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [ObjCClassFromMetadata _newZeroingDataWithBytes_length_];
  if (!v28)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v60 = ObjCClassFromMetadata;
  v61 = v28;
  [v28 increaseLengthBy_];
  outlined copy of Data._Representation(a1, a2);
  v29 = (v62 + 56);
  while (1)
  {
    v30 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v30 != 2)
      {
        v33 = 0;
        v31 = 0;
        v34 = 0;
        v32 = 0;
        goto LABEL_14;
      }

      v31 = *(a1 + 16);
      v33 = *(a1 + 24);
    }

    else
    {
      if (!v30)
      {
        v31 = 0;
        v32 = 0;
        v33 = BYTE6(a2);
        v34 = BYTE6(a2);
        goto LABEL_14;
      }

      v31 = a1;
      v33 = a1 >> 32;
    }

    outlined copy of Data._Representation(a1, a2);
    if (v33 < v31)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v30 == 2)
    {
      v32 = *(a1 + 16);
      v34 = *(a1 + 24);
    }

    else
    {
      v32 = a1;
      v34 = a1 >> 32;
    }

LABEL_14:
    if (v34 < v33 || v33 < v32)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v33, v31))
    {
      goto LABEL_58;
    }

    if ((v33 - v31) < 0x28)
    {
      if (v30 <= 1)
      {
        if (!v30)
        {
          goto LABEL_41;
        }

        v35 = a1 >> 32;
LABEL_37:
        v38 = a1;
        goto LABEL_40;
      }

      if (v30 != 2)
      {
        goto LABEL_41;
      }

      v35 = *(a1 + 24);
LABEL_39:
      v38 = *(a1 + 16);
      goto LABEL_40;
    }

    v35 = v31 + 40;
    if (__OFADD__(v31, 40))
    {
      goto LABEL_60;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v36 = *(a1 + 16);
        v37 = *(a1 + 24);
      }

      else
      {
        v37 = 0;
        v36 = 0;
      }
    }

    else if (v30)
    {
      v36 = a1;
      v37 = a1 >> 32;
    }

    else
    {
      v36 = 0;
      v37 = BYTE6(a2);
    }

    if (v37 < v35 || v35 < v36)
    {
      goto LABEL_61;
    }

    v38 = 0;
    if (v30 <= 1)
    {
      if (!v30)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v30 != 3)
    {
      goto LABEL_39;
    }

LABEL_40:
    if (v35 < v38)
    {
      goto LABEL_59;
    }

LABEL_41:
    v39 = Data._Representation.subscript.getter();
    v41 = v40;
    outlined consume of Data._Representation(a1, a2);
    v67 = v39;
    v68 = v41;
    static AES.KeyWrap.unwrap<A>(_:using:)();
    if (!v6)
    {
      break;
    }

    outlined consume of Data._Representation(v67, v68);
    v42 = v63;
    (*v29)(v11, 1, 1, v63);
    outlined destroy of TetraSessionStates?(v11, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_53;
      }

      v44 = *(a1 + 16);
      v43 = *(a1 + 24);
      v45 = __OFSUB__(v43, v44);
      v46 = v43 - v44;
      if (v45)
      {
        goto LABEL_63;
      }

      if (v46 <= 40)
      {
        goto LABEL_53;
      }
    }

    else if (v30)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_62;
      }

      if (HIDWORD(a1) - a1 <= 40)
      {
LABEL_53:
        lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
        swift_allocError();
        *v50 = 6;
        swift_willThrow();

        outlined consume of Data._Representation(a1, a2);
        (*(v62 + 8))(v64, v42);
        return;
      }
    }

    else if (BYTE6(a2) <= 0x28uLL)
    {
      goto LABEL_53;
    }

    v47 = Data.advanced(by:)();
    v49 = v48;
    outlined consume of Data._Representation(a1, a2);
    v6 = 0;
    a1 = v47;
    a2 = v49;
  }

  v59 = 0;
  outlined consume of Data._Representation(v67, v68);
  v51 = v62;
  v52 = v63;
  (*(v62 + 56))(v11, 0, 1, v63);
  v53 = v58;
  (*(v51 + 32))(v58, v11, v52);
  v54 = [v60 _newZeroingDataWithBytes_length_];
  if (!v54)
  {
    goto LABEL_65;
  }

  v55 = [v54 increaseLengthBy_];
  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSvSgMd, &_sSvSgMR);
  SymmetricKey.withUnsafeBytes<A>(_:)();

  outlined consume of Data._Representation(a1, a2);
  v56 = *(v51 + 8);
  v56(v53, v52);
  v56(v64, v52);
}

char *specialized static GFTKeyWrapper.unwrapWrappedSeed(_:legacy:using:)(uint64_t a1, unint64_t a2, int a3, __SecKey *a4)
{
  v95 = a4;
  v96 = a3;
  v99 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SharedSecretVSgMd, &_s9CryptoKit12SharedSecretVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  v10 = type metadata accessor for SharedSecret();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v85 - v16;
  v18 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v19 = *(v18 - 8);
  v93 = v18;
  v94 = v19;
  MEMORY[0x28223BE20](v18);
  v90 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v25 = MEMORY[0x28223BE20](v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_14;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (v32)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v33 < 66)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!v29)
    {
      if (BYTE6(a2) < 0x42uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (HIDWORD(a1) - a1 < 66)
    {
LABEL_14:
      lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
      swift_allocError();
      v37 = 1;
LABEL_23:
      *v36 = v37;
LABEL_24:
      swift_willThrow();
      return v9;
    }
  }

LABEL_8:
  if (v29 == 2)
  {
    v39 = *(a1 + 16);
    v38 = *(a1 + 24);
    v32 = __OFSUB__(v38, v39);
    v34 = v38 - v39;
    if (v32)
    {
      goto LABEL_58;
    }

    v35 = v96;
  }

  else if (v29 == 1)
  {
    LODWORD(v34) = HIDWORD(a1) - a1;
    v35 = v96;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    v34 = v34;
  }

  else
  {
    v35 = v96;
    v34 = BYTE6(a2);
  }

  v32 = __OFSUB__(v34, 65);
  v40 = v34 - 65;
  if (v32)
  {
    __break(1u);
    goto LABEL_55;
  }

  v41 = (v35 & 1) == 0;
  v42 = 40;
  if (!v41)
  {
    v42 = 48;
  }

  if (v40 % v42)
  {
    lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
    swift_allocError();
    v37 = 2;
    goto LABEL_23;
  }

  v87 = v26;
  v88 = v25;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(0x41uLL, a1, a2, &v98);
  *error = v98;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (v4)
  {

    (*(v87 + 56))(v23, 1, 1, v88);
    outlined destroy of TetraSessionStates?(v23, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
    swift_allocError();
    *v44 = 0;
    goto LABEL_24;
  }

  v85 = 0;
  v86 = v28;
  v45 = v87;
  v46 = v88;
  (*(v87 + 56))(v23, 0, 1, v88);
  v47 = v45;
  v48 = v86;
  (*(v47 + 32))(v86, v23, v46);
  error[0] = 0;
  v49 = SecKeyCopyExternalRepresentation(v95, error);
  if (!v49)
  {
    v9 = static os_log_type_t.error.getter();
    result = MessageProtectionLog(v9);
    if (result)
    {
      v54 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      result = swift_allocObject();
      *(result + 1) = xmmword_22B48D7C0;
      if (error[0])
      {
        v55 = result;
        v56 = error[0];
        *&v98 = v56;
        type metadata accessor for CFErrorRef(0);
        lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
        v57 = Error.localizedDescription.getter();
        v59 = v58;
        *(v55 + 7) = MEMORY[0x277D837D0];
        *(v55 + 8) = lazy protocol witness table accessor for type String and conformance String();
        *(v55 + 4) = v57;
        *(v55 + 5) = v59;

        os_log(_:dso:log:_:_:)(v9, &dword_22B404000, v54, "Failed importing private key for key wrapping %@", 48, 2, v55);

        if (error[0])
        {
        }

        lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
        swift_allocError();
        *v60 = 3;
        swift_willThrow();
        (*(v87 + 8))(v86, v88);
        return v9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v50 = v49;
  *&v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v98 + 1) = v51;
  v52 = v85;
  P256.KeyAgreement.PrivateKey.init<A>(x963Representation:)();
  if (v52)
  {

    (*(v94 + 56))(v17, 1, 1, v93);
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMR);
    lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();

    (*(v87 + 8))(v48, v88);
    return v9;
  }

  v95 = v50;
  v62 = v93;
  v61 = v94;
  v63 = *(v94 + 56);
  v85 = 0;
  v63(v17, 0, 1, v93);
  v64 = *(v61 + 32);
  v65 = v90;
  v64(v90, v17, v62);
  v66 = v85;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  if (v66)
  {

    (*(v91 + 56))(v9, 1, 1, v92);
    outlined destroy of TetraSessionStates?(v9, &_s9CryptoKit12SharedSecretVSgMd, &_s9CryptoKit12SharedSecretVSgMR);
    lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
    swift_allocError();
    *v67 = 4;
    swift_willThrow();

    (*(v94 + 8))(v65, v62);
    (*(v87 + 8))(v48, v88);
    return v9;
  }

  v69 = v91;
  v68 = v92;
  (*(v91 + 56))(v9, 0, 1, v92);
  v70 = *(v69 + 32);
  v70(v13, v9, v68);
  v71 = v89;
  result = (v70)(v89, v13, v68);
  if (v96)
  {
    v72 = v86;
    if (v29 == 2)
    {
      v74 = *(a1 + 24);
      v73 = v93;
    }

    else
    {
      v41 = v29 == 1;
      v73 = v93;
      if (v41)
      {
        v74 = a1 >> 32;
      }

      else
      {
        v74 = BYTE6(a2);
      }
    }

    if (v74 >= 65)
    {
      v75 = Data._Representation.subscript.getter();
      v77 = v76;
      v9 = specialized static GFTLegacyWrappingAlgorithm.unwrap(wrappedSeed:using:)(v75, v76);

      outlined consume of Data._Representation(v75, v77);
      v78 = v94;
      v79 = v90;
LABEL_53:
      (*(v91 + 8))(v89, v92);
      (*(v78 + 8))(v79, v73);
      (*(v87 + 8))(v72, v88);
      return v9;
    }

    goto LABEL_61;
  }

  v72 = v86;
  if (v29 == 2)
  {
    v80 = *(a1 + 24);
    v73 = v93;
  }

  else
  {
    v41 = v29 == 1;
    v73 = v93;
    if (v41)
    {
      v80 = a1 >> 32;
    }

    else
    {
      v80 = BYTE6(a2);
    }
  }

  if (v80 >= 65)
  {
    v81 = Data._Representation.subscript.getter();
    v83 = v82;
    v79 = v90;
    specialized static GondolaWrappingAlgorithm.unwrap(wrappedSeed:using:privateKey:publicKey:)(v81, v82, v71, v90, v72);
    v9 = v84;

    outlined consume of Data._Representation(v81, v83);
    v78 = v94;
    goto LABEL_53;
  }

LABEL_62:
  __break(1u);
  return result;
}

objc_class *specialized static GFTKeyWrapper.encrypt(_:to:)(uint64_t a1, unint64_t a2, __SecKey *a3)
{
  v51 = a1;
  v52 = a2;
  error[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for HPKE.Ciphersuite();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HPKE.Sender();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  isa = (&v50 - v12);
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v50 - v19;
  error[0] = 0;
  v20 = SecKeyCopyExternalRepresentation(a3, error);
  if (v20)
  {
    v21 = v20;
    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v22;
    P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
    if (v3)
    {

      (*(v15 + 56))(isa, 1, 1, v14);
      outlined destroy of TetraSessionStates?(isa, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
      swift_allocError();
      *v23 = 3;
      swift_willThrow();
    }

    else
    {
      v50 = 0;
      (*(v15 + 56))(isa, 0, 1, v14);
      v32 = v56;
      (*(v15 + 32))(v56, isa, v14);
      (*(v15 + 16))(v18, v32, v14);
      if (one-time initialization token for ciphersuite != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v5, static GFTKeyWrapper.ciphersuite);
      (*(v6 + 16))(v8, v33, v5);
      v34 = v50;
      HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
      if (!v34)
      {
        v35 = HPKE.Sender.encapsulatedKey.getter();
        v37 = v36;
        v57 = v51;
        v58 = v52;
        v61 = xmmword_22B48D660;
        lazy protocol witness table accessor for type Data and conformance Data();
        v38 = MEMORY[0x277CC9318];
        v39 = HPKE.Sender.seal<A, B>(_:authenticating:)();
        v50 = v37;
        v51 = v35;
        v40 = v39;
        v42 = v41;
        outlined consume of Data._Representation(v61, *(&v61 + 1));
        v43 = v51;
        v62 = v51;
        v63 = v37;
        v59 = v38;
        v60 = MEMORY[0x277CC9300];
        v57 = v40;
        v58 = v42;
        v44 = v40;
        v45 = __swift_project_boxed_opaque_existential_1(&v57, v38);
        v46 = *v45;
        v52 = v45[1];
        v47 = v50;
        outlined copy of Data._Representation(v43, v50);
        outlined copy of Data._Representation(v44, v42);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v46, v52, &v62);
        outlined consume of Data._Representation(v44, v42);
        outlined consume of Data._Representation(v43, v47);
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v48 = v62;
        v49 = v63;
        isa = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v48, v49);

        (*(v53 + 8))(v55, v54);
        (*(v15 + 8))(v56, v14);
        return isa;
      }

      (*(v15 + 8))(v56, v14);
    }

    return isa;
  }

  v24 = static os_log_type_t.error.getter();
  result = MessageProtectionLog(v24);
  if (result)
  {
    isa = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    result = swift_allocObject();
    *(result + 1) = xmmword_22B48D7C0;
    if (error[0])
    {
      v26 = result;
      v27 = error[0];
      v57 = v27;
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(v26 + 7) = MEMORY[0x277D837D0];
      *(v26 + 8) = lazy protocol witness table accessor for type String and conformance String();
      *(v26 + 4) = v28;
      *(v26 + 5) = v30;

      os_log(_:dso:log:_:_:)(v24, &dword_22B404000, isa, "Failed importing public key for encryption:", 43, 2, v26);

      if (error[0])
      {
      }

      lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
      swift_allocError();
      *v31 = 3;
      swift_willThrow();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized static GFTKeyWrapper.decrypt(_:using:)(uint64_t a1, unint64_t a2, __SecKey *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for HPKE.Ciphersuite();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HPKE.Recipient();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v51 - v19;
  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(0x41uLL, a1, a2, &v63);
  v60 = v63;
  v58 = v64;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_24;
    }

    v21 = *(a1 + 24);
  }

  else if (v20)
  {
    v21 = a1 >> 32;
  }

  else
  {
    v21 = BYTE6(a2);
  }

  if (v21 >= 65)
  {
    v59 = Data._Representation.subscript.getter();
    v23 = v22;
    error = 0;
    v24 = SecKeyCopyExternalRepresentation(a3, &error);
    if (v24)
    {
      v25 = v24;
      v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v26;
      v27 = v57;
      P256.KeyAgreement.PrivateKey.init<A>(x963Representation:)();
      v28 = v60;
      if (v27)
      {

        (*(v15 + 56))(v13, 1, 1, v14);
        outlined destroy of TetraSessionStates?(v13, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO07PrivateD0VSgMR);
        lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
        swift_allocError();
        *v29 = 3;
        swift_willThrow();
        outlined consume of Data._Representation(v28, v58);
        outlined consume of Data._Representation(v59, v23);

        return;
      }

      v51 = v23;
      v57 = 0;
      (*(v15 + 56))(v13, 0, 1, v14);
      v43 = v56;
      (*(v15 + 32))(v56, v13, v14);
      (*(v15 + 16))(v18, v43, v14);
      if (one-time initialization token for ciphersuite != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v6, static GFTKeyWrapper.ciphersuite);
      (*(v54 + 16))(v8, v44, v6);
      v45 = v58;
      outlined copy of Data._Representation(v28, v58);
      v46 = v57;
      HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)();
      if (!v46)
      {
        v47 = v51;
        v63 = v59;
        v64 = v51;
        v61 = xmmword_22B48D660;
        lazy protocol witness table accessor for type Data and conformance Data();
        v48 = HPKE.Recipient.open<A, B>(_:authenticating:)();
        v50 = v49;
        outlined consume of Data._Representation(v61, *(&v61 + 1));
        Data._bridgeToObjectiveC()();
        outlined consume of Data._Representation(v48, v50);
        outlined consume of Data._Representation(v59, v47);
        outlined consume of Data._Representation(v60, v45);

        (*(v52 + 8))(v55, v53);
        (*(v15 + 8))(v56, v14);
        return;
      }

      (*(v15 + 8))(v56, v14);

      outlined consume of Data._Representation(v28, v45);
      v41 = v59;
      v42 = v51;
      goto LABEL_21;
    }

    v30 = v23;
    v31 = static os_log_type_t.error.getter();
    v32 = MessageProtectionLog(v31);
    if (v32)
    {
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_22B48D7C0;
      if (error)
      {
        v35 = v34;
        v36 = error;
        v63 = v36;
        type metadata accessor for CFErrorRef(0);
        lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
        v37 = Error.localizedDescription.getter();
        v39 = v38;
        v35[7] = MEMORY[0x277D837D0];
        v35[8] = lazy protocol witness table accessor for type String and conformance String();
        v35[4] = v37;
        v35[5] = v39;

        os_log(_:dso:log:_:_:)(v31, &dword_22B404000, v33, "Failed importing private key for encryption: %@", 47, 2, v35);

        if (error)
        {
        }

        lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
        swift_allocError();
        *v40 = 3;
        swift_willThrow();
        outlined consume of Data._Representation(v60, v58);
        v41 = v59;
        v42 = v30;
LABEL_21:
        outlined consume of Data._Representation(v41, v42);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

LABEL_24:
  __break(1u);
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized static GFTKeyWrapper.wrapSeed(_:to:legacy:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  *(&v104 + 1) = a2;
  *&v104 = a1;
  v106 = type metadata accessor for SymmetricKey();
  v8 = *(v106 - 8);
  v9 = MEMORY[0x28223BE20](v106);
  v94 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v84 - v12;
  MEMORY[0x28223BE20](v11);
  v95 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SharedSecretVSgMd, &_s9CryptoKit12SharedSecretVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v111 = &v84 - v15;
  v110 = type metadata accessor for SharedSecret();
  v100 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v112 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = (&v84 - v18);
  v19 = type metadata accessor for NSFastEnumerationIterator();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v102 = *(v113 - 8);
  v23 = MEMORY[0x28223BE20](v113);
  v109 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v84 - v25;
  v26 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v88 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v108 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  result = [a3 count];
  v105 = a4;
  v29 = 48;
  if ((a4 & 1) == 0)
  {
    v29 = 40;
  }

  v30 = result * v29;
  if ((result * v29) >> 64 != (result * v29) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  result = v30 + 65;
  if (__OFADD__(v30, 65))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v99 = v8;
  v85 = v26;
  v86 = v20;
  v87 = v19;
  v120 = specialized Data._Representation.init(capacity:)(result);
  v121 = v31;
  v32 = v22;
  v103 = a3;
  v33 = v96;
  v34 = P256.KeyAgreement.PrivateKey.publicKey.getter();
  v35 = MEMORY[0x2318915A0](v34);
  v37 = v36;
  v38 = v102;
  v39 = (v102 + 1);
  v40 = v102[1];
  v41 = v33;
  v42 = v32;
  v40(v41, v113);
  Data.append(_:)();
  outlined consume of Data._Representation(v35, v37);
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v119)
  {
LABEL_15:
    (*(v86 + 8))(v42, v87);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (*(v88 + 8))(v108, v85);
    outlined consume of Data._Representation(v120, v121);
    return isa;
  }

  v103 = (v38 + 7);
  v101 = (v38 + 4);
  v102 = (v100 + 7);
  v98 = (v100 + 4);
  v91 = "@44@0:8@16@24B32^@36";
  ++v99;
  ++v100;
  v90 = xmmword_22B48D660;
  v92 = v32;
  v89 = v39;
  while (1)
  {
    outlined init with take of Any(&v118, &v114);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
    swift_dynamicCast();
    v43 = v122;
    v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *&v117 = v44;
    *(&v117 + 1) = v46;
    isa = v107;
    P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
    if (v5)
    {

      (*v103)(isa, 1, 1, v113);
      outlined destroy of TetraSessionStates?(isa, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
      swift_allocError();
      *v80 = 3;
      swift_willThrow();
      (*(v86 + 8))(v42, v87);
      (*(v88 + 8))(v108, v85);
      goto LABEL_17;
    }

    v48 = v113;
    (*v103)(isa, 0, 1, v113);
    v49 = v109;
    (*v101)(v109, isa, v48);
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v50 = v40;
    v51 = v39;
    v52 = v110;
    v53 = v111;
    (*v102)(v111, 0, 1, v110);
    (*v98)(v112, v53, v52);
    if (v105)
    {
      break;
    }

    *&v114 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000010, v91 | 0x8000000000000000);
    *(&v114 + 1) = v57;
    v58 = MEMORY[0x231891580]();
    v60 = v59;
    Data.append(_:)();
    outlined consume of Data._Representation(v58, v60);
    v61 = v96;
    v62 = P256.KeyAgreement.PrivateKey.publicKey.getter();
    v63 = MEMORY[0x231891580](v62);
    v65 = v64;
    v50(v61, v113);
    Data.append(_:)();
    outlined consume of Data._Representation(v63, v65);
    type metadata accessor for SHA256();
    v122 = MEMORY[0x277D84F90];
    v117 = v114;
    outlined copy of Data._Representation(v114, *(&v114 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v66 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
    v67 = lazy protocol witness table accessor for type Data and conformance Data();
    v82 = v66;
    v83 = v67;
    v68 = v112;
    v69 = v93;
    v70 = MEMORY[0x277CC9318];
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    outlined consume of Data._Representation(v117, *(&v117 + 1));
    outlined consume of Data._Representation(v114, *(&v114 + 1));
    v114 = v104;
    outlined copy of Data._Representation(v104, *(&v104 + 1));
    v71 = v94;
    SymmetricKey.init<A>(data:)();
    v72 = static AES.KeyWrap.wrap(_:using:)();
    v74 = v73;
    v97 = 0;
    v75 = *v99;
    v76 = v71;
    v77 = v106;
    (*v99)(v76, v106);
    v75(v69, v77);
    v115 = v70;
    v116 = MEMORY[0x277CC9300];
    *&v114 = v72;
    *(&v114 + 1) = v74;
    v78 = __swift_project_boxed_opaque_existential_1(&v114, v70);
    v79 = v97;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(*v78, v78[1], &v120);
    v5 = v79;
    (*v100)(v68, v110);
    v39 = v89;
    v50(v109, v113);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v42 = v92;
    v40 = v50;
LABEL_8:
    NSFastEnumerationIterator.next()();
    if (!v119)
    {
      goto LABEL_15;
    }
  }

  type metadata accessor for SHA256();
  v114 = v90;
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  lazy protocol witness table accessor for type Data and conformance Data();
  v54 = v95;
  SharedSecret.x963DerivedSymmetricKey<A, B>(using:sharedInfo:outputByteCount:)();
  outlined consume of Data._Representation(v114, *(&v114 + 1));
  v55 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  isa = &v84;
  *(v55 + 16) = 48;
  *(v55 + 32) = 0u;
  *(v55 + 48) = 0u;
  *(v55 + 64) = 0u;
  *&v114 = v55;
  MEMORY[0x28223BE20](v55);
  v56 = *(&v104 + 1);
  *(&v84 - 4) = v104;
  *(&v84 - 3) = v56;
  v82 = &v114;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  if (!v117)
  {
    (*v99)(v54, v106);
    if (*(v114 + 16))
    {
      Data._Representation.append(contentsOf:)();
    }

    (*v100)(v112, v110);
    v39 = v51;
    v40 = v50;
    v50(v109, v113);

    goto LABEL_8;
  }

  lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors();
  swift_allocError();
  *v81 = 5;
  swift_willThrow();
  (*v99)(v54, v106);
  (*v100)(v112, v110);
  v50(v49, v113);
  (*(v86 + 8))(v42, v87);
  (*(v88 + 8))(v108, v85);

LABEL_17:
  outlined consume of Data._Representation(v120, v121);
  return isa;
}

unint64_t lazy protocol witness table accessor for type KeyWrappingErrors and conformance KeyWrappingErrors()
{
  result = lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors;
  if (!lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors;
  if (!lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyWrappingErrors and conformance KeyWrappingErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for KeyWrappingErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyWrappingErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for MPPB_LiteRatchet(uint64_t a1)
{
  result = type metadata singleton initialization cache for MPPB_LiteRatchet;
  if (!type metadata singleton initialization cache for MPPB_LiteRatchet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MPPB_LiteRatchet(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

uint64_t MPPB_LiteRatchet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for MPPB_LiteRatchet(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

void MPPB_LiteRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in MPPB_LiteRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in MPPB_LiteRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in MPPB_LiteRatchet.traverse<A>(visitor:)(v3, a1, a2, a3);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #1 in MPPB_LiteRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for MPPB_LiteRatchet(0) + 20);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

void closure #2 in MPPB_LiteRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for MPPB_LiteRatchet(0) + 24);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

void closure #3 in MPPB_LiteRatchet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for MPPB_LiteRatchet(0) + 28);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

double protocol witness for Message.init() in conformance MPPB_LiteRatchet@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  *(a2 + v5) = xmmword_22B48D7D0;
  *(a2 + a1[7]) = xmmword_22B48D7D0;
  return result;
}

BOOL protocol witness for Message.isInitialized.getter in conformance MPPB_LiteRatchet(int *a1)
{
  if (*(v1 + a1[5] + 8) >> 60 == 15)
  {
    return 0;
  }

  if (*(v1 + a1[6] + 8) >> 60 == 15)
  {
    return 0;
  }

  return *(v1 + a1[7] + 8) >> 60 != 15;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance MPPB_LiteRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet, &protocol conformance descriptor for MPPB_LiteRatchet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance MPPB_LiteRatchet@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static MPPB_LiteRatchet._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPPB_LiteRatchet(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet, &protocol conformance descriptor for MPPB_LiteRatchet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MPPB_LiteRatchet(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet, &protocol conformance descriptor for MPPB_LiteRatchet);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static MPPB_LiteRatchet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPPB_LiteRatchet(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    v11 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_14;
    }

LABEL_10:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v14 = v10;
    v15 = v9;
LABEL_11:
    outlined consume of Data?(v14, v15);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v17 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v17)
  {
    return 0;
  }

LABEL_14:
  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 != 15)
  {
    if (v22 >> 60 == 15)
    {
      goto LABEL_18;
    }

    outlined copy of Data?(v20, v19);
    outlined copy of Data?(v23, v22);
    v24 = specialized static Data.== infix(_:_:)(v20, v19, v23, v22);
    outlined consume of Data?(v23, v22);
    outlined consume of Data?(v20, v19);
    if (v24)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v22 >> 60 != 15)
  {
LABEL_18:
    outlined copy of Data?(v20, v19);
    outlined copy of Data?(v23, v22);
    outlined consume of Data?(v20, v19);
    v14 = v23;
    v15 = v22;
    goto LABEL_11;
  }

  outlined copy of Data?(v20, v19);
  outlined copy of Data?(v23, v22);
  outlined consume of Data?(v20, v19);
LABEL_20:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AES.IV.data()(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v25[5] = *MEMORY[0x277D85DE8];
  v25[3] = MEMORY[0x277CC9318];
  v25[4] = MEMORY[0x277CC9300];
  v25[0] = a1;
  v25[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277CC9318]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v23, 0, 14);
      outlined copy of Data._Representation(v3, v2);
      v8 = v23;
      v9 = v23;
      goto LABEL_23;
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    outlined copy of Data._Representation(v3, v2);
    v3 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v2 = __DataStorage._bytes.getter();
    if (v2)
    {
      v3 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = __DataStorage._offset.getter();
      v5 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v2 += v5;
    }

    v13 = __OFSUB__(v11, v10);
    v14 = v11 - v10;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v23[0] = *v4;
    LOWORD(v23[1]) = v6;
    BYTE2(v23[1]) = BYTE2(v6);
    BYTE3(v23[1]) = BYTE3(v6);
    BYTE4(v23[1]) = BYTE4(v6);
    BYTE5(v23[1]) = BYTE5(v6);
    outlined copy of Data._Representation(v3, v2);
    v8 = v23;
    v9 = v23 + BYTE6(v6);
    goto LABEL_23;
  }

  v15 = v5;
  v16 = v5 >> 32;
  v14 = v16 - v15;
  if (v16 < v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  outlined copy of Data._Representation(v3, v2);
  v2 = __DataStorage._bytes.getter();
  if (v2)
  {
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v17))
    {
      v2 += v15 - v17;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v18 = MEMORY[0x231890D50]();
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v2);
  if (v2)
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  v8 = v2;
LABEL_23:
  closure #1 in Data.init<A>(_:)(v8, v9, &v24);
  v21 = v24;
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void specialized AES.IV.init(IV:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 16)
      {
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        return;
      }

LABEL_11:
      v9 = type metadata accessor for CryptoKitError();
      lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError();
      swift_allocError();
      (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277CC51E0], v9);
      swift_willThrow();
      outlined consume of Data._Representation(a1, a2);
      return;
    }

    goto LABEL_13;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AES.IV(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AES.IV(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError()
{
  result = lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError;
  if (!lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError)
  {
    type metadata accessor for CryptoKitError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of TetraSessionStates?(a1, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      specialized _NativeDictionary._delete(at:)(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of TetraSessionStates?(v8, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t one-time initialization function for statusKeyRatchetPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000013, 0x800000022B495B80);
  statusKeyRatchetPrefix = result;
  *algn_280F9FE58 = v1;
  return result;
}

double one-time initialization function for statusKitRatchetStep()
{
  if (one-time initialization token for statusKeyRatchetPrefix != -1)
  {
    swift_once();
  }

  v0 = statusKeyRatchetPrefix;
  v1 = *algn_280F9FE58;
  outlined copy of Data._Representation(statusKeyRatchetPrefix, *algn_280F9FE58);
  outlined copy of Data._Representation(v0, v1);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x6567617373654D2DLL, 0xEC0000007379654BLL);
  v4 = v3;
  *&v10 = v0;
  *(&v10 + 1) = v1;
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = v2;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(v2, v4);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v7, &v10);
  outlined consume of Data._Representation(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  result = *&v10;
  statusKitRatchetStep = v0;
  unk_280F9FE80 = v1;
  xmmword_280F9FE88 = v10;
  qword_280F9FE98 = 0;
  byte_280F9FEA0 = 1;
  return result;
}

id SKOutgoingRatchet.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PrivateKey();
  v109 = *(v4 - 8);
  v110 = v4;
  MEMORY[0x28223BE20](v4);
  v116 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SymmetricKey();
  v117 = *(v119 - 8);
  v6 = MEMORY[0x28223BE20](v119);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v108 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v102 - v12;
  v118 = type metadata accessor for MPPB_KeyAndIndex(0);
  v120 = *(v118 - 8);
  v13 = MEMORY[0x28223BE20](v118);
  v111 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v114 = &v102 - v15;
  v16 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection22MPPB_SKOutgoingRatchetVSgMd, &_s17MessageProtection22MPPB_SKOutgoingRatchetVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v102 - v21;
  v23 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet, type metadata accessor for MPPB_SKOutgoingRatchet, &protocol conformance descriptor for MPPB_SKOutgoingRatchet);
  v27 = v121;
  Message.init(serializedData:extensions:partial:options:)();
  if (v27)
  {

    v29 = *(v24 + 56);
    v28 = (v24 + 56);
    v29(v22, 1, 1, v23);
    outlined destroy of TetraSessionStates?(v22, &_s17MessageProtection22MPPB_SKOutgoingRatchetVSgMd, &_s17MessageProtection22MPPB_SKOutgoingRatchetVSgMR);
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v30 = 5;
    swift_willThrow();
    v31 = a1;
    v32 = a2;
LABEL_13:
    outlined consume of Data._Representation(v31, v32);
LABEL_14:
    type metadata accessor for SKOutgoingRatchet(0);
    swift_deallocPartialClassInstance();
    return v28;
  }

  v105 = v18;
  v106 = a1;
  v107 = a2;
  v121 = 0;
  (*(v24 + 56))(v22, 0, 1, v23);
  _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v22, v26, type metadata accessor for MPPB_SKOutgoingRatchet);
  v104 = v23;
  v33 = &v26[*(v23 + 20)];
  v34 = v33[1];
  if (v34 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = *v33;
  }

  if (v34 >> 60 == 15)
  {
    v36 = 0xC000000000000000;
  }

  else
  {
    v36 = v33[1];
  }

  outlined copy of Data?(*v33, v34);
  if (one-time initialization token for statusKitRatchetStep != -1)
  {
    swift_once();
  }

  v37 = statusKitRatchetStep;
  v38 = unk_280F9FE80;
  v39 = xmmword_280F9FE88;
  v40 = qword_280F9FE98;
  v41 = byte_280F9FEA0;
  *(&v124 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMR);
  v125 = &protocol witness table for HKDFRatchet<A>;
  v42 = swift_allocObject();
  *&v123 = v42;
  *(v42 + 16) = v37;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 48) = v40;
  *(v42 + 56) = v41;
  outlined copy of Data._Representation(v37, v38);
  outlined copy of Data._Representation(v39, *(&v39 + 1));
  v28 = v105;
  v43 = v121;
  SymmetricRatchet.init(data:step:)(v35, v36, &v123, v105);
  if (v43)
  {
    outlined destroy of SymmetricRatchet(v26, type metadata accessor for MPPB_SKOutgoingRatchet);
    v31 = v106;
    v32 = v107;
    goto LABEL_13;
  }

  v121 = 0;
  v102 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet;
  _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v28, &v126[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet], type metadata accessor for SymmetricRatchet);
  v45 = v113;
  outlined init with copy of TetraSessionStates?(&v26[*(v104 + 32)], v113, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v46 = v120 + 48;
  v47 = *(v120 + 48);
  v48 = v118;
  v49 = v47(v45, 1, v118);
  v120 = v46;
  v103 = v26;
  v105 = v47;
  if (v49 == 1)
  {
    v50 = v114;
    UnknownStorage.init()();
    *(v50 + *(v48 + 20)) = xmmword_22B48D7D0;
    v51 = v50 + *(v48 + 24);
    *v51 = 0;
    *(v51 + 8) = 1;
    v52 = v47(v45, 1, v48);
    v53 = v115;
    if (v52 != 1)
    {
      outlined destroy of TetraSessionStates?(v45, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    }
  }

  else
  {
    v50 = v114;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v45, v114, type metadata accessor for MPPB_KeyAndIndex);
    v53 = v115;
  }

  v54 = (v50 + *(v48 + 20));
  v55 = *v54;
  v56 = v54[1];
  if (v56 >> 60 == 15)
  {
    v57 = 0;
  }

  else
  {
    v57 = *v54;
  }

  if (v56 >> 60 == 15)
  {
    v58 = 0xC000000000000000;
  }

  else
  {
    v58 = v56;
  }

  *&v123 = v57;
  *(&v123 + 1) = v58;
  outlined copy of Data?(v55, v56);
  SymmetricKey.init<A>(data:)();
  v59 = v50 + *(v48 + 24);
  v60 = *v59;
  v61 = *(v59 + 8);
  outlined destroy of SymmetricRatchet(v50, type metadata accessor for MPPB_KeyAndIndex);
  if (v61)
  {
    v62 = 0;
  }

  else
  {
    v62 = v60;
  }

  v63 = &v126[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey];
  v64 = v117;
  v66 = v117 + 32;
  v65 = *(v117 + 32);
  v65(&v126[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey], v53, v119);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  *&v63[*(v67 + 48)] = v62;
  v68 = v104;
  v69 = v103;
  v70 = &v103[*(v104 + 24)];
  v71 = *v70;
  v72 = v70[1];
  if (v72 >> 60 == 15)
  {
    v73 = 0;
  }

  else
  {
    v73 = *v70;
  }

  if (v72 >> 60 == 15)
  {
    v74 = 0xC000000000000000;
  }

  else
  {
    v74 = v72;
  }

  *&v123 = v73;
  *(&v123 + 1) = v74;
  outlined copy of Data?(v71, v72);
  v28 = v116;
  v75 = v121;
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  if (v75)
  {
    outlined destroy of SymmetricRatchet(v69, type metadata accessor for MPPB_SKOutgoingRatchet);
    outlined consume of Data._Representation(v106, v107);
    outlined destroy of SymmetricRatchet(&v126[v102], type metadata accessor for SymmetricRatchet);
    (*(v64 + 8))(v63, v119);
    goto LABEL_14;
  }

  v114 = v67;
  v115 = v65;
  v117 = v66;
  v121 = 0;
  v76 = v126;
  (*(v109 + 32))(&v126[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_signingKey], v28, v110);
  v77 = v108;
  outlined init with copy of TetraSessionStates?(v69 + *(v68 + 28), v108, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v78 = v118;
  v79 = v105;
  v80 = v105(v77, 1, v118);
  v81 = v106;
  v82 = v69;
  if (v80 == 1)
  {
    v83 = v111;
    UnknownStorage.init()();
    *(v83 + *(v78 + 20)) = xmmword_22B48D7D0;
    v84 = v83 + *(v78 + 24);
    *v84 = 0;
    *(v84 + 8) = 1;
    v85 = v83;
    v86 = v79(v77, 1, v78);
    v82 = v69;
    v87 = v119;
    v88 = v112;
    if (v86 != 1)
    {
      outlined destroy of TetraSessionStates?(v77, &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
    }
  }

  else
  {
    v85 = v111;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v77, v111, type metadata accessor for MPPB_KeyAndIndex);
    v87 = v119;
    v88 = v112;
  }

  v89 = v118;
  v90 = (v85 + *(v118 + 20));
  v91 = *v90;
  v92 = v90[1];
  if (v92 >> 60 == 15)
  {
    v93 = 0;
  }

  else
  {
    v93 = *v90;
  }

  v94 = 0xC000000000000000;
  if (v92 >> 60 != 15)
  {
    v94 = v92;
  }

  *&v123 = v93;
  *(&v123 + 1) = v94;
  outlined copy of Data?(v91, v92);
  SymmetricKey.init<A>(data:)();
  outlined destroy of SymmetricRatchet(v82, type metadata accessor for MPPB_SKOutgoingRatchet);
  v95 = v85 + *(v89 + 24);
  v96 = *v95;
  v97 = v85;
  v98 = *(v95 + 8);
  outlined destroy of SymmetricRatchet(v97, type metadata accessor for MPPB_KeyAndIndex);
  if (v98)
  {
    v99 = 0;
  }

  else
  {
    v99 = v96;
  }

  v100 = &v76[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey];
  (v115)(&v76[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey], v88, v87);
  *&v100[*(v114 + 48)] = v99;
  v101 = type metadata accessor for SKOutgoingRatchet(0);
  v122.receiver = v76;
  v122.super_class = v101;
  v28 = objc_msgSendSuper2(&v122, sel_init);
  outlined consume of Data._Representation(v81, v107);
  return v28;
}

id SKOutgoingRatchet.init()()
{
  v0 = type metadata accessor for P256.Signing.PrivateKey();
  v52 = *(v0 - 8);
  v53 = v0;
  MEMORY[0x28223BE20](v0);
  v51 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  MEMORY[0x28223BE20](v54);
  v49 = &v45 - v2;
  v3 = type metadata accessor for SymmetricRatchet(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - v7;
  v8 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  v56 = v10;
  v20 = *(v10 + 16);
  v46 = v19;
  v20(v17, v19, v9);
  if (one-time initialization token for statusKitRatchetStep != -1)
  {
    swift_once();
  }

  v21 = statusKitRatchetStep;
  v22 = unk_280F9FE80;
  v23 = xmmword_280F9FE88;
  v24 = qword_280F9FE98;
  v25 = byte_280F9FEA0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMR);
  v60 = &protocol witness table for HKDFRatchet<A>;
  v26 = swift_allocObject();
  *&v58 = v26;
  *(v26 + 16) = v21;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 48) = v24;
  *(v26 + 56) = v25;
  *&v6[*(v3 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v21, v22);
  outlined copy of Data._Representation(v23, *(&v23 + 1));
  if (SymmetricKey.bitCount.getter() <= 255)
  {
    v42 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277CC51D0], v42);
    swift_willThrow();
    (*(v56 + 8))(v17, v9);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    outlined init with take of ContiguousBytes(&v58, &v6[*(v3 + 24)]);
    v27 = *(v56 + 32);
    v27(v6, v17, v9);
    v28 = v54;
    *&v6[*(v54 + 48)] = 0;
    v29 = v47;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v6, v47, type metadata accessor for SymmetricRatchet);
    v30 = v55;
    v31 = &v55[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet];
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v29, &v55[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet], type metadata accessor for SymmetricRatchet);
    swift_beginAccess();
    v32 = v49;
    outlined init with copy of TetraSessionStates?(v31, v49, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    v33 = *(v32 + *(v28 + 48));
    v34 = &v30[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey];
    v27(&v30[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey], v32, v9);
    *&v34[*(v28 + 48)] = v33;
    v35 = v51;
    P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
    (*(v52 + 32))(&v30[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_signingKey], v35, v53);
    swift_beginAccess();
    v36 = *(v31 + *(v28 + 48));
    if (v36 != -1)
    {
      v37 = v48;
      SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v36, 1, v48);
      v38 = v50;
      v27(v50, v37, v9);
      swift_endAccess();
      (*(v56 + 8))(v46, v9);
      v39 = &v30[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey];
      v27(&v30[OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey], v38, v9);
      *&v39[*(v28 + 48)] = v36;
      v40 = type metadata accessor for SKOutgoingRatchet(0);
      v57.receiver = v30;
      v57.super_class = v40;
      return objc_msgSendSuper2(&v57, sel_init);
    }
  }

  lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
  swift_allocError();
  *v44 = 0;
  swift_willThrow();
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id static SKOutgoingRatchet.generate()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall SKOutgoingRatchet.ratchetForward()()
{
  v1 = type metadata accessor for SymmetricKey();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v43 = &v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = v0 + OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet;
  swift_beginAccess();
  if (*(v19 + *(v5 + 48)) <= 0xFFFEuLL)
  {
    v39 = v8;
    v42 = v4;
    outlined init with copy of TetraSessionStates?(v19, v18, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    v20 = *&v18[*(v5 + 48)];
    v37 = *(v2 + 32);
    v38 = v2 + 32;
    v37(v16, v18, v1);
    *&v16[*(v5 + 48)] = v20;
    outlined init with take of (key: SymmetricKey, index: UInt64)(v16, v13);
    v21 = *&v13[*(v5 + 48)];
    v22 = v0 + OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey;
    swift_beginAccess();
    v23 = *(v2 + 40);
    v40 = v2 + 40;
    v41 = v1;
    v36 = v23;
    v23(v22, v13, v1);
    *(v22 + *(v5 + 48)) = v21;
    swift_endAccess();
    swift_beginAccess();
    v24 = *(v19 + *(v5 + 48));
    if (v24 != -1)
    {
      v35 = v0;
      v25 = v42;
      SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v24, 1, v42);
      v26 = *(v5 + 48);
      v27 = v39;
      v28 = v41;
      v29 = v37;
      v37(v39, v25, v41);
      swift_endAccess();
      *(v27 + v26) = v24;
      v30 = v43;
      outlined init with take of (key: SymmetricKey, index: UInt64)(v27, v43);
      outlined init with take of (key: SymmetricKey, index: UInt64)(v30, v18);
      v31 = *&v18[*(v5 + 48)];
      v29(v16, v18, v28);
      *&v16[*(v5 + 48)] = v31;
      outlined init with take of (key: SymmetricKey, index: UInt64)(v16, v13);
      v32 = *&v13[*(v5 + 48)];
      v33 = v35 + OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey;
      swift_beginAccess();
      v36(v33, v13, v28);
      *(v33 + *(v5 + 48)) = v32;
      swift_endAccess();
      return 1;
    }

    swift_endAccess();
  }

  return 0;
}

char *SKOutgoingRatchet.sealMessage(_:authenticating:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v75 = a3;
  *(&v75 + 1) = a4;
  v74 = type metadata accessor for P256.Signing.ECDSASignature();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v76 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for P256.Signing.PublicKey();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = v68 - v11;
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MPPB_SKPaddedStatus(0);
  MEMORY[0x28223BE20](v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v88 = v68 - v23;
  v24 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v24)
    {
      goto LABEL_8;
    }

    LODWORD(v25) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v25 = v25;
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 != 2)
  {
    goto LABEL_8;
  }

  v27 = *(a1 + 2);
  v26 = *(a1 + 3);
  v28 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v28)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v25 >= 4092)
  {
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v42 = 8;
    swift_willThrow();
    return v17;
  }

LABEL_8:
  v71 = v13;
  v72 = v12;
  v82 = v17;
  v29 = *(v18 + 48);
  v30 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey;
  swift_beginAccess();
  outlined init with copy of TetraSessionStates?(v4 + v30, v21, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v31 = *&v21[*(v18 + 48)];
  v32 = type metadata accessor for SymmetricKey();
  v69 = *(v32 - 8);
  v33 = *(v69 + 32);
  v17 = v88;
  v70 = v32;
  v33(v88, v21);
  *&v17[v29] = v31;
  if (v31 >= 0xFFFF)
  {
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    return v17;
  }

  v68[1] = v4;
  v34 = v82;
  UnknownStorage.init()();
  v35 = (v34 + *(v15 + 20));
  *v35 = xmmword_22B48D7D0;
  v36 = v34 + *(v15 + 24);
  *v36 = xmmword_22B48D7D0;
  v17 = *v35;
  v37 = v35[1];
  outlined copy of Data._Representation(a1, a2);
  outlined consume of Data?(v17, v37);
  *v35 = a1;
  v35[1] = a2;
  outlined consume of Data?(*v36, *(v36 + 8));
  *v36 = xmmword_22B48D660;
  v38 = v83;
  MPPB_SKPaddedStatus.paddedData()();
  if (v38)
  {
    outlined destroy of TetraSessionStates?(v88, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    outlined destroy of SymmetricRatchet(v34, type metadata accessor for MPPB_SKPaddedStatus);
    return v17;
  }

  *&v84 = v39;
  *(&v84 + 1) = v40;
  v43 = type metadata accessor for AES.GCM.Nonce();
  v44 = v81;
  (*(*(v43 - 8) + 56))(v81, 1, 1, v43);
  v83 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_signingKey;
  v45 = v78;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v46 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v48 = v47;
  result = (*(v79 + 8))(v45, v80);
  v49 = v88;
  if (v48 >> 60 == 15)
  {
    goto LABEL_21;
  }

  *&v87 = v46;
  *(&v87 + 1) = v48;
  lazy protocol witness table accessor for type Data and conformance Data();
  v50 = MEMORY[0x277CC9318];
  v51 = v77;
  static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
  outlined consume of Data._Representation(v87, *(&v87 + 1));
  outlined destroy of TetraSessionStates?(v44, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  outlined consume of Data._Representation(v84, *(&v84 + 1));
  result = AES.GCM.SealedBox.combined.getter();
  if (v52 >> 60 != 15)
  {
    v53 = result;
    v54 = v52;
    result = outlined init with copy of TetraSessionStates?(v49, v21, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    v80 = *&v21[*(v18 + 48)];
    if (!(v80 >> 16))
    {
      (*(v69 + 8))(v21, v70);
      *&v87 = v53;
      *(&v87 + 1) = v54;
      v85 = v50;
      v86 = MEMORY[0x277CC9300];
      v55 = v75;
      v84 = v75;
      v56 = __swift_project_boxed_opaque_existential_1(&v84, v50);
      v57 = v53;
      v58 = *v56;
      v59 = v56[1];
      v81 = v57;
      outlined copy of Data?(v57, v54);
      outlined copy of Data._Representation(v55, *(&v55 + 1));
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v58, v59, &v87);
      __swift_destroy_boxed_opaque_existential_1(&v84);
      v84 = v87;
      v60 = v76;
      P256.Signing.PrivateKey.signature<A>(for:)();
      outlined consume of Data._Representation(v84, *(&v84 + 1));
      v61 = P256.Signing.ECDSASignature.rawRepresentation.getter();
      v63 = v62;
      (*(v73 + 8))(v60, v74);
      v64 = objc_allocWithZone(MPStatusKitMessage);
      v65 = v81;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v67 = Data._bridgeToObjectiveC()().super.isa;
      v17 = [v64 initWithIndex:v80 encryptedMessage:isa signature:v67];

      outlined consume of Data._Representation(v61, v63);
      outlined consume of Data?(v65, v54);
      (*(v71 + 8))(v51, v72);
      outlined destroy of TetraSessionStates?(v88, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
      outlined destroy of SymmetricRatchet(v82, type metadata accessor for MPPB_SKPaddedStatus);
      return v17;
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

MPStatusKitSubscriptionKeys __swiftcall SKOutgoingRatchet.currentSubscriptionKeys()()
{
  v1 = v0;
  v33[0] = type metadata accessor for P256.Signing.PublicKey();
  v2 = *(v33[0] - 8);
  MEMORY[0x28223BE20](v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = *(v6 + 56);
  v13 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey;
  swift_beginAccess();
  outlined init with copy of TetraSessionStates?(v1 + v13, v9, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v14 = *&v9[*(v6 + 56)];
  v15 = type metadata accessor for SymmetricKey();
  v16 = *(v15 - 8);
  (*(v16 + 32))(v11, v9, v15);
  *&v11[v12] = v14;
  v17 = outlined init with copy of TetraSessionStates?(v11, v9, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v21 = *&v9[*(v6 + 56)];
  if (v21 >> 16)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(v16 + 8))(v9, v15);
  type metadata accessor for NSData();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v22 = v33[2];
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v26 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v28 = v27;
  v17 = (*(v2 + 8))(v4, v33[0]);
  if (v28 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v29 = objc_allocWithZone(MPStatusKitSubscriptionKeys);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v31 = Data._bridgeToObjectiveC()().super.isa;
  v32 = [v29 initWithIndex:v21 chainKey:isa signingKey:v31];

  outlined consume of Data?(v26, v28);
  outlined consume of Data._Representation(v23, v25);
  outlined destroy of TetraSessionStates?(v11, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v17 = v32;
LABEL_6:
  result._signingKey = v20;
  result._chainKey = v19;
  result.super.isa = v17;
  result._index = v18;
  return result;
}

uint64_t SKOutgoingRatchet.serializedData()()
{
  v1 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v1 - 8);
  v79 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) - 8;
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - v4;
  v6 = type metadata accessor for SymmetricKey();
  v88 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MPPB_KeyAndIndex(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MPPB_SKOutgoingRatchet(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v76 = &v14[v12[5]];
  v84 = xmmword_22B48D7D0;
  *v76 = xmmword_22B48D7D0;
  v77 = &v14[v12[6]];
  *v77 = xmmword_22B48D7D0;
  v71 = v12[7];
  v78 = v12;
  v15 = *(v10 + 56);
  v85 = v10 + 56;
  v86 = v15;
  v15(&v14[v71], 1, 1, v9);
  v75 = v12[8];
  v15(&v14[v75], 1, 1, v9);
  v16 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentMessageKey;
  v83 = v0;
  swift_beginAccess();
  outlined init with copy of TetraSessionStates?(v0 + v16, v5, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v65 = v3;
  v64 = *&v5[*(v3 + 56)];
  v17 = v64;
  v18 = v88;
  v19 = *(v88 + 32);
  v73 = v88 + 32;
  v74 = v19;
  v20 = v6;
  v80 = v6;
  v19(v8, v5, v6);
  v21 = *(v18 + 16);
  v70 = v18 + 16;
  v72 = v21;
  v22 = v8;
  v81 = v8;
  v21(v5, v8, v20);
  *&v5[*(v3 + 56)] = v17;
  v23 = v87;
  UnknownStorage.init()();
  v24 = v9;
  v82 = v9;
  v25 = v23 + *(v9 + 20);
  *v25 = v84;
  v26 = v23 + *(v24 + 24);
  *v26 = 0;
  *(v26 + 8) = 1;
  v69 = type metadata accessor for NSData();
  v68 = closure #1 in SymmetricKey.toZeroizingNSData();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v66 = 0;
  v27 = v90;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  outlined destroy of TetraSessionStates?(v5, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v31 = *(v88 + 8);
  v88 += 8;
  v67 = v31;
  v32 = v80;
  v31(v22, v80);
  outlined consume of Data?(*v25, *(v25 + 8));
  *v25 = v28;
  *(v25 + 8) = v30;
  *v26 = v64;
  *(v26 + 8) = 0;
  v33 = v71;
  outlined destroy of TetraSessionStates?(&v14[v71], &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  v64 = type metadata accessor for MPPB_KeyAndIndex;
  v34 = v87;
  _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v87, &v14[v33], type metadata accessor for MPPB_KeyAndIndex);
  v35 = v82;
  v86(&v14[v33], 0, 1, v82);
  v36 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_currentSubscriptionKey;
  v37 = v83;
  swift_beginAccess();
  outlined init with copy of TetraSessionStates?(v37 + v36, v5, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v38 = v65;
  v39 = *&v5[*(v65 + 56)];
  v40 = v81;
  v74(v81, v5, v32);
  v72(v5, v40, v32);
  *&v5[*(v38 + 56)] = v39;
  v41 = v34;
  UnknownStorage.init()();
  v42 = v34 + *(v35 + 20);
  *v42 = v84;
  v43 = v41 + *(v35 + 24);
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v66;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v45 = v89;
  v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  outlined destroy of TetraSessionStates?(v5, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v67(v81, v80);
  outlined consume of Data?(*v42, *(v42 + 8));
  *v42 = v46;
  *(v42 + 8) = v48;
  *v43 = v39;
  *(v43 + 8) = 0;
  v49 = v75;
  outlined destroy of TetraSessionStates?(&v14[v75], &_s17MessageProtection16MPPB_KeyAndIndexVSgMd, _s17MessageProtection16MPPB_KeyAndIndexVSgMR);
  _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v87, &v14[v49], v64);
  v86(&v14[v49], 0, 1, v82);
  v50 = OBJC_IVAR____TtC17MessageProtection17SKOutgoingRatchet_ratchet;
  v51 = v83;
  swift_beginAccess();
  v52 = v79;
  outlined init with copy of SymmetricRatchet(v51 + v50, v79, type metadata accessor for SymmetricRatchet);
  v53 = SymmetricRatchet.serializedData()();
  v55 = v54;
  outlined destroy of SymmetricRatchet(v52, type metadata accessor for SymmetricRatchet);
  v56 = v76;
  outlined consume of Data?(*v76, *(v76 + 1));
  *v56 = v53;
  v56[1] = v55;
  v57 = MEMORY[0x231891660]();
  v59 = v58;
  v60 = v77;
  outlined consume of Data?(*v77, *(v77 + 1));
  *v60 = v57;
  v60[1] = v59;
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKOutgoingRatchet and conformance MPPB_SKOutgoingRatchet, type metadata accessor for MPPB_SKOutgoingRatchet, &protocol conformance descriptor for MPPB_SKOutgoingRatchet);
  v61 = Message.serializedData(partial:)();
  if (v44)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v62 = v61;
    outlined destroy of SymmetricRatchet(v14, type metadata accessor for MPPB_SKOutgoingRatchet);
    return v62;
  }

  return result;
}

uint64_t SKOutgoingRatchet.signingKeyIdentifier()()
{
  v0 = type metadata accessor for SHA256();
  v17 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for P256.Signing.PublicKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v10 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v12 = v11;
  result = (*(v4 + 8))(v6, v3);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    dispatch thunk of HashFunction.init()();
    outlined copy of Data._Representation(v10, v12);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v10, v12, v2);
    outlined consume of Data?(v10, v12);
    dispatch thunk of HashFunction.finalize()();
    outlined consume of Data?(v10, v12);
    (*(v17 + 8))(v2, v0);
    v21 = v7;
    v22 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    v15 = v18;
    (*(v18 + 16))(boxed_opaque_existential_1, v9, v7);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v15 + 8))(v9, v7);
    v16 = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v16;
  }

  return result;
}

id SKRatchet.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata completion function for SKOutgoingRatchet(uint64_t a1)
{
  result = type metadata accessor for SymmetricRatchet(319);
  if (v2 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = type metadata accessor for P256.Signing.PrivateKey();
    if (v3 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = type metadata accessor for SymmetricKey();
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v9 = &v6;
        swift_getTupleTypeLayout2();
        v10 = &v5;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

id SKIncomingRatchet.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v79 - v7;
  v85 = type metadata accessor for MPPB_KeyAndIndex(0);
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P256.Signing.PublicKey();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection22MPPB_SKIncomingRatchetVSgMd, &_s17MessageProtection22MPPB_SKIncomingRatchetVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v79 - v17;
  v19 = type metadata accessor for MPPB_SKIncomingRatchet(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKIncomingRatchet and conformance MPPB_SKIncomingRatchet, type metadata accessor for MPPB_SKIncomingRatchet, &protocol conformance descriptor for MPPB_SKIncomingRatchet);
  v23 = v88;
  Message.init(serializedData:extensions:partial:options:)();
  if (v23)
  {

    v25 = *(v20 + 56);
    v24 = (v20 + 56);
    v25(v18, 1, 1, v19);
    outlined destroy of TetraSessionStates?(v18, &_s17MessageProtection22MPPB_SKIncomingRatchetVSgMd, &_s17MessageProtection22MPPB_SKIncomingRatchetVSgMR);
    lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
    swift_allocError();
    *v26 = 5;
    swift_willThrow();
    v27 = a1;
    v28 = a2;
LABEL_12:
    outlined consume of Data._Representation(v27, v28);
    type metadata accessor for SKIncomingRatchet(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v82 = v14;
    v80 = v11;
    v83 = a1;
    v84 = a2;
    v88 = 0;
    (*(v20 + 56))(v18, 0, 1, v19);
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v18, v22, type metadata accessor for MPPB_SKIncomingRatchet);
    v29 = (v22 + *(v19 + 24));
    v30 = *v29;
    v31 = v29[1];
    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v29;
    }

    v81 = v32;
    if (v31 >> 60 == 15)
    {
      isUniquelyReferenced_nonNull_native = 0xC000000000000000;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v31;
    }

    outlined copy of Data?(v30, v31);
    if (one-time initialization token for statusKitRatchetStep != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v34 = statusKitRatchetStep;
      v35 = unk_280F9FE80;
      v24 = *(&xmmword_280F9FE88 + 1);
      v36 = xmmword_280F9FE88;
      v37 = qword_280F9FE98;
      v38 = byte_280F9FEA0;
      *(&v97 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMR);
      v98 = &protocol witness table for HKDFRatchet<A>;
      v39 = swift_allocObject();
      *&v96 = v39;
      *(v39 + 16) = v34;
      *(v39 + 24) = v35;
      *(v39 + 32) = v36;
      *(v39 + 40) = v24;
      *(v39 + 48) = v37;
      *(v39 + 56) = v38;
      outlined copy of Data._Representation(v34, v35);
      outlined copy of Data._Representation(v36, v24);
      v40 = v82;
      v41 = v88;
      SymmetricRatchet.init(data:step:)(v81, isUniquelyReferenced_nonNull_native, &v96, v82);
      if (v41)
      {
        outlined destroy of SymmetricRatchet(v22, type metadata accessor for MPPB_SKIncomingRatchet);
        v27 = v83;
        v28 = v84;
        goto LABEL_12;
      }

      v43 = v99;
      _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v40, &v99[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet], type metadata accessor for SymmetricRatchet);
      v44 = (v22 + *(v19 + 28));
      v45 = *v44;
      v46 = v44[1];
      if (v46 >> 60 == 15)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v44;
      }

      v48 = 0xC000000000000000;
      if (v46 >> 60 != 15)
      {
        v48 = v46;
      }

      *&v96 = v47;
      *(&v96 + 1) = v48;
      outlined copy of Data?(v45, v46);
      v49 = v80;
      P256.Signing.PublicKey.init<A>(compactRepresentation:)();
      v81 = 0;
      (*(v86 + 32))(&v43[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey], v49, v87);
      v82 = v22;
      v50 = *v22;
      v88 = *(*v22 + 16);
      if (!v88)
      {
        break;
      }

      v22 = 0;
      v51 = *(v85 + 20);
      v52 = v91;
      isUniquelyReferenced_nonNull_native = v92;
      v87 = v91 + *(v85 + 24);
      v53 = (v91 + v51);
      v54 = v89;
      v55 = v90;
      v86 = v50 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v56 = v94;
      v57 = (v93 + 32);
      v85 = v93 + 40;
      v19 = MEMORY[0x277D84F98];
      while (v22 < *(v50 + 16))
      {
        outlined init with copy of SymmetricRatchet(v86 + *(v54 + 72) * v22, v52, type metadata accessor for MPPB_KeyAndIndex);
        if (*(v87 + 8))
        {
          v58 = 0;
        }

        else
        {
          v58 = *v87;
        }

        if (v58 >> 16)
        {
          goto LABEL_45;
        }

        v59 = *v53;
        v60 = v53[1];
        if (v60 >> 60 == 15)
        {
          v61 = 0;
        }

        else
        {
          v61 = *v53;
        }

        v62 = 0xC000000000000000;
        if (v60 >> 60 != 15)
        {
          v62 = v53[1];
        }

        *&v96 = v61;
        *(&v96 + 1) = v62;
        outlined copy of Data?(v59, v60);
        SymmetricKey.init<A>(data:)();
        v63 = v55;
        v64 = *v57;
        (*v57)(isUniquelyReferenced_nonNull_native, v63, v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v96 = v19;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
        v67 = *(v19 + 16);
        v68 = (v66 & 1) == 0;
        v69 = __OFADD__(v67, v68);
        v70 = v67 + v68;
        if (v69)
        {
          goto LABEL_46;
        }

        v71 = v66;
        if (*(v19 + 24) >= v70)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = v65;
            specialized _NativeDictionary.copy()();
            v65 = v76;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v70, isUniquelyReferenced_nonNull_native);
          v65 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
          if ((v71 & 1) != (v72 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }
        }

        isUniquelyReferenced_nonNull_native = v92;
        v73 = v93;
        v19 = v96;
        if (v71)
        {
          v56 = v94;
          (*(v93 + 40))(*(v96 + 56) + *(v93 + 72) * v65, v92, v94);
          v52 = v91;
          outlined destroy of SymmetricRatchet(v91, type metadata accessor for MPPB_KeyAndIndex);
        }

        else
        {
          *(v96 + 8 * (v65 >> 6) + 64) |= 1 << v65;
          *(*(v19 + 48) + 2 * v65) = v58;
          v56 = v94;
          v64(*(v19 + 56) + *(v73 + 72) * v65, isUniquelyReferenced_nonNull_native, v94);
          v52 = v91;
          outlined destroy of SymmetricRatchet(v91, type metadata accessor for MPPB_KeyAndIndex);
          v74 = *(v19 + 16);
          v69 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v69)
          {
            goto LABEL_47;
          }

          *(v19 + 16) = v75;
        }

        ++v22;
        v54 = v89;
        v55 = v90;
        if (v88 == v22)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
    }

    v19 = MEMORY[0x277D84F98];
LABEL_43:
    outlined destroy of SymmetricRatchet(v82, type metadata accessor for MPPB_SKIncomingRatchet);
    v77 = v99;
    *&v99[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys] = v19;
    v78 = type metadata accessor for SKIncomingRatchet(0);
    v95.receiver = v77;
    v95.super_class = v78;
    v24 = objc_msgSendSuper2(&v95, sel_init);
    outlined consume of Data._Representation(v83, v84);
  }

  return v24;
}

uint64_t @objc SKOutgoingRatchet.init(data:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  return a5(v7, v9);
}

void (*SKIncomingRatchet.init(key:index:signingKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(char *, uint64_t)
{
  *&v54 = a4;
  *(&v54 + 1) = a5;
  v48 = a3;
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SymmetricRatchet(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v13;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  *&v58 = a1;
  *(&v58 + 1) = a2;
  v55 = a1;
  v56 = a2;
  outlined copy of Data._Representation(a1, a2);
  SymmetricKey.init<A>(data:)();
  v51 = v15;
  v52 = v20;
  v21 = *(v15 + 16);
  v53 = v14;
  v21(v18, v20, v14);
  if (one-time initialization token for statusKitRatchetStep != -1)
  {
    swift_once();
  }

  v22 = statusKitRatchetStep;
  v23 = unk_280F9FE80;
  v24 = xmmword_280F9FE88;
  v25 = qword_280F9FE98;
  v26 = byte_280F9FEA0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA256VGMR);
  v60 = &protocol witness table for HKDFRatchet<A>;
  v27 = swift_allocObject();
  *&v58 = v27;
  *(v27 + 16) = v22;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(v27 + 48) = v25;
  *(v27 + 56) = v26;
  v28 = MEMORY[0x277D84F98];
  *&v12[*(v9 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v22, v23);
  outlined copy of Data._Representation(v24, *(&v24 + 1));
  if (SymmetricKey.bitCount.getter() > 255)
  {
    outlined init with take of ContiguousBytes(&v58, &v12[*(v9 + 24)]);
    v34 = v48;
    v35 = v51;
    v36 = v53;
    (*(v51 + 32))(v12, v18, v53);
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = v34;
    v37 = v47;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v12, v47, type metadata accessor for SymmetricRatchet);
    v38 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet;
    v39 = v61;
    _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v37, &v61[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_ratchet], type metadata accessor for SymmetricRatchet);
    v40 = v54;
    v58 = v54;
    outlined copy of Data._Representation(v54, *(&v54 + 1));
    v31 = v49;
    v41 = v50;
    P256.Signing.PublicKey.init<A>(compactRepresentation:)();
    if (!v41)
    {
      (*(v35 + 8))(v52, v36);
      (*(v45 + 32))(&v39[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey], v31, v46);
      *&v39[OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys] = v28;
      v43 = type metadata accessor for SKIncomingRatchet(0);
      v57.receiver = v39;
      v57.super_class = v43;
      v31 = objc_msgSendSuper2(&v57, sel_init);
      outlined consume of Data._Representation(v40, *(&v40 + 1));
      outlined consume of Data._Representation(v55, v56);
      return v31;
    }

    outlined consume of Data._Representation(v40, *(&v40 + 1));
    outlined consume of Data._Representation(v55, v56);
    (*(v35 + 8))(v52, v36);
    outlined destroy of SymmetricRatchet(&v39[v38], type metadata accessor for SymmetricRatchet);
  }

  else
  {
    v29 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CC51D0], v29);
    swift_willThrow();
    outlined consume of Data._Representation(v54, *(&v54 + 1));
    outlined consume of Data._Representation(v55, v56);
    v31 = *(v51 + 8);
    v32 = v18;
    v33 = v53;
    v31(v32, v53);
    v31(v52, v33);
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  type metadata accessor for SKIncomingRatchet(0);
  swift_deallocPartialClassInstance();
  return v31;
}

void SKIncomingRatchet.openStatus(index:encryptedMessage:authenticating:signature:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v126 = a7;
  *(&v123 + 1) = a5;
  *&v123 = a4;
  *&v125 = a2;
  *(&v125 + 1) = a3;
  v121 = a1;
  v8 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection19MPPB_SKPaddedStatusVSgMd, &_s17MessageProtection19MPPB_SKPaddedStatusVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v104 - v11;
  v117 = type metadata accessor for MPPB_SKPaddedStatus(0);
  v113 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v115 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v104 - v16;
  v17 = type metadata accessor for SymmetricKey();
  v119 = *(v17 - 8);
  v120 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v116 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v104 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v104 - v26;
  v28 = type metadata accessor for AES.GCM.SealedBox();
  v122 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for P256.Signing.ECDSASignature();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v129 = a6;
  *(&v129 + 1) = v126;
  outlined copy of Data._Representation(a6, v126);
  v35 = lazy protocol witness table accessor for type Data and conformance Data();
  v36 = v127;
  P256.Signing.ECDSASignature.init<A>(rawRepresentation:)();
  if (!v36)
  {
    v108 = v27;
    v105 = v22;
    v106 = v24;
    v107 = v30;
    v109 = v28;
    v110 = v31;
    v126 = v32;
    v37 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_signingPublicKey;
    v38 = v125;
    v128 = v125;
    *(&v130 + 1) = MEMORY[0x277CC9318];
    v131 = MEMORY[0x277CC9300];
    v39 = v123;
    v129 = v123;
    v127 = 0;
    v40 = __swift_project_boxed_opaque_existential_1(&v129, MEMORY[0x277CC9318]);
    v41 = *v40;
    v42 = v40[1];
    outlined copy of Data._Representation(v38, *(&v38 + 1));
    v43 = v37;
    outlined copy of Data._Representation(v39, *(&v39 + 1));
    v44 = v127;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v41, v42, &v128);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    v129 = v128;
    v45 = v124;
    LOBYTE(v41) = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
    outlined consume of Data._Representation(v129, *(&v129 + 1));
    if ((v41 & 1) == 0)
    {
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();
      (*(v126 + 8))(v34, v110);
      return;
    }

    v46 = v125;
    outlined copy of Data._Representation(v125, *(&v125 + 1));
    v47 = v108;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v46, *(&v46 + 1));
    v48 = v126;
    if (v44)
    {

      (*(v122 + 56))(v47, 1, 1, v109);
      outlined destroy of TetraSessionStates?(v47, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v49 = 3;
      swift_willThrow();
LABEL_13:
      (*(v48 + 8))(v34, v110);
      return;
    }

    *(&v125 + 1) = v43;
    v127 = 0;
    v51 = v122;
    v52 = v109;
    (*(v122 + 56))(v47, 0, 1, v109);
    v53 = v107;
    (*(v51 + 32))(v107, v47, v52);
    v54 = v121;
    if (v121 > 0xFFFE)
    {
      lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      (*(v51 + 8))(v53, v52);
      goto LABEL_13;
    }

    *&v125 = v35;
    v55 = OBJC_IVAR____TtC17MessageProtection17SKIncomingRatchet_messageKeys;
    swift_beginAccess();
    v56 = *(v45 + v55);
    if (*(v56 + 16))
    {
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
      if (v58)
      {
        v59 = v118;
        v60 = v119;
        v61 = *(v119 + 72);
        v62 = *(v56 + 56) + v61 * v57;
        v63 = *(v119 + 16);
        v64 = v120;
        v63(v118, v62, v120);
        (*(v60 + 56))(v59, 0, 1, v64);
        outlined destroy of TetraSessionStates?(v59, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        v65 = *(v124 + v55);
        if (*(v65 + 16))
        {
          *(&v123 + 1) = v34;
          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v121);
          if (v67)
          {
            v68 = *(v65 + 56) + v66 * v61;
            v69 = v106;
            v70 = v120;
            v63(v106, v68, v120);
            goto LABEL_22;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    v72 = v118;
    *&v123 = *(v119 + 56);
    (v123)(v118, 1, 1, v120);
    outlined destroy of TetraSessionStates?(v72, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    swift_beginAccess();
    v73 = v127;
    SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v54, 1, v105);
    swift_endAccess();
    if (!v73)
    {
      *(&v123 + 1) = v34;
      v127 = 0;
      v70 = v120;
      v63 = *(v119 + 16);
      v79 = v115;
      v80 = v105;
      v63(v115, v105, v120);
      (v123)(v79, 0, 1, v70);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v79, v121);
      swift_endAccess();
      v69 = v106;
      (*(v119 + 32))(v106, v80, v70);
      v51 = v122;
LABEL_22:
      v81 = v116;
      v63(v116, v69, v70);
      v82 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v84 = v107;
      if (v83 >> 60 != 15)
      {
        *&v129 = v82;
        *(&v129 + 1) = v83;
        v85 = v127;
        v86 = static AES.GCM.open<A>(_:using:authenticating:)();
        v88 = v126;
        v89 = v81;
        v90 = *(&v123 + 1);
        v91 = v117;
        v92 = v119;
        if (v85)
        {

          outlined consume of Data._Representation(v129, *(&v129 + 1));
          v93 = *(v92 + 8);
          v94 = v120;
          v93(v89, v120);
          lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
          swift_allocError();
          *v95 = 4;
          swift_willThrow();
          v93(v106, v94);
          (*(v51 + 8))(v84, v109);
          (*(v88 + 8))(v90, v110);
        }

        else
        {
          v96 = v86;
          v97 = v87;
          outlined consume of Data._Representation(v129, *(&v129 + 1));
          v98 = v89;
          v99 = *(v92 + 8);
          v99(v98, v120);
          v131 = 0;
          v129 = 0u;
          v130 = 0u;
          outlined copy of Data._Representation(v96, v97);
          BinaryDecodingOptions.init()();
          _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type MPPB_SKPaddedStatus and conformance MPPB_SKPaddedStatus, type metadata accessor for MPPB_SKPaddedStatus, &protocol conformance descriptor for MPPB_SKPaddedStatus);
          v100 = v114;
          Message.init(serializedData:extensions:partial:options:)();
          v101 = v109;
          outlined consume of Data._Representation(v96, v97);
          v99(v106, v120);
          (*(v51 + 8))(v107, v101);
          (*(v126 + 8))(*(&v123 + 1), v110);
          (*(v113 + 56))(v100, 0, 1, v91);
          v102 = v111;
          _s17MessageProtection16MPPB_KeyAndIndexVWObTm_0(v100, v111, type metadata accessor for MPPB_SKPaddedStatus);
          outlined copy of Data?(*(v102 + *(v91 + 20)), *(v102 + *(v91 + 20) + 8));
          outlined destroy of SymmetricRatchet(v102, type metadata accessor for MPPB_SKPaddedStatus);
        }

        return;
      }

LABEL_30:
      __break(1u);
      return;
    }

    *&v129 = v73;
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v75 = swift_dynamicCast();
    v76 = v107;
    v77 = v122;
    if (v75)
    {
      if (v132 == 3)
      {

        lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
        swift_allocError();
        *v103 = 2;
        goto LABEL_27;
      }

      if (v132 == 1)
      {

        lazy protocol witness table accessor for type StatusKitErrors and conformance StatusKitErrors();
        swift_allocError();
        *v78 = 0;
LABEL_27:
        swift_willThrow();
        (*(v77 + 8))(v76, v52);
        (*(v48 + 8))(v34, *(&v46 + 1));

        return;
      }
    }

    swift_willThrow();
    (*(v77 + 8))(v76, v52);
    (*(v48 + 8))(v34, *(&v46 + 1));
  }
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      outlined consume of Data._Representation(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_0(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = MEMORY[0x231890D50]();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  closure #1 in Data.init<A>(_:)(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return AES.GCM.SealedBox.init(combined:)();
}