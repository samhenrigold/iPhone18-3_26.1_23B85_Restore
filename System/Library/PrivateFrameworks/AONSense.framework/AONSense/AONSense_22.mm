uint64_t closure #8 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  if (*(a1 + *(result + 64)) != 6)
  {
    lazy protocol witness table accessor for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Position@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(v13 + 8) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1[14];
  v18 = a2 + a1[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  *(a2 + v17) = 6;
  v19 = a1[16];
  v20 = a2 + a1[15];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a2 + v19) = 6;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Position(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Position and conformance Proto_Gnss_Position, type metadata accessor for Proto_Gnss_Position, &protocol conformance descriptor for Proto_Gnss_Position);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Position(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Position and conformance Proto_Gnss_Position, type metadata accessor for Proto_Gnss_Position, &protocol conformance descriptor for Proto_Gnss_Position);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Position(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Position and conformance Proto_Gnss_Position, type metadata accessor for Proto_Gnss_Position, &protocol conformance descriptor for Proto_Gnss_Position);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Velocity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for Proto_Gnss_Velocity(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Velocity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Velocity(0);
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

  closure #5 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Velocity);
  closure #6 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Velocity);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Velocity@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(v13 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Velocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Velocity and conformance Proto_Gnss_Velocity, type metadata accessor for Proto_Gnss_Velocity, &protocol conformance descriptor for Proto_Gnss_Velocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Velocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Velocity and conformance Proto_Gnss_Velocity, type metadata accessor for Proto_Gnss_Velocity, &protocol conformance descriptor for Proto_Gnss_Velocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Velocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Velocity and conformance Proto_Gnss_Velocity, type metadata accessor for Proto_Gnss_Velocity, &protocol conformance descriptor for Proto_Gnss_Velocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Time.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Proto_Gnss_Time(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else
        {
          type metadata accessor for Proto_Gnss_Time(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_2;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_Time(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        goto LABEL_2;
      }

LABEL_20:
      type metadata accessor for Proto_Gnss_Time(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else
    {
      if (result == 7)
      {
        goto LABEL_20;
      }

      if (result == 8 || result == 9)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Time(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }
  }
}

int *Proto_Gnss_Time.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Time(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Time.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Time);
  closure #6 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Time);
  closure #7 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Time);
  closure #8 in Proto_Gnss_Time.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in Proto_Gnss_Time.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Time.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in Proto_Gnss_Time.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Time@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a2 + a1[13];
  *v16 = 0;
  *(v16 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Time(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Time(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Time(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Fix._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Fix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v8);

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
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Time(0);
          v13 = type metadata accessor for Proto_Gnss_Time;
          v14 = &protocol conformance descriptor for Proto_Gnss_Time;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Position(0);
          v13 = type metadata accessor for Proto_Gnss_Position;
          v14 = &protocol conformance descriptor for Proto_Gnss_Position;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Position and conformance Proto_Gnss_Position;
LABEL_7:
          lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
          swift_endAccess();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Velocity(0);
            v13 = type metadata accessor for Proto_Gnss_Velocity;
            v14 = &protocol conformance descriptor for Proto_Gnss_Velocity;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Velocity and conformance Proto_Gnss_Velocity;
            goto LABEL_7;
          case 4:
            swift_beginAccess();
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_8;
          case 5:
            swift_beginAccess();
            lazy protocol witness table accessor for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_8;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Fix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
    swift_beginAccess();
    if (*(v8 + v11) != 5)
    {
      lazy protocol witness table accessor for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Time(v7, v11, type metadata accessor for Proto_Gnss_Time);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Time(v11, type metadata accessor for Proto_Gnss_Time);
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Position(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  }

  outlined init with take of Proto_Gnss_Time(v7, v11, type metadata accessor for Proto_Gnss_Position);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Position and conformance Proto_Gnss_Position, type metadata accessor for Proto_Gnss_Position, &protocol conformance descriptor for Proto_Gnss_Position);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Time(v11, type metadata accessor for Proto_Gnss_Position);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Fix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Velocity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  }

  outlined init with take of Proto_Gnss_Time(v7, v11, type metadata accessor for Proto_Gnss_Velocity);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Velocity and conformance Proto_Gnss_Velocity, type metadata accessor for Proto_Gnss_Velocity, &protocol conformance descriptor for Proto_Gnss_Velocity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Time(v11, type metadata accessor for Proto_Gnss_Velocity);
}

BOOL closure #1 in static Proto_Gnss_Fix.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v77 = type metadata accessor for Proto_Gnss_Velocity(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSg_ADtMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSg_ADtMR);
  MEMORY[0x28223BE20](v75);
  v78 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v73 - v9;
  v83 = type metadata accessor for Proto_Gnss_Position(0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSg_ADtMd, &_s10ALProtobuf19Proto_Gnss_PositionVSg_ADtMR);
  MEMORY[0x28223BE20](v81);
  v84 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = &v73 - v15;
  v89 = type metadata accessor for Proto_Gnss_Time(0);
  v16 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v87 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v26, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v28 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  v29 = *(v19 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v21, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v30 = a2 + v28;
  v31 = a2;
  v32 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, &v21[v29], &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v33 = *(v16 + 48);
  if (v33(v21, 1, v32) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    if (v33(&v21[v29], 1, v32) == 1)
    {
      outlined destroy of Any?(v21, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v35 = &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd;
    v36 = &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR;
    v37 = v21;
LABEL_21:
    outlined destroy of Any?(v37, v35, v36);
    goto LABEL_22;
  }

  v34 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v87, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  if (v33(&v21[v29], 1, v32) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    outlined destroy of Proto_Gnss_Time(v34, type metadata accessor for Proto_Gnss_Time);
    goto LABEL_6;
  }

  v38 = v80;
  outlined init with take of Proto_Gnss_Time(&v21[v29], v80, type metadata accessor for Proto_Gnss_Time);

  v39 = specialized static Proto_Gnss_Time.== infix(_:_:)(v34, v38);
  outlined destroy of Proto_Gnss_Time(v38, type metadata accessor for Proto_Gnss_Time);
  outlined destroy of Any?(v26, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  outlined destroy of Proto_Gnss_Time(v34, type metadata accessor for Proto_Gnss_Time);
  outlined destroy of Any?(v21, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v41 = v88;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v40, v88, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v42 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v43 = *(v81 + 48);
  v44 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41, v84, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v42, v44 + v43, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v45 = *(v82 + 48);
  v46 = v83;
  if (v45(v44, 1, v83) == 1)
  {
    outlined destroy of Any?(v41, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
    v47 = v45(v44 + v43, 1, v46);
    v48 = v86;
    v49 = v85;
    if (v47 == 1)
    {
      outlined destroy of Any?(v44, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v50 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v79, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v51 = v45(v44 + v43, 1, v46);
  v48 = v86;
  v49 = v85;
  if (v51 == 1)
  {
    outlined destroy of Any?(v88, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
    outlined destroy of Proto_Gnss_Time(v50, type metadata accessor for Proto_Gnss_Position);
LABEL_13:
    v35 = &_s10ALProtobuf19Proto_Gnss_PositionVSg_ADtMd;
    v36 = &_s10ALProtobuf19Proto_Gnss_PositionVSg_ADtMR;
    v37 = v44;
    goto LABEL_21;
  }

  v52 = v44 + v43;
  v53 = v74;
  outlined init with take of Proto_Gnss_Time(v52, v74, type metadata accessor for Proto_Gnss_Position);
  v54 = specialized static Proto_Gnss_Position.== infix(_:_:)(v50, v53);
  outlined destroy of Proto_Gnss_Time(v53, type metadata accessor for Proto_Gnss_Position);
  outlined destroy of Any?(v88, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  outlined destroy of Proto_Gnss_Time(v50, type metadata accessor for Proto_Gnss_Position);
  outlined destroy of Any?(v44, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v55 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v55, v49, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  v56 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  v57 = *(v75 + 48);
  v58 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49, v78, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v56, v58 + v57, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  v59 = *(v76 + 48);
  v60 = v77;
  if (v59(v58, 1, v77) == 1)
  {
    outlined destroy of Any?(v49, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      outlined destroy of Any?(v58, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v48, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  if (v59(v58 + v57, 1, v60) == 1)
  {
    outlined destroy of Any?(v49, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
    outlined destroy of Proto_Gnss_Time(v48, type metadata accessor for Proto_Gnss_Velocity);
LABEL_20:
    v35 = &_s10ALProtobuf19Proto_Gnss_VelocityVSg_ADtMd;
    v36 = &_s10ALProtobuf19Proto_Gnss_VelocityVSg_ADtMR;
    v37 = v58;
    goto LABEL_21;
  }

  v62 = v58 + v57;
  v63 = v73;
  outlined init with take of Proto_Gnss_Time(v62, v73, type metadata accessor for Proto_Gnss_Velocity);
  v64 = specialized static Proto_Gnss_Velocity.== infix(_:_:)(v48, v63);
  outlined destroy of Proto_Gnss_Time(v63, type metadata accessor for Proto_Gnss_Velocity);
  outlined destroy of Any?(v49, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  outlined destroy of Proto_Gnss_Time(v48, type metadata accessor for Proto_Gnss_Velocity);
  outlined destroy of Any?(v58, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  if ((v64 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v65 = (a1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags);
  swift_beginAccess();
  v66 = *v65;
  v67 = *(v65 + 8);
  v68 = v31 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  swift_beginAccess();
  if (v67)
  {
    if (*(v68 + 8))
    {
      goto LABEL_31;
    }

LABEL_22:

    return 0;
  }

  if ((*(v68 + 8) & 1) != 0 || v66 != *v68)
  {
    goto LABEL_22;
  }

LABEL_31:
  v69 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v70 = *(a1 + v69);

  v71 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v72 = *(v31 + v71);

  if (v70 == 5)
  {
    return v72 == 5;
  }

  result = 0;
  if (v72 != 5 && v70 == v72)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Fix(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Fix and conformance Proto_Gnss_Fix, type metadata accessor for Proto_Gnss_Fix, &protocol conformance descriptor for Proto_Gnss_Fix);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Fix(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Fix and conformance Proto_Gnss_Fix, type metadata accessor for Proto_Gnss_Fix, &protocol conformance descriptor for Proto_Gnss_Fix);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Fix(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Fix and conformance Proto_Gnss_Fix, type metadata accessor for Proto_Gnss_Fix, &protocol conformance descriptor for Proto_Gnss_Fix);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_TimeTransferData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_TimeTransferData(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        else if (result == 5 || result == 6)
        {
          type metadata accessor for Proto_Gnss_TimeTransferData(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for Proto_Gnss_TimeTransferData(0);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 2:
            type metadata accessor for Proto_Gnss_TimeTransferData(0);
            type metadata accessor for Proto_Gnss_Time(0);
            lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            type metadata accessor for Proto_Gnss_TimeTransferData(0);
            lazy protocol witness table accessor for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_TimeTransferData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
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

  closure #2 in Proto_Gnss_TimeTransferData.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Time.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_TimeTransferData);
  closure #6 in Proto_Gnss_TimeTransferData.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_TimeTransferData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Time(v7, v11, type metadata accessor for Proto_Gnss_Time);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_Time and conformance Proto_Gnss_Time, type metadata accessor for Proto_Gnss_Time, &protocol conformance descriptor for Proto_Gnss_Time);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Time(v11, type metadata accessor for Proto_Gnss_Time);
}

uint64_t closure #5 in Proto_Gnss_Time.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_TimeTransferData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_TimeTransferData@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = type metadata accessor for Proto_Gnss_Time(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 7;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_TimeTransferData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferData and conformance Proto_Gnss_TimeTransferData, type metadata accessor for Proto_Gnss_TimeTransferData, &protocol conformance descriptor for Proto_Gnss_TimeTransferData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_TimeTransferData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferData and conformance Proto_Gnss_TimeTransferData, type metadata accessor for Proto_Gnss_TimeTransferData, &protocol conformance descriptor for Proto_Gnss_TimeTransferData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_TimeTransferData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferData and conformance Proto_Gnss_TimeTransferData, type metadata accessor for Proto_Gnss_TimeTransferData, &protocol conformance descriptor for Proto_Gnss_TimeTransferData);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_TimeTransferDataExtend._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_TimeTransferDataExtend.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(v8);

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
          type metadata accessor for Proto_Gnss_TimeTransferData(0);
          lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferData and conformance Proto_Gnss_TimeTransferData, type metadata accessor for Proto_Gnss_TimeTransferData, &protocol conformance descriptor for Proto_Gnss_TimeTransferData);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 2)
        {
          goto LABEL_6;
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
LABEL_6:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
LABEL_7:
        swift_endAccess();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_TimeTransferDataExtend.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_TimeTransferDataExtend.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v13 = v8 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
    swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_TimeTransferDataExtend.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  }

  outlined init with take of Proto_Gnss_Time(v7, v11, type metadata accessor for Proto_Gnss_TimeTransferData);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferData and conformance Proto_Gnss_TimeTransferData, type metadata accessor for Proto_Gnss_TimeTransferData, &protocol conformance descriptor for Proto_Gnss_TimeTransferData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Time(v11, type metadata accessor for Proto_Gnss_TimeTransferData);
}

uint64_t closure #1 in static Proto_Gnss_TimeTransferDataExtend.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  v16 = a1 + v15;
  v17 = v46;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v14, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v18 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  v19 = *(v7 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v14, v9, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17 + v18, &v9[v19], &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
    if (v20(&v9[v19], 1, v3) == 1)
    {
      outlined destroy of Any?(v9, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v9, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSg_ADtMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v45;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9, v45, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  if (v20(&v9[v19], 1, v3) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
    outlined destroy of Proto_Gnss_Time(v21, type metadata accessor for Proto_Gnss_TimeTransferData);
    goto LABEL_6;
  }

  v23 = v44;
  outlined init with take of Proto_Gnss_Time(&v9[v19], v44, type metadata accessor for Proto_Gnss_TimeTransferData);

  v24 = specialized static Proto_Gnss_TimeTransferData.== infix(_:_:)(v21, v23);
  outlined destroy of Proto_Gnss_Time(v23, type metadata accessor for Proto_Gnss_TimeTransferData);
  outlined destroy of Any?(v14, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  outlined destroy of Proto_Gnss_Time(v21, type metadata accessor for Proto_Gnss_TimeTransferData);
  outlined destroy of Any?(v9, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v25 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick);
  swift_beginAccess();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = v17 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  swift_beginAccess();
  if (v27)
  {
    if ((*(v28 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v28 + 8) & 1) != 0 || v26 != *v28)
  {
    goto LABEL_7;
  }

  v29 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick);
  swift_beginAccess();
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = v17 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  swift_beginAccess();
  if (v31)
  {
    if ((*(v32 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v32 + 8) & 1) != 0 || v30 != *v32)
  {
    goto LABEL_7;
  }

  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs);
  swift_beginAccess();
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = v17 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  swift_beginAccess();
  if (v35)
  {
    if (*(v36 + 8))
    {
      goto LABEL_26;
    }

LABEL_7:

    return 0;
  }

  if ((*(v36 + 8) & 1) != 0 || v34 != *v36)
  {
    goto LABEL_7;
  }

LABEL_26:
  v37 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs);
  swift_beginAccess();
  v38 = *v37;
  v39 = *(v37 + 8);

  v40 = v17 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 8);

  if (v39)
  {
    if (v42)
    {
      return 1;
    }
  }

  else
  {
    if (v38 == v41)
    {
      v43 = v42;
    }

    else
    {
      v43 = 1;
    }

    if ((v43 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_TimeTransferDataExtend(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferDataExtend and conformance Proto_Gnss_TimeTransferDataExtend, type metadata accessor for Proto_Gnss_TimeTransferDataExtend, &protocol conformance descriptor for Proto_Gnss_TimeTransferDataExtend);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_TimeTransferDataExtend(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferDataExtend and conformance Proto_Gnss_TimeTransferDataExtend, type metadata accessor for Proto_Gnss_TimeTransferDataExtend, &protocol conformance descriptor for Proto_Gnss_TimeTransferDataExtend);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_TimeTransferDataExtend(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_TimeTransferDataExtend and conformance Proto_Gnss_TimeTransferDataExtend, type metadata accessor for Proto_Gnss_TimeTransferDataExtend, &protocol conformance descriptor for Proto_Gnss_TimeTransferDataExtend);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_RawPressureSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Proto_Gnss_RawPressureSample(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for Proto_Gnss_RawPressureSample(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_RawPressureSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_RawPressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_RawPressureSample and conformance Proto_Gnss_RawPressureSample, type metadata accessor for Proto_Gnss_RawPressureSample, &protocol conformance descriptor for Proto_Gnss_RawPressureSample);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_RawPressureSample(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_RawPressureSample and conformance Proto_Gnss_RawPressureSample, type metadata accessor for Proto_Gnss_RawPressureSample, &protocol conformance descriptor for Proto_Gnss_RawPressureSample);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_RawPressureSample(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_RawPressureSample and conformance Proto_Gnss_RawPressureSample, type metadata accessor for Proto_Gnss_RawPressureSample, &protocol conformance descriptor for Proto_Gnss_RawPressureSample);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_SensorSample3Axis.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

int *Proto_Gnss_SensorSample3Axis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_SensorSample3Axis@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_SensorSample3Axis(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SensorSample3Axis and conformance Proto_Gnss_SensorSample3Axis, type metadata accessor for Proto_Gnss_SensorSample3Axis, &protocol conformance descriptor for Proto_Gnss_SensorSample3Axis);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_SensorSample3Axis(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SensorSample3Axis and conformance Proto_Gnss_SensorSample3Axis, type metadata accessor for Proto_Gnss_SensorSample3Axis, &protocol conformance descriptor for Proto_Gnss_SensorSample3Axis);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_SensorSample3Axis(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SensorSample3Axis and conformance Proto_Gnss_SensorSample3Axis, type metadata accessor for Proto_Gnss_SensorSample3Axis, &protocol conformance descriptor for Proto_Gnss_SensorSample3Axis);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_SvId.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        type metadata accessor for Proto_Gnss_SvId(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
LABEL_2:
      type metadata accessor for Proto_Gnss_SvId(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 5)
    {
      type metadata accessor for Proto_Gnss_SvId(0);
      dispatch thunk of Decoder.decodeSingularSInt32Field(value:)();
    }
  }
}

int *Proto_Gnss_SvId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_SvId(0);
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
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_SvId.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_SvId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SvId and conformance Proto_Gnss_SvId, type metadata accessor for Proto_Gnss_SvId, &protocol conformance descriptor for Proto_Gnss_SvId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_SvId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SvId and conformance Proto_Gnss_SvId, type metadata accessor for Proto_Gnss_SvId, &protocol conformance descriptor for Proto_Gnss_SvId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_SvId and conformance Proto_Gnss_SvId, type metadata accessor for Proto_Gnss_SvId, &protocol conformance descriptor for Proto_Gnss_SvId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_PwrMeasurement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_PwrMeasurement(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
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
          type metadata accessor for Proto_Gnss_PwrMeasurement(0);
          lazy protocol witness table accessor for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_PwrMeasurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
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

  closure #5 in Proto_Gnss_PwrMeasurement.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_PwrMeasurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    lazy protocol witness table accessor for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_PwrMeasurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement and conformance Proto_Gnss_PwrMeasurement, type metadata accessor for Proto_Gnss_PwrMeasurement, &protocol conformance descriptor for Proto_Gnss_PwrMeasurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_PwrMeasurement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement and conformance Proto_Gnss_PwrMeasurement, type metadata accessor for Proto_Gnss_PwrMeasurement, &protocol conformance descriptor for Proto_Gnss_PwrMeasurement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_PwrMeasurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement and conformance Proto_Gnss_PwrMeasurement, type metadata accessor for Proto_Gnss_PwrMeasurement, &protocol conformance descriptor for Proto_Gnss_PwrMeasurement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_DecodedRti.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Proto_Gnss_DecodedRti(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for Proto_Gnss_DecodedRti(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_DecodedRti.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_DecodedRti@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_DecodedRti(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedRti and conformance Proto_Gnss_DecodedRti, type metadata accessor for Proto_Gnss_DecodedRti, &protocol conformance descriptor for Proto_Gnss_DecodedRti);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_DecodedRti(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedRti and conformance Proto_Gnss_DecodedRti, type metadata accessor for Proto_Gnss_DecodedRti, &protocol conformance descriptor for Proto_Gnss_DecodedRti);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_DecodedRti(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedRti and conformance Proto_Gnss_DecodedRti, type metadata accessor for Proto_Gnss_DecodedRti, &protocol conformance descriptor for Proto_Gnss_DecodedRti);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_DecodedExtendedEphemeris.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v6[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 7)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int Proto_Gnss_Position.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_DecodedExtendedEphemeris@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 2;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + v7) = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_DecodedExtendedEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedExtendedEphemeris and conformance Proto_Gnss_DecodedExtendedEphemeris, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris, &protocol conformance descriptor for Proto_Gnss_DecodedExtendedEphemeris);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_DecodedExtendedEphemeris(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedExtendedEphemeris and conformance Proto_Gnss_DecodedExtendedEphemeris, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris, &protocol conformance descriptor for Proto_Gnss_DecodedExtendedEphemeris);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_DecodedExtendedEphemeris(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type Proto_Gnss_DecodedExtendedEphemeris and conformance Proto_Gnss_DecodedExtendedEphemeris, type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris, &protocol conformance descriptor for Proto_Gnss_DecodedExtendedEphemeris);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized Proto_Gnss_MotionActivityContext.init(rawValue:)(unint64_t a1)
{
  if (a1 > 9)
  {
    return 10;
  }

  else
  {
    return byte_23D1D7158[a1];
  }
}

unint64_t specialized Proto_Gnss_MovingState.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 5;
  }

  else
  {
    return 0x4030201uLL >> (8 * a1);
  }
}

unint64_t specialized Proto_Gnss_Reliability.init(rawValue:)(unint64_t result)
{
  if (result > 24)
  {
    switch(result)
    {
      case 0x19uLL:
        return 3;
      case 0x32uLL:
        return 4;
      case 0x4BuLL:
        return 5;
    }
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result == 10)
    {
      return 2;
    }
  }

  return 6;
}

unint64_t specialized Proto_Gnss_DeviceMountState.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return 0x3020104uLL >> (8 * a1);
  }
}

uint64_t specialized Proto_Gnss_SignalEnvironmentType.init(rawValue:)(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 8;
  }

  else
  {
    return asc_23D1F5296[a1];
  }
}

uint64_t specialized Proto_Gnss_Fix._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  v11 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  v13 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  v15 = type metadata accessor for Proto_Gnss_Velocity(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology) = 5;
  v18 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v9, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v10, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  v20 = v27;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v27, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v20, v1 + v12, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  v22 = v28;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v28, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v22, v1 + v14, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags);
  swift_beginAccess();
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  swift_beginAccess();
  *v16 = v24;
  *(v16 + 8) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v25);
  swift_beginAccess();
  *(v1 + v17) = a1;
  return v1;
}

uint64_t outlined init with take of Proto_Gnss_Time(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Proto_Gnss_Time(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Proto_Gnss_Time(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  v6 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  v7 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v5, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v6, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  swift_endAccess();
  v13 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick);
  swift_beginAccess();
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  swift_beginAccess();
  *v8 = v14;
  *(v8 + 8) = v13;
  v15 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  swift_beginAccess();
  *v9 = v16;
  *(v9 + 8) = v15;
  v17 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  swift_beginAccess();
  *v10 = v18;
  *(v10 + 8) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs);
  swift_beginAccess();
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  swift_beginAccess();
  *v11 = v20;
  *(v11 + 8) = v19;
  return v1;
}

uint64_t specialized static Proto_Gnss_DecodedExtendedEphemeris.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_24;
    }
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    goto LABEL_24;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_24;
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
      goto LABEL_24;
    }
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 7)
  {
    if (v20 == 7)
    {
      goto LABEL_23;
    }

LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  if (v20 == 7)
  {
    goto LABEL_24;
  }

  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static Proto_Gnss_SensorSample3Axis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_RawPressureSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_TimeTransferData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_12;
  }

  v18 = a1;
  v19 = a2;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  v44 = v18;
  v45 = v14;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18 + v20, v13, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19 + v20, &v13[v21], &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      outlined init with take of Proto_Gnss_Time(&v13[v21], v7, type metadata accessor for Proto_Gnss_Time);
      v25 = specialized static Proto_Gnss_Time.== infix(_:_:)(v10, v7);
      outlined destroy of Proto_Gnss_Time(v7, type metadata accessor for Proto_Gnss_Time);
      outlined destroy of Proto_Gnss_Time(v10, type metadata accessor for Proto_Gnss_Time);
      outlined destroy of Any?(v13, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    outlined destroy of Proto_Gnss_Time(v10, type metadata accessor for Proto_Gnss_Time);
LABEL_11:
    outlined destroy of Any?(v13, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMd, &_s10ALProtobuf15Proto_Gnss_TimeVSg_ADtMR);
    goto LABEL_12;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
LABEL_15:
  v26 = v45[7];
  v27 = *(v44 + v26);
  v28 = *(v19 + v26);
  if (v27 == 7)
  {
    if (v28 != 7)
    {
      goto LABEL_12;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_12;
  }

  v29 = v45[8];
  v30 = (v44 + v29);
  v31 = *(v44 + v29 + 4);
  v32 = (v19 + v29);
  v33 = *(v19 + v29 + 4);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      goto LABEL_12;
    }
  }

  v34 = v45[9];
  v35 = (v44 + v34);
  v36 = *(v44 + v34 + 8);
  v37 = (v19 + v34);
  v38 = *(v19 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      goto LABEL_12;
    }
  }

  v39 = v45[10];
  v40 = (v44 + v39);
  v41 = *(v44 + v39 + 8);
  v42 = (v19 + v39);
  v43 = *(v19 + v39 + 8);
  if ((v41 & 1) == 0)
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_12;
    }

LABEL_37:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v23 & 1;
  }

  if (v43)
  {
    goto LABEL_37;
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Proto_Gnss_PwrMeasurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }

LABEL_7:
    v10 = v4[6];
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    v14 = *(a2 + v10 + 8);
    if (v12)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (*v11 != *v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    v15 = v4[7];
    v16 = (a1 + v15);
    v17 = *(a1 + v15 + 8);
    v18 = (a2 + v15);
    v19 = *(a2 + v15 + 8);
    if (v17)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (*v16 != *v18)
      {
        LOBYTE(v19) = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    v20 = v4[8];
    v21 = (a1 + v20);
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    v24 = *(a2 + v20 + 8);
    if (v22)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      if (*v21 != *v23)
      {
        LOBYTE(v24) = 1;
      }

      if (v24)
      {
        return 0;
      }
    }

    v25 = v4[9];
    v26 = *(a1 + v25);
    v27 = *(a2 + v25);
    if (v26 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
    {
      return 0;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_DecodedRti.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Velocity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Velocity(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_SvId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_SvId(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Time.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_TimeTransferDataExtend.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Position.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4[14];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 6)
  {
    if (v52 != 6)
    {
      return 0;
    }
  }

  else if (v52 == 6 || qword_23D1D7168[v51] != qword_23D1D7168[v52])
  {
    return 0;
  }

  v53 = v4[15];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v4[16];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 6)
  {
    if (v60 != 6)
    {
      return 0;
    }
  }

  else if (v59 != v60)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Proto_Gnss_Position and conformance Proto_Gnss_Position(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus);
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Position(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_Reliability?);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_GnssContent?);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Velocity(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Time(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int32?);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_TimeTransferData(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Time?, type metadata accessor for Proto_Gnss_Time);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_TimeQuality?);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for Proto_Gnss_Fix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Proto_Gnss_SensorSample3Axis(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Float?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_SvId(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt32?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int32?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_PwrMeasurement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Proto_Gnss_PwrMeasurement.PowerLoggingStatus?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_RawPressureSample(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v6 <= 0x3F)
    {
      type metadata accessor for Double?(319, a4);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_DecodedExtendedEphemeris(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for UInt64?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvPositionSource?);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Fix._StorageClass(uint64_t a1)
{
  type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Time?, type metadata accessor for Proto_Gnss_Time);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Position?, type metadata accessor for Proto_Gnss_Position);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_Velocity?, type metadata accessor for Proto_Gnss_Velocity);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Proto_Gnss_Time?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for Proto_Gnss_TimeTransferDataExtend._StorageClass(uint64_t a1)
{
  type metadata accessor for Proto_Gnss_Time?(319, &lazy cache variable for type metadata for Proto_Gnss_TimeTransferData?, type metadata accessor for Proto_Gnss_TimeTransferData);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.machContTimeNs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearMachContTimeNs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.mac.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.mac.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v3;
  *(v7 + 40) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearMac()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 44) = a1;
  *(v6 + 48) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 44);
  if (*(v6 + 48))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.rssiDb.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 44) = v3;
  *(v7 + 48) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearRssiDb()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 44) = 0;
  *(v4 + 48) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.channel.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 52) = a1;
  *(v6 + 56) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 52);
  if (*(v6 + 56))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.channel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 52) = v3;
  *(v7 + 56) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearChannel()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 52) = 0;
  *(v4 + 56) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    return 0;
  }

  else
  {
    return *(v1 + 60);
  }
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 60) = a1;
  *(v6 + 64) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 60);
  if (*(v6 + 64))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.antennaIndex.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 60) = v3;
  *(v7 + 64) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearAntennaIndex()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 60) = 0;
  *(v4 + 64) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.payload.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 72);
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.payload.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v11 = *(v8 + 72);
  v12 = *(v8 + 80);
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
  outlined consume of Data?(v11, v12);
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v6 + 72);
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = *(v6 + 80);
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.payload.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v11 = swift_allocObject();
      v12 = v8;
      v8 = v11;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
      *(v10 + v9) = v11;
    }

    swift_beginAccess();
    v13 = *(v8 + 72);
    v14 = *(v8 + 80);
    *(v8 + 72) = v3;
    *(v8 + 80) = v5;
    outlined consume of Data?(v13, v14);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + v4);
    if ((v15 & 1) == 0)
    {
      v17 = *(v2 + 96);
      v18 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v19 = swift_allocObject();
      v20 = v16;
      v16 = v19;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v20);
      *(v18 + v17) = v19;
    }

    swift_beginAccess();
    v21 = *(v16 + 72);
    v22 = *(v16 + 80);
    *(v16 + 72) = v3;
    *(v16 + 80) = v5;
    outlined consume of Data?(v21, v22);
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearPayload()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  *(v4 + 72) = xmmword_23D1B1460;
  outlined consume of Data?(v6, v7);
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.btType.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.btType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 88) = v3;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearBtType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 88) = 3;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 96) = a1;
  *(v6 + 104) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 104))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.deviceFlags.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 96) = v3;
  *(v7 + 104) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearDeviceFlags()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 112) = a1;
  *(v6 + 120) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 120))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.discoveryFlags.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 112) = v3;
  *(v7 + 120) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearDiscoveryFlags()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 112) = 0;
  *(v4 + 120) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.productID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 124) = a1;
  *(v6 + 128) = 0;
  return result;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 124);
  if (*(v6 + 128))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.productID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 124) = v3;
  *(v7 + 128) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearProductID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 124) = 0;
  *(v4 + 128) = 1;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 144))
  {
    v7 = *(v6 + 136);
    v8 = *(v6 + 144);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.identifier.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v11 = swift_allocObject();
      v12 = v8;
      v8 = v11;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
      *(v10 + v9) = v11;
    }

    swift_beginAccess();
    *(v8 + 136) = v3;
    *(v8 + 144) = v5;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + v4);
    if ((v13 & 1) == 0)
    {
      v15 = *(v2 + 96);
      v16 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v17 = swift_allocObject();
      v18 = v14;
      v14 = v17;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v18);
      *(v16 + v15) = v17;
    }

    swift_beginAccess();
    *(v14 + 136) = v3;
    *(v14 + 144) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearIdentifier()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 160))
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.idsDeviceID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v11 = swift_allocObject();
      v12 = v8;
      v8 = v11;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v12);
      *(v10 + v9) = v11;
    }

    swift_beginAccess();
    *(v8 + 152) = v3;
    *(v8 + 160) = v5;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + v4);
    if ((v13 & 1) == 0)
    {
      v15 = *(v2 + 96);
      v16 = *(v2 + 88);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v17 = swift_allocObject();
      v18 = v14;
      v14 = v17;
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v18);
      *(v16 + v15) = v17;
    }

    swift_beginAccess();
    *(v14 + 152) = v3;
    *(v14 + 160) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearIdsDeviceID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
}

