uint64_t closure #1 in Promptkit_Wireformat_RecursiveSchema.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, "ݟFC");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchema(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, "ݟFC");

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindObject.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaField);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindObject and conformance Promptkit_Wireformat_RecursiveSchemaKindObject, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindObject, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindObject);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(a5, a6, a7);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_RecursiveSchemaKindAnyOf.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, "ݟFC");
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaKindAnyOf and conformance Promptkit_Wireformat_RecursiveSchemaKindAnyOf, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaKindAnyOf);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 4)
      {
        closure #4 in Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_RecursiveSchemaField.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, "ݟFC");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(v3 + 24))
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(v3 + 32) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #4 in Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3);
    type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_RecursiveSchemaField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 28), v7, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchema and conformance Promptkit_Wireformat_RecursiveSchema, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, "ݟFC");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_RecursiveSchemaField@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  v3 = *(a1 + 28);
  v4 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaField);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaField);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_RecursiveSchemaField and conformance Promptkit_Wireformat_RecursiveSchemaField, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, &protocol conformance descriptor for Promptkit_Wireformat_RecursiveSchemaField);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_StringConstraint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  v38 = v5;
  v25 = *(v5 + 56);
  v41 = v4;
  v25(&v34 - v23, 1, 1, v4, v22);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, v11, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v35 = v13;
  v36 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
    v27 = v41;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v11, v18, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v18, v15, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    v28 = v39;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v15, v39, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v28, v24, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    v27 = v41;
    (v25)(v24, 0, 1, v41);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraintStartsWith);
  v29 = v42;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v30 = v40;
  if (v29)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v40, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  if ((*(v38 + 48))(v30, 1, v27) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
  }

  else
  {
    v32 = v37;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v30, v37, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    if (v26 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMd, &_s15TokenGeneration47Promptkit_Wireformat_StringConstraintStartsWithVSgMR);
    v33 = v46;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v33, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
    return (*(v35 + 56))(v33, 0, 1, v36);
  }
}

uint64_t closure #1 in Promptkit_Wireformat_StringConstraint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraintStartsWith);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_StringConstraint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_StringConstraint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_StringConstraint(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraint and conformance Promptkit_Wireformat_StringConstraint, type metadata accessor for Promptkit_Wireformat_StringConstraint, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraint);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PreprocessedImageData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 8, a2, a3);
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_PreprocessedImageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(void))
{
  if (!*(*v6 + 16) || (result = a4(), !v7))
  {
    if (!*(v6[1] + 16) || (result = a5(), !v7))
    {
      (a6)(0, a2, a3, a4);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_StringConstraintStartsWith(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraintStartsWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_StringConstraintStartsWith(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraintStartsWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_StringConstraintStartsWith(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_StringConstraintStartsWith and conformance Promptkit_Wireformat_StringConstraintStartsWith, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith, &protocol conformance descriptor for Promptkit_Wireformat_StringConstraintStartsWith);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_PreprocessedImageData(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          closure #1 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }

        else if (result == 2)
        {
          closure #2 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else if (result == 3)
      {
        closure #3 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else
      {
        closure #5 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result > 8)
    {
      switch(result)
      {
        case 9:
          closure #9 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 10:
          closure #10 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 11:
          closure #11 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else if (result == 6)
    {
      closure #6 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 7)
    {
      closure #7 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else
    {
      closure #8 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v30 = v19 & 0xF000000000000007;
  if (!(v19 >> 60) && v30 != 0xF000000000000007)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaString);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
  }

  else
  {
    v23 = v29;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v29, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    if (v30 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaStringVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    v26 = *v28;
    *v28 = v24;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x1000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaBoolean);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaBooleanVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    v26 = *v28;
    *v28 = v24 | 0x1000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x2000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaInteger);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_JSONSchemaIntegerVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    v26 = *v28;
    *v28 = v24 | 0x2000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x3000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNumber);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaNumberVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    v26 = *v28;
    *v28 = v24 | 0x3000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x4000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    (v18)(v17, 0, 1, v5);
  }

  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_JSONSchemaConstantVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v26 = *v28;
    *v28 = v24 | 0x4000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #6 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x5000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaAnyOf);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaAnyOfVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    v26 = *v28;
    *v28 = v24 | 0x5000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #7 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x6000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaDictionary);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_JSONSchemaDictionaryVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    v26 = *v28;
    *v28 = v24 | 0x6000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #8 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x7000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaArray);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_JSONSchemaArrayVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    v26 = *v28;
    *v28 = v24 | 0x7000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #9 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x8000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaObject);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_JSONSchemaObjectVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    v26 = *v28;
    *v28 = v24 | 0x8000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #10 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0x9000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaReference);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMd, &_s15TokenGeneration40Promptkit_Wireformat_JSONSchemaReferenceVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    v26 = *v28;
    *v28 = v24 | 0x9000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

uint64_t closure #11 in Promptkit_Wireformat_JSONSchema.decodeMessage<A>(decoder:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(v6 + 56);
  v18(&v27 - v16, 1, 1, v5, v15);
  v28 = a1;
  v19 = *a1;
  v29 = v19 & 0xF000000000000007;
  if ((v19 & 0xF000000000000007) != 0xF000000000000007 && (v19 & 0xF000000000000000) == 0xA000000000000000)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    v20 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v10, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v19);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v10, v17, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    (v18)(v17, 0, 1, v5);
  }

  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNull);
  v21 = v31;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v21)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v13, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
  }

  else
  {
    v23 = v30;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v13, v30, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    if (v29 != 0xF000000000000007)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaNullVSgMR);
    v24 = swift_allocBox();
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v25, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v26 = *v28;
    *v28 = v24 | 0xA000000000000000;
    return outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
  }
}

void Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~*v3 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v5 = *v3 >> 60;
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        closure #2 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }

      else
      {
        closure #1 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_2;
        }
      }
    }

    else if (v5 == 2)
    {
      closure #3 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else if (v5 == 3)
    {
      closure #4 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      closure #5 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v5 > 7)
  {
    if (v5 == 8)
    {
      closure #9 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else if (v5 == 9)
    {
      closure #10 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      closure #11 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v5 == 5)
  {
    closure #6 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  else if (v5 == 6)
  {
    closure #7 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
LABEL_2:
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    closure #8 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      goto LABEL_2;
    }
  }
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 60)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaString);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
  }

  return result;
}

void closure #2 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x1000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaBoolean);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
  }

  else
  {
    __break(1u);
  }
}

void closure #3 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x2000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaInteger);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
  }

  else
  {
    __break(1u);
  }
}

void closure #4 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x3000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNumber);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x4000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
  }

  else
  {
    __break(1u);
  }
}

void closure #6 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x5000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaAnyOf);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x6000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaDictionary);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
  }

  else
  {
    __break(1u);
  }
}

void closure #8 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x7000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaArray);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
  }

  else
  {
    __break(1u);
  }
}

