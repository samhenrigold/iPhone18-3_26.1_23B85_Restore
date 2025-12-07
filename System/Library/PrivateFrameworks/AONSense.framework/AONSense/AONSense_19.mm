int *Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, 6);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity;
          goto LABEL_5;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity;
LABEL_5:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
          v3 = v6;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizontalVelocity);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertVelocity;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity;
          goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_HorizontalVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizontalVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
}

uint64_t closure #2 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_HorizWithVertVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
}

uint64_t closure #3 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_HorizWithUncertaintyVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
}

uint64_t closure #4 in Proto_Gnss_Emergency_VelocityInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMd, &_s10ALProtobuf53Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_VelocityInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_VelocityEstimate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
        type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_VelocityEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_VelocityInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityInfo and conformance Proto_Gnss_Emergency_VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityEstimate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PositionReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_PositionReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionReport._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          v12 = v4;
          if (result == 5)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssLocationInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_LocEstimate;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate;
          }

          goto LABEL_23;
        }

        if (result == 7)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityEstimate;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate;
LABEL_23:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 8)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (result > 2)
        {
          v12 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_LocationInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo;
          }

          goto LABEL_23;
        }

        if (result == 1)
        {
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_24;
        }

        if (result != 2)
        {
          goto LABEL_25;
        }
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource, 8, MEMORY[0x277D21848]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssLocationInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_LocEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_PositionReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityEstimate and conformance Proto_Gnss_Emergency_VelocityEstimate, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_VelocityEstimate);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
}