int *CLP_LogEntry_AONLoc_Type7Info.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 8;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v6, v9 + v13);
  return swift_endAccess();
}

void (*CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 8;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v14, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  return CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.type7Info.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v11, v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v15, v6 + v16);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v10, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v10, v15, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
    swift_beginAccess();
    outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v15, v19 + v25);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.clearType7Info()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined assign with take of CLP_LogEntry_AONLoc_Type7Info?(v4, v7 + v11);
  swift_endAccess();
}

ALProtobuf::CLP_LogEntry_AONLoc_BtAdvertisement::BtType_optional __swiftcall CLP_LogEntry_AONLoc_BtAdvertisement.BtType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 7)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 18)
  {
    v2.value = ALProtobuf_CLP_LogEntry_AONLoc_BtAdvertisement_BtType_type18;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 7)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 18)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtAdvertisement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass.defaultInstance;
}

uint64_t variable initialization expression of CLP_LogEntry_AONLoc_BtAdvertisement._storage()
{
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

void CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*CLP_LogEntry_AONLoc_BtDeviceInfo.cbDeviceBytes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return Proto_Gnss_Emergency_WlanMeasurementElement.bssid.modify;
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtDeviceInfo.clearCbDeviceBytes()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_23D1B1460;
}

double CLP_LogEntry_AONLoc_BtDeviceInfo.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_TimeStamp.init()(v14);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify;
}