void closure #9 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaObject);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0x9000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaReference);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
  }

  else
  {
    __break(1u);
  }
}

void closure #11 in Promptkit_Wireformat_JSONSchema.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xF000000000000000) == 0xA000000000000000)
  {
    v9 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNull);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchema(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaInteger.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaInteger.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if ((*(v3 + 20) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + 28) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaInteger@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaInteger);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaInteger);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaInteger and conformance Promptkit_Wireformat_JSONSchemaInteger, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaInteger);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaNumber.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaNumber.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v3 + 40) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaNumber@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaNumber(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNumber);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaNumber(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNumber and conformance Promptkit_Wireformat_JSONSchemaNumber, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNumber);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaBoolean(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaBoolean);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaBoolean(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaBoolean);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaBoolean(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaBoolean and conformance Promptkit_Wireformat_JSONSchemaBoolean, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaBoolean);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 0;
            break;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 1;
            break;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
            break;
          default:
            goto LABEL_19;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
        }

        else
        {
          if (result != 7)
          {
            goto LABEL_19;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
        }
      }

      else if (result == 4)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 3;
      }

      else
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 4;
      }

      closure #1 in Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
LABEL_19:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaType.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Google_Protobuf_NullValue();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v20 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v15 = (*(v14 + 48))(v9, 1, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v15 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v16 = v20;
  if (*v20 != 7)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v17 = v21;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v16 = v17;
  return result;
}

void Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *v4;
  if (v6 > 3)
  {
    if (*v4 > 5u)
    {
      if (v6 != 6)
      {
        goto LABEL_15;
      }

      closure #7 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 == 4)
      {
        closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
        if (v5)
        {
          return;
        }

        goto LABEL_15;
      }

      closure #6 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (!v5)
      {
        goto LABEL_15;
      }
    }
  }

  else if (*v4 > 1u)
  {
    if (v6 == 2)
    {
      closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (v5)
      {
        return;
      }

      goto LABEL_15;
    }

    closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*v4)
    {
      closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (v5)
      {
        return;
      }

      goto LABEL_15;
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
    if (!v5)
    {
LABEL_15:
      type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
      UnknownStorage.traverse<A>(visitor:)();
    }
  }
}

void closure #6 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaType(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaType);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_JSONSchemaType(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_JSONSchemaString.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t Promptkit_Wireformat_JSONSchemaString.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (v3[4])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    if (v3[6])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaString@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  result = UnknownStorage.init()();
  *a2 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaString(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaString(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaString(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaString and conformance Promptkit_Wireformat_JSONSchemaString, type metadata accessor for Promptkit_Wireformat_JSONSchemaString, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaString);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          goto LABEL_20;
        }

        if (result == 8)
        {
          type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 5)
      {
        closure #5 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else
      {
LABEL_20:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_19;
      }

      sub_1AB834B34(a1, v5, a2, a3);
    }

    else if (result == 1)
    {
      closure #1 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
LABEL_19:
      type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaType);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchemaObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v3[2] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    if (*(v3[3] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    closure #4 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 32), v7, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaType and conformance Promptkit_Wireformat_JSONSchemaType, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaType);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchemaObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaObject@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[8];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[10];
  v7 = &a2[a1[9]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  a2[a1[11]] = 2;
  UnknownStorage.init()();
  v9 = MEMORY[0x1E69E7CC0];
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(v9);
  *(a2 + 1) = result;
  *(a2 + 2) = v9;
  *(a2 + 3) = v9;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_JSONSchemaObject@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaObject(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaObject and conformance Promptkit_Wireformat_JSONSchemaObject, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaObject);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 3)
    {
      closure #3 in Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 4 || result == 5)
    {
      type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 8))
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(v3 + 24))
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #3 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, v7, a2, a3, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty);
    closure #5 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(v3, v7, a2, a3);
    type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t closure #5 in Promptkit_Wireformat_JSONSchemaProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaProperty@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  a2[a1[7]] = 2;
  a2[v6] = 2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaProperty and conformance Promptkit_Wireformat_JSONSchemaProperty, type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaProperty);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1AB834B34(a1, v5, a2, a3);
      }
    }

    else if (result == 3)
    {
      closure #3 in Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 4 || result == 5)
    {
      type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaArray.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #3 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3, v7, a2, a3);
    closure #4 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(v3, v7, a2, a3);
    type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_JSONSchemaArray.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaArray@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v4 = a1[6];
  v5 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  v7[4] = 1;
  v8 = &a2[v6];
  *v8 = 0;
  v8[4] = 1;
  UnknownStorage.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaArray(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaArray);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaArray(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaArray);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaArray(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaArray and conformance Promptkit_Wireformat_JSONSchemaArray, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaArray);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      case 4:
        closure #3 in Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 3:
        sub_1AB834B34(a1, v5, a2, a3);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_JSONSchemaDictionary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[2])
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(v3, v7, a2, a3);
    type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_JSONSchemaDictionary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_JSONSchema);
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaDictionary@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  UnknownStorage.init()();
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaDictionary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaDictionary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaDictionary and conformance Promptkit_Wireformat_JSONSchemaDictionary, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaDictionary);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_JSONSchemaAnyOf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_1AB834B34(a1, v5, a2, a3);
        }

        else if (result == 5)
        {
          type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_JSONSchemaAnyOf.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[3])
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (v3[5])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(*v3 + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, "̓GC\b\rdF");
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchema and conformance Promptkit_Wireformat_JSONSchema, type metadata accessor for Promptkit_Wireformat_JSONSchema, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchema);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

unint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_JSONSchemaAnyOf@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  UnknownStorage.init()();
  v3 = MEMORY[0x1E69E7CC0];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaAnyOf and conformance Promptkit_Wireformat_JSONSchemaAnyOf, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaAnyOf);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaConstant(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaConstant and conformance Promptkit_Wireformat_JSONSchemaConstant, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaConstant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaConstant(uint64_t a1)
{

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaConstant(uint64_t a1, uint64_t a2)
{

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaReference(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaReference);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaReference(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaReference);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaReference(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaReference and conformance Promptkit_Wireformat_JSONSchemaReference, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaReference);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_JSONSchemaNull(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNull);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_JSONSchemaNull(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNull);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_JSONSchemaNull(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_JSONSchemaNull and conformance Promptkit_Wireformat_JSONSchemaNull, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull, &protocol conformance descriptor for Promptkit_Wireformat_JSONSchemaNull);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationSize);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          closure #2 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 4:
            closure #4 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, ";FC@dF");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationDetail);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in Promptkit_Wireformat_ImageGenerationParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationCount);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #4 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationSize);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 20), v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, ";FC@dF");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
}

uint64_t closure #3 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationDetail);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
}

uint64_t closure #4 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 28), v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationCount);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
}