BOOL closure #1 in static Proto_Gnss_Emergency_PositionReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v131 = *(v4 - 8);
  v132 = v4;
  MEMORY[0x28223BE20](v4);
  v127 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMR);
  MEMORY[0x28223BE20](v130);
  v7 = &v124 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v128 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = &v124 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v136 = *(v12 - 8);
  v137 = v12;
  MEMORY[0x28223BE20](v12);
  v129 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMR);
  MEMORY[0x28223BE20](v135);
  v138 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v145 = &v124 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v142 = *(v19 - 8);
  v143 = v19;
  MEMORY[0x28223BE20](v19);
  v134 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v141);
  v144 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v152 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v153 = &v124 - v25;
  v26 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v149 = *(v26 - 8);
  v150 = v26;
  MEMORY[0x28223BE20](v26);
  v140 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v148);
  v151 = &v124 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v146 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v154 = &v124 - v32;
  v33 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v155 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v147 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v35);
  v37 = &v124 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v124 - v42;
  swift_beginAccess();
  v44 = *(a1 + 16);
  swift_beginAccess();
  v45 = *(a2 + 16);
  if (v44 == 9)
  {
    if (v45 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v47 = *(a1 + 20);
    v126 = a1;
    v48 = *(a1 + 24);
    swift_beginAccess();
    v49 = *(a2 + 24);
    if (v48)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v47 != *(a2 + 20))
      {
        v49 = 1;
      }

      if (v49)
      {
        return 0;
      }
    }

    v125 = v7;
    v156 = a2;
    v50 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v51 = v126;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v50, v43, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v52 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v53 = *(v35 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v156 + v52, &v37[v53], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v54 = *(v155 + 48);
    if (v54(v37, 1, v33) == 1)
    {

      outlined destroy of Any?(v43, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v54(&v37[v53], 1, v33) == 1)
      {
        outlined destroy of Any?(v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
LABEL_19:
        v60 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v61 = v154;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v60, v154, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        v62 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
        swift_beginAccess();
        v63 = *(v148 + 48);
        v64 = v151;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v151, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v156 + v62, v64 + v63, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
        v65 = v150;
        v66 = *(v149 + 48);
        if (v66(v64, 1, v150) == 1)
        {
          outlined destroy of Any?(v61, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          v67 = v66(v64 + v63, 1, v65);
          v69 = v152;
          v68 = v153;
          if (v67 == 1)
          {
            outlined destroy of Any?(v64, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            goto LABEL_26;
          }
        }

        else
        {
          v70 = v146;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v146, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          v71 = v66(v64 + v63, 1, v65);
          v72 = v152;
          v68 = v153;
          if (v71 != 1)
          {
            v73 = v64 + v63;
            v74 = v140;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v73, v140, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            LODWORD(v155) = specialized static Proto_Gnss_Emergency_LocationInfo.== infix(_:_:)(v70, v74);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v74, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            outlined destroy of Any?(v154, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
            outlined destroy of Any?(v64, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
            v69 = v72;
            if ((v155 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_26:
            v75 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v75, v68, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v76 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
            v77 = v156;
            swift_beginAccess();
            v78 = *(v141 + 48);
            v79 = v68;
            v80 = v68;
            v81 = v144;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v144, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v82 = v81;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77 + v76, v81 + v78, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
            v83 = v143;
            v84 = *(v142 + 48);
            if (v84(v81, 1, v143) == 1)
            {
              outlined destroy of Any?(v80, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              v85 = v84(v81 + v78, 1, v83);
              v86 = v145;
              if (v85 == 1)
              {
                outlined destroy of Any?(v81, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
LABEL_33:
                v91 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v91, v86, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v92 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
                v93 = v86;
                v94 = v156;
                swift_beginAccess();
                v95 = *(v135 + 48);
                v96 = v138;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93, v138, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v82 = v96;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v94 + v92, v96 + v95, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                v97 = v137;
                v98 = *(v136 + 48);
                if (v98(v96, 1, v137) == 1)
                {
                  outlined destroy of Any?(v93, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  v99 = v98(v96 + v95, 1, v97);
                  v100 = v139;
                  if (v99 == 1)
                  {
                    outlined destroy of Any?(v96, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
LABEL_40:
                    v106 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    swift_beginAccess();
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51 + v106, v100, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v107 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
                    v108 = v156;
                    swift_beginAccess();
                    v109 = *(v130 + 48);
                    v110 = v125;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v100, v125, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v82 = v110;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108 + v107, v110 + v109, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    v111 = v132;
                    v112 = *(v131 + 48);
                    if (v112(v110, 1, v132) == 1)
                    {
                      outlined destroy of Any?(v100, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                      if (v112(v110 + v109, 1, v111) == 1)
                      {
                        outlined destroy of Any?(v110, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
LABEL_52:
                        v117 = v51 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
                        swift_beginAccess();
                        v118 = *v117;
                        v119 = *(v117 + 4);

                        v120 = v156 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
                        swift_beginAccess();
                        v121 = *v120;
                        v122 = *(v120 + 4);

                        if ((v119 & 1) == 0)
                        {
                          if (v118 == v121)
                          {
                            v123 = v122;
                          }

                          else
                          {
                            v123 = 1;
                          }

                          return (v123 & 1) == 0;
                        }

                        return v122 != 0;
                      }

                      goto LABEL_45;
                    }

                    v113 = v128;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v110, v128, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    if (v112(v110 + v109, 1, v111) == 1)
                    {
                      outlined destroy of Any?(v139, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v113, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
LABEL_45:
                      v55 = &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMd;
                      v56 = &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSg_ADtMR;
                      goto LABEL_46;
                    }

                    v114 = v110 + v109;
                    v115 = v127;
                    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v114, v127, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    v116 = specialized static Proto_Gnss_Emergency_VelocityEstimate.== infix(_:_:)(v113, v115);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v115, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    outlined destroy of Any?(v139, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v113, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
                    outlined destroy of Any?(v110, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_VelocityEstimateVSgMR);
                    if (v116)
                    {
                      goto LABEL_52;
                    }

LABEL_48:

                    return 0;
                  }
                }

                else
                {
                  v101 = v133;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v133, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  v102 = v98(v96 + v95, 1, v97);
                  v100 = v139;
                  if (v102 != 1)
                  {
                    v103 = v96 + v95;
                    v104 = v129;
                    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v103, v129, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    v105 = specialized static Proto_Gnss_Emergency_LocEstimate.== infix(_:_:)(v101, v104);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v104, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    outlined destroy of Any?(v145, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v101, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                    outlined destroy of Any?(v96, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                    if ((v105 & 1) == 0)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_40;
                  }

                  outlined destroy of Any?(v145, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSgMR);
                  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v101, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
                }

                v55 = &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMd;
                v56 = &_s10ALProtobuf32Proto_Gnss_Emergency_LocEstimateVSg_ADtMR;
LABEL_46:
                v57 = v82;
                goto LABEL_47;
              }
            }

            else
            {
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81, v69, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              v87 = v84(v81 + v78, 1, v83);
              v86 = v145;
              if (v87 != 1)
              {
                v88 = v81 + v78;
                v89 = v134;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v88, v134, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                v90 = specialized static Proto_Gnss_Emergency_GanssLocationInfo.== infix(_:_:)(v69, v89);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v89, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                outlined destroy of Any?(v153, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v69, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
                outlined destroy of Any?(v81, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
                if ((v90 & 1) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_33;
              }

              outlined destroy of Any?(v153, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v69, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
            }

            v55 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMd;
            v56 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssLocationInfoVSg_ADtMR;
            goto LABEL_46;
          }

          outlined destroy of Any?(v154, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
        }

        v55 = &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMd;
        v56 = &_s10ALProtobuf33Proto_Gnss_Emergency_LocationInfoVSg_ADtMR;
        v57 = v64;
LABEL_47:
        outlined destroy of Any?(v57, v55, v56);
        goto LABEL_48;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v41, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v54(&v37[v53], 1, v33) != 1)
      {
        v58 = v147;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v37[v53], v147, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v51 = v126;

        v59 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v41, v58);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v58, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v43, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v37, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v59 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      outlined destroy of Any?(v43, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    v55 = &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd;
    v56 = &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR;
    v57 = v37;
    goto LABEL_47;
  }

  result = 0;
  if (v45 != 9 && v44 == v45)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReport and conformance Proto_Gnss_Emergency_PositionReport, type metadata accessor for Proto_Gnss_Emergency_PositionReport, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_4;
        }

        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 7 || result == 8 || result == 9)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, 7);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_GanssMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  if (*(a1 + *(result + 36)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssMeasurementElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  *(a2 + a1[9]) = 6;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssSignalMeasurementInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 32) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementElement and conformance Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
        type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  if (*(v5 + *(result + 20)) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalMeasurementInfo and conformance Proto_Gnss_Emergency_GanssSignalMeasurementInfo, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams;
          goto LABEL_19;
        }

        if (result == 7)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss;
LABEL_19:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v10 = result;
  if (*(v5 + result[5]) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, 7);
  closure #8 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 40), v7, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMd, &_s10ALProtobuf44Proto_Gnss_Emergency_GanssTimeMeasuredParamsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
}

uint64_t closure #8 in Proto_Gnss_Emergency_GanssMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 48), v7, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMd, &_s10ALProtobuf047Proto_Gnss_Emergency_GanssMeasurementsForSingleE0VSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss and conformance Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssMeasurements@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 6;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v12 = a1[11];
  v13 = a1[12];
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v16 = *(*(v15 - 8) + 56);

  return v16(a2 + v13, 1, 1, v15);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurements);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurementElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 8 || result == 9)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, 6);
  closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator, &type metadata for Proto_Gnss_Emergency_MultipathIndicator);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsMeasurementElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  *(a2 + a1[11]) = 6;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = &v29 - v6;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 44) = 1;
  *(v1 + 48) = v7;
  v8 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v29 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  v31 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v33 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  v13 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  LOBYTE(v12) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 20) = v12;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 24);
  LOBYTE(v14) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v12;
  *(v1 + 28) = v14;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 32);
  v15 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v12;
  *(v1 + 36) = v15;
  swift_beginAccess();
  LODWORD(v12) = *(a1 + 40);
  v16 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v12;
  *(v1 + 44) = v16;
  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;
  v18 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v19 = v30;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v30, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v20 = v29;
  swift_beginAccess();

  outlined assign with take of Proto_Gpsd_Response?(v19, v1 + v20, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  swift_endAccess();
  v21 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  LODWORD(v18) = *v21;
  LOBYTE(v21) = *(v21 + 4);
  v22 = v31;
  swift_beginAccess();
  *v22 = v18;
  *(v22 + 4) = v21;
  v23 = a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  LODWORD(v21) = *v23;
  LOBYTE(v23) = *(v23 + 4);
  v24 = v32;
  swift_beginAccess();
  *v24 = v21;
  *(v24 + 4) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v26 = v34;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v34, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);

  v27 = v33;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v27, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements._StorageClass.__deallocating_deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GpsMeasurements._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_23;
      }

LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result <= 6)
    {
      if (result == 5)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_24;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams;
      v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasuredParams;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams;
    }

    else
    {
      if (result == 7 || result == 8)
      {
LABEL_23:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_24;
      }

      if (result != 9)
      {
        goto LABEL_25;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD;
      v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD;
    }

    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_24:
    swift_endAccess();
    goto LABEL_25;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  result = swift_beginAccess();
  if ((*(v9 + 20) & 1) == 0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((*(v9 + 28) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 36) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((*(v9 + 44) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if (*(*(v9 + 48) + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurementElement and conformance Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurementElement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #5 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(v9, a1, a2, a3);
    v11 = v9 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
    swift_beginAccess();
    if ((*(v11 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent, 8, MEMORY[0x277D21860]);
    closure #8 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_GpsMeasurements.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GpsMeasurements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
  MEMORY[0x28223BE20](v64);
  v67 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v61 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v71 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  swift_beginAccess();
  v24 = *(a2 + 20);
  if (v23)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 16))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 24);
  v26 = *(a1 + 28);
  swift_beginAccess();
  v27 = *(a2 + 28);
  if (v26)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 24))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 32);
  v29 = *(a1 + 36);
  swift_beginAccess();
  v30 = *(a2 + 36);
  if (v29)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 32))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 40);
  v32 = *(a1 + 44);
  swift_beginAccess();
  v33 = *(a2 + 44);
  if (v32)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 40))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = *(a2 + 48);

  LODWORD(v62) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(v34, v35, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement, specialized static Proto_Gnss_Emergency_GpsMeasurementElement.== infix(_:_:));

  if ((v62 & 1) == 0)
  {
    goto LABEL_32;
  }

  v36 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v36, v21, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v37 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  v38 = *(v14 + 48);
  v39 = v71;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v71, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v62 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v37, v39 + v38, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  v40 = *(v70 + 48);
  if (v40(v39, 1, v11) == 1)
  {
    outlined destroy of Any?(v21, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    if (v40(v39 + v62, 1, v11) == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
      goto LABEL_35;
    }

LABEL_31:
    outlined destroy of Any?(v39, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSg_ADtMR);
    goto LABEL_32;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v19, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if (v40(v39 + v62, 1, v11) == 1)
  {
    outlined destroy of Any?(v21, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    goto LABEL_31;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v39 + v62, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v42 = specialized static Proto_Gnss_Emergency_GpsTimeMeasuredParams.== infix(_:_:)(v19, v13);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  outlined destroy of Any?(v21, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v19, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  outlined destroy of Any?(v39, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_GpsTimeMeasuredParamsVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity);
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 4);
  v46 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  if (v45)
  {
    v47 = v68;
    v48 = v69;
    if ((*(v46 + 4) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v47 = v68;
    v48 = v69;
    if ((*(v46 + 4) & 1) != 0 || v44 != *v46)
    {
      goto LABEL_32;
    }
  }

  v49 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent);
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 4);
  v52 = a2 + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  if (v51)
  {
    if (*(v52 + 4))
    {
      goto LABEL_45;
    }

LABEL_32:

    return 0;
  }

  if ((*(v52 + 4) & 1) != 0 || v50 != *v52)
  {
    goto LABEL_32;
  }

LABEL_45:
  v53 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v53, v48, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v54 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  v55 = *(v64 + 48);
  v56 = v67;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v67, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v54, v56 + v55, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  v57 = v66;
  v58 = *(v65 + 48);
  if (v58(v56, 1, v66) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v47, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    if (v58(v56 + v55, 1, v57) == 1)
    {

      outlined destroy of Any?(v69, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v47, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
      goto LABEL_50;
    }

    v59 = v63;
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v56 + v55, v63, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    v60 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v47, v59, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    outlined destroy of Any?(v69, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v47, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    outlined destroy of Any?(v56, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
    return (v60 & 1) != 0;
  }

  outlined destroy of Any?(v48, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if (v58(v56 + v55, 1, v57) != 1)
  {
LABEL_50:
    outlined destroy of Any?(v56, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v56, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsMeasurements(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_MeasurementReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReport._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result != 1)
        {
          if (result == 2)
          {
            goto LABEL_20;
          }

          if (result != 3)
          {
            goto LABEL_22;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
          goto LABEL_19;
        }

        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        if (result <= 5)
        {
          v12 = v4;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurements;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements;
          }

LABEL_19:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_21;
        }

        if (result == 6)
        {
LABEL_20:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_21;
        }

        if (result != 7)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_21:
      swift_endAccess();
LABEL_22:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements, 6, MEMORY[0x277D21860]);
  closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssMeasurements and conformance Proto_Gnss_Emergency_GanssMeasurements, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

BOOL closure #1 in static Proto_Gnss_Emergency_MeasurementReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMR);
  MEMORY[0x28223BE20](v96);
  v7 = &v90 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v90 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v95 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR);
  MEMORY[0x28223BE20](v101);
  v104 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v90 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v108 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v100 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v90 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v33 = *(a1 + 20);
    v92 = a1;
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    v91 = v7;
    v106 = a2;
    v36 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v37 = v92;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v36, v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v38 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v39 = *(v21 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v40 = v106 + v38;
    v41 = v106;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, &v23[v39], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v42 = *(v108 + 48);
    if (v42(v23, 1, v19) == 1)
    {

      outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v42(&v23[v39], 1, v19) == 1)
      {
        outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v27, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v42(&v23[v39], 1, v19) != 1)
      {
        v43 = v100;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v23[v39], v100, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v37 = v92;

        v44 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v27, v43);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v43, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v45 = v41;
        v46 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v47 = v107;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v46, v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v48 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v49 = *(v101 + 48);
        v50 = v104;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v104, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45 + v48, v50 + v49, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v51 = v103;
        v52 = *(v102 + 48);
        if (v52(v50, 1, v103) == 1)
        {
          outlined destroy of Any?(v47, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v53 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v53 == 1)
          {
            outlined destroy of Any?(v50, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
LABEL_29:
            v67 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v67, v54, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v68 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
            v69 = v106;
            swift_beginAccess();
            v70 = *(v96 + 48);
            v71 = v91;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v91, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v72 = v69 + v68;
            v73 = v71;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v72, v71 + v70, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
            v74 = v98;
            v75 = *(v97 + 48);
            if (v75(v71, 1, v98) == 1)
            {
              outlined destroy of Any?(v54, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              if (v75(v71 + v70, 1, v74) == 1)
              {
                outlined destroy of Any?(v71, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
LABEL_36:
                v81 = v37 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                v82 = *v81;
                v83 = *(v81 + 4);
                v84 = v106;
                v85 = v106 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
                swift_beginAccess();
                if (v83)
                {
                  if (*(v85 + 4))
                  {
LABEL_46:
                    v86 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v87 = *(v37 + v86);

                    v88 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v89 = *(v84 + v88);

                    if (v87 != 2)
                    {
                      return v89 != 2 && ((v87 ^ v89) & 1) == 0;
                    }

                    return v89 == 2;
                  }
                }

                else if ((*(v85 + 4) & 1) == 0 && v82 == *v85)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v76 = v71;
              v77 = v94;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v76, v94, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              if (v75(v73 + v70, 1, v74) != 1)
              {
                v78 = v73 + v70;
                v79 = v93;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v78, v93, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                v80 = specialized static Proto_Gnss_Emergency_GanssMeasurements.== infix(_:_:)(v77, v79);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v79, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                outlined destroy of Any?(v54, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
                outlined destroy of Any?(v73, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
                if ((v80 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              outlined destroy of Any?(v54, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
            }

            v57 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMd;
            v58 = &_s10ALProtobuf38Proto_Gnss_Emergency_GanssMeasurementsVSg_ADtMR;
            v59 = v73;
LABEL_40:
            outlined destroy of Any?(v59, v57, v58);
            goto LABEL_41;
          }
        }

        else
        {
          v55 = v99;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v99, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v56 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v56 != 1)
          {
            v60 = v50 + v49;
            v61 = v95;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v60, v95, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v62 = *(v51 + 20);
            v63 = *(v55 + v62);
            v64 = *(v61 + v62);
            if (v63 != v64)
            {

              v65 = closure #1 in static Proto_Gnss_Emergency_GpsMeasurements.== infix(_:_:)(v63, v64);

              if (!v65)
              {
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v59 = v50;
                v57 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd;
                v58 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v66 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v50, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            if ((v66 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v57 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd;
        v58 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR;
        v59 = v50;
        goto LABEL_40;
      }

      outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
    goto LABEL_41;
  }

  result = 0;
  if (v31 != 9 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &protocol conformance descriptor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &protocol conformance descriptor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementReport and conformance Proto_Gnss_Emergency_MeasurementReport, type metadata accessor for Proto_Gnss_Emergency_MeasurementReport, &protocol conformance descriptor for Proto_Gnss_Emergency_MeasurementReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAssistanceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_2;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_17;
      }

      if (result == 7)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      if (result == 4)
      {
        goto LABEL_2;
      }

LABEL_17:
      dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    }
  }
}

int *Proto_Gnss_Emergency_GpsAssistanceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = result;
  if (*(v3 + result[7] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[10] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeModelElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeModelElem);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssDataBitAssist.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 6)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

int *Proto_Gnss_Emergency_GanssDataBitAssist.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = result;
  if (*(v3 + result[6] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v9[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, 5);
  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssDataBitAssist@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + a1[10];
  *v11 = 0;
  v11[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssDataBitAssist);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssStoredSatDataElem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssStoredSatDataElem);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssNavModelAddData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
          goto LABEL_4;
        }

        if (result == 5)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GanssNavModelAddData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v6 = result;
  if (*(v3 + result[6] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v6[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssStoredSatDataElem and conformance Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssStoredSatDataElem);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssNavModelAddData@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssNavModelAddData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_HorizWithVertVelocity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          a4(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_HorizWithVertVelocity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + result[5] + 4))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + v7[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + v7[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + v7[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_HorizWithVertVelocity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = &v27 - v8;
  *(v1 + 16) = 7;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 32) = 1;
  *(v1 + 40) = v9;
  v10 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  v13 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v29 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v14;
  swift_beginAccess();
  LODWORD(v14) = *(a1 + 20);
  v16 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v14;
  *(v1 + 24) = v16;
  swift_beginAccess();
  v17 = *(a1 + 28);
  LOBYTE(v14) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v17;
  *(v1 + 32) = v14;
  swift_beginAccess();
  v18 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v18;
  v19 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  v20 = v28;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v28, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_beginAccess();

  outlined assign with take of Proto_Gpsd_Response?(v20, v1 + v10, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  v22 = v30;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v30, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v22, v1 + v12, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  v24 = v31;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v31, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);

  v25 = v29;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v24, v1 + v25, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.__deallocating_deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 3)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_22:
        swift_endAccess();
        goto LABEL_23;
      }

      if (result == 2 || result == 3)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_22;
      }

LABEL_23:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 5)
    {
      if (result == 6)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData;
        v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssNavModelAddData;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData;
      }

      else
      {
        if (result != 7)
        {
          goto LABEL_23;
        }

        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices;
        v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAddAssistDataChoices;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices;
      }
    }

    else
    {
      if (result == 4)
      {
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeModelElem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_22;
      }

      v12 = v4;
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist;
      v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssDataBitAssist;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist;
    }

    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_22;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 32) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (*(*(v9 + 40) + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeModelElem and conformance Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeModelElem);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  closure #4 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssDataBitAssist and conformance Proto_Gnss_Emergency_GanssDataBitAssist, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssDataBitAssist);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssNavModelAddData and conformance Proto_Gnss_Emergency_GanssNavModelAddData, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssNavModelAddData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_GanssAidRequestPerGanss.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAddAssistDataChoices and conformance Proto_Gnss_Emergency_GanssAddAssistDataChoices, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GanssAidRequestPerGanss.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMR);
  MEMORY[0x28223BE20](v85);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v79 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMR);
  MEMORY[0x28223BE20](v90);
  v93 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v88 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v96 = &v79 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v89 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }

LABEL_6:
    v82 = v7;
    swift_beginAccess();
    v33 = *(a1 + 20);
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v36 = *(a1 + 28);
    v37 = *(a1 + 32);
    swift_beginAccess();
    v38 = *(a2 + 32);
    if (v37)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v36 != *(a2 + 28))
      {
        v38 = 1;
      }

      if (v38)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v39 = a2;
    v40 = *(a1 + 40);
    swift_beginAccess();
    v41 = *(v39 + 40);

    v81 = v39;

    LOBYTE(v39) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(v40, v41, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem, type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem);

    if ((v39 & 1) == 0)
    {
      goto LABEL_34;
    }

    v42 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v42, v29, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v43 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    v44 = v81;
    swift_beginAccess();
    v45 = *(v21 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v23, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v80 = v45;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v43, &v23[v45], &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
    v46 = *(v97 + 48);
    if (v46(v23, 1, v19) == 1)
    {
      outlined destroy of Any?(v29, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      v47 = v46(&v23[v80], 1, v19);
      v48 = v44;
      if (v47 == 1)
      {
        outlined destroy of Any?(v23, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
LABEL_27:
        v55 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v56 = v96;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v55, v96, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v57 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
        swift_beginAccess();
        v58 = *(v90 + 48);
        v59 = v93;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v93, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48 + v57, v59 + v58, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v60 = v92;
        v61 = *(v91 + 48);
        if (v61(v59, 1, v92) == 1)
        {
          outlined destroy of Any?(v56, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
          v62 = v61(v59 + v58, 1, v60);
          v64 = v94;
          v63 = v95;
          if (v62 == 1)
          {
            outlined destroy of Any?(v59, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
LABEL_38:
            v71 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v71, v64, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            v72 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
            swift_beginAccess();
            v73 = *(v85 + 48);
            v74 = v82;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v82, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48 + v72, v74 + v73, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            v75 = v87;
            v76 = *(v86 + 48);
            if (v76(v74, 1, v87) == 1)
            {

              outlined destroy of Any?(v64, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
              if (v76(v74 + v73, 1, v75) == 1)
              {
                outlined destroy of Any?(v74, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
                return 1;
              }

              goto LABEL_43;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v74, v63, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            if (v76(v74 + v73, 1, v75) == 1)
            {

              outlined destroy of Any?(v64, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
LABEL_43:
              outlined destroy of Any?(v74, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSg_ADtMR);
              return 0;
            }

            v77 = v83;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v74 + v73, v83, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            v78 = specialized static Proto_Gnss_Emergency_GanssAddAssistDataChoices.== infix(_:_:)(v63, v77, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);

            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            outlined destroy of Any?(v64, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
            outlined destroy of Any?(v74, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GanssAddAssistDataChoicesVSgMR);
            return (v78 & 1) != 0;
          }

          goto LABEL_32;
        }

        v65 = v88;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, v88, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v66 = v61(v59 + v58, 1, v60);
        v67 = v94;
        v68 = v95;
        if (v66 == 1)
        {
          outlined destroy of Any?(v96, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v65, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
LABEL_32:
          v50 = &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMd;
          v51 = &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSg_ADtMR;
          v52 = v59;
          goto LABEL_33;
        }

        v69 = v59 + v58;
        v70 = v84;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v69, v84, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        LODWORD(v97) = specialized static Proto_Gnss_Emergency_GanssNavModelAddData.== infix(_:_:)(v65, v70);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v70, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        outlined destroy of Any?(v96, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v65, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
        outlined destroy of Any?(v59, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GanssNavModelAddDataVSgMR);
        v63 = v68;
        v64 = v67;
        if (v97)
        {
          goto LABEL_38;
        }

LABEL_34:

        return 0;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v27, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      v49 = v80;
      if (v46(&v23[v80], 1, v19) != 1)
      {
        v53 = &v23[v49];
        v54 = v89;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v53, v89, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        LODWORD(v97) = specialized static Proto_Gnss_Emergency_GanssDataBitAssist.== infix(_:_:)(v27, v54);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v54, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        outlined destroy of Any?(v29, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
        v48 = v44;
        outlined destroy of Any?(v23, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
        if ((v97 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      outlined destroy of Any?(v29, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    }

    v50 = &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMd;
    v51 = &_s10ALProtobuf39Proto_Gnss_Emergency_GanssDataBitAssistVSg_ADtMR;
    v52 = v23;
LABEL_33:
    outlined destroy of Any?(v52, v50, v51);
    goto LABEL_34;
  }

  result = 0;
  if (v31 != 7 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssAssistanceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GanssAssistanceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = result;
  if (*(v3 + result[7] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId();
    dispatch thunk of Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[10] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, 6);
  if (*(v3[1] + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAidRequestPerGanss and conformance Proto_Gnss_Emergency_GanssAidRequestPerGanss, type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAidRequestPerGanss);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAssistanceRequest@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  result = UnknownStorage.init()();
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  v10[4] = 1;
  v11 = a2 + v9;
  *v11 = 0;
  v11[4] = 1;
  v12 = a2 + a1[11];
  *v12 = 0;
  v12[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v12 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  v16 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  v18 = *(a1 + 20);
  v19 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v18;
  *(v1 + 24) = v19;
  v20 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v10, v1 + v11, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v7, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v7, v1 + v13, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  v23 = v25;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v25, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v23, v1 + v15, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_8;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
LABEL_7:
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
            v4 = v12;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 4:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAssistanceRequest;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest;
            goto LABEL_7;
          case 5:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAssistanceRequest;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAssistanceRequest and conformance Proto_Gnss_Emergency_GpsAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_AssistanceNeededReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssAssistanceRequest and conformance Proto_Gnss_Emergency_GanssAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
}

BOOL closure #1 in static Proto_Gnss_Emergency_AssistanceNeededReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v84 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMR);
  MEMORY[0x28223BE20](v75);
  v6 = &v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v83 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v82 = &v68 - v10;
  v80 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v74 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMR);
  MEMORY[0x28223BE20](v78);
  v81 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v77 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v85 = &v68 - v16;
  v17 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v86 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  v30 = *(a2 + 16);
  if (v29 == 9)
  {
    if (v30 != 9)
    {
      return 0;
    }

LABEL_6:
    v70 = v6;
    swift_beginAccess();
    v32 = *(a1 + 20);
    v72 = a1;
    v33 = *(a1 + 24);
    swift_beginAccess();
    v34 = *(a2 + 24);
    if (v33)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v32 != *(a2 + 20))
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    v69 = v19;
    v71 = a2;
    v35 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v36 = v72;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36 + v35, v28, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v37 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v38 = v71;
    swift_beginAccess();
    v39 = *(v20 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, v22, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v37, &v22[v39], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v40 = *(v86 + 48);
    if (v40(v22, 1, v17) == 1)
    {

      outlined destroy of Any?(v28, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v40(&v22[v39], 1, v17) == 1)
      {
        outlined destroy of Any?(v22, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
LABEL_19:
        v44 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v45 = v85;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36 + v44, v85, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        v46 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
        swift_beginAccess();
        v47 = *(v78 + 48);
        v48 = v81;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45, v81, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v71 + v46, v48 + v47, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
        v49 = *(v79 + 48);
        v50 = v80;
        if (v49(v48, 1, v80) == 1)
        {
          outlined destroy of Any?(v45, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          v51 = v49(v48 + v47, 1, v50);
          v52 = v84;
          v53 = v83;
          v54 = v82;
          if (v51 == 1)
          {
            outlined destroy of Any?(v48, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
LABEL_30:
            v60 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36 + v60, v54, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            v61 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
            swift_beginAccess();
            v62 = *(v75 + 48);
            v63 = v70;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v70, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v71 + v61, v63 + v62, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            v64 = *(v52 + 48);
            v65 = v76;
            if (v64(v63, 1, v76) == 1)
            {

              outlined destroy of Any?(v54, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
              if (v64(v63 + v62, 1, v65) == 1)
              {
                outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
                return 1;
              }

              goto LABEL_35;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v53, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            if (v64(v63 + v62, 1, v65) == 1)
            {

              outlined destroy of Any?(v54, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v53, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
LABEL_35:
              outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSg_ADtMR);
              return 0;
            }

            v66 = v73;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v63 + v62, v73, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            v67 = specialized static Proto_Gnss_Emergency_GanssAssistanceRequest.== infix(_:_:)(v53, v66);

            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v66, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            outlined destroy of Any?(v54, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v53, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
            outlined destroy of Any?(v63, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
            return (v67 & 1) != 0;
          }
        }

        else
        {
          v55 = v77;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v77, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          v56 = v49(v48 + v47, 1, v50);
          v52 = v84;
          v57 = v83;
          v54 = v82;
          if (v56 != 1)
          {
            v58 = v48 + v47;
            v59 = v74;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v58, v74, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            LODWORD(v86) = specialized static Proto_Gnss_Emergency_GpsAssistanceRequest.== infix(_:_:)(v55, v59);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            outlined destroy of Any?(v85, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
            v36 = v72;
            outlined destroy of Any?(v48, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
            v53 = v57;
            if (v86)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          outlined destroy of Any?(v85, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
        }

        outlined destroy of Any?(v48, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSg_ADtMR);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v26, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v40(&v22[v39], 1, v17) != 1)
      {
        v41 = v69;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v22[v39], v69, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v42 = v72;

        v43 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v26, v41);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v41, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v28, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        v36 = v42;
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v26, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v22, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v43 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      outlined destroy of Any?(v28, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v26, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    outlined destroy of Any?(v22, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);

LABEL_26:

    return 0;
  }

  result = 0;
  if (v30 != 9 && v29 == v30)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &protocol conformance descriptor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &protocol conformance descriptor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_AssistanceNeededReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceNeededReport and conformance Proto_Gnss_Emergency_AssistanceNeededReport, type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport, &protocol conformance descriptor for Proto_Gnss_Emergency_AssistanceNeededReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  if (*(v3 + *(result + 24) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Polygon@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EutranCellTime and conformance Proto_Gnss_Emergency_EutranCellTime, type metadata accessor for Proto_Gnss_Emergency_EutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_EutranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_ClsGeranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsGeranCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGeranCellTime and conformance Proto_Gnss_Emergency_ClsGeranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGeranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CtsEutranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsEutranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
    {
      v7 = v6;
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      v6 = v7;
    }

    if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CtsCdmaCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTowCdmaCellTime and conformance Proto_Gnss_Emergency_GpsTowCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CtsCdmaCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsCdmaCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellTimeData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_CtsCdmaCellTime;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
    type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime;
    v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_CtsEutranCellTime;
    v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CellTimeData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsEutranCellTime and conformance Proto_Gnss_Emergency_CtsEutranCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsEutranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
}

uint64_t closure #2 in Proto_Gnss_Emergency_CellTimeData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CtsCdmaCellTime and conformance Proto_Gnss_Emergency_CtsCdmaCellTime, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellTimeData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
        type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  result = a4(0);
  if (*(v11 + *(result + 20)) == 6)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    a5();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v8)
    {
      return result;
    }
  }

  a7(v11, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_CellTimeAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_TowAssist.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
LABEL_10:
          type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_TowAssist.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_TowAssist, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_TowAssist@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_TowAssist(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_TowAssist);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result > 2 || result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_4;
        }

        type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_TowAssist);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
LABEL_23:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 8:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
            goto LABEL_23;
          case 9:
            goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = result;
  if (*(v3 + result[6] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v9[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + v9[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TowAssist and conformance Proto_Gnss_Emergency_TowAssist, type metadata accessor for Proto_Gnss_Emergency_TowAssist, &protocol conformance descriptor for Proto_Gnss_Emergency_TowAssist);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, 6);
  closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol, &type metadata for Proto_Gnss_Emergency_SessionProtocol);
  closure #7 in Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(v3, a1, a2, a3);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in Proto_Gnss_Emergency_GpsMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 6)
  {
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_GpsReferenceTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  if (*(a1 + *(result + 48)) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsReferenceTime@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[4] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[4] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[4] = 1;
  *(a2 + v11) = 6;
  v13 = a1[13];
  *(a2 + a1[12]) = 7;
  v14 = a2 + v13;
  *v14 = 0;
  v14[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsReferenceTime and conformance Proto_Gnss_Emergency_GpsReferenceTime, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsReferenceTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 14:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 12:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
          goto LABEL_11;
        case 13:
          type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_11:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, MEMORY[0x277D21848]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, 7);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, MEMORY[0x277D21860]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  closure #12 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol, &type metadata for Proto_Gnss_Emergency_PosProtocol);
  closure #14 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 60) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if (*(a1 + *(result + 64)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  if ((*(a1 + *(result + 72) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ReferenceLocation and conformance Proto_Gnss_Emergency_ReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_ReferenceLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 24:
      case 28:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_8;
      case 3:
      case 4:
      case 9:
      case 10:
      case 16:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_8:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  result = swift_beginAccess();
  if (v9[20])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[36] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[44] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 6, MEMORY[0x277D21848]);
  closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 7, MEMORY[0x277D21848]);
  closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 8, MEMORY[0x277D21848]);
  closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 9);
  closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 10);
  closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 11, MEMORY[0x277D21848]);
  closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 12, MEMORY[0x277D21848]);
  closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 13, MEMORY[0x277D21848]);
  closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 14, MEMORY[0x277D21848]);
  closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 15, MEMORY[0x277D21848]);
  closure #16 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #17 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #18 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #19 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #20 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #21 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #22 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #23 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #24 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #25 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #26 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #27 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #28 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #29 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #30 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #31 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #32 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #33 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #34 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 52) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 60) & 1) == 0)
  {
    return a6(*(a1 + 56), a5, a3, a4);
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 68) & 1) == 0)
  {
    return a6(*(a1 + 64), a5, a3, a4);
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 76) & 1) == 0)
  {
    return a6(*(a1 + 72), a5, a3, a4);
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 84) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 100) & 1) == 0)
  {
    return a6(*(a1 + 96), a5, a3, a4);
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 108) & 1) == 0)
  {
    return a6(*(a1 + 104), a5, a3, a4);
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 116) & 1) == 0)
  {
    return a6(*(a1 + 112), a5, a3, a4);
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 124) & 1) == 0)
  {
    return a6(*(a1 + 120), a5, a3, a4);
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 132) & 1) == 0)
  {
    return a6(*(a1 + 128), a5, a3, a4);
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 140) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 148) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 156) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 164) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #20 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 172) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #21 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 180) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #22 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 188) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #23 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 196) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #24 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 204) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #25 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 212) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #26 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 220) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #27 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 228) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #28 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 236) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #29 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 244) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #30 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 252) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #31 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 260) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #32 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 268) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #33 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 276) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #34 in closure #1 in Proto_Gnss_Emergency_GpsEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 284) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t static Proto_Gnss_Emergency_SummaryReport.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  if (*(a1 + *(v7 + 20)) != *(a2 + *(v7 + 20)) && (a4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_GpsEphemeris.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 24))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 36);
  swift_beginAccess();
  v12 = *(a2 + 36);
  if (v11)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  v14 = *(a1 + 44);
  swift_beginAccess();
  v15 = *(a2 + 44);
  if (v14)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 40))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  swift_beginAccess();
  v18 = *(a2 + 52);
  if (v17)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 48))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 56);
  v20 = *(a1 + 60);
  swift_beginAccess();
  v21 = *(a2 + 60);
  if (v20)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 56))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 64);
  v23 = *(a1 + 68);
  swift_beginAccess();
  v24 = *(a2 + 68);
  if (v23)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 64))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 76);
  swift_beginAccess();
  v27 = *(a2 + 76);
  if (v26)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 72))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = *(a1 + 84);
  swift_beginAccess();
  v30 = *(a2 + 84);
  if (v29)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 80))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = *(a1 + 92);
  swift_beginAccess();
  v33 = *(a2 + 92);
  if (v32)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 88))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 100);
  swift_beginAccess();
  v36 = *(a2 + 100);
  if (v35)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 96))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 104);
  v38 = *(a1 + 108);
  swift_beginAccess();
  v39 = *(a2 + 108);
  if (v38)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 104))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 112);
  v41 = *(a1 + 116);
  swift_beginAccess();
  v42 = *(a2 + 116);
  if (v41)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 112))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 120);
  v44 = *(a1 + 124);
  swift_beginAccess();
  v45 = *(a2 + 124);
  if (v44)
  {
    if (!*(a2 + 124))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 120))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 128);
  v47 = *(a1 + 132);
  swift_beginAccess();
  v48 = *(a2 + 132);
  if (v47)
  {
    if (!*(a2 + 132))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(a2 + 128))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 140);
  swift_beginAccess();
  v51 = *(a2 + 140);
  if (v50)
  {
    if (!*(a2 + 140))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(a2 + 136))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 144);
  v53 = *(a1 + 148);
  swift_beginAccess();
  v54 = *(a2 + 148);
  if (v53)
  {
    if (!*(a2 + 148))
    {
      return 0;
    }
  }

  else
  {
    if (v52 != *(a2 + 144))
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 152);
  v56 = *(a1 + 156);
  swift_beginAccess();
  v57 = *(a2 + 156);
  if (v56)
  {
    if (!*(a2 + 156))
    {
      return 0;
    }
  }

  else
  {
    if (v55 != *(a2 + 152))
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v58 = *(a1 + 160);
  v59 = *(a1 + 164);
  swift_beginAccess();
  v60 = *(a2 + 164);
  if (v59)
  {
    if (!*(a2 + 164))
    {
      return 0;
    }
  }

  else
  {
    if (v58 != *(a2 + 160))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v61 = *(a1 + 168);
  v62 = *(a1 + 172);
  swift_beginAccess();
  v63 = *(a2 + 172);
  if (v62)
  {
    if (!*(a2 + 172))
    {
      return 0;
    }
  }

  else
  {
    if (v61 != *(a2 + 168))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v64 = *(a1 + 176);
  v65 = *(a1 + 180);
  swift_beginAccess();
  v66 = *(a2 + 180);
  if (v65)
  {
    if (!*(a2 + 180))
    {
      return 0;
    }
  }

  else
  {
    if (v64 != *(a2 + 176))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v67 = *(a1 + 184);
  v68 = *(a1 + 188);
  swift_beginAccess();
  v69 = *(a2 + 188);
  if (v68)
  {
    if (!*(a2 + 188))
    {
      return 0;
    }
  }

  else
  {
    if (v67 != *(a2 + 184))
    {
      v69 = 1;
    }

    if (v69)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v70 = *(a1 + 192);
  v71 = *(a1 + 196);
  swift_beginAccess();
  v72 = *(a2 + 196);
  if (v71)
  {
    if (!*(a2 + 196))
    {
      return 0;
    }
  }

  else
  {
    if (v70 != *(a2 + 192))
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 200);
  v74 = *(a1 + 204);
  swift_beginAccess();
  v75 = *(a2 + 204);
  if (v74)
  {
    if (!*(a2 + 204))
    {
      return 0;
    }
  }

  else
  {
    if (v73 != *(a2 + 200))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 208);
  v77 = *(a1 + 212);
  swift_beginAccess();
  v78 = *(a2 + 212);
  if (v77)
  {
    if (!*(a2 + 212))
    {
      return 0;
    }
  }

  else
  {
    if (v76 != *(a2 + 208))
    {
      v78 = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 216);
  v80 = *(a1 + 220);
  swift_beginAccess();
  v81 = *(a2 + 220);
  if (v80)
  {
    if (!*(a2 + 220))
    {
      return 0;
    }
  }

  else
  {
    if (v79 != *(a2 + 216))
    {
      v81 = 1;
    }

    if (v81)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v82 = *(a1 + 224);
  v83 = *(a1 + 228);
  swift_beginAccess();
  v84 = *(a2 + 228);
  if (v83)
  {
    if (!*(a2 + 228))
    {
      return 0;
    }
  }

  else
  {
    if (v82 != *(a2 + 224))
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v85 = *(a1 + 232);
  v86 = *(a1 + 236);
  swift_beginAccess();
  v87 = *(a2 + 236);
  if (v86)
  {
    if (!*(a2 + 236))
    {
      return 0;
    }
  }

  else
  {
    if (v85 != *(a2 + 232))
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v88 = *(a1 + 240);
  v89 = *(a1 + 244);
  swift_beginAccess();
  v90 = *(a2 + 244);
  if (v89)
  {
    if (!*(a2 + 244))
    {
      return 0;
    }
  }

  else
  {
    if (v88 != *(a2 + 240))
    {
      v90 = 1;
    }

    if (v90)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v91 = *(a1 + 248);
  v92 = *(a1 + 252);
  swift_beginAccess();
  v93 = *(a2 + 252);
  if (v92)
  {
    if (!*(a2 + 252))
    {
      return 0;
    }
  }

  else
  {
    if (v91 != *(a2 + 248))
    {
      v93 = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v94 = *(a1 + 256);
  v95 = *(a1 + 260);
  swift_beginAccess();
  v96 = *(a2 + 260);
  if (v95)
  {
    if (!*(a2 + 260))
    {
      return 0;
    }
  }

  else
  {
    if (v94 != *(a2 + 256))
    {
      v96 = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v97 = *(a1 + 264);
  v98 = *(a1 + 268);
  swift_beginAccess();
  v99 = *(a2 + 268);
  if (v98)
  {
    if (!*(a2 + 268))
    {
      return 0;
    }
  }

  else
  {
    if (v97 != *(a2 + 264))
    {
      v99 = 1;
    }

    if (v99)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v100 = *(a1 + 272);
  v101 = *(a1 + 276);
  swift_beginAccess();
  v102 = *(a2 + 276);
  if (v101)
  {
    if (*(a2 + 276))
    {
      goto LABEL_199;
    }

    return 0;
  }

  if (v100 != *(a2 + 272))
  {
    v102 = 1;
  }

  if (v102)
  {
    return 0;
  }

LABEL_199:
  swift_beginAccess();
  v103 = *(a1 + 280);
  v104 = *(a1 + 284);
  swift_beginAccess();
  v105 = *(a2 + 284);
  if (v104)
  {
    if (!*(a2 + 284))
    {
      return 0;
    }
  }

  else
  {
    if (v103 != *(a2 + 280))
    {
      v105 = 1;
    }

    if (v105)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsEphemeris);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) && (a5() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_17;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsEphemeris);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
LABEL_5:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
            goto LABEL_5;
          case 5:
LABEL_17:
            type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GpsNavigationModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v6 = result;
  if (*(v3 + result[6] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsEphemeris and conformance Proto_Gnss_Emergency_GpsEphemeris, type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsEphemeris);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + v6[9] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsNavigationModel@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[4] = 1;
  *(a2 + v5) = 6;
  v7 = a1[9];
  *(a2 + a1[8]) = 7;
  v8 = a2 + v7;
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsNavigationModel and conformance Proto_Gnss_Emergency_GpsNavigationModel, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsNavigationModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  if (*(v3 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CplaneConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CplaneContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
        type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_Cdma1xContext;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
    type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration;
    v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration;
    v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_CplaneContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t closure #2 in Proto_Gnss_Emergency_CplaneContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Cdma1xContext and conformance Proto_Gnss_Emergency_Cdma1xContext, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, &protocol conformance descriptor for Proto_Gnss_Emergency_Cdma1xContext);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CplaneContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneContext and conformance Proto_Gnss_Emergency_CplaneContext, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneContext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EmergConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
          type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneConfig;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig;
          v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_SuplConfig;
          v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig;
        }

        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24) + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CplaneConfig and conformance Proto_Gnss_Emergency_CplaneConfig, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_CplaneConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
}

uint64_t closure #4 in Proto_Gnss_Emergency_EmergConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_EmergConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[7];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EmergConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EmergConfig and conformance Proto_Gnss_Emergency_EmergConfig, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_EmergConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 13:
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, 7);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, MEMORY[0x277D21860]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement);
  closure #12 in Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt, &type metadata for Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #12 in Proto_Gnss_Emergency_GpsAcqElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  if ((*(a1 + *(result + 64) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in Proto_Gnss_Emergency_ReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  result = a5(0);
  if (*(a1 + *(result + 68)) != 7)
  {
    a6();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAcqElement@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1[14];
  v18 = a2 + a1[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a2 + v17;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1[16];
  v21 = a2 + a1[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = a2 + v20;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(a2 + a1[17]) = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
          goto LABEL_22;
        }

        if (result == 7)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_22:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_4;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeAssistance);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = result;
  if (*(v3 + *(result + 24) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v9 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqElement and conformance Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + *(v9 + 36) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(v3, a1, a2, a3);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeAssistance and conformance Proto_Gnss_Emergency_CellTimeAssistance, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeAssistance);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
}

uint64_t closure #5 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 40)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_Emergency_GpsAcqAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  if (*(a1 + *(result + 44)) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsAcqAssistance@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = &a2[a1[6]];
  *v5 = 0;
  v5[4] = 1;
  v6 = &a2[v4];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[8];
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  v11[4] = 1;
  a2[v10] = 6;
  v12 = a1[12];
  a2[a1[11]] = 7;
  v13 = &a2[v12];
  *v13 = 0;
  v13[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsAcqAssistance and conformance Proto_Gnss_Emergency_GpsAcqAssistance, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsAcqAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  if (*(v3 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static Proto_Gnss_Emergency_CellFTAssistanceRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistanceRequest and conformance Proto_Gnss_Emergency_CellFTAssistanceRequest, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistanceRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
          break;
        case 1:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
          lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
          break;
        default:
          goto LABEL_5;
      }

      v3 = v6;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 10)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_CellFTAssistance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellTimeData and conformance Proto_Gnss_Emergency_CellTimeData, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, &protocol conformance descriptor for Proto_Gnss_Emergency_CellTimeData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellFTAssistance@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 10;
  *(a2 + v4) = 6;
  v5 = a1[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellFTAssistance and conformance Proto_Gnss_Emergency_CellFTAssistance, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &protocol conformance descriptor for Proto_Gnss_Emergency_CellFTAssistance);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else
    {
      if (result <= 5)
      {
        goto LABEL_2;
      }

      if (result == 6 || result == 7)
      {
        type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }
  }
}

int *Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, 7);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_NetworkReferenceLocation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_NetworkReferenceLocation@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceLocation);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_NetworkReferenceTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_NetworkReferenceTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801VelocityInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801VelocityInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801ClockInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801ClockInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsGpsCellTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801HeightInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801HeightInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 6)
      {
        break;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      if (result == 10)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_Is801ClockInfo;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo;
        goto LABEL_27;
      }

      if (result != 11)
      {
        if (result != 12)
        {
          goto LABEL_5;
        }

        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_Is801HeightInfo;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo;
LABEL_27:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
        v3 = v6;
LABEL_30:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_5;
      }
    }

    else
    {
      if (result == 7)
      {
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
LABEL_33:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_5;
      }

      if (result == 8)
      {
        type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
        type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801VelocityInfo);
        goto LABEL_30;
      }
    }

    type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
    goto LABEL_33;
  }

  return result;
}

int *Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  closure #8 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  closure #10 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #11 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #12 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 48), v7, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801VelocityInfo and conformance Proto_Gnss_Emergency_Is801VelocityInfo, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801VelocityInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
}

uint64_t closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 56), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801ClockInfo and conformance Proto_Gnss_Emergency_Is801ClockInfo, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801ClockInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
}

uint64_t closure #11 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in Proto_Gnss_Emergency_Is801LocationInd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 64), v7, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801HeightInfo and conformance Proto_Gnss_Emergency_Is801HeightInfo, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801HeightInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Is801LocationInd@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 4;
  v12 = a1[12];
  *(a2 + a1[11]) = 2;
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = a1[14];
  *(a2 + a1[13]) = 2;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = a1[15];
  v17 = a1[16];
  *(a2 + v16) = 2;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a2 + v17, 1, 1, v18);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801LocationInd);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 3)
      {
        break;
      }

      if (result <= 5)
      {
        v12 = v4;
        if (result == 4)
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_Is801LocationInd;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd;
        }