void CLP_LogEntry_AONLoc_BtNotification.eventReceiptTime.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Type7Info((*a1)[5], v4, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v4, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v5, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  else
  {
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v5, v9 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_AONLoc_BtNotification.clearEventReceiptTime()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 24);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isSimulated.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isSimulated.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isApOn.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isApOn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.isScreenOn.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_BtNotification.isScreenOn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  a1[v2[7]] = 2;
  a1[v2[8]] = 2;
  a1[v2[9]] = 2;
  return result;
}

uint64_t variable initialization expression of CLP_LogEntry_AONLoc_BtNotification._eventReceiptTime@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isSameAccount.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isSameAccount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isFamily.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isFamily.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isSharedHome.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isSharedHome.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isLeftBud.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isLeftBud.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.isCase.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.isCase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.placement.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_AONLoc_Type7Info.placement.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_AONLoc_Type7Info.placement.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Type7Info.Placement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20));
  swift_beginAccess();
  if (*(v9 + 24))
  {
    if (v4)
    {
      return;
    }
  }

  else
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 40) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 48) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularSInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 56) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((*(v9 + 64) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  v10 = *(v9 + 80);
  if (v10 >> 60 != 15)
  {
    v11 = *(v9 + 72);
    outlined copy of Data._Representation(v11, *(v9 + 80));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v11, v10);
  }

  closure #7 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #12 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #13 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(v9, a1, a2, a3);
  UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement.BtType and conformance CLP_LogEntry_AONLoc_BtAdvertisement.BtType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_AONLoc_BtAdvertisement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Type7Info);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
}