uint64_t closure #5 in Promptkit_Wireformat_ImageGenerationParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageGenerationParameters@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[7];
  v10 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = (a2 + a1[8]);
  *v11 = 0;
  v11[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_JSONSchemaProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationParameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationParameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationParameters and conformance Promptkit_Wireformat_ImageGenerationParameters, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationParameters);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
        }

        else if (result == 2)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 2);
            break;
          case 4:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
            break;
          case 5:
            closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 4);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationSize.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Google_Protobuf_NullValue();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v20 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v15 = (*(v14 + 48))(v9, 1, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v15 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v16 = v20;
  if (*v20 != 5)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v17 = v21;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v16 = v17;
  return result;
}

void Promptkit_Wireformat_ImageGenerationSize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *v4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_11;
      }

      closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (!v5)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!*v4)
    {
      closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (v5)
      {
        return;
      }

      goto LABEL_11;
    }

    if (v6 == 1)
    {
      closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
      if (v5)
      {
        return;
      }

      goto LABEL_11;
    }

    closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
    if (!v5)
    {
LABEL_11:
      type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
      UnknownStorage.traverse<A>(visitor:)();
    }
  }
}

void closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }
}

void closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(_BYTE *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationSize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationSize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationSize(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationSize);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationSize(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSize and conformance Promptkit_Wireformat_ImageGenerationSize, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationSize);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationSize(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Google_Protobuf_NullValue();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, 1, 1, v13);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v5)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v20 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v15 = (*(v14 + 48))(v9, 1, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v15 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v16 = v20;
  if (*v20 != 4)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v17 = v21;
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v16 = v17;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationShape(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationShape);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, ";FC@dF");

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationShape(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShape and conformance Promptkit_Wireformat_ImageGenerationShape, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, ";FC@dF");

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        closure #1 in Promptkit_Wireformat_ImageGenerationShape.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

void Promptkit_Wireformat_ImageGenerationShape.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), __n128 a5)
{
  v8 = *v5;
  if (v8 <= 1)
  {
    if (!*v5)
    {
      closure #1 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v5, a5, a1, a2, a3);
      if (v6)
      {
        return;
      }

      goto LABEL_10;
    }

    closure #2 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v5, a5, a1, a2, a3);
    if (!v6)
    {
LABEL_10:
      a4(0);
      UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    if (v8 == 2)
    {
      closure #3 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v5, a5, a1, a2, a3);
      if (v6)
      {
        return;
      }

      goto LABEL_10;
    }

    if (v8 != 3)
    {
      goto LABEL_10;
    }

    closure #4 in Promptkit_Wireformat_JSONSchemaType.traverse<A>(visitor:)(v5, a5, a1, a2, a3);
    if (!v6)
    {
      goto LABEL_10;
    }
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationDetail(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationDetail(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationDetail(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetail and conformance Promptkit_Wireformat_ImageGenerationDetail, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationDetail);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationShape(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Promptkit_Wireformat_CompletionPromptV1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ImageGenerationCount.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for Google_Protobuf_NullValue();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (v4)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v18 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v8, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  v14 = (*(v13 + 48))(v8, 1, v12);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  if (v14 == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  }

  v15 = v18;
  if ((*(v18 + 5) & 1) == 0)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMd, &_s21InternalSwiftProtobuf07Google_C10_NullValueOSgMR);
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

void Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(v4 + 5))
  {
    goto LABEL_2;
  }

  if (((*v4 | (*(v4 + 4) << 32)) & 0x100000000) != 0)
  {
    closure #2 in Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)(v4, a4, a1, a2, a3);
    if (!v5)
    {
      goto LABEL_2;
    }
  }

  else
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v5)
    {
LABEL_2:
      type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
      UnknownStorage.traverse<A>(visitor:)();
    }
  }
}

void closure #2 in Promptkit_Wireformat_ImageGenerationCount.traverse<A>(visitor:)(unsigned int *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_NullValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || ((*a1 | (*(a1 + 4) << 32)) & 0x100000000) == 0)
  {
    __break(1u);
  }

  else
  {
    Google_Protobuf_NullValue.init()();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Google_Protobuf_NullValue and conformance Google_Protobuf_NullValue, MEMORY[0x1E69AA8E8], MEMORY[0x1E69AA8E0]);
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ImageGenerationCount@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ImageGenerationCount(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationCount);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ImageGenerationCount(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationCount);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageGenerationCount(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationCount and conformance Promptkit_Wireformat_ImageGenerationCount, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, &protocol conformance descriptor for Promptkit_Wireformat_ImageGenerationCount);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_FileGenerationParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_FileGenerationParameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_FileGenerationParameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_FileGenerationParameters and conformance Promptkit_Wireformat_FileGenerationParameters, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters, &protocol conformance descriptor for Promptkit_Wireformat_FileGenerationParameters);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_CustomData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ToolCallFunction.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    v7 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v5)
  {
    if (*(v4 + 24))
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v7;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_CompletionPromptV1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_CompletionPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_DocumentIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier, &protocol conformance descriptor for Promptkit_Wireformat_DocumentIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_DocumentIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier, &protocol conformance descriptor for Promptkit_Wireformat_DocumentIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_DocumentIdentifier(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_DocumentIdentifier and conformance Promptkit_Wireformat_DocumentIdentifier, type metadata accessor for Promptkit_Wireformat_DocumentIdentifier, &protocol conformance descriptor for Promptkit_Wireformat_DocumentIdentifier);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormat.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatKind);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormat(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormat);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormat(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormat);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormat(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormat);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_PromptRequestV1PromptVariant.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormatKind.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      v30 = v45;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ResponseFormatSchemaDetailsVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_ResponseFormatKind.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMd, &_s15TokenGeneration49Promptkit_Wireformat_ResponseFormatGrammarDetailsVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v13 - v9, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ResponseFormatKind.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatKind(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatKind);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatKind(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatKind);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatKind(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatKind and conformance Promptkit_Wireformat_ResponseFormatKind, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatKind);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ToolDefinitionFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ResponseFormatSchemaDetails.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  type metadata accessor for Promptkit_Wireformat_Schema(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema, &protocol conformance descriptor for Promptkit_Wireformat_Schema);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ToolDefinitionFunction.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v11 = result;
  if (v5[1])
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v6)
  {
    if (v5[3])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    a4(v5, v11, a2, a3);
    a5(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ResponseFormatSchemaDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_Schema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_Schema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema, &protocol conformance descriptor for Promptkit_Wireformat_Schema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_Schema);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ToolDefinitionFunction@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v4 = *(a1 + 24);
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(&a3[v4], 1, 1, v5);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatSchemaDetails(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatSchemaDetails and conformance Promptkit_Wireformat_ResponseFormatSchemaDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatSchemaDetails);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_Schema.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_GenerationSchema and conformance Promptkit_Wireformat_GenerationSchema, type metadata accessor for Promptkit_Wireformat_GenerationSchema, &protocol conformance descriptor for Promptkit_Wireformat_GenerationSchema);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Schema(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema, &protocol conformance descriptor for Promptkit_Wireformat_Schema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Schema(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema, &protocol conformance descriptor for Promptkit_Wireformat_Schema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Schema(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Schema and conformance Promptkit_Wireformat_Schema, type metadata accessor for Promptkit_Wireformat_Schema, &protocol conformance descriptor for Promptkit_Wireformat_Schema);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ResponseFormatGrammarDetails.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Promptkit_Wireformat_ResponseFormatGrammarDetails.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (v3[1])
  {
    v5 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (v3[3])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (v3[5])
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails@<X0>(_OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_ChatPromptV1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_ChatPromptV1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormatGrammarDetails and conformance Promptkit_Wireformat_ResponseFormatGrammarDetails, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormatGrammarDetails);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Modality(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality, &protocol conformance descriptor for Promptkit_Wireformat_Modality);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Modality(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality, &protocol conformance descriptor for Promptkit_Wireformat_Modality);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Modality(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality, &protocol conformance descriptor for Promptkit_Wireformat_Modality);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_Voice(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice, &protocol conformance descriptor for Promptkit_Wireformat_Voice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_Voice(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice, &protocol conformance descriptor for Promptkit_Wireformat_Voice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_Voice(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice, &protocol conformance descriptor for Promptkit_Wireformat_Voice);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 4:
          closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v30 = v45;
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
      v32 = v40;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
  }

  else
  {
    v36 = v41;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptSystemVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptUser);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptUserVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMd, &_s15TokenGeneration51Promptkit_Wireformat_ChatMessageRolePromptAssistantVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMd, &_s15TokenGeneration46Promptkit_Wireformat_ChatMessageRolePromptToolVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v12, v19, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
      v32 = v41;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v16, v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v32, v25, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v16, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v33, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v33, v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMd, &_s15TokenGeneration48Promptkit_Wireformat_ChatMessageRolePromptCustomVSgMR);
    v37 = v39;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v36, v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &v14 - v9, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  if (!v4)
  {
LABEL_12:
    type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #2 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptUser);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #4 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptTool);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t closure #5 in Promptkit_Wireformat_ChatMessageRolePrompt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v11 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
  }

  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePrompt(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePrompt(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePrompt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePrompt and conformance Promptkit_Wireformat_ChatMessageRolePrompt, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePrompt);

  return Message.hash(into:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          closure #3 in Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          type metadata accessor for Promptkit_Wireformat_ToolDefinition(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition, &protocol conformance descriptor for Promptkit_Wireformat_ToolDefinition);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for Promptkit_Wireformat_Modality(0);
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality, &protocol conformance descriptor for Promptkit_Wireformat_Modality);
        }

        v4 = v11;
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Promptkit_Wireformat_ChatMessageRolePromptSystem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  type metadata accessor for Promptkit_Wireformat_Voice(0);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice, &protocol conformance descriptor for Promptkit_Wireformat_Voice);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Promptkit_Wireformat_ToolDefinition(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ToolDefinition and conformance Promptkit_Wireformat_ToolDefinition, type metadata accessor for Promptkit_Wireformat_ToolDefinition, &protocol conformance descriptor for Promptkit_Wireformat_ToolDefinition), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Promptkit_Wireformat_Modality(0), lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Modality and conformance Promptkit_Wireformat_Modality, type metadata accessor for Promptkit_Wireformat_Modality, &protocol conformance descriptor for Promptkit_Wireformat_Modality), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePromptSystem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v12 + 24), v7, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_Voice);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_Voice and conformance Promptkit_Wireformat_Voice, type metadata accessor for Promptkit_Wireformat_Voice, &protocol conformance descriptor for Promptkit_Wireformat_Voice);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_Voice);
}