LABEL_19:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_23;
      }

      if (result == 6)
      {
        v16 = v4;
        swift_beginAccess();
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction();
        goto LABEL_21;
      }

      if (result != 7)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
LABEL_23:
      swift_endAccess();
LABEL_24:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      v16 = v4;
      swift_beginAccess();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
LABEL_21:
      v4 = v16;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_23;
    }

    if (result == 2)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_23;
    }

    if (result != 3)
    {
      goto LABEL_24;
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
    v13 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo;
    v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo;
    v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo;
    goto LABEL_19;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 24) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsMeasurements and conformance Proto_Gnss_Emergency_GpsMeasurements, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsMeasurements);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Is801LocationInd and conformance Proto_Gnss_Emergency_Is801LocationInd, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd, &protocol conformance descriptor for Proto_Gnss_Emergency_Is801LocationInd);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_MeasurementReportWithEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  if (*(a1 + v5) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static Proto_Gnss_Emergency_MeasurementReportWithEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMR);
  MEMORY[0x28223BE20](v96);
  v7 = &v90 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v90 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v95 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR);
  MEMORY[0x28223BE20](v101);
  v104 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v90 - v18;
  v19 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v108 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v100 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v90 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }

LABEL_6:
    swift_beginAccess();
    v33 = *(a1 + 20);
    v92 = a1;
    v34 = *(a1 + 24);
    swift_beginAccess();
    v35 = *(a2 + 24);
    if (v34)
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (v33 != *(a2 + 20))
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    v91 = v7;
    v106 = a2;
    v36 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    v37 = v92;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v36, v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v38 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    v39 = *(v21 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v40 = v106 + v38;
    v41 = v106;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, &v23[v39], &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    v42 = *(v108 + 48);
    if (v42(v23, 1, v19) == 1)
    {

      outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v42(&v23[v39], 1, v19) == 1)
      {
        outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v27, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      if (v42(&v23[v39], 1, v19) != 1)
      {
        v43 = v100;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v23[v39], v100, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        v37 = v92;

        v44 = specialized static Proto_Gnss_Emergency_SessionInfo.== infix(_:_:)(v27, v43);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v43, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
        outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
        if ((v44 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_20:
        v45 = v41;
        v46 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v47 = v107;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v46, v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v48 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
        swift_beginAccess();
        v49 = *(v101 + 48);
        v50 = v104;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v104, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v45 + v48, v50 + v49, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
        v51 = v103;
        v52 = *(v102 + 48);
        if (v52(v50, 1, v103) == 1)
        {
          outlined destroy of Any?(v47, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v53 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v53 == 1)
          {
            outlined destroy of Any?(v50, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
LABEL_29:
            v67 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37 + v67, v54, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v68 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
            v69 = v106;
            swift_beginAccess();
            v70 = *(v96 + 48);
            v71 = v91;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v91, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v72 = v69 + v68;
            v73 = v71;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v72, v71 + v70, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
            v74 = v98;
            v75 = *(v97 + 48);
            if (v75(v71, 1, v98) == 1)
            {
              outlined destroy of Any?(v54, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              if (v75(v71 + v70, 1, v74) == 1)
              {
                outlined destroy of Any?(v71, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                v76 = v106;
LABEL_36:
                v82 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v83 = *(v37 + v82);
                v84 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
                swift_beginAccess();
                v85 = *(v76 + v84);
                if (v83 == 4)
                {
                  if (v85 == 4)
                  {
LABEL_46:
                    v86 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v87 = *(v37 + v86);

                    v88 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
                    swift_beginAccess();
                    v89 = *(v76 + v88);

                    if (v87 != 2)
                    {
                      return v89 != 2 && ((v87 ^ v89) & 1) == 0;
                    }

                    return v89 == 2;
                  }
                }

                else if (v85 != 4 && v83 == v85)
                {
                  goto LABEL_46;
                }

LABEL_41:

                return 0;
              }
            }

            else
            {
              v77 = v71;
              v78 = v94;
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77, v94, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              if (v75(v73 + v70, 1, v74) != 1)
              {
                v79 = v73 + v70;
                v80 = v93;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v79, v93, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                v81 = specialized static Proto_Gnss_Emergency_Is801LocationInd.== infix(_:_:)(v78, v80);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v80, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                outlined destroy of Any?(v54, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v78, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
                outlined destroy of Any?(v73, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
                v76 = v106;
                if ((v81 & 1) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

              outlined destroy of Any?(v54, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v78, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
            }

            v57 = &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMd;
            v58 = &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSg_ADtMR;
            v59 = v73;
LABEL_40:
            outlined destroy of Any?(v59, v57, v58);
            goto LABEL_41;
          }
        }

        else
        {
          v55 = v99;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v99, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          v56 = v52(v50 + v49, 1, v51);
          v54 = v105;
          if (v56 != 1)
          {
            v60 = v50 + v49;
            v61 = v95;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v60, v95, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            v62 = *(v51 + 20);
            v63 = *(v55 + v62);
            v64 = *(v61 + v62);
            if (v63 != v64)
            {

              v65 = closure #1 in static Proto_Gnss_Emergency_GpsMeasurements.== infix(_:_:)(v63, v64);

              if (!v65)
              {
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
                v59 = v50;
                v57 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd;
                v58 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR;
                goto LABEL_40;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v66 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v61, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
            outlined destroy of Any?(v50, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
            if ((v66 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          outlined destroy of Any?(v107, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v55, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
        }

        v57 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMd;
        v58 = &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSg_ADtMR;
        v59 = v50;
        goto LABEL_40;
      }

      outlined destroy of Any?(v29, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v27, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    }

    outlined destroy of Any?(v23, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSg_ADtMR);
    goto LABEL_41;
  }

  result = 0;
  if (v31 != 9 && v30 == v31)
  {
    goto LABEL_6;
  }

  return result;
}