BOOL closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMR);
  MEMORY[0x28223BE20](v7);
  v73 = &v65[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v65[-v13];
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v15 != *(a2 + 16))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v18 != *(a2 + 32))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 44);
  v22 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(a2 + 48);
  if (v22)
  {
    if (!*(a2 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(a2 + 44))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 52);
  v25 = *(a1 + 56);
  swift_beginAccess();
  v26 = *(a2 + 56);
  if (v25)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v24 != *(a2 + 52))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 60);
  v28 = *(a1 + 64);
  swift_beginAccess();
  v29 = *(a2 + 64);
  if (v28)
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(a2 + 60))
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v67 = v4;
  swift_beginAccess();
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  swift_beginAccess();
  v32 = *(a2 + 72);
  v33 = *(a2 + 80);
  v71 = v30;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  outlined copy of Data?(v34, v35);
  v68 = v36;
  outlined copy of Data?(v36, v33);
  v69 = v33;
  v70 = v35;
  if (v35 >> 60 == 15)
  {
    if (v33 >> 60 == 15)
    {

      outlined consume of Data?(v71, v70);
      goto LABEL_37;
    }

LABEL_35:
    outlined consume of Data?(v71, v70);
    outlined consume of Data?(v68, v69);
    return 0;
  }

  if (v33 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v37 = v71;
  outlined copy of Data?(v71, v70);
  v38 = v68;
  v39 = v69;
  outlined copy of Data?(v68, v69);

  v40 = v37;
  v41 = v70;
  v66 = specialized static Data.== infix(_:_:)(v40, v70, v38, v39);
  outlined consume of Data?(v38, v39);
  outlined consume of Data?(v71, v41);
  outlined consume of Data?(v38, v39);
  outlined consume of Data?(v71, v41);
  if (!v66)
  {
    goto LABEL_73;
  }

LABEL_37:
  swift_beginAccess();
  v42 = *(a1 + 88);
  swift_beginAccess();
  v43 = *(a2 + 88);
  if (v42 == 3)
  {
    if (v43 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v43 == 3 || qword_23D1D7BB8[v42] != qword_23D1D7BB8[v43])
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v44 = *(a1 + 96);
  v45 = *(a1 + 104);
  swift_beginAccess();
  if (v45)
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 104) & 1) != 0 || v44 != *(a2 + 96))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v46 = *(a1 + 112);
  v47 = *(a1 + 120);
  swift_beginAccess();
  if (v47)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 120) & 1) != 0 || v46 != *(a2 + 112))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v48 = *(a1 + 124);
  v49 = *(a1 + 128);
  swift_beginAccess();
  if (v49)
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((*(a2 + 128) & 1) != 0 || v48 != *(a2 + 124))
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v50 = *(a1 + 136);
  v51 = *(a1 + 144);
  swift_beginAccess();
  v52 = *(a2 + 144);
  if (v51)
  {
    if (!v52 || (v50 != *(a2 + 136) || v51 != v52) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v52)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v53 = *(a1 + 152);
  v54 = *(a1 + 160);
  swift_beginAccess();
  v55 = *(a2 + 160);
  if (!v54)
  {
    if (!v55)
    {
      goto LABEL_69;
    }

LABEL_73:

    return 0;
  }

  if (!v55 || (v53 != *(a2 + 152) || v54 != v55) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_69:
  v56 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v56, v14, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v57 = OBJC_IVAR____TtCV10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementP33_E9587737FC1639A911680431159314D113_StorageClass__type7Info;
  swift_beginAccess();
  v58 = *(v7 + 48);
  v59 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v14, v73, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v71 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v57, &v59[v58], &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  v60 = *(v72 + 48);
  if (v60(v59, 1, v67) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    if (v60(&v73[v71], 1, v67) == 1)
    {
      outlined destroy of Any?(v73, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
      return 1;
    }

LABEL_77:
    outlined destroy of Any?(v73, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSg_ADtMR);
    return 0;
  }

  v62 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v73, v12, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  if (v60(&v62[v71], 1, v67) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v12, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
    goto LABEL_77;
  }

  v63 = v73;
  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(&v73[v71], v6, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  v64 = specialized static CLP_LogEntry_AONLoc_Type7Info.== infix(_:_:)(v12, v6);

  outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v6, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v12, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info);
  outlined destroy of Any?(v63, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMd, &_s10ALProtobuf29CLP_LogEntry_AONLoc_Type7InfoVSgMR);
  return (v64 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtAdvertisement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtDeviceInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

void CLP_LogEntry_AONLoc_BtDeviceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
  v6 = *(v5 + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v5 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v7, v6);
  }

  if (!v4)
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

double protocol witness for Message.init() in conformance CLP_LogEntry_AONLoc_BtDeviceInfo@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_23D1B1460;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtDeviceInfo and conformance CLP_LogEntry_AONLoc_BtDeviceInfo, type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtDeviceInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtAdvertisement);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v6 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
    if (*(v3 + v6[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + v6[8]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + v6[9]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_AONLoc_BtNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_AONLoc_Type7Info(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_BtNotification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_BtNotification and conformance CLP_LogEntry_AONLoc_BtNotification, type metadata accessor for CLP_LogEntry_AONLoc_BtNotification, &protocol conformance descriptor for CLP_LogEntry_AONLoc_BtNotification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

int *CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
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

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_AONLoc_Type7Info.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
  if (*(a1 + *(result + 40)) != 8)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

Swift::Int CLP_LogEntry_AONLoc_BtAdvertisement.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_AONLoc_Type7Info(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info and conformance CLP_LogEntry_AONLoc_Type7Info, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Type7Info);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(v13, v10, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        outlined init with copy of CLP_LogEntry_AONLoc_Type7Info(v14, v7, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v7[v16];
        if (v17 != v18)
        {

          v19 = closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(v17, v18);

          if (!v19)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v7, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v10, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v7, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v10, type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtNotification.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v32 = type metadata accessor for CLP_LogEntry_AONLoc_BtNotification(0);
  v14 = v32[6];
  v15 = *(v11 + 56);
  v34 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_8:
      v20 = v34;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_AONLoc_BtAdvertisementV_Tt1g5(*v34, *a2))
      {
        v21 = v32[7];
        v22 = *(v20 + v21);
        v23 = *(a2 + v21);
        if (v22 == 2)
        {
          if (v23 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
        {
          goto LABEL_24;
        }

        v24 = v32[8];
        v25 = *(v20 + v24);
        v26 = *(a2 + v24);
        if (v25 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_24;
          }
        }

        else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
        {
          goto LABEL_24;
        }

        v27 = v32[9];
        v28 = *(v20 + v27);
        v29 = *(a2 + v27);
        if (v28 != 2)
        {
          if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
          {
            goto LABEL_24;
          }

LABEL_26:
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v17 & 1;
        }

        if (v29 == 2)
        {
          goto LABEL_26;
        }
      }

LABEL_24:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v33;
      outlined init with take of CLP_LogEntry_AONLoc_Type7Info(&v13[v15], v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeStamp);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v19 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    outlined destroy of CLP_LogEntry_AONLoc_Type7Info(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtDeviceInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtDeviceInfo(0) + 20);
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
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_Type7Info.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_AONLoc_Type7Info(0);
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
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 8)
  {
    if (v22 != 8)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static CLP_LogEntry_AONLoc_BtAdvertisement.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_BtAdvertisement and conformance CLP_LogEntry_AONLoc_BtAdvertisement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Type7Info.Placement and conformance CLP_LogEntry_AONLoc_Type7Info.Placement);
  }

  return result;
}

uint64_t type metadata completion function for CLP_LogEntry_AONLoc_BtAdvertisement(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtDeviceInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Data?);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtNotification(uint64_t a1)
{
  type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for [CLP_LogEntry_AONLoc_BtAdvertisement], type metadata accessor for CLP_LogEntry_AONLoc_BtAdvertisement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for CLP_LogEntry_AONLoc_Type7Info(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Type7Info.Placement?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_AONLoc_BtAdvertisement._StorageClass(uint64_t a1)
{
  type metadata accessor for [CLP_LogEntry_AONLoc_BtAdvertisement](319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_Type7Info?, type metadata accessor for CLP_LogEntry_AONLoc_Type7Info, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_SuplInitDecodeResult(uint64_t a1, uint64_t a2)
{
  inited = lazy protocol witness table accessor for type Proto_Gpsd_SuplInitDecodeResult and conformance Proto_Gpsd_SuplInitDecodeResult();

  return MEMORY[0x28217E238](a1, a2, inited);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_CompressionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_CompressionType and conformance Proto_Gpsd_CompressionType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gpsd_LtlInfoType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gpsd_LtlInfoType and conformance Proto_Gpsd_LtlInfoType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_Gpsd_Request.machContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t Proto_Gpsd_Request.machContinuousTimeNs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*Proto_Gpsd_Request.machContinuousTimeNs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gpsd_Request.machContinuousTimeNs.modify;
}

void Proto_Gpsd_Request.machContinuousTimeNs.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL Proto_Gpsd_Request.hasMachContinuousTimeNs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearMachContinuousTimeNs()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

uint64_t Proto_Gpsd_Request.transactionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t Proto_Gpsd_Request.transactionID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 28) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*Proto_Gpsd_Request.transactionID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gpsd_Request.transactionID.modify;
}

void Proto_Gpsd_Request.transactionID.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 28) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL Proto_Gpsd_Request.hasTransactionID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearTransactionID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    Proto_Gpsd_Request._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 28) = 0;
  *(v4 + 32) = 1;
}

uint64_t Proto_Gpsd_Request.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

uint64_t Proto_Gpsd_Request.type.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 33) = a1;
  return result;
}

void (*Proto_Gpsd_Request.type.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 33);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gpsd_Request.type.modify;
}

void Proto_Gpsd_Request.type.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 33) = v3;

  free(v2);
}