uint64_t closure #4 in Promptkit_Wireformat_GenerationSchemaField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  a2[*(a1 + 28)] = 2;
  result = UnknownStorage.init()();
  v7 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v7;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_ImageEmbeddingData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptSystem and conformance Promptkit_Wireformat_ChatMessageRolePromptSystem, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptSystem);

  return Message.hash(into:)();
}

uint64_t closure #1 in Promptkit_Wireformat_ChatMessageRolePromptUser.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Promptkit_Wireformat_ResponseFormat(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v7, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v7, v11, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ResponseFormat and conformance Promptkit_Wireformat_ResponseFormat, type metadata accessor for Promptkit_Wireformat_ResponseFormat, &protocol conformance descriptor for Promptkit_Wireformat_ResponseFormat);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
}

uint64_t protocol witness for Message.init() in conformance Promptkit_Wireformat_VersionedPromptRequest@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptUser(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptUser(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptUser(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptUser and conformance Promptkit_Wireformat_ChatMessageRolePromptUser, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptUser);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptAssistant and conformance Promptkit_Wireformat_ChatMessageRolePromptAssistant, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_FileGenerationParameters@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_FileGenerationParameters(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptTool(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptTool(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptTool and conformance Promptkit_Wireformat_ChatMessageRolePromptTool, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptTool);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ChatMessageRolePromptCustom(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_ChatMessageRolePromptCustom and conformance Promptkit_Wireformat_ChatMessageRolePromptCustom, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom, &protocol conformance descriptor for Promptkit_Wireformat_ChatMessageRolePromptCustom);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ABA1D930;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Promptkit_Wireformat_BindableVariable.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  }

  return result;
}

uint64_t Promptkit_Wireformat_BindableVariable.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    v7 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (!v5)
  {
    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return v7;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Promptkit_Wireformat_VersionedPromptRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Promptkit_Wireformat_SelfAttention(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention, &protocol conformance descriptor for Promptkit_Wireformat_SelfAttention);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Promptkit_Wireformat_PromptComponentPrivacy@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Promptkit_Wireformat_SelfAttention(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention, &protocol conformance descriptor for Promptkit_Wireformat_SelfAttention);

  return MEMORY[0x1EEE15928](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_SelfAttention(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention, type metadata accessor for Promptkit_Wireformat_SelfAttention, &protocol conformance descriptor for Promptkit_Wireformat_SelfAttention);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double default argument 1 of TokenGenerator.complete<A>(prompt:parameters:generating:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CD0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 131) = 514;
  result = 0.0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 200) = 768;
  *(a1 + 208) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 129) = 514;
  return result;
}

double default argument 1 of TokenGenerator.complete(prompt:parameters:schema:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = MEMORY[0x1E69E7CD0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 131) = 514;
  result = 0.0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 200) = 768;
  *(a1 + 208) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 129) = 514;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatGrammarDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (v10 && (a1[4] == a2[4] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_22;
    }
  }

  else if (!v10)
  {
LABEL_22:
    type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_VersionedChatMessagePrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v16 = *(v15 + 56);
  v26 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v13, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v27 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v24;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  v21 = *(v25 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, v5, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, &v5[v21], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  v22 = specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(v5, &v5[v21]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(&v5[v21], type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptUser.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormat(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v22 - v13, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  v20 = specialized static Promptkit_Wireformat_ResponseFormat.== infix(_:_:)(v11, v8, v19);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormat);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_ResponseFormatVSgMR);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchemaKindObject.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v7 != v8)
    {
      v10 = a3;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a3(*a1, *a2))
  {
    a4(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptCustom.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a3;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v5)
  {
LABEL_8:
    a3(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchemaField.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_26;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_26;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_26;
    }

    if (*(a1 + 16) != *(a2 + 16) || v19 != v20)
    {
      v21 = v12;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v20)
  {
    goto LABEL_26;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    goto LABEL_26;
  }

  v25 = v12;
  v33 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  v26 = *(v33 + 28);
  v27 = *(v25 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v26, v14, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v34 = v27;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v26, &v14[v27], &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v28 = *(v5 + 48);
  if (v28(v14, 1, v4) == 1)
  {
    if (v28(&v14[v34], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
LABEL_29:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v30 & 1;
    }

    goto LABEL_25;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v10, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v29 = v34;
  if (v28(&v14[v34], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
    goto LABEL_26;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v29], v7, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v32 = specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(v10, v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  if (v32)
  {
    goto LABEL_29;
  }

LABEL_26:
  v30 = 0;
  return v30 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaDictionary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v15)
  {
    goto LABEL_25;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  v31 = v7;
  v32 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v17 = *(v32 + 24);
  v18 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v17, v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v17, &v13[v18], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_15;
    }

    v23 = &v13[v18];
    v24 = v31;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v31, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v25 = *v10;
    v26 = *v24;
    v27 = *v24 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v27 == 0xF000000000000007)
      {
        goto LABEL_23;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v24);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v25);
      v28 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v25, v26);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v26);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v25);
      if ((v28 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v27 != 0xF000000000000007)
    {
LABEL_23:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v21 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v22 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_24;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v29)
    {
      goto LABEL_12;
    }

LABEL_25:
    v20 = 0;
    return v20 & 1;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
LABEL_15:
    v21 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v22 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_24:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v21, v22);
    goto LABEL_25;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_12:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedChatPrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4);
  v29 = (&v28 - v5);
  v6 = type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v16 = *(v15 + 56);
  v30 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v28 - v13, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v31 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
    if (v17(&v14[v16], 1, v6) != 1)
    {
      v21 = v28;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v28, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      v22 = v29;
      v23 = (v29 + *(v4 + 48));
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, v29, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, v23, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*v22, *v23))
      {
        _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v22[1], v23[1]);
        if (v24)
        {
          _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v22[2], v23[2]);
          if (v25)
          {
            type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v26 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v23, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
            if (v26)
            {
              goto LABEL_4;
            }

LABEL_15:
            v18 = 0;
            return v18 & 1;
          }
        }
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v21, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v23, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
      v19 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd;
      v20 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR;