BOOL Proto_Gpsd_Request.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 62;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
    *(v1 + v2) = v5;
  }

  swift_beginAccess();
  *(v4 + 33) = 62;
}

uint64_t Proto_Gpsd_Request.injectAssistancePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v8[6]) = 4;
  *(a1 + v8[7]) = 2;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_InjectAssistancePosition.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 2;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistancePosition.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistancePosition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for Proto_Gnss_Position(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    *(v14 + v9[6]) = 4;
    *(v14 + v9[7]) = 2;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  return Proto_Gpsd_Request.injectAssistancePosition.modify;
}

void Proto_Gpsd_Request.injectAssistancePosition.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistancePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistancePosition()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMd, &_s10ALProtobuf35Proto_Gpsd_InjectAssistancePositionVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.injectAssistanceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.injectAssistanceTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.injectAssistanceTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  return Proto_Gpsd_Request.injectAssistanceTime.modify;
}

void Proto_Gpsd_Request.injectAssistanceTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasInjectAssistanceTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearInjectAssistanceTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMd, &_s10ALProtobuf31Proto_Gpsd_InjectAssistanceTimeVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistancePressure.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistancePressure.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistancePressure.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  return Proto_Gpsd_Request.setAssistancePressure.modify;
}

void Proto_Gpsd_Request.setAssistancePressure.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistancePressure.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistancePressure()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMd, &_s10ALProtobuf32Proto_Gpsd_SetAssistancePressureVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceAccel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_SetAssistancePressure.init()@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t Proto_Gpsd_Request.setAssistanceAccel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceAccel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  return Proto_Gpsd_Request.setAssistanceAccel.modify;
}

void Proto_Gpsd_Request.setAssistanceAccel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceAccel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceAccel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMd, &_s10ALProtobuf29Proto_Gpsd_SetAssistanceAccelVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceGyro.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  }

  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceGyro.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceGyro.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  return Proto_Gpsd_Request.setAssistanceGyro.modify;
}

void Proto_Gpsd_Request.setAssistanceGyro.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gpsd_InjectAssistancePosition(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_InjectAssistancePosition(v10, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      Proto_Gpsd_Request._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gpsd_Request.hasSetAssistanceGyro.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gpsd_Request.clearSetAssistanceGyro()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMd, &_s10ALProtobuf28Proto_Gpsd_SetAssistanceGyroVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gpsd_Request.setAssistanceDem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_InjectAssistancePosition(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  }

  return result;
}

int *Proto_Gpsd_InjectAssistanceTime.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t Proto_Gpsd_Request.setAssistanceDem.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    Proto_Gpsd_Request._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_InjectAssistancePosition(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  return swift_endAccess();
}

void (*Proto_Gpsd_Request.setAssistanceDem.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMd, &_s10ALProtobuf27Proto_Gpsd_SetAssistanceDemVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_InjectAssistancePosition(v8, v14, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  }

  return Proto_Gpsd_Request.setAssistanceDem.modify;
}