LABEL_14:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v19, v20);
      goto LABEL_15;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
LABEL_7:
    v19 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMd;
    v20 = &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSg_ADtMR;
    goto LABEL_14;
  }

  if (v17(&v14[v16], 1, v6) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumOSgMR);
LABEL_4:
  type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaProperty.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v38 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v15)
  {
    goto LABEL_38;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v17)
  {
    goto LABEL_38;
  }

  v38 = v7;
  v39 = type metadata accessor for Promptkit_Wireformat_JSONSchemaProperty(0);
  v18 = v39[6];
  v19 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v18, v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v18, &v13[v19], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_23;
    }

    v26 = &v13[v19];
    v27 = v38;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v26, v38, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v28 = *v10;
    v29 = *v27;
    v30 = *v27 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v30 == 0xF000000000000007)
      {
        goto LABEL_36;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v27);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v28);
      v34 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v28, v29);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v29);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v28);
      if ((v34 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v30 != 0xF000000000000007)
    {
LABEL_36:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v24 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_37;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v35 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
LABEL_23:
    v24 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_37:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v24, v25);
    goto LABEL_38;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_18:
  v21 = v39[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    goto LABEL_38;
  }

  v31 = v39[8];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 != 2)
  {
    if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v36 & 1;
  }

  if (v33 == 2)
  {
    goto LABEL_42;
  }

LABEL_38:
  v36 = 0;
  return v36 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaReference.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    if (*a1 != *a2 || v5 != v6)
    {
      v8 = a3;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (v11)
    {
      if (a1[2] == a2[2] && v10 == v11)
      {
        goto LABEL_15;
      }

      v12 = a3;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v12;
      if (v13)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v11)
  {
LABEL_15:
    a3(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageEmbeddingData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = (v3 ^ v2) & 1;
    if (v3 == 2 || v4 != 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v6 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      outlined copy of Data?(*(a1 + 1), v6);
      outlined copy of Data?(v9, v8);
      outlined consume of Data?(v7, v6);
      v12 = a1;
      v13 = a2;
      goto LABEL_16;
    }

LABEL_13:
    outlined copy of Data?(*(a1 + 1), v6);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_13;
  }

  outlined copy of Data?(*(a1 + 1), v6);
  outlined copy of Data?(v9, v8);
  v17 = specialized static Data.== infix(_:_:)(v7, v6, v9, v8);
  outlined consume of Data?(v9, v8);
  outlined consume of Data?(v7, v6);
  v12 = a1;
  v13 = a2;
  if (!v17)
  {
    return 0;
  }

LABEL_16:
  v18 = v13[28];
  if (v12[28])
  {
    if (!v13[28])
    {
      return 0;
    }
  }

  else
  {
    if (*(v12 + 6) != *(v13 + 6))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(v12 + 5);
  v20 = *(v13 + 5);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v20 || (*(v12 + 4) != *(v13 + 4) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaInteger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaObject.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchemaType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v44 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v45 = a1;
  v14 = *(v44 + 32);
  v15 = *(v11 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v14, v13, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v14, &v13[v15], &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v9, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
      goto LABEL_12;
    }

    v28 = v43;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v43, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    v29 = *v9;
    v30 = *v28;
    if (v29 == 7)
    {
      if (v30 != 7)
      {
LABEL_18:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
        v24 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd;
        v25 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR;
        goto LABEL_13;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_18;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_JSONSchemaType);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
    if ((v31 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_12:
    v24 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMd;
    v25 = &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSg_ADtMR;
LABEL_13:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v24, v25);
    goto LABEL_14;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMd, &_s15TokenGeneration35Promptkit_Wireformat_JSONSchemaTypeVSgMR);
LABEL_4:
  v17 = v44;
  v18 = v45;
  v19 = *(v44 + 36);
  v20 = (v45 + v19);
  v21 = *(v45 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v23)
  {
    goto LABEL_14;
  }

  v32 = *(v17 + 40);
  v33 = (v18 + v32);
  v34 = *(v18 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v36)
  {
    goto LABEL_14;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*v18, *a2);
  if (v37)
  {
    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(v18[1], a2[1]);
    if (v38 & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v18[2], a2[2]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v18[3], a2[3]))
    {
      v39 = *(v17 + 44);
      v40 = *(v18 + v39);
      v41 = *(a2 + v39);
      if (v40 == 2)
      {
        if (v41 == 2)
        {
LABEL_39:
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v26 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v26 & 1;
        }
      }

      else if (v41 != 2 && ((v40 ^ v41) & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_14:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaNumber.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v26 - v12, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v13[v15], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_7;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v20 = *v10;
    v21 = *v7;
    v22 = *v7 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v22 == 0xF000000000000007)
      {
        goto LABEL_15;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v7);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v20);
      v23 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v20, v21);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v21);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v20);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v22 != 0xF000000000000007)
    {
LABEL_15:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v18 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v19 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_16;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_7:
    v18 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v19 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_16:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v18, v19);
    goto LABEL_17;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_4:
  type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponentValue.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v19 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v30 - v12, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v13[v15], &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      v20 = specialized static Promptkit_Wireformat_PromptComponentValue.== infix(_:_:)(v10, v7, v19);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
LABEL_10:
  v21 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v22 = *(v21 + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_7;
    }
  }

  v27 = *(v21 + 24);
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 3)
  {
    if (v29 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v28 == v29)
  {
LABEL_20:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v41 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v15)
  {
    goto LABEL_33;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_33;
  }

  v41 = v7;
  v42 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v17 = v42[6];
  v18 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v17, v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v17, &v13[v18], &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      goto LABEL_17;
    }

    v27 = &v13[v18];
    v28 = v41;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v27, v41, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v29 = *v10;
    v30 = *v28;
    v31 = *v28 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v31 == 0xF000000000000007)
      {
        goto LABEL_31;
      }

      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v28);
      outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v29);
      v37 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v29, v30);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v30);
      outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v29);
      if ((v37 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v31 != 0xF000000000000007)
    {
LABEL_31:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
      v26 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
      goto LABEL_32;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v28, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
LABEL_17:
    v25 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
    v26 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
LABEL_32:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v25, v26);
    goto LABEL_33;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
LABEL_12:
  v20 = v42[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_33;
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
      goto LABEL_33;
    }
  }

  v32 = v42[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if ((v34 & 1) == 0)
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_33;
    }

LABEL_38:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v39 & 1;
  }

  if (v36)
  {
    goto LABEL_38;
  }

LABEL_33:
  v39 = 0;
  return v39 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaAnyOf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[2] == a2[2] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[5];
  v8 = a2[5];
  if (v7)
  {
    if (!v8 || (a1[4] != a2[4] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(*a1, *a2);
  if (v9 & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_JSONSchemaV_Tt1g5(a1[1], a2[1]))
  {
    type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionType.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  v19 = static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v12, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v13[v15], &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ToolDefinition(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  v19 = specialized static Promptkit_Wireformat_ToolDefinitionType.== infix(_:_:)(v10, v7, v18);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatSchemaDetails.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Schema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
    goto LABEL_21;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v27 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v18 = *(v27 + 24);
  v19 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v18, v13, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v20 = a2 + v18;
  v21 = v19;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &v13[v19], &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_20;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_Schema);
LABEL_20:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSg_ADtMR);
    goto LABEL_21;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v21], v7, type metadata accessor for Promptkit_Wireformat_Schema);
  v25 = specialized static Promptkit_Wireformat_Schema.== infix(_:_:)(v10, v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_Schema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_Schema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_SchemaVSgMR);
  if (v25)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatKind.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  v19 = specialized static Promptkit_Wireformat_ResponseFormatKindEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormat.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKind(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v22 - v13, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ResponseFormat(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  v20 = specialized static Promptkit_Wireformat_ResponseFormatKind.== infix(_:_:)(v11, v8, v19);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatKind);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ResponseFormatKindVSgMR);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ImageSurface.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      outlined copy of Data?(*a1, v4);
      outlined copy of Data?(v7, v6);
      outlined consume of Data?(v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(*a1, v4);
    outlined copy of Data?(v7, v6);
    outlined consume of Data?(v5, v4);
    outlined consume of Data?(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(*a1, v4);
  outlined copy of Data?(v7, v6);
  v9 = specialized static Data.== infix(_:_:)(v5, v4, v7, v6);
  outlined consume of Data?(v7, v6);
  outlined consume of Data?(v5, v4);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  v10 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a2 + 44);
  if (*(a1 + 44))
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 56);
  v15 = *(a2 + 56);
  if (v14)
  {
    if (v15 && (*(a1 + 48) == *(a2 + 48) && v14 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_39:
  type metadata accessor for Promptkit_Wireformat_ImageSurface(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionFunction.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v15)
  {
    goto LABEL_31;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v17)
  {
    goto LABEL_31;
  }

  v32 = v7;
  v33 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  v18 = *(v33 + 24);
  v19 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v18, v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v18, &v13[v19], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_21;
    }

    v24 = &v13[v19];
    v25 = v32;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v24, v32, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v26 = *v10;
    v27 = *v25;
    v28 = *v25 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v28 == 0xF000000000000007)
      {
        goto LABEL_29;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v25);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v26);
      v29 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v26, v27);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v26);
      if ((v29 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v28 != 0xF000000000000007)
    {
LABEL_29:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v22 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v23 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_30;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v30)
    {
      goto LABEL_18;
    }

LABEL_31:
    v21 = 0;
    return v21 & 1;
  }

  if (v20(&v13[v19], 1, v4) != 1)
  {
LABEL_21:
    v22 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v23 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_30:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v22, v23);
    goto LABEL_31;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_18:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePromptSystem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Voice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v30 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration35Promptkit_Wireformat_ToolDefinitionV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ModalityV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v30 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v31 = a2;
  v14 = *(v30 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v14, v13, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v16 = v31 + v14;
  v17 = v31;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &v13[v15], &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if (v18(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_Voice);
LABEL_11:
    v22 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMd;
    v23 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSg_ADtMR;
LABEL_26:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v22, v23);
LABEL_27:
    v28 = 0;
    return v28 & 1;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_Voice);
  v24 = v10[1];
  v25 = v7[1];
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_Voice);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_Voice);
    v22 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd;
    v23 = &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR;
    goto LABEL_26;
  }

  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = *v10 == *v7 && v24 == v25;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = v31;
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_Voice);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_Voice);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMd, &_s15TokenGeneration26Promptkit_Wireformat_VoiceVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v19 = *(v30 + 28);
  v20 = *(a1 + v19);
  v21 = *(v17 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    goto LABEL_27;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRolePrompt.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  v19 = specialized static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = (&v45 - v7);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v45 - v8;
  v9 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - v17;
  v20 = *(v19 + 56);
  v51 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v45 - v17, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v52 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v18[v20], &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMd;
    v23 = &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSg_ADtMR;
    v24 = v18;
LABEL_21:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v22, v23);
    goto LABEL_22;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, v15, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v15, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
    goto LABEL_6;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v18[v20], v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  v26 = specialized static Promptkit_Wireformat_ChatMessageRolePrompt.== infix(_:_:)(v15, v12, v25);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v15, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v27 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);
  v28 = *(v27 + 20);
  v29 = *(v47 + 48);
  v31 = v50;
  v30 = v51;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51 + v28, v50, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v32 = v52;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v52 + v28, v31 + v29, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v33 = v49;
  v34 = *(v48 + 48);
  if (v34(v31, 1, v49) != 1)
  {
    v40 = v46;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v46, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v34(v31 + v29, 1, v33) != 1)
    {
      v43 = v45;
      outlined init with take of Promptkit_Wireformat_PromptRequestV1(v31 + v29, v45, type metadata accessor for Promptkit_Wireformat_Prompt);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v40, *v43))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v43, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v40, type metadata accessor for Promptkit_Wireformat_Prompt);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
        if ((v44 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v43, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v40, type metadata accessor for Promptkit_Wireformat_Prompt);
      v22 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
      v23 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
      goto LABEL_20;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v40, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_19:
    v22 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v23 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_20:
    v24 = v31;
    goto LABEL_21;
  }

  if (v34(v31 + v29, 1, v33) != 1)
  {
    goto LABEL_19;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
LABEL_11:
  v35 = *(v27 + 24);
  v36 = (v30 + v35);
  v37 = *(v30 + v35 + 8);
  v38 = (v32 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (v39 && (*v36 == *v38 && v37 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_29;
    }
  }

  else if (!v39)
  {
LABEL_29:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v41 & 1;
  }

LABEL_22:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatPromptV1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(a1[1], a2[1]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(a1[2], a2[2]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResultContent.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  v19 = specialized static Promptkit_Wireformat_ToolResultContentEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResult.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v45 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = a1[1];
  v22 = a2[1];
  if (v21)
  {
    if (!v22 || (*a1 != *a2 || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v22)
  {
    goto LABEL_24;
  }

  v45 = v6;
  v47 = v10;
  v46 = type metadata accessor for Promptkit_Wireformat_ToolResult(0);
  v23 = *(v46 + 20);
  v24 = *(v18 + 48);
  v48 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v23, v20, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v25 = a2 + v23;
  v26 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &v20[v24], &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v24], 1, v11) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
      goto LABEL_15;
    }

LABEL_13:
    v28 = &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMd;
    v29 = &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMR;
    v30 = v20;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, v28, v29);
    goto LABEL_24;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, v17, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (v27(&v20[v24], 1, v11) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v17, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
    goto LABEL_13;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v20[v24], v14, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  v32 = specialized static Promptkit_Wireformat_ToolResultContent.== infix(_:_:)(v17, v14, v31);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v17, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v33 = v47;
  v34 = *(v46 + 24);
  v35 = *(v50 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48 + v34, v47, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v36 = v26 + v34;
  v37 = v33;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v33 + v35, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v38 = v52;
  v39 = *(v51 + 48);
  if (v39(v33, 1, v52) != 1)
  {
    v41 = v49;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, v49, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v39(v33 + v35, 1, v38) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v41, type metadata accessor for Promptkit_Wireformat_Prompt);
      goto LABEL_21;
    }

    v43 = v45;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v37 + v35, v45, type metadata accessor for Promptkit_Wireformat_Prompt);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v41, *v43) & 1) == 0)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v43, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v41, type metadata accessor for Promptkit_Wireformat_Prompt);
      v28 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
      v29 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
      goto LABEL_22;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v43, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v41, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v44)
    {
      goto LABEL_18;
    }

LABEL_24:
    v40 = 0;
    return v40 & 1;
  }

  if (v39(v33 + v35, 1, v38) != 1)
  {
LABEL_21:
    v28 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v29 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_22:
    v30 = v37;
    goto LABEL_23;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
LABEL_18:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v40 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2))
  {
    v9 = a1[6];
    v10 = a2[6];
    if (v9)
    {
      if (v10 && (a1[5] == a2[5] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        goto LABEL_23;
      }
    }

    else if (!v10)
    {
LABEL_23:
      type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponentCustomData.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *a1 == *a2 && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v10 = a1[2];
  v9 = a1[3];
  v12 = a2[2];
  v11 = a2[3];
  if (v9 >> 60 != 15)
  {
    if (v11 >> 60 == 15)
    {
      goto LABEL_14;
    }

    outlined copy of Data?(a1[2], a1[3]);
    outlined copy of Data?(v12, v11);
    v14 = specialized static Data.== infix(_:_:)(v10, v9, v12, v11);
    outlined consume of Data?(v12, v11);
    outlined consume of Data?(v10, v9);
    if (v14)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v11 >> 60 != 15)
  {
LABEL_14:
    outlined copy of Data?(a1[2], a1[3]);
    outlined copy of Data?(v12, v11);
    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v12, v11);
    return 0;
  }

  outlined copy of Data?(a1[2], a1[3]);
  outlined copy of Data?(v12, v11);
  outlined consume of Data?(v10, v9);
LABEL_17:
  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ImageData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageFormat(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v33 - v12, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v13[v15], &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ImageFormat);
      goto LABEL_9;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    v27 = *v10;
    v28 = *v7;
    if (v27 == 2)
    {
      if (v28 == 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = (v28 ^ v27) & 1;
      if (v28 != 2 && v30 == 0)
      {
LABEL_15:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ImageFormat);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ImageFormat);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
        if ((v29 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    v23 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd;
    v24 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_9:
    v23 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMd;
    v24 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMR;
LABEL_10:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v23, v24);
    goto LABEL_11;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
LABEL_4:
  v17 = *(type metadata accessor for Promptkit_Wireformat_ImageData(0) + 20);
  v19 = *(a1 + v17);
  v18 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v22 = *v20;
  v21 = v20[1];
  if (v18 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      outlined copy of Data?(v19, v18);
      outlined copy of Data?(v22, v21);
      outlined consume of Data?(v19, v18);
LABEL_25:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_18;
  }

  if (v21 >> 60 == 15)
  {
LABEL_18:
    outlined copy of Data?(v19, v18);
    outlined copy of Data?(v22, v21);
    outlined consume of Data?(v19, v18);
    outlined consume of Data?(v22, v21);
    goto LABEL_11;
  }

  outlined copy of Data?(v19, v18);
  outlined copy of Data?(v22, v21);
  v32 = specialized static Data.== infix(_:_:)(v19, v18, v22, v21);
  outlined consume of Data?(v22, v21);
  outlined consume of Data?(v19, v18);
  if (v32)
  {
    goto LABEL_25;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolCallContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v16 = *(v15 + 56);
  v26 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v13, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v27 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v24;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v24, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v21 = *(v25 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, v5, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v5 + v21, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v22 = specialized static Promptkit_Wireformat_JSONSchemaReference.== infix(_:_:)(v5, (v5 + v21), type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5 + v21, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolCall.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v16 = type metadata accessor for Promptkit_Wireformat_ToolCall(0);
  v17 = a1;
  v18 = a2;
  v25[0] = v16;
  v25[1] = v17;
  v19 = *(v16 + 20);
  v20 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17 + v19, v13, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18 + v19, &v13[v20], &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
LABEL_17:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_13;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
LABEL_13:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
    goto LABEL_14;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v20], v7, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  v24 = specialized static Promptkit_Wireformat_ToolCallContent.== infix(_:_:)(v10, v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_14:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Promptkit_Wireformat_Schema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v26 - v12, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v13[v15], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_7;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v20 = *v10;
    v21 = *v7;
    v22 = *v7 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v22 == 0xF000000000000007)
      {
        goto LABEL_15;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v7);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
      v23 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v20, v21);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v21);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v20);
      if ((v23 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v22 != 0xF000000000000007)
    {
LABEL_15:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v18 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v19 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_16;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_17:
    v17 = 0;
    return v17 & 1;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_7:
    v18 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v19 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_16:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v18, v19);
    goto LABEL_17;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_4:
  type metadata accessor for Promptkit_Wireformat_Schema(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static Promptkit_Wireformat_SpecialToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v10)
  {
    if (!v11 || (*(a1 + 24) != *(a2 + 24) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    type metadata accessor for Promptkit_Wireformat_SpecialToken(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageGenerationCount.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  else if ((*(a2 + 5) & 1) == 0)
  {
    v3 = *a2 | (*(a2 + 4) << 32);
    if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
    {
      if ((v3 & 0x100000000) != 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v3 & 0x100000000) == 0 && *a1 == *a2)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageGenerationParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v88 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = (&v87 - v7);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v87 - v8;
  v9 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v87 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v87 - v13;
  v14 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v87 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v87 - v18;
  v19 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v87 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v87 - v27;
  v30 = *(v29 + 56);
  v103 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v87 - v27, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v104 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v28[v30], &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v31 = *(v20 + 48);
  if (v31(v28, 1, v19) == 1)
  {
    if (v31(&v28[v30], 1, v19) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
      v33 = v106;
      v32 = v107;
      v34 = v105;
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v25, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if (v31(&v28[v30], 1, v19) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
LABEL_21:
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMR;
LABEL_22:
    v63 = v28;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v61, v62);
    goto LABEL_24;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v28[v30], v22, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  v66 = *v25;
  v67 = *v22;
  if (v66 == 5)
  {
    v68 = v67 == 5;
  }

  else
  {
    v68 = v66 == v67;
  }

  v33 = v106;
  v32 = v107;
  v34 = v105;
  if (!v68)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR;
    goto LABEL_22;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if ((v70 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v35 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v36 = v35[5];
  v37 = v103;
  v38 = *(v102 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v103 + v36, v32, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v39 = v104 + v36;
  v40 = v104;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, v32 + v38, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v41 = *(v34 + 48);
  if (v41(v32, 1, v33) == 1)
  {
    if (v41(v32 + v38, 1, v33) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  v69 = v101;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, v101, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (v41(v32 + v38, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v69, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
LABEL_30:
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMR;
    v63 = v32;
    goto LABEL_23;
  }

  v71 = v32 + v38;
  v72 = v96;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v71, v96, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  v73 = *v69;
  v74 = *v72;
  if (v73 == 4)
  {
    if (v74 != 4)
    {
LABEL_38:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v72, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v69, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
      v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd;
      v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR;
      v63 = v32;
      goto LABEL_23;
    }
  }

  else if (v73 != v74)
  {
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v72, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v69, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if ((v76 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v42 = v35[6];
  v43 = *(v97 + 48);
  v44 = v100;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37 + v42, v100, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v45 = v40 + v42;
  v46 = v44;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v45, v44 + v43, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v47 = v99;
  v48 = *(v98 + 48);
  if (v48(v44, 1, v99) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
      goto LABEL_10;
    }

    goto LABEL_41;
  }

  v75 = v95;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, v95, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (v48(v46 + v43, 1, v47) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v75, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
LABEL_41:
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMR;
    v63 = v46;
    goto LABEL_23;
  }

  v77 = v46 + v43;
  v78 = v90;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v77, v90, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  v79 = *v75;
  v80 = *v78;
  if (v79 == 4)
  {
    if (v80 != 4)
    {
LABEL_47:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v78, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v75, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
      v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd;
      v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR;
      v63 = v46;
      goto LABEL_23;
    }
  }

  else if (v79 != v80)
  {
    goto LABEL_47;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v78, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v75, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v49 = v35[7];
  v50 = *(v91 + 48);
  v51 = v94;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37 + v49, v94, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v52 = v40 + v49;
  v53 = v51;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v52, v51 + v50, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v54 = v93;
  v55 = *(v92 + 48);
  if (v55(v51, 1, v93) != 1)
  {
    v81 = v89;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, v89, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
    if (v55(v53 + v50, 1, v54) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      goto LABEL_50;
    }

    v83 = v53 + v50;
    v84 = v88;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v83, v88, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    if (*(v81 + 5))
    {
      if (*(v84 + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((*(v84 + 5) & 1) == 0)
    {
      v86 = *v84 | (*(v84 + 4) << 32);
      if (((*v81 | (*(v81 + 4) << 32)) & 0x100000000) != 0)
      {
        if ((v86 & 0x100000000) == 0)
        {
          goto LABEL_59;
        }
      }

      else if ((v86 & 0x100000000) != 0 || *v81 != *v84)
      {
        goto LABEL_59;
      }

LABEL_56:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v84, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
      if ((v85 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

LABEL_59:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v84, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR;
    v63 = v53;
    goto LABEL_23;
  }

  if (v55(v51 + v50, 1, v54) != 1)
  {
LABEL_50:
    v61 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMd;
    v62 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMR;
    v63 = v53;
    goto LABEL_23;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
LABEL_13:
  v56 = v35[8];
  v57 = (v37 + v56);
  v58 = *(v37 + v56 + 8);
  v59 = (v40 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (v60 && (*v57 == *v59 && v58 == v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_61;
    }
  }

  else if (!v60)
  {
LABEL_61:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v64 & 1;
  }

LABEL_24:
  v64 = 0;
  return v64 & 1;
}