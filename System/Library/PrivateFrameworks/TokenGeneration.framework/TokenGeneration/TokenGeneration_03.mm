uint64_t specialized static Promptkit_Wireformat_JSONSchema.== infix(_:_:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v8 == 0xF000000000000007)
    {
      return 0;
    }

    v9 = a6;
    a3(*a2);
    a3(v6);
    LOBYTE(a4) = a4(v6, v7);
    a5(v7);
    a5(v6);
    a6 = v9;
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    a6(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v8 == 0xF000000000000007)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaChoice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v28 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0);
  v29 = a2;
  v16 = *(v28 + 20);
  v17 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v16, v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29 + v16, &v13[v17], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_14;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v17], v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v22 = *v10;
    v23 = *v7;
    v24 = *v7 & 0xF000000000000007;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      if (v24 == 0xF000000000000007)
      {
        goto LABEL_22;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v7);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v22);
      v25 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v22, v23);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v23);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v22);
      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v24 != 0xF000000000000007)
    {
LABEL_22:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v20 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v21 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_23;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_14:
    v20 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v21 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v20, v21);
    goto LABEL_24;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_11:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaField.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v35 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v15)
  {
    goto LABEL_36;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_36:
    v31 = 0;
    return v31 & 1;
  }

  if (!v17 || (a1[2] != a2[2] || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v35 = v7;
  v36 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0);
  v18 = *(v36 + 24);
  v19 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v18, v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v18, &v13[v19], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
LABEL_23:
    v24 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v25 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_35:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v24, v25);
    goto LABEL_36;
  }

  v26 = &v13[v19];
  v27 = v35;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v26, v35, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v28 = *v10;
  v29 = *v27;
  v30 = *v27 & 0xF000000000000007;
  if ((~*v10 & 0xF000000000000007) != 0)
  {
    if (v30 == 0xF000000000000007)
    {
      goto LABEL_34;
    }

    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v27);
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v28);
    v32 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v28, v29);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v29);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v28);
    if ((v32 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v30 != 0xF000000000000007)
  {
LABEL_34:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v24 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
    v25 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
    goto LABEL_35;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v27, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v21 = *(v36 + 28);
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_36;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    goto LABEL_36;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v31 & 1;
}

uint64_t specialized static Promptkit_Wireformat_StringConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  v19 = specialized static Promptkit_Wireformat_StringConstraintEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  v15 = a1;
  v16 = a2;
  v24[0] = v14;
  v24[1] = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15 + v17, v13, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16 + v17, &v13[v18], &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v10, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_StringConstraint);
LABEL_7:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v18], v7, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  v23 = specialized static Promptkit_Wireformat_StringConstraint.== infix(_:_:)(v10, v7, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v7, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v10, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);
  v14 = *(v25 + 20);
  v15 = *(v11 + 56);
  v27 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v14, v13, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v14, &v13[v15], &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v9, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_8:
    v19 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v20 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_9:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, v19, v20);
    goto LABEL_10;
  }

  v22 = v26;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v13[v15], v26, type metadata accessor for Promptkit_Wireformat_Prompt);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v9, *v22) & 1) == 0)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_Prompt);
    v19 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
    v20 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
    goto LABEL_9;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v9, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(*v27, *a2);
  if ((v17 & 1) == 0)
  {
LABEL_10:
    v18 = 0;
    return v18 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedCompletionPrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v25);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v16 = *(v15 + 56);
  v26 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v13, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v27 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v24;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v24, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  v21 = *(v25 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, v5, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, v5 + v21, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  v22 = specialized static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)(v5, (v5 + v21));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5 + v21, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v21 - v13, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VariantEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  v19 = specialized static Promptkit_Wireformat_VariantEnum.== infix(_:_:)(v11, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestV1.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v22 - v13, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v14[v16], v8, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  v20 = specialized static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)(v11, v8, v19);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedPromptRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v16 = *(v15 + 56);
  v27 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v25 - v13, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v28 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v14[v16], &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
LABEL_9:
      type metadata accessor for Promptkit_Wireformat_VersionedPromptRequest(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v25;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v19, v25, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v21 = *(v26 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, v5, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, &v5[v21], type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v23 = specialized static Promptkit_Wireformat_PromptRequestV1.== infix(_:_:)(v5, &v5[v21], v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v20, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(&v5[v21], type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v5, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(result);
  }

  return result;
}

unint64_t outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum(result);
  }

  return result;
}

unint64_t outlined consume of Promptkit_Wireformat_GenerationSchemaEnum(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t outlined copy of Promptkit_Wireformat_JsonschemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined consume of Promptkit_Wireformat_JsonschemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Promptkit_Wireformat_PromptRequestV1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance Promptkit_Wireformat_PromptComponentPrivacy@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_PromptComponentPrivacy(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptComponentPrivacy(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_PromptComponentPrivacy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Promptkit_Wireformat_ImageEmbeddingEncoding@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageEmbeddingEncoding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v10 - v5, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v6[v8], type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  LOBYTE(a2) = static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(&v6[v8], type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v10 - v5, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v6[v8], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  LOBYTE(a2) = static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(&v6[v8], type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  return a2 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_ImageFormatEnum()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_ImageFormatEnum(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf(0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v72 = (&v69 - v13);
  v69 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  MEMORY[0x1EEE9AC00](v69);
  v73 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v74 = (&v69 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v69 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v70 = (&v69 - v21);
  v22 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v69 - v26);
  type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  MEMORY[0x1EEE9AC00](a1);
  v29 = (&v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v69 - v32);
  v34 = v31 >> 61;
  if ((v31 >> 61) <= 3)
  {
    if (v34 <= 1)
    {
      if (!v34)
      {
        if (!(a2 >> 61))
        {
          v35 = swift_projectBox();
          v36 = swift_projectBox();
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v35, v33, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v36, v29, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          v37 = specialized static Promptkit_Wireformat_GenerationSchemaString.== infix(_:_:)(v33, v29);
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v33, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          return v37 & 1;
        }

        goto LABEL_59;
      }

      if (a2 >> 61 != 1)
      {
        goto LABEL_59;
      }

      v52 = swift_projectBox();
      v53 = swift_projectBox();
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v52, v27, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v53, v24, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C11SchemaFieldV_Tt1g5(*v27, *v24))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v54 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject;
LABEL_51:
          v43 = v54;
          v66 = v24;
          goto LABEL_52;
        }
      }

      v64 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject;
      goto LABEL_56;
    }

    if (v34 == 2)
    {
      if (a2 >> 61 != 2)
      {
        goto LABEL_59;
      }

      v45 = swift_projectBox();
      v46 = swift_projectBox();
      v27 = v70;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v45, v70, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v46, v19, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v47 = *v27;
      v48 = *v19;
      v49 = *v19 & 0xF000000000000007;
      if ((~*v27 & 0xF000000000000007) != 0)
      {
        if (v49 == 0xF000000000000007)
        {
          goto LABEL_46;
        }

        outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v19);
        outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v47);
        v65 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v47, v48);
        outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v48);
        outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v47);
        if ((v65 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (v49 != 0xF000000000000007)
      {
LABEL_46:
        v64 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v62 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v67 = v19;
LABEL_57:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v67, v64);
        v63 = v27;
        goto LABEL_58;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v54 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v43 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v66 = v19;
LABEL_52:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v66, v54);
        v44 = v27;
        goto LABEL_53;
      }

      goto LABEL_46;
    }

    if (a2 >> 61 != 3)
    {
      goto LABEL_59;
    }

    v56 = swift_projectBox();
    v57 = swift_projectBox();
    v27 = v74;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v56, v74, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v24 = v73;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v57, v73, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v58 = *v27;
    v59 = *v24;
    v60 = *v24 & 0xF000000000000007;
    if ((~*v27 & 0xF000000000000007) != 0)
    {
      if (v60 == 0xF000000000000007)
      {
        goto LABEL_55;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v24);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v58);
      v68 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v58, v59);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v59);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v58);
      if ((v68 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (v60 != 0xF000000000000007)
    {
LABEL_55:
      v64 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
LABEL_56:
      v62 = v64;
      v67 = v24;
      goto LABEL_57;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v54 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  if (v34 > 5)
  {
    if (v34 == 6)
    {
      if (a2 >> 61 == 6)
      {
        v50 = swift_projectBox();
        v51 = swift_projectBox();
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v50, v9, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v51, v6, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        v37 = specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(v9, v6);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        return v37 & 1;
      }

LABEL_59:
      v37 = 0;
      return v37 & 1;
    }

    v61 = 0xE000000000000000;
    if (v31 == 0xE000000000000000 || (v61 = 0xE000000000000008, v31 == 0xE000000000000008))
    {
      if (a2 != v61)
      {
        goto LABEL_59;
      }
    }

    else if (a2 != 0xE000000000000010)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  if (v34 == 4)
  {
    if (a2 >> 61 != 4)
    {
      goto LABEL_59;
    }

    v38 = swift_projectBox();
    v39 = swift_projectBox();
    v40 = v72;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v38, v72, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v41 = v39;
    v42 = v71;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v41, v71, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C12SchemaChoiceV_Tt1g5(*v40, *v42))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v43 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v42, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
        v44 = v40;
LABEL_53:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v44, v43);
        goto LABEL_54;
      }
    }

    v62 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf;
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v42, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v63 = v40;
LABEL_58:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v63, v62);
    goto LABEL_59;
  }

  if (a2 >> 61 != 5)
  {
    goto LABEL_59;
  }

  if (*((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
LABEL_54:
    v37 = 1;
    return v37 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestVersionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = a2;
  v4 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v19 = &v25 + *(v18 + 56) - v16;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v25 - v16, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v26, v19, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v20 = *(v12 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v17, v14);
  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v19, &v14[v20]);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) == 1)
  {
    if (v21(&v14[v20], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v14, v10);
  if (v21(&v14[v20], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v14[v20], v7, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  v22 = static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v7, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = 1;
LABEL_11:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v19, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v17, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  return v23;
}

BOOL specialized static Promptkit_Wireformat_VersionedChatPromptEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v13 - v5);
  v8 = (&v13 + *(v7 + 56) - v5);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v13 - v5, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, v8, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
  v11 = 0;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*v6, *v8))
  {
    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v6[1], v8[1]);
    if (v9)
    {
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v6[2], v8[2]);
      if (v10)
      {
        type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v11 = 1;
        }
      }
    }
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  return v11;
}

uint64_t specialized static Promptkit_Wireformat_ToolCallContentEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v17 - v5);
  v8 = (&v17 + *(v7 + 56) - v5);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v17 - v5, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, v8, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v9 = v6[1];
  v10 = v8[1];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *v6 == *v8 && v9 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v10)
  {
    goto LABEL_21;
  }

  v12 = v6[3];
  v13 = v8[3];
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v6[2] == v8[2] && v12 == v13;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v15 = 1;
LABEL_22:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  return v15;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatKindEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v27 - v17, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v18[v20], type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v18, v12, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v18[v20], v6, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v21 = specialized static Promptkit_Wireformat_ResponseFormatGrammarDetails.== infix(_:_:)(v12, v6);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v22 = v12;
      v23 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails;
LABEL_9:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v22, v23);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v18, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      return v21 & 1;
    }

    v24 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails;
    v25 = v12;
  }

  else
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v18, v15, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v18[v20], v9, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v21 = specialized static Promptkit_Wireformat_ResponseFormatSchemaDetails.== infix(_:_:)(v15, v9);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v22 = v15;
      v23 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails;
    v25 = v15;
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v25, v24);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v34 - v21;
  v24 = *(v23 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v34 - v21, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v35, &v22[v24], type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v22, v16, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v22[v24], v7, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
        v29 = static Promptkit_Wireformat_ImageGenerationParameters.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v7, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
        v31 = v16;
        v32 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters;
LABEL_21:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v31, v32);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v22, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        return v29 & 1;
      }

      v26 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters;
      v27 = v16;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v22, v19, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v22[v24], v10, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
        v29 = specialized static Promptkit_Wireformat_ToolDefinitionFunction.== infix(_:_:)(v19, v10);
        v30 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
        v31 = v19;
        goto LABEL_20;
      }

      v26 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction;
      v27 = v19;
    }

LABEL_17:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v27, v26);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v22, v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = v34;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v22[v24], v34, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v28, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      v31 = v13;
LABEL_20:
      v32 = v30;
      goto LABEL_21;
    }

    v26 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters;
    v27 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_18:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMR);
    v29 = 0;
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_18;
  }

LABEL_12:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v22, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  v29 = 1;
  return v29 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v48 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v47 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v47 - v28;
  v31 = *(v30 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v53, &v47 - v28, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v54, &v29[v31], type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v29, v23, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v29[v31], v9, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
        v34 = specialized static Promptkit_Wireformat_ChatMessageRolePromptUser.== infix(_:_:)(v23, v9, v44);
        v35 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
        v36 = v23;
        goto LABEL_20;
      }

      v37 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser;
      v38 = v23;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v29, v26, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v29[v31], v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        v34 = specialized static Promptkit_Wireformat_ChatMessageRolePromptSystem.== infix(_:_:)(v26, v12);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v12, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        v36 = v26;
        v45 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem;
        goto LABEL_21;
      }

      v37 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem;
      v38 = v26;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v29, v20, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = v49;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v29[v31], v49, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v39, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      v36 = v20;
      goto LABEL_20;
    }

    v37 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant;
    v38 = v20;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v40 = v52;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v29, v52, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v37 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom;
      v38 = v40;
      goto LABEL_26;
    }

    v41 = v51;
    outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v29[v31], v51, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    v42 = v40[1];
    v43 = v41[1];
    if (v42)
    {
      if (!v43 || (*v40 != *v41 || v42 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v43)
    {
LABEL_33:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      goto LABEL_27;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v41, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_33;
  }

  outlined init with copy of Promptkit_Wireformat_VariantEnum(v29, v17, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v37 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool;
    v38 = v17;
LABEL_26:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v38, v37);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMR);
LABEL_27:
    v34 = 0;
    return v34 & 1;
  }

  v33 = v50;
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v29[v31], v50, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool;
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v33, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  v36 = v17;
LABEL_20:
  v45 = v35;
LABEL_21:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v36, v45);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  return v34 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResultContentEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumO_ACtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v14 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v21 - v11, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v12[v14], type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v12, v9, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v12[v14], v6, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  v15 = v9[1];
  v16 = v6[1];
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    goto LABEL_12;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *v9 == *v6 && v15 == v16;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = 1;
LABEL_13:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  return v19;
}

uint64_t specialized static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v133 = a2;
  v118 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  MEMORY[0x1EEE9AC00](v118);
  v131 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v128 = (&v116 - v5);
  v117 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  MEMORY[0x1EEE9AC00](v117);
  v129 = (&v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v130 = (&v116 - v8);
  v9 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v126 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v125 = (&v116 - v12);
  v13 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v124 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v123 = (&v116 - v16);
  v17 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v122 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v121 = (&v116 - v20);
  v21 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v120 = (&v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v119 = (&v116 - v24);
  v132 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  MEMORY[0x1EEE9AC00](v132);
  v127 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v116 - v27);
  v29 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v116 - v33;
  v35 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = (&v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v116 - v39);
  v41 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v116 - v45);
  type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0);
  MEMORY[0x1EEE9AC00](a1);
  v48 = (&v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v116 - v50);
  v53 = v52 >> 60;
  if ((v52 >> 60) > 4)
  {
    if (v53 <= 7)
    {
      if (v53 == 5)
      {
        if (v133 >> 60 == 5)
        {
          v79 = swift_projectBox();
          v80 = swift_projectBox();
          v56 = v119;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v79, v119, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
          v81 = v80;
          v58 = v120;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v81, v120, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
          v59 = specialized static Promptkit_Wireformat_JSONSchemaAnyOf.== infix(_:_:)(v56, v58);
          v60 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf;
          goto LABEL_48;
        }
      }

      else if (v53 == 6)
      {
        if (v133 >> 60 == 6)
        {
          v54 = swift_projectBox();
          v55 = swift_projectBox();
          v56 = v121;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v54, v121, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
          v57 = v55;
          v58 = v122;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v57, v122, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
          v59 = specialized static Promptkit_Wireformat_JSONSchemaDictionary.== infix(_:_:)(v56, v58);
          v60 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary;
LABEL_48:
          v73 = v60;
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v58, v60);
          v74 = v56;
          goto LABEL_49;
        }
      }

      else if (v133 >> 60 == 7)
      {
        v97 = swift_projectBox();
        v98 = swift_projectBox();
        v56 = v123;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v97, v123, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
        v99 = v98;
        v58 = v124;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v99, v124, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
        v59 = specialized static Promptkit_Wireformat_JSONSchemaArray.== infix(_:_:)(v56, v58);
        v60 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray;
        goto LABEL_48;
      }

      goto LABEL_90;
    }

    if (v53 == 8)
    {
      if (v133 >> 60 == 8)
      {
        v82 = swift_projectBox();
        v83 = swift_projectBox();
        v56 = v125;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v82, v125, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
        v84 = v83;
        v58 = v126;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v84, v126, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
        v59 = specialized static Promptkit_Wireformat_JSONSchemaObject.== infix(_:_:)(v56, v58);
        v60 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject;
        goto LABEL_48;
      }

      goto LABEL_90;
    }

    if (v53 == 9)
    {
      if (v133 >> 60 != 9)
      {
        goto LABEL_90;
      }

      v65 = swift_projectBox();
      v66 = swift_projectBox();
      v67 = v130;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v65, v130, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v68 = v129;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v66, v129, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v69 = v67[1];
      v70 = v68[1];
      if (v69)
      {
        if (!v70 || (*v67 != *v68 || v69 != v70) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else if (v70)
      {
        goto LABEL_87;
      }

      v111 = v67[3];
      v112 = v68[3];
      if (v111)
      {
        if (!v112 || (v67[2] != v68[2] || v111 != v112) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else if (v112)
      {
        goto LABEL_87;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v113 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v68, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
        v96 = v67;
        goto LABEL_85;
      }

LABEL_87:
      v114 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v68, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v110 = v67;
      goto LABEL_88;
    }

    if (v133 >> 60 != 10)
    {
      goto LABEL_90;
    }

    v100 = swift_projectBox();
    v101 = swift_projectBox();
    v102 = v128;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v100, v128, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v103 = v131;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v101, v131, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v104 = v102[1];
    v105 = v103[1];
    if (v104)
    {
      if (v105 && (*v102 == *v103 && v104 == v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_56:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        v106 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v102, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
        if (v106)
        {
          v95 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull;
          v96 = v103;
          goto LABEL_86;
        }

        goto LABEL_77;
      }
    }

    else if (!v105)
    {
      goto LABEL_56;
    }

    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v102, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
LABEL_77:
    v109 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull;
    v110 = v103;
    goto LABEL_89;
  }

  if (v53 <= 1)
  {
    if (!v53)
    {
      if (!(v133 >> 60))
      {
        v71 = swift_projectBox();
        v72 = swift_projectBox();
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v71, v51, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v72, v48, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        v59 = specialized static Promptkit_Wireformat_JSONSchemaString.== infix(_:_:)(v51, v48);
        v73 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v48, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        v74 = v51;
LABEL_49:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v74, v73);
        return v59 & 1;
      }

      goto LABEL_90;
    }

    if (v133 >> 60 != 1)
    {
      goto LABEL_90;
    }

    v90 = swift_projectBox();
    v91 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v90, v46, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v91, v43, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    v92 = v46[1];
    v93 = v43[1];
    if (v92)
    {
      if (v93 && (*v46 == *v43 && v92 == v93 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_44:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        v94 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v46, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
        if (v94)
        {
          v95 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean;
          v96 = v43;
LABEL_86:
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v96, v95);
          v59 = 1;
          return v59 & 1;
        }

        goto LABEL_67;
      }
    }

    else if (!v93)
    {
      goto LABEL_44;
    }

    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v46, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
LABEL_67:
    v109 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean;
    v110 = v43;
LABEL_89:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v110, v109);
    goto LABEL_90;
  }

  if (v53 == 2)
  {
    if (v133 >> 60 == 2)
    {
      v75 = swift_projectBox();
      v76 = swift_projectBox();
      v77 = v75;
      v56 = v40;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v77, v40, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
      v78 = v76;
      v58 = v37;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v78, v37, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
      v59 = specialized static Promptkit_Wireformat_JSONSchemaInteger.== infix(_:_:)(v40, v37);
      v60 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger;
      goto LABEL_48;
    }

LABEL_90:
    v59 = 0;
    return v59 & 1;
  }

  v61 = v53 == 3;
  v62 = v133 >> 60;
  if (!v61)
  {
    if (v62 != 4)
    {
      goto LABEL_90;
    }

    v85 = swift_projectBox();
    v86 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v85, v28, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v87 = v127;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v86, v127, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v88 = v28[1];
    v89 = v87[1];
    if (v88)
    {
      if (!v89 || (*v28 != *v87 || v88 != v89) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v89)
    {
      goto LABEL_81;
    }

    v107 = v28[3];
    v108 = v87[3];
    if (v107)
    {
      if (!v108 || (v28[2] != v87[2] || v107 != v108) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v108)
    {
      goto LABEL_81;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v113 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v87, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
      v96 = v28;
LABEL_85:
      v95 = v113;
      goto LABEL_86;
    }

LABEL_81:
    v114 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant;
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v87, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v110 = v28;
LABEL_88:
    v109 = v114;
    goto LABEL_89;
  }

  if (v62 != 3)
  {
    goto LABEL_90;
  }

  v63 = swift_projectBox();
  v64 = swift_projectBox();
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v34, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v64, v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  v59 = specialized static Promptkit_Wireformat_JSONSchemaNumber.== infix(_:_:)(v34, v31);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v31, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v34, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  return v59 & 1;
}

BOOL specialized static Promptkit_Wireformat_StringConstraintEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumO_ACtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v14 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v17 - v11, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v12[v14], type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v12, v9, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v12[v14], v6, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  v15 = 0;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*v9, *v6) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v9[1], v6[1]))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v15 = 1;
    }
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  return v15;
}

uint64_t specialized static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v165 = a1;
  v166 = a2;
  v134 = type metadata accessor for Promptkit_Wireformat_SelfAttention(0);
  MEMORY[0x1EEE9AC00](v134);
  v151 = (&v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(0);
  MEMORY[0x1EEE9AC00](v133);
  v150 = (&v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(0);
  MEMORY[0x1EEE9AC00](v130);
  v149 = (&v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for Promptkit_Wireformat_Prompts(0);
  MEMORY[0x1EEE9AC00](v137);
  v148 = (&v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v147 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Promptkit_Wireformat_ImageSurface(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v146 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Promptkit_Wireformat_ToolCalls(0);
  MEMORY[0x1EEE9AC00](v136);
  v145 = (&v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for Promptkit_Wireformat_ToolResults(0);
  MEMORY[0x1EEE9AC00](v135);
  v143 = (&v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Promptkit_Wireformat_CustomData(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Promptkit_Wireformat_BindableVariable(0);
  MEMORY[0x1EEE9AC00](v132);
  v142 = (&v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Promptkit_Wireformat_SpecialToken(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v140 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Google_Protobuf_Timestamp();
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v139 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  MEMORY[0x1EEE9AC00](v131);
  v138 = (&v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  MEMORY[0x1EEE9AC00](v21);
  v164 = (&v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v162 = (&v130 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v160 = (&v130 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v159 = (&v130 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v155 = (&v130 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v154 = (&v130 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v153 = (&v130 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v158 = (&v130 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v156 = (&v130 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v152 = (&v130 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v157 = (&v130 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v130 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v130 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v130 - v50);
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v130 - v53);
  MEMORY[0x1EEE9AC00](v55);
  v57 = (&v130 - v56);
  MEMORY[0x1EEE9AC00](v58);
  v60 = (&v130 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v130 - v62;
  v65 = &v130 + *(v64 + 56) - v62;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v165, &v130 - v62, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v66 = v166;
  v166 = v65;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v66, v65, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v57, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v102 = *v57;
      v101 = v57[1];
      v103 = v166;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_86;
      }

      v104 = *v103;
      v105 = v103[1];
      if (v102 == v104 && v101 == v105)
      {

        goto LABEL_114;
      }

      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v124)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    case 2u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v54, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v94 = v166;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_86;
      }

      v95 = *v54 == *v94;
      goto LABEL_37;
    case 3u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v51, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v99 = v166;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_86;
      }

      v95 = *v51 == *v99;
LABEL_37:
      v79 = v95;
      goto LABEL_65;
    case 4u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v48, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v82 = v166;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v83 = v161;
        v84 = v139;
        v85 = v163;
        (*(v161 + 32))(v139, v82, v163);
        v79 = static Google_Protobuf_Timestamp.== infix(_:_:)();
        v86 = *(v83 + 8);
        v86(v84, v85);
        v86(v48, v85);
        goto LABEL_65;
      }

      (*(v161 + 8))(v48, v163);
      goto LABEL_86;
    case 5u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v45, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v106 = v166;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v107 = v140;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v106, v140, type metadata accessor for Promptkit_Wireformat_SpecialToken);
        v79 = specialized static Promptkit_Wireformat_SpecialToken.== infix(_:_:)(v45, v107);
        v108 = type metadata accessor for Promptkit_Wireformat_SpecialToken;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v107, type metadata accessor for Promptkit_Wireformat_SpecialToken);
        v80 = v45;
        goto LABEL_63;
      }

      v68 = type metadata accessor for Promptkit_Wireformat_SpecialToken;
      v69 = v45;
      goto LABEL_85;
    case 6u:
      v70 = v157;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v157, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v114 = v166;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
        goto LABEL_84;
      }

      v72 = v142;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v114, v142, type metadata accessor for Promptkit_Wireformat_BindableVariable);
      v115 = v70[1];
      v116 = v72[1];
      if (v115)
      {
        if (!v116 || (*v70 != *v72 || v115 != v116) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      else if (v116)
      {
        goto LABEL_115;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v76 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
        goto LABEL_112;
      }

LABEL_115:
      v120 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
      goto LABEL_116;
    case 7u:
      v70 = v152;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v152, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v100 = v166;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v88 = v141;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v100, v141, type metadata accessor for Promptkit_Wireformat_CustomData);
        v79 = specialized static Promptkit_Wireformat_CustomData.== infix(_:_:)(v70, v88);
        v89 = type metadata accessor for Promptkit_Wireformat_CustomData;
        goto LABEL_62;
      }

      v119 = type metadata accessor for Promptkit_Wireformat_CustomData;
      goto LABEL_84;
    case 8u:
      v70 = v156;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v156, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v118 = v166;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_ToolResults;
        goto LABEL_84;
      }

      v72 = v143;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v118, v143, type metadata accessor for Promptkit_Wireformat_ToolResults);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5(*v70, *v72))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v76 = type metadata accessor for Promptkit_Wireformat_ToolResults;
          goto LABEL_112;
        }
      }

      v120 = type metadata accessor for Promptkit_Wireformat_ToolResults;
      goto LABEL_116;
    case 9u:
      v70 = v158;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v158, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v90 = v166;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
        goto LABEL_84;
      }

      v91 = v145;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v90, v145, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ToolCallV_Tt1g5(*v70, *v91))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        v92 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v91, type metadata accessor for Promptkit_Wireformat_ToolCalls);
        if (v92)
        {
          v93 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
          goto LABEL_52;
        }
      }

      else
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v91, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      }

      v123 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
      goto LABEL_98;
    case 0xAu:
      v70 = v153;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v153, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v117 = v166;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v88 = v144;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v117, v144, type metadata accessor for Promptkit_Wireformat_ImageData);
        v79 = specialized static Promptkit_Wireformat_ImageData.== infix(_:_:)(v70, v88);
        v89 = type metadata accessor for Promptkit_Wireformat_ImageData;
        goto LABEL_62;
      }

      v119 = type metadata accessor for Promptkit_Wireformat_ImageData;
      goto LABEL_84;
    case 0xBu:
      v70 = v154;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v154, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v77 = v166;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v78 = v146;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v77, v146, type metadata accessor for Promptkit_Wireformat_ImageSurface);
        v79 = specialized static Promptkit_Wireformat_ImageSurface.== infix(_:_:)(v70, v78);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v78, type metadata accessor for Promptkit_Wireformat_ImageSurface);
        v80 = v70;
        v81 = type metadata accessor for Promptkit_Wireformat_ImageSurface;
        goto LABEL_64;
      }

      v119 = type metadata accessor for Promptkit_Wireformat_ImageSurface;
      goto LABEL_84;
    case 0xCu:
      v70 = v155;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v155, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v87 = v166;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData;
        goto LABEL_84;
      }

      v88 = v147;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v87, v147, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
      v79 = specialized static Promptkit_Wireformat_ImageEmbeddingData.== infix(_:_:)(v70, v88);
      v89 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData;
LABEL_62:
      v108 = v89;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v88, v89);
      v80 = v70;
LABEL_63:
      v81 = v108;
LABEL_64:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v80, v81);
LABEL_65:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v63, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      return v79 & 1;
    case 0xDu:
      v70 = v159;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v159, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v109 = v166;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_Prompts;
        goto LABEL_84;
      }

      v110 = v148;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v109, v148, type metadata accessor for Promptkit_Wireformat_Prompts);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration27Promptkit_Wireformat_PromptV_Tt1g5(*v70, *v110))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        v111 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v110, type metadata accessor for Promptkit_Wireformat_Prompts);
        if (v111)
        {
          v93 = type metadata accessor for Promptkit_Wireformat_Prompts;
LABEL_52:
          v112 = v93;
          v113 = v70;
          goto LABEL_113;
        }
      }

      else
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v110, type metadata accessor for Promptkit_Wireformat_Prompts);
      }

      v123 = type metadata accessor for Promptkit_Wireformat_Prompts;
LABEL_98:
      v125 = v123;
      v126 = v70;
      goto LABEL_117;
    case 0xEu:
      v70 = v160;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v160, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v75 = v166;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
        goto LABEL_84;
      }

      v72 = v149;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v75, v149, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*v70, *v72) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(v70[1], v72[1]))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v76 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
          goto LABEL_112;
        }
      }

      v120 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
      goto LABEL_116;
    case 0xFu:
      v70 = v162;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v162, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v96 = v166;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
        goto LABEL_84;
      }

      v72 = v150;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v96, v150, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
      v97 = v70[1];
      v98 = v72[1];
      if (v97)
      {
        if (!v98 || (*v70 != *v72 || v97 != v98) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      else if (v98)
      {
        goto LABEL_106;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v76 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
        goto LABEL_112;
      }

LABEL_106:
      v120 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
      goto LABEL_116;
    case 0x10u:
      v70 = v164;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v164, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v71 = v166;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v119 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_84:
        v68 = v119;
        v69 = v70;
        goto LABEL_85;
      }

      v72 = v151;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v71, v151, type metadata accessor for Promptkit_Wireformat_SelfAttention);
      v73 = v70[1];
      v74 = v72[1];
      if (v73)
      {
        if (!v74 || (*v70 != *v72 || v73 != v74) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (v74)
      {
        goto LABEL_102;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v76 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_112:
        v127 = v76;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v72, v76);
        v113 = v70;
        v112 = v127;
        goto LABEL_113;
      }

LABEL_102:
      v120 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_116:
      v128 = v120;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v72, v120);
      v126 = v70;
      v125 = v128;
      goto LABEL_117;
    default:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v60, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v67 = v166;
      if (swift_getEnumCaseMultiPayload())
      {
        v68 = type metadata accessor for Promptkit_Wireformat_Prompt;
        v69 = v60;
LABEL_85:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v69, v68);
LABEL_86:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMR);
LABEL_119:
        v79 = 0;
        return v79 & 1;
      }

      v121 = v138;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v67, v138, type metadata accessor for Promptkit_Wireformat_Prompt);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v60, *v121) & 1) == 0)
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v121, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_108:
        v125 = type metadata accessor for Promptkit_Wireformat_Prompt;
        v126 = v60;
LABEL_117:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v126, v125);
LABEL_118:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v63, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        goto LABEL_119;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v122 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v121, type metadata accessor for Promptkit_Wireformat_Prompt);
      if ((v122 & 1) == 0)
      {
        goto LABEL_108;
      }

      v112 = type metadata accessor for Promptkit_Wireformat_Prompt;
      v113 = v60;
LABEL_113:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v113, v112);
LABEL_114:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v63, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v79 = 1;
      return v79 & 1;
  }
}

uint64_t specialized static Promptkit_Wireformat_VariantEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v27 - v17, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v18[v20], type metadata accessor for Promptkit_Wireformat_VariantEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v18, v12, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v18[v20], v6, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      v21 = specialized static Promptkit_Wireformat_VersionedChatPrompt.== infix(_:_:)(v12, v6);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v6, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      v22 = v12;
      v23 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt;
LABEL_9:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v22, v23);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v18, type metadata accessor for Promptkit_Wireformat_VariantEnum);
      return v21 & 1;
    }

    v24 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt;
    v25 = v12;
  }

  else
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v18, v15, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v18[v20], v9, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      v21 = specialized static Promptkit_Wireformat_VersionedCompletionPrompt.== infix(_:_:)(v15, v9);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      v22 = v15;
      v23 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt;
    v25 = v15;
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v25, v24);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Promptkit_Wireformat_VariantEnum(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage()
{
  result = lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage;
  if (!lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage)
  {
    type metadata accessor for UnknownStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ToolDefinitionTypeEnum(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_24Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_25Tm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Promptkit_Wireformat_ChatMessageRoleEnum(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_42Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatPromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_43Tm);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ToolCallContentEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_51Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ToolCallContentEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_52Tm);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ToolResultContentEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_60Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ToolResultContentEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_61Tm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ValueEnum(uint64_t a1)
{
  result = type metadata accessor for Promptkit_Wireformat_Prompt(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Google_Protobuf_Timestamp();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_SpecialToken(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Promptkit_Wireformat_BindableVariable(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Promptkit_Wireformat_CustomData(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Promptkit_Wireformat_ToolResults(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Promptkit_Wireformat_ToolCalls(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Promptkit_Wireformat_ImageData(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Promptkit_Wireformat_ImageSurface(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Promptkit_Wireformat_Prompts(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for Promptkit_Wireformat_SelfAttention(319);
                            if (v15 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
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

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1AB8379EC);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1AB837960);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ResponseFormatKindEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1AB8379E8);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1AB83795C);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_PromptComponentPrivacy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_PromptComponentPrivacy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for Promptkit_Wireformat_CompletionPromptV1(uint64_t a1)
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_PromptComponentValue], type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_42Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_43Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ChatPromptV1(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_VersionedChatMessagePrompt], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_ChatPromptV1], type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_PromptComponentValue], type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
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

uint64_t __swift_get_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for UnknownStorage();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for UnknownStorage();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ChatMessagePromptV1(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ChatMessageRolePrompt?, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_PromptComponent(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_PromptComponentValue?, type metadata accessor for Promptkit_Wireformat_PromptComponentValue, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_PromptComponentPrivacy?, &type metadata for Promptkit_Wireformat_PromptComponentPrivacy, MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_ImageEmbeddingData(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageEmbeddingEncoding?, &type metadata for Promptkit_Wireformat_ImageEmbeddingEncoding, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_PreprocessedImageData(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [Int32], MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageData(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageFormat?, type metadata accessor for Promptkit_Wireformat_ImageFormat, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageSurface(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_SelfAttention(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for String?(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageEmbeddingEncoding(unsigned __int8 *a1, unsigned int a2)
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

void type metadata completion function for Promptkit_Wireformat_PromptComponentCustomData(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_SpecialToken(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ToolResult(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ToolResultContent?, type metadata accessor for Promptkit_Wireformat_ToolResultContent, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_ToolCall(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ToolCallContent?, type metadata accessor for Promptkit_Wireformat_ToolCallContent, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration021Promptkit_Wireformat_B10SchemaEnumO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_GenerationSchemaEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_GenerationSchemaEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Promptkit_Wireformat_GenerationSchemaEnum(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_78Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_79Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaString(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_StringConstraint?, type metadata accessor for Promptkit_Wireformat_StringConstraint, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaField(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_GenerationSchema?, type metadata accessor for Promptkit_Wireformat_GenerationSchema, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
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

uint64_t __swift_get_extra_inhabitant_index_196Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_197Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_373Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(v11 - 8);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = *(v12 + 48);
      v15 = a1 + *(a3 + 20);

      return v14(v15, a2, v13);
    }

    else
    {
      v16 = type metadata accessor for UnknownStorage();
      v17 = *(*(v16 - 8) + 48);
      v18 = a1 + *(a3 + 24);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_374Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaChoice(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_GenerationSchema?, type metadata accessor for Promptkit_Wireformat_GenerationSchema, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaKindObject(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_RecursiveSchemaField], type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaKindAnyOf(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_RecursiveSchema], type metadata accessor for Promptkit_Wireformat_RecursiveSchema, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaField(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_RecursiveSchema?, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, MEMORY[0x1E69E6720]);
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

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ToolCallFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for String?(319, a4, MEMORY[0x1E69E6158], a5);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for String?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaString(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaObject(uint64_t a1)
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchemaType?, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UnknownStorage();
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

void type metadata completion function for Promptkit_Wireformat_JSONSchemaProperty(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_JSONSchemaArray(uint64_t a1)
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaDictionary(uint64_t a1)
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
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

uint64_t __swift_get_extra_inhabitant_index_598Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_599Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaAnyOf(uint64_t a1)
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
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

void type metadata completion function for Promptkit_Wireformat_ImageGenerationParameters(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationSize?, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationShape?, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationDetail?, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationCount?, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UnknownStorage();
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

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationSizeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationSizeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_703Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_704Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t getEnumTag for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_418Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(v11 - 8);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = *(v12 + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }

    else
    {
      v16 = type metadata accessor for UnknownStorage();
      v17 = *(*(v16 - 8) + 48);
      v18 = a1 + *(a3 + 28);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_419Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ToolDefinitionFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_301Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_302Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ResponseFormatGrammarDetails(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ChatMessageRolePromptSystem(uint64_t a1)
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_ToolDefinition], type metadata accessor for Promptkit_Wireformat_ToolDefinition, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_Modality], type metadata accessor for Promptkit_Wireformat_Modality, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Voice?, type metadata accessor for Promptkit_Wireformat_Voice, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_96Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_747Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_748Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for Promptkit_Wireformat_FileGenerationParameters(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum);
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

uint64_t lazy protocol witness table accessor for type [Promptkit_Wireformat_ImageEmbeddingEncoding] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TemplateOverrideConverter.flattenedPromptSegments(_:)()
{
  v83 = type metadata accessor for Prompt();
  v0 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v2 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - v4;
  v60 = type metadata accessor for BindableVariable();
  v6 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.Component.Value();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for Prompt.Component();
  v12 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Prompt.components.getter();
  v77 = *(result + 16);
  if (!v77)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  v76 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v74 = v12 + 8;
  v75 = v12 + 16;
  v73 = (v9 + 88);
  v72 = *MEMORY[0x1E69C6318];
  v68 = *MEMORY[0x1E69C6328];
  v64 = *MEMORY[0x1E69C6320];
  v58 = *MEMORY[0x1E69C62E0];
  v57 = (v9 + 8);
  v71 = (v9 + 96);
  v56 = (v6 + 32);
  v55 = (v6 + 8);
  v81 = v0 + 16;
  v82 = (v0 + 8);
  v67 = (v0 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  v63 = v0;
  v66 = v5;
  v69 = result;
  v70 = v12;
  v17 = result;
  v62 = v8;
  v61 = v11;
  while (1)
  {
    if (v15 >= *(v17 + 16))
    {
      goto LABEL_61;
    }

    v18 = *(v12 + 72);
    v80 = v15;
    v20 = v78;
    v19 = v79;
    (*(v12 + 16))(v78, v76 + v18 * v15, v79);
    Prompt.Component.value.getter();
    (*(v12 + 8))(v20, v19);
    v21 = (*v73)(v11, v8);
    if (v21 == v72)
    {
      (*v71)(v11, v8);
      (*v67)(v5, v11, v83);
      result = static TemplateOverrideConverter.flattenedPromptSegments(_:)();
      v22 = *(result + 16);
      v23 = *(v16 + 2);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_62;
      }

      v25 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v24 > *(v16 + 3) >> 1)
      {
        if (v23 <= v24)
        {
          v26 = v23 + v22;
        }

        else
        {
          v26 = v23;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v26, 1, v16);
        v16 = result;
      }

      v12 = v70;
      if (*(v25 + 16))
      {
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v22)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();

        v17 = v69;
        if (v22)
        {
          v27 = *(v16 + 2);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            goto LABEL_65;
          }

          *(v16 + 2) = v29;
        }
      }

      else
      {

        v17 = v69;
        if (v22)
        {
          goto LABEL_63;
        }
      }

      result = (*v82)(v5, v83);
      goto LABEL_5;
    }

    if (v21 == v68)
    {
      break;
    }

    if (v21 == v64)
    {
      (*v71)(v11, v8);
      v44 = *v11;
      v45 = v11[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v47 = *(v16 + 2);
      v46 = *(v16 + 3);
      if (v47 >= v46 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v47 + 1;
      v48 = &v16[24 * v47];
      *(v48 + 4) = v44;
      *(v48 + 5) = v45;
      v48[48] = 0;
      v5 = v66;
    }

    else
    {
      if (v21 != v58)
      {
        result = (*v57)(v11, v8);
        goto LABEL_5;
      }

      (*v71)(v11, v8);
      (*v56)(v59, v11, v60);
      v49 = BindableVariable.name.getter();
      v51 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v53 = *(v16 + 2);
      v52 = *(v16 + 3);
      if (v53 >= v52 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v16);
      }

      result = (*v55)(v59, v60);
      *(v16 + 2) = v53 + 1;
      v54 = &v16[24 * v53];
      *(v54 + 4) = v49;
      *(v54 + 5) = v51;
      v54[48] = 1;
      v0 = v63;
    }

LABEL_4:
    v17 = v69;
    v12 = v70;
LABEL_5:
    v15 = v80 + 1;
    if (v80 + 1 == v77)
    {

      return v16;
    }
  }

  (*v71)(v11, v8);
  v30 = *v11;
  v31 = *(*v11 + 16);
  if (!v31)
  {

    goto LABEL_5;
  }

  v32 = *(v0 + 80);
  v65 = *v11;
  v33 = v30 + ((v32 + 32) & ~v32);
  v34 = *(v0 + 72);
  v35 = *(v0 + 16);
  while (1)
  {
    v36 = v83;
    v35(v2, v33, v83);
    v37 = static TemplateOverrideConverter.flattenedPromptSegments(_:)();
    result = (*v82)(v2, v36);
    v38 = *(v37 + 16);
    v39 = *(v16 + 2);
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v40 <= *(v16 + 3) >> 1)
    {
      if (*(v37 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v41 = v39 + v38;
      }

      else
      {
        v41 = v39;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v41, 1, v16);
      v16 = result;
      if (*(v37 + 16))
      {
LABEL_34:
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v38)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v42 = *(v16 + 2);
          v28 = __OFADD__(v42, v38);
          v43 = v42 + v38;
          if (v28)
          {
            goto LABEL_60;
          }

          *(v16 + 2) = v43;
        }

        goto LABEL_24;
      }
    }

    if (v38)
    {
      goto LABEL_58;
    }

LABEL_24:
    v33 += v34;
    if (!--v31)
    {

      v0 = v63;
      v5 = v66;
      v8 = v62;
      v11 = v61;
      goto LABEL_4;
    }
  }

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
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

void *static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, uint64_t a7)
{
  v11 = a4;
  inited = a3;
  v13 = *(a1 + 16);
  if (v13 <= a7)
  {
LABEL_6:
    if ((a4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = 7;
    }

    if (4 * v7 < a6 >> 14)
    {
      goto LABEL_17;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_14:
      v17 = v8 | (v7 << 16);
      v19 = *(a5 + 2);
      v18 = *(a5 + 3);
      if (v19 >= v18 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, a5);
      }

      *(a5 + 2) = v19 + 1;
      v20 = &a5[32 * v19];
      *(v20 + 4) = a6;
      *(v20 + 5) = v17;
      *(v20 + 6) = a7;
      *(v20 + 7) = v13;
LABEL_17:
      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v22 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(a1, a2, inited, v11, a5, 0, v21);

      return v22;
    }

LABEL_33:
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    goto LABEL_14;
  }

  if (a7 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = 0;
  v15 = (a1 + 24 * a7 + 48);
  v16 = *(a1 + 16);
  while (*v15 == 1)
  {
    --v14;
    v15 += 24;
    if (a7 == --v16)
    {
      goto LABEL_6;
    }
  }

  v24 = *(v15 - 2);
  v7 = *(v15 - 1);
  outlined copy of TemplateOverrideConverter.Segment(v24, v7);
  specialized static TemplateOverrideConverter.findAllOccurrences(of:in:startingIndex:)(v24, v7, inited, v11, a6);
  v26 = v25;
  outlined consume of TemplateOverrideConverter.Segment(v24, v7);
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = a7 - v14;
    v8 = v27 + 40;
    v42 = -v28;
    v13 = -1;
    v40 = v11;
    v41 = v27;
    while (v42 + v13 != -1)
    {
      if (++v13 >= *(v27 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v30 = inited;
      v31 = *(v8 - 8);
      v46 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABA1D930;
      *(inited + 32) = a6;
      v11 = (inited + 32);
      *(inited + 40) = v31;
      *(inited + 48) = a7;
      v32 = v29;
      *(inited + 56) = v29;
      v33 = *(a5 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v35 = *(a5 + 3) >> 1, v7 = a5, v35 <= v33))
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33 + 1, 1, a5);
        v35 = *(v7 + 24) >> 1;
      }

      v36 = *(v7 + 16);
      if (v35 <= v36)
      {
        goto LABEL_31;
      }

      v8 += 16;
      v37 = *(inited + 48);
      v38 = v7 + 32 * v36;
      *(v38 + 32) = *v11;
      *(v38 + 48) = v37;

      ++*(v7 + 16);
      v29 = v32;
      inited = v30;
      v39 = static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(a1, a2, v30, v40, v7, v46, v32 + 1);

      v27 = v41;
      if (v39)
      {

        return v39;
      }
    }
  }

  return 0;
}

void *static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10 <= a6)
  {
    if (!v10)
    {
      return static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(a2, v7);
    }

    v20 = 0;
    v21 = *(a1 + 16);
    v110 = a1 + 48;
    v112 = a5 + 32;
    v105 = v21;
    v107 = *(a5 + 16);
    while (1)
    {
      v23 = (v112 + 32 * v20);
      if (v23[1] >> 14 < *v23 >> 14)
      {
        goto LABEL_103;
      }

      v24 = v23[2];
      v25 = v23[3];
      isUniquelyReferenced_nonNull_native = String.subscript.getter();
      if (v25 < v24)
      {
        break;
      }

      if (v21 < v24)
      {
        goto LABEL_105;
      }

      if (v24 < 0)
      {
        goto LABEL_106;
      }

      if (v21 < v25)
      {
        goto LABEL_107;
      }

      v115 = v27;
      v117 = isUniquelyReferenced_nonNull_native;
      v119 = v28;
      v121 = v29;
      v30 = MEMORY[0x1E69E7CC0];
      if (v24 == v25)
      {
        goto LABEL_38;
      }

      v31 = v24;
LABEL_22:
      v32 = (v110 + 24 * v31);
      v33 = v31;
      do
      {
        if (v31 < v24 || v33 >= v25)
        {
LABEL_99:
          __break(1u);
LABEL_100:
          v95 = isUniquelyReferenced_nonNull_native;

          outlined consume of TemplateOverrideConverter.Segment(v31, v30);
          return v95;
        }

        if (*v32 != 1)
        {
          goto LABEL_114;
        }

        if (v7[2])
        {
          v34 = *(v32 - 2);
          v35 = *(v32 - 1);

          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
          if (v37)
          {
            v38 = (a7[7] + 16 * v36);
            v39 = v38[1];
            v102 = *v38;

            outlined consume of TemplateOverrideConverter.Segment(v34, v35);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
              v30 = isUniquelyReferenced_nonNull_native;
            }

            v21 = v105;
            v41 = *(v30 + 16);
            v40 = *(v30 + 24);
            if (v41 >= v40 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v30);
              v30 = isUniquelyReferenced_nonNull_native;
            }

            v31 = v33 + 1;
            *(v30 + 16) = v41 + 1;
            v42 = v30 + 16 * v41;
            *(v42 + 32) = v102;
            *(v42 + 40) = v39;
            v61 = v25 - 1 == v33;
            v7 = a7;
            v10 = v107;
            if (v61)
            {
              goto LABEL_38;
            }

            goto LABEL_22;
          }

          isUniquelyReferenced_nonNull_native = outlined consume of TemplateOverrideConverter.Segment(v34, v35);
          v7 = a7;
        }

        ++v33;
        v32 += 24;
      }

      while (v25 != v33);
      v21 = v105;
      v10 = v107;
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;

      if ((v45 & 0x2000000000000000) != 0)
      {
        v46 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v46 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v119 == v43 && v121 == v45 && !(v117 >> 16) && v115 >> 16 == v46)
      {
      }

      else
      {
        v22 = _stringCompareInternal(_:_:_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      ++v20;
      v7 = a7;
      if (v20 == v10)
      {
        return static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(a2, v7);
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v11 = a6;
  if (a6 < 0)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v12 = (a5 + 32 * a6);
  v13 = v12[6];
  v14 = v12[7];
  if (v14 < v13)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v13 < 0)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v15 = *(a1 + 16);
  if (v15 < v13 || v15 < v14)
  {
    goto LABEL_112;
  }

  if (v13 == v14)
  {

    v18 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v17, a2, a3, a4, v8, v11 + 1, v7);

    return v18;
  }

  if (v12[5] >> 14 < v12[4] >> 14)
  {
LABEL_113:
    __break(1u);
    while (1)
    {
LABEL_114:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_115:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  v106 = a1 + 32;

  v47 = String.subscript.getter();
  v108 = v48;
  v111 = v49;
  v103 = v50;
  v104 = v47;
  v96 = v50 >> 16;
  v97 = v47 >> 16;
  v51 = a7;
  v100 = v8;
  v101 = v9;
  v98 = v14;
  v99 = v11;
  while (1)
  {
    if (v13 >= v14)
    {
      goto LABEL_108;
    }

    v53 = v106 + 24 * v13;
    if (*(v53 + 16) != 1)
    {
      goto LABEL_114;
    }

    v31 = *v53;
    v30 = *(v53 + 8);
    v54 = v51[2];

    if (!v54)
    {
      break;
    }

    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
    v51 = a7;
    if (v56)
    {
      v57 = (a7[7] + 16 * v55);
      v58 = *v57;
      v59 = v57[1];
      v60 = (v59 & 0x2000000000000000) != 0 ? HIBYTE(v59) & 0xF : v58 & 0xFFFFFFFFFFFFLL;
      v61 = v58 == v108 && v59 == v111;
      v62 = v61 && v97 == 0;
      v63 = v62 && v60 == v96;
      if (v63 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v9, a2, a3, a4, v8, v11 + 1, a7);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_100;
        }
      }
    }

    if (!a7[2])
    {
      break;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
    v51 = a7;
    if ((v64 & 1) == 0)
    {
      break;
    }

    outlined consume of TemplateOverrideConverter.Segment(v31, v30);
LABEL_50:
    if (++v13 == v14)
    {

      return 0;
    }
  }

  v116 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v65 = v51;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABA1D930;
  *(inited + 32) = v31;
  *(inited + 40) = v30;
  *(inited + 48) = MEMORY[0x1AC5A5B60](v104, v103, v108, v111);
  *(inited + 56) = v67;
  v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

  v69 = swift_isUniquelyReferenced_nonNull_native();
  v124 = v65;
  v30 = v68 + 64;
  v70 = -1 << *(v68 + 32);
  if (-v70 < 64)
  {
    v71 = ~(-1 << -v70);
  }

  else
  {
    v71 = -1;
  }

  v31 = v71 & *(v68 + 64);
  v72 = (63 - v70) >> 6;
  v118 = v68;

  v73 = 0;
  v74 = v65;
LABEL_79:
  if (v31)
  {
    v122 = v69;
    v76 = v73;
    goto LABEL_86;
  }

  v77 = v73;
  while (1)
  {
    v76 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
      goto LABEL_99;
    }

    if (v76 >= v72)
    {
      break;
    }

    v31 = *(v30 + 8 * v76);
    ++v77;
    if (v31)
    {
      v122 = v69;
LABEL_86:
      v78 = (v76 << 10) | (16 * __clz(__rbit64(v31)));
      v79 = (*(v118 + 48) + v78);
      v81 = *v79;
      v80 = v79[1];
      v82 = (*(v118 + 56) + v78);
      v83 = v82[1];
      v120 = *v82;

      v85 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v80);
      v86 = v74[2];
      v87 = (v84 & 1) == 0;
      isUniquelyReferenced_nonNull_native = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v88 = v84;
      if (v74[3] >= isUniquelyReferenced_nonNull_native)
      {
        if ((v122 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v122 & 1);
        isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(v81, v80);
        if ((v88 & 1) != (v89 & 1))
        {
          goto LABEL_115;
        }

        v85 = isUniquelyReferenced_nonNull_native;
      }

      v31 &= v31 - 1;
      v74 = v124;
      if (v88)
      {

        v75 = (v124[7] + 16 * v85);
        *v75 = v120;
        v75[1] = v83;

        goto LABEL_78;
      }

      v124[(v85 >> 6) + 8] |= 1 << v85;
      v90 = (v124[6] + 16 * v85);
      *v90 = v81;
      v90[1] = v80;
      v91 = (v124[7] + 16 * v85);
      *v91 = v120;
      v91[1] = v83;
      v92 = v124[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        goto LABEL_102;
      }

      v124[2] = v94;
LABEL_78:
      v69 = 1;
      v73 = v76;
      goto LABEL_79;
    }
  }

  outlined consume of [String : String].Iterator._Variant(v118);

  v11 = v99;
  v8 = v100;
  v9 = v101;
  v52 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v101, a2, a3, a4, v100, v99 + 1, v74);

  v51 = a7;
  v13 = v116;
  v14 = v98;
  if (!v52)
  {
    goto LABEL_50;
  }

  return v52;
}

void *static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v162 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v3 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.Text();
  v5 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v7 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v160 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v148 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v144 = (&v129 - v22);
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24 = *(a1 + 64);
  v145 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v134 = (v25 + 63) >> 6;
  v146 = (v10 + 16);
  v153 = (v10 + 32);
  v165 = (v3 + 88);
  v166 = v7 + 16;
  v164 = *MEMORY[0x1E69DA8A8];
  v130 = v7;
  v28 = (v7 + 8);
  v29 = v23;
  v163 = v28;
  v156 = (v3 + 96);
  v157 = (v3 + 8);
  v154 = (v5 + 8);
  v155 = (v5 + 32);
  v142 = (v10 + 8);
  v131 = v10 + 40;
  v141 = a1;

  v30 = 0;
  *&v31 = 136315138;
  v135 = v31;
  v150 = v16;
  v129 = v9;
  v136 = v10;
  while (1)
  {
    v152 = v29;
    if (!v27)
    {
      break;
    }

    v33 = v30;
LABEL_15:
    v151 = (v27 - 1) & v27;
    v37 = __clz(__rbit64(v27)) | (v33 << 6);
    v38 = (*(v141 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    v41 = v147;
    (*(v10 + 16))(v147, *(v141 + 56) + *(v10 + 72) * v37, v9);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
    v43 = *(v42 + 48);
    v44 = v148;
    *v148 = v40;
    *(v44 + 1) = v39;
    v36 = v44;
    (*(v10 + 32))(&v44[v43], v41, v9);
    (*(*(v42 - 8) + 56))(v36, 0, 1, v42);

LABEL_16:
    v45 = v144;
    outlined init with take of (key: String, value: PromptTemplateInfo.RichVariableBinding)?(v36, v144);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {

      return v152;
    }

    v47 = *v45;
    v48 = v45[1];
    v49 = *v153;
    (*v153)(v16, v45 + *(v46 + 48), v9);
    v50 = v143;
    if (*(v143 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48), (v52 & 1) != 0))
    {
      v138 = v47;
      v53 = (*(v50 + 56) + 16 * v51);
      v54 = v53[1];
      v140 = *v53;
      v137 = v54;

      v55 = PromptTemplateInfo.RichVariableBinding.components.getter();
      v56 = *(v55 + 16);
      if (v56)
      {
        v133 = v48;
        v57 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v132 = v55;
        v58 = v55 + v57;
        v167 = *(v130 + 72);
        v59 = *(v130 + 16);
        v60 = MEMORY[0x1E69E7CC0];
        v62 = v161;
        v61 = v162;
        v63 = v168;
        v64 = v160;
        v59(v160, v55 + v57, v168);
        while (1)
        {
          PromptTemplateInfo.RichVariableBinding.Component.content.getter();
          v65 = (*v165)(v62, v61);
          if (v65 == v164)
          {
            (*v156)(v62, v61);
            v67 = v158;
            v66 = v159;
            (*v155)(v158, v62, v159);
            v68 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter();
            v70 = v69;
            (*v154)(v67, v66);
            (*v163)(v64, v168);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
            }

            v72 = *(v60 + 2);
            v71 = *(v60 + 3);
            if (v72 >= v71 >> 1)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v60);
            }

            *(v60 + 2) = v72 + 1;
            v73 = &v60[16 * v72];
            *(v73 + 4) = v68;
            *(v73 + 5) = v70;
            v62 = v161;
            v61 = v162;
            v63 = v168;
            v64 = v160;
          }

          else
          {
            (*v163)(v64, v63);
            (*v157)(v62, v61);
          }

          v58 += v167;
          if (!--v56)
          {
            break;
          }

          v59(v64, v58, v63);
        }

        v9 = v129;
        v16 = v150;
        v48 = v133;
      }

      else
      {

        v60 = MEMORY[0x1E69E7CC0];
      }

      v169 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v99 = BidirectionalCollection<>.joined(separator:)();
      v101 = v100;

      v102 = v99 == v140;
      v10 = v136;
      v27 = v151;
      v103 = v137;
      if (v102 && v101 == v137)
      {

        goto LABEL_52;
      }

      v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v104)
      {
LABEL_52:

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        __swift_project_value_buffer(v105, static Log.prompt);

        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v169 = v109;
          *v108 = v135;
          v110 = v138;
          *(v108 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v48, &v169);
          _os_log_impl(&dword_1AB828000, v106, v107, "TemplateOverrideConverter: Variable %s not modified.", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v109);
          v111 = v109;
          v16 = v150;
          MEMORY[0x1AC5A6CD0](v111, -1, -1);
          MEMORY[0x1AC5A6CD0](v108, -1, -1);

          v112 = v152;
        }

        else
        {

          v112 = v152;
          v110 = v138;
        }

        v113 = v147;
        (*v146)(v147, v16, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v169 = v112;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v110, v48, isUniquelyReferenced_nonNull_native);

        (*v142)(v16, v9);
        v29 = v169;
        v10 = v136;
      }

      else
      {
        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        __swift_project_value_buffer(v115, static Log.prompt);

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v169 = v119;
          *v118 = v135;
          *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v48, &v169);
          _os_log_impl(&dword_1AB828000, v116, v117, "TemplateOverrideConverter: Replace variable %s's string components with modified string value. Attachments remain the same.", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v119);
          v120 = v119;
          v16 = v150;
          MEMORY[0x1AC5A6CD0](v120, -1, -1);
          v121 = v118;
          v103 = v137;
          MEMORY[0x1AC5A6CD0](v121, -1, -1);
        }

        v122 = v152;
        v123 = v147;
        static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)(v140, v103, v147);

        v124 = swift_isUniquelyReferenced_nonNull_native();
        v169 = v122;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, v138, v48, v124);

        (*v142)(v16, v9);
        v29 = v169;
      }
    }

    else
    {
      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Log.prompt);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = v9;
        v78 = v10;
        v79 = v47;
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v169 = v81;
        *v80 = v135;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v48, &v169);
        _os_log_impl(&dword_1AB828000, v75, v76, "TemplateOverrideConverter: Replace variable %s's string components with an empty string as it was unfilled.", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x1AC5A6CD0](v81, -1, -1);
        v82 = v80;
        v47 = v79;
        v10 = v78;
        v9 = v77;
        MEMORY[0x1AC5A6CD0](v82, -1, -1);
      }

      v83 = v152;
      v84 = v139;
      static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)(0, 0xE000000000000000, v139);
      v49(v149, v84, v9);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v169 = v83;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
      v88 = *(v83 + 16);
      v89 = (v87 & 1) == 0;
      v90 = __OFADD__(v88, v89);
      v91 = v88 + v89;
      if (v90)
      {
        goto LABEL_65;
      }

      v92 = v87;
      if (*(v83 + 24) >= v91)
      {
        if ((v85 & 1) == 0)
        {
          v125 = v10;
          v126 = v47;
          v127 = v86;
          specialized _NativeDictionary.copy()();
          v86 = v127;
          v47 = v126;
          v10 = v125;
        }

        v16 = v150;
        if ((v92 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_4:
        v32 = v86;

        v29 = v169;
        (*(v10 + 40))(v169[7] + *(v10 + 72) * v32, v149, v9);
        (*(v10 + 8))(v16, v9);
        v27 = v151;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v91, v85);
        v86 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
        if ((v92 & 1) != (v93 & 1))
        {
          goto LABEL_67;
        }

        v16 = v150;
        if (v92)
        {
          goto LABEL_4;
        }

LABEL_42:
        v94 = v47;
        v29 = v169;
        v169[(v86 >> 6) + 8] |= 1 << v86;
        v95 = (v29[6] + 16 * v86);
        *v95 = v94;
        v95[1] = v48;
        v49((v29[7] + *(v10 + 72) * v86), v149, v9);
        (*(v10 + 8))(v16, v9);
        v96 = v29[2];
        v90 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v90)
        {
          goto LABEL_66;
        }

        v29[2] = v97;
        v27 = v151;
      }
    }
  }

  if (v134 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v134;
  }

  v35 = v34 - 1;
  v36 = v148;
  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v134)
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
      (*(*(v98 - 8) + 56))(v36, 1, 1, v98);
      v151 = 0;
      v30 = v35;
      goto LABEL_16;
    }

    v27 = *(v145 + 8 * v33);
    ++v30;
    if (v27)
    {
      v30 = v33;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v57 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = v41 - v9;
  v10 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - v16;
  result = PromptTemplateInfo.RichVariableBinding.components.getter();
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v61 = v17;
    v41[1] = a1;
    v41[2] = a2;
    v43 = a3;
    v46 = 0;
    v49 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v53 = result + v49;
    v52 = (v6 + 88);
    v55 = *MEMORY[0x1E69DA8A8];
    v50 = (v11 + 8);
    v51 = (v6 + 8);
    v48 = (v11 + 32);
    v41[0] = v6 + 104;
    v42 = v20 - 1;
    v21 = MEMORY[0x1E69E7CC0];
    v47 = v20;
    v54 = v11;
    v22 = 0;
    while (v22 < *(v19 + 16))
    {
      v23 = v21;
      v24 = v19;
      v25 = *(v11 + 72);
      v60 = v22 + 1;
      v58 = v25;
      v26 = *(v11 + 16);
      v27 = v61;
      v26(v61, v53 + v25 * v22, v10);
      v28 = v10;
      v29 = v56;
      PromptTemplateInfo.RichVariableBinding.Component.content.getter();
      v30 = v57;
      v31 = (*v52)(v29, v57);
      (*v51)(v29, v30);
      if (v31 == v55)
      {
        v21 = v23;
        if (v46)
        {
          v10 = v28;
          result = (*v50)(v61, v28);
          v46 = 1;
          v11 = v54;
          v19 = v24;
          v36 = v60;
          if (v42 == v22)
          {
            goto LABEL_20;
          }
        }

        else
        {

          v37 = v44;
          PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)();
          (*v41[0])(v37, v55, v57);
          PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = v28;
          v19 = v24;
          v36 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
          }

          v40 = v21[2];
          v39 = v21[3];
          v11 = v54;
          if (v40 >= v39 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v21);
          }

          (*v50)(v61, v10);
          v21[2] = v40 + 1;
          result = (*v48)(v21 + v49 + v40 * v58, v45, v10);
          v46 = 1;
          if (v42 == v22)
          {
            goto LABEL_20;
          }
        }

        v22 = v36;
      }

      else
      {
        v26(v59, v27, v28);
        v21 = v23;
        v10 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
        }

        v11 = v54;
        v19 = v24;
        v32 = v60;
        v33 = v58;
        v35 = v21[2];
        v34 = v21[3];
        if (v35 >= v34 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v21);
        }

        (*v50)();
        v21[2] = v35 + 1;
        result = (*v48)(v21 + v49 + v35 * v33, v59, v10);
        v22 = v32;
        if (v47 == v32)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return PromptTemplateInfo.RichVariableBinding.init(components:)();
  }

  return result;
}

void specialized static TemplateOverrideConverter.findAllOccurrences(of:in:startingIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v25 = a1;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v27 = a3;
  v28 = a4;
  v12 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v24[0] = 4 * v11;
  if (4 * v11 < a5 >> 14)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v24[1] = v12 | (v11 << 16);
    v13 = type metadata accessor for Locale();
    v14 = MEMORY[0x1E69E7CC0];
    v15 = *(*(v13 - 8) + 56);
    while (1)
    {
      v31 = v27;
      v32 = v28;
      v29 = v25;
      v30 = v26;
      v15(v10, 1, 1, v13);
      lazy protocol witness table accessor for type String and conformance String();
      v16 = StringProtocol.range<A>(of:options:range:locale:)();
      v18 = v17;
      v20 = v19;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v20)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v18;
      if (v24[0] < v18 >> 14)
      {
        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: PromptTemplateInfo.RichVariableBinding)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TemplateOverrideConverter.Segment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TemplateOverrideConverter.Segment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TemplateOverrideConverter.ProposedBindingVariableSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemplateOverrideConverter.ProposedBindingVariableSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError()
{
  result = lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError;
  if (!lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError;
  if (!lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError);
  }

  return result;
}

uint64_t one-time initialization function for samplingParametersKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.samplingParametersKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.samplingParametersKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for draftCacheKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for grammarKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.grammarKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.grammarKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for partialGrammarKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.partialGrammarKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.partialGrammarKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for documentsKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for grammarIdentifierKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.grammarIdentifierKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.grammarIdentifierKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for schemaIdentifierKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.schemaIdentifierKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaIdentifierKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 176);
  v4 = *(a1 + 144);
  v40 = *(a1 + 160);
  v41 = v3;
  v5 = *(a1 + 176);
  v42 = *(a1 + 192);
  v6 = *(a1 + 112);
  v7 = *(a1 + 80);
  v36 = *(a1 + 96);
  v37 = v6;
  v8 = *(a1 + 112);
  v9 = *(a1 + 144);
  v38 = *(a1 + 128);
  v39 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 16);
  v32 = *(a1 + 32);
  v33 = v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v13;
  v14 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v14;
  v27 = v40;
  v28 = v5;
  v29 = *(a1 + 192);
  v23 = v36;
  v24 = v8;
  v25 = v38;
  v26 = v4;
  v19 = v32;
  v20 = v12;
  v21 = v34;
  v22 = v7;
  v43 = *(a1 + 208);
  v30 = *(a1 + 208);
  v17 = v31[0];
  v18 = v11;
  outlined init with copy of SamplingParameters(v31, v44);
  SamplingParametersEnvelope.init(sealing:)(&v17, v44);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v15, static GenerativeConfigurationKey.samplingParametersKey);
  v27 = v44[10];
  v28 = v44[11];
  v29 = v44[12];
  v30 = v45;
  v23 = v44[6];
  v24 = v44[7];
  v25 = v44[8];
  v26 = v44[9];
  v19 = v44[2];
  v20 = v44[3];
  v21 = v44[4];
  v22 = v44[5];
  v17 = v44[0];
  v18 = v44[1];
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
  return outlined destroy of SamplingParametersEnvelope(v44);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  OverrideHint.value.getter();
  v5[10] = v17;
  v5[11] = v18;
  v5[12] = v19;
  v6 = v20;
  v5[6] = v13;
  v5[7] = v14;
  v5[8] = v15;
  v5[9] = v16;
  v5[2] = v9;
  v5[3] = v10;
  v5[4] = v11;
  v5[5] = v12;
  v5[0] = v7;
  v5[1] = v8;
  SamplingParametersEnvelope.init(sealing:)(v5, v21);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v3, static GenerativeConfigurationKey.samplingParametersKey);
  v17 = v21[10];
  v18 = v21[11];
  v19 = v21[12];
  v20 = v22;
  v13 = v21[6];
  v14 = v21[7];
  v15 = v21[8];
  v16 = v21[9];
  v9 = v21[2];
  v10 = v21[3];
  v11 = v21[4];
  v12 = v21[5];
  v7 = v21[0];
  v8 = v21[1];
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
  return outlined destroy of SamplingParametersEnvelope(v21);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for samplingParametersKey, static GenerativeConfigurationKey.samplingParametersKey, one-time initialization function for samplingParametersKey);
}

unint64_t lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope()
{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope);
  }

  return result;
}

void GenerativeConfigurationProtocol.samplingParameters.getter(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v57 = a2;
  v55 = a3;
  v52 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for BindableConfiguration();
  v119 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v47 - v12;
  v13 = type metadata accessor for GenerativeConfigurationKey();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, static GenerativeConfigurationKey.samplingParametersKey);
  v59 = v14;
  v60 = v13;
  (*(v14 + 16))(v16, v17, v13);
  v18 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0], MEMORY[0x1E69C6500]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v18, MEMORY[0x1E69C64F8]);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  v19 = v119;
  if ((*(v119 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    v101 = v87;
    v102 = v88;
    v103 = v89;
    v97 = v83;
    v98 = v84;
    v99 = v85;
    v100 = v86;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    v91 = v77;
    v92 = v78;
    v115 = v87;
    v116 = v88;
    v117 = v89;
    v111 = v83;
    v112 = v84;
    v113 = v85;
    v114 = v86;
    v107 = v79;
    v108 = v80;
    v109 = v81;
    v110 = v82;
    v104 = v90;
    v118 = v90;
    v105 = v77;
    v106 = v78;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(&v105) == 1)
    {
      (*(v59 + 8))(v16, v60);
      _s15TokenGeneration18SamplingParametersVSgWOi0_(&v63);
    }

    else
    {
      v73 = v115;
      v74 = v116;
      v75 = v117;
      v76 = v118;
      v69 = v111;
      v70 = v112;
      v71 = v113;
      v72 = v114;
      v65 = v107;
      v66 = v108;
      v67 = v109;
      v68 = v110;
      v63 = v105;
      v64 = v106;
      v34 = SamplingParametersEnvelope.unseal()(v61);
      (*(v59 + 8))(v16, v60, v34);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v91, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMd, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMR);
      v73 = v61[10];
      v74 = v61[11];
      v75 = v61[12];
      v76 = v62;
      v69 = v61[6];
      v70 = v61[7];
      v71 = v61[8];
      v72 = v61[9];
      v65 = v61[2];
      v66 = v61[3];
      v67 = v61[4];
      v68 = v61[5];
      v63 = v61[0];
      v64 = v61[1];
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
    }

    v35 = v74;
    v27 = v55;
    *(v55 + 160) = v73;
    *(v27 + 176) = v35;
    *(v27 + 192) = v75;
    *(v27 + 208) = v76;
    v36 = v70;
    *(v27 + 96) = v69;
    *(v27 + 112) = v36;
    v37 = v72;
    *(v27 + 128) = v71;
    *(v27 + 144) = v37;
    v38 = v66;
    *(v27 + 32) = v65;
    *(v27 + 48) = v38;
    v39 = v68;
    *(v27 + 64) = v67;
    *(v27 + 80) = v39;
    v32 = v63;
    v33 = v64;
    goto LABEL_12;
  }

  (*(v19 + 32))(v58, v8, v9);
  v20 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v21 = BindableConfiguration.name.getter();
  if (!*(v20 + 16))
  {

    goto LABEL_14;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v20 + 56) + 32 * v23, &v77);

  if (swift_dynamicCast())
  {
    (*(v119 + 8))(v58, v9);
    (*(v59 + 8))(v16, v60);
    v101 = v115;
    v102 = v116;
    v103 = v117;
    v104 = v118;
    v97 = v111;
    v98 = v112;
    v99 = v113;
    v100 = v114;
    v93 = v107;
    v94 = v108;
    v95 = v109;
    v96 = v110;
    v91 = v105;
    v92 = v106;
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
    v26 = v102;
    v27 = v55;
    *(v55 + 160) = v101;
    *(v27 + 176) = v26;
    *(v27 + 192) = v103;
    *(v27 + 208) = v104;
    v28 = v98;
    *(v27 + 96) = v97;
    *(v27 + 112) = v28;
    v29 = v100;
    *(v27 + 128) = v99;
    *(v27 + 144) = v29;
    v30 = v94;
    *(v27 + 32) = v93;
    *(v27 + 48) = v30;
    v31 = v96;
    *(v27 + 64) = v95;
    *(v27 + 80) = v31;
    v32 = v91;
    v33 = v92;
LABEL_12:
    *v27 = v32;
    *(v27 + 16) = v33;
    return;
  }

LABEL_15:
  v41 = v58;
  v40 = v59;
  v57 = v16;
  v42 = v119;
  (*(v119 + 16))(v48, v58, v9);
  v43 = v49;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v44 = v50;
  v45 = v52;
  (*(v50 + 104))(v43, *MEMORY[0x1E69A0A08], v52);
  v46 = v51;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v44 + 8))(v43, v45);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v53 + 8))(v46, v54);
  swift_willThrow();
  (*(v42 + 8))(v41, v9);
  (*(v40 + 8))(v57, v60);
}

uint64_t _s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double _s15TokenGeneration18SamplingParametersVSgWOi0_(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t GenerativeConfigurationProtocol.draftCache(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v3, static GenerativeConfigurationKey.draftCacheKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

{
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v3, static GenerativeConfigurationKey.draftCacheKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySaySSGGMd, &_s16GenerativeModels12OverrideHintOySaySSGGMR);
  OverrideHint.value.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for draftCacheKey, static GenerativeConfigurationKey.draftCacheKey, one-time initialization function for draftCacheKey);
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v7, a5);
  type metadata accessor for BindableConfiguration();
  v8 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0], MEMORY[0x1E69C6500]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v8, MEMORY[0x1E69C64F8]);

  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.draftCache.getter(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v38 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for BindableConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v33 - v12;
  v13 = type metadata accessor for GenerativeConfigurationKey();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, static GenerativeConfigurationKey.draftCacheKey);
  (*(v14 + 16))(v16, v17, v13);
  v41 = v13;
  v18 = v16;
  v19 = v14;
  v20 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0], MEMORY[0x1E69C6500]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v20, MEMORY[0x1E69C64F8]);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    (*(v19 + 8))(v18, v41);
    return v44[0];
  }

  v33 = v19;
  (*(v9 + 32))(v42, v7, v8);
  v22 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v23 = BindableConfiguration.name.getter();
  if (!*(v22 + 16))
  {

    goto LABEL_10;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v25, v44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v42, v8);
    (*(v33 + 8))(v18, v41);
    return v44[5];
  }

LABEL_11:
  v28 = v42;
  (*(v9 + 16))(v34, v42, v8);
  v29 = v35;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v30 = v36;
  v31 = v38;
  (*(v36 + 104))(v29, *MEMORY[0x1E69A0A08], v38);
  v32 = v37;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v30 + 8))(v29, v31);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v39 + 8))(v32, v40);
  swift_willThrow();
  (*(v9 + 8))(v28, v8);
  return (*(v33 + 8))(v18, v41);
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for grammarKey != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v4, static GenerativeConfigurationKey.grammarKey);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for grammarKey, static GenerativeConfigurationKey.grammarKey, one-time initialization function for grammarKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for grammarKey, static GenerativeConfigurationKey.grammarKey, one-time initialization function for grammarKey);
}

uint64_t GenerativeConfigurationProtocol.grammarIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for grammarIdentifierKey, static GenerativeConfigurationKey.grammarIdentifierKey, one-time initialization function for grammarIdentifierKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for grammarIdentifierKey, static GenerativeConfigurationKey.grammarIdentifierKey, one-time initialization function for grammarIdentifierKey);
}

uint64_t GenerativeConfigurationProtocol.grammar.getter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36[1] = a5;
  v44 = a2;
  v47[5] = a1;
  v41 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v36 - v11;
  v13 = type metadata accessor for BindableConfiguration();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v37 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = v36 - v17;
  v18 = type metadata accessor for GenerativeConfigurationKey();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, a4);
  (*(v19 + 16))(v21, v22, v18);
  v23 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0], MEMORY[0x1E69C6500]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v23, MEMORY[0x1E69C64F8]);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    (*(v19 + 8))(v21, v18);
    return v47[0];
  }

  v25 = v14;
  (*(v14 + 32))(v45, v12, v13);
  v26 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v27 = BindableConfiguration.name.getter();
  if (!*(v26 + 16))
  {

    goto LABEL_10;
  }

  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v29, v47);

  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v45, v13);
    (*(v19 + 8))(v21, v18);
    return v46;
  }

LABEL_11:
  (*(v14 + 16))(v37, v45, v13);
  v32 = v38;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v33 = v39;
  v34 = v41;
  (*(v39 + 104))(v32, *MEMORY[0x1E69A0A08], v41);
  v35 = v40;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v33 + 8))(v32, v34);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v42 + 8))(v35, v43);
  swift_willThrow();
  (*(v25 + 8))(v45, v13);
  return (*(v19 + 8))(v21, v18);
}

uint64_t GenerativeConfigurationProtocol.schemaIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for schemaIdentifierKey, static GenerativeConfigurationKey.schemaIdentifierKey, one-time initialization function for schemaIdentifierKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for schemaIdentifierKey, static GenerativeConfigurationKey.schemaIdentifierKey, one-time initialization function for schemaIdentifierKey);
}

uint64_t GenerativeConfigurationProtocol.partialGrammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for partialGrammarKey, static GenerativeConfigurationKey.partialGrammarKey, one-time initialization function for partialGrammarKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for partialGrammarKey, static GenerativeConfigurationKey.partialGrammarKey, one-time initialization function for partialGrammarKey);
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v7, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySSGMd, &_s16GenerativeModels12OverrideHintOySSGMR);
  OverrideHint.value.getter();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.schema(_:)()
{
  return MEMORY[0x1EEE0AD60]();
}

{
  return MEMORY[0x1EEE0AD68]();
}

uint64_t GenerativeConfigurationProtocol.documents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for documentsKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v3, static GenerativeConfigurationKey.documentsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6198], MEMORY[0x1E69E6330]);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6180], MEMORY[0x1E69E6300]);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.documents.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for documentsKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.documentsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6198], MEMORY[0x1E69E6330]);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6180], MEMORY[0x1E69E6300]);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  return v4;
}

uint64_t System.toolDefinitions(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for System();
  (*(*(v4 - 8) + 16))(a2, v2, v4);
  v5 = System.configurationStorage.modify();

  RunnableConfigurationStorage.toolDefinitions.setter();
  return v5(&v7, 0);
}

uint64_t User.schemaDefinition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7];
  v9 = type metadata accessor for User();
  (*(*(v9 - 8) + 16))(a2, v3, v9);
  v10 = type metadata accessor for Prompt.ResponseFormat();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = User.configurationStorage.modify();
  RunnableConfigurationStorage.schemaDefinition.setter();
  return v12(v14, 0);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(a2, MEMORY[0x1E69C6178], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for InferenceResponse.Moderation.Category();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478], MEMORY[0x1E69C6480]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x1AC5A6550](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for InferenceResponse.Moderation.Category();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478], MEMORY[0x1E69C6488]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x80000001ABA3F450;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0x6E756F436E727554;
            v12 = 0xE900000000000074;
          }

          else
          {
            v11 = 0x65736E6F70736552;
            v12 = 0xEC00000065707954;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0x654C74706D6F7250;
          v12 = 0xEC0000006874676ELL;
        }

        else if (v6 == 8)
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001ABA3F4D0;
        }

        else
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001ABA3F4F0;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x65736E6F70736552;
        }

        else
        {
          v7 = 0x6E756F436C6F6F54;
        }

        if (v6 == 3)
        {
          v8 = 0xEE0074616D726F46;
        }

        else
        {
          v8 = 0xE900000000000074;
        }

        if (v6 == 2)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001ABA3F480;
        }

        v9 = 0xD000000000000015;
        if (v6)
        {
          v9 = 0x64416D6F74737543;
          v10 = 0xED00007265747061;
        }

        else
        {
          v10 = v5;
        }

        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0xD000000000000014;
      if (v27 != 8)
      {
        v13 = 0xD000000000000013;
      }

      v14 = 0x80000001ABA3F4F0;
      if (v27 == 8)
      {
        v14 = 0x80000001ABA3F4D0;
      }

      if (v27 == 7)
      {
        v13 = 0x654C74706D6F7250;
        v14 = 0xEC0000006874676ELL;
      }

      v15 = 0x6E756F436E727554;
      if (v27 != 5)
      {
        v15 = 0x65736E6F70736552;
      }

      v16 = 0xEC00000065707954;
      if (v27 == 5)
      {
        v16 = 0xE900000000000074;
      }

      if (v27 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x65736E6F70736552;
      }

      else
      {
        v17 = 0x6E756F436C6F6F54;
      }

      if (v27 == 3)
      {
        v18 = 0xEE0074616D726F46;
      }

      else
      {
        v18 = 0xE900000000000074;
      }

      if (v27 == 2)
      {
        v17 = 0xD000000000000011;
        v18 = 0x80000001ABA3F480;
      }

      v19 = 0xD000000000000015;
      if (v27)
      {
        v19 = 0x64416D6F74737543;
        v20 = 0xED00007265747061;
      }

      else
      {
        v20 = v5;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for PromptTemplateInfo();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for PromptVariant();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = *(a2 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for PromptTemplateInfo();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for PromptVariant();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = *(a2 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)(__n128 a1)
{
  v28 = v1;
  if (*(*(v1 + 200) + 24))
  {
  }

  v3 = *(v1 + 344);
  v2 = *(v1 + 352);
  v4 = *(v1 + 336);
  v5 = *(v1 + 320);
  v22 = *(v1 + 312);
  v6 = *(v1 + 304);
  v20 = *(v1 + 328);
  v21 = *(v1 + 272);
  v7 = *(v1 + 184);
  v8 = *(v1 + 176);
  v9 = *(v1 + 192);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v4 + 16))(v3, v2, v20);
  v10 = *(v6 + 16);
  v10(v5, v8, v7);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v5, v7, &v23);
  *(v1 + 360) = v23;
  *(v1 + 368) = v24;
  *(v1 + 384) = v25;
  *(v1 + 392) = v26;
  *(v1 + 408) = v27;
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v1 + 416) = v12;
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v8;
  v10(v22, v8, v7);
  v13 = swift_task_alloc();
  *(v1 + 424) = v13;
  *v13 = v1;
  v13[1] = TokenGenerator._tokenCount<A>(configuration:);
  v14 = *(v1 + 312);
  v15 = *(v1 + 296);
  v16 = *(v1 + 272);
  v17 = *(v1 + 184);
  v18 = *(v1 + 192);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v15, v16, &async function pointer to partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:), v12, v14, 1, v17, v18);
}

{
  v28 = v1;
  if (*(*(v1 + 200) + 24))
  {
  }

  v3 = *(v1 + 344);
  v2 = *(v1 + 352);
  v4 = *(v1 + 336);
  v5 = *(v1 + 320);
  v22 = *(v1 + 312);
  v6 = *(v1 + 304);
  v20 = *(v1 + 328);
  v21 = *(v1 + 272);
  v7 = *(v1 + 184);
  v8 = *(v1 + 176);
  v9 = *(v1 + 192);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v4 + 16))(v3, v2, v20);
  v10 = *(v6 + 16);
  v10(v5, v8, v7);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v5, v7, &v23);
  *(v1 + 360) = v23;
  *(v1 + 368) = v24;
  *(v1 + 384) = v25;
  *(v1 + 392) = v26;
  *(v1 + 408) = v27;
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v1 + 416) = v12;
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v8;
  v10(v22, v8, v7);
  v13 = swift_task_alloc();
  *(v1 + 424) = v13;
  *v13 = v1;
  v13[1] = TokenGenerator._tokenCount<A>(configuration:);
  v14 = *(v1 + 312);
  v15 = *(v1 + 296);
  v16 = *(v1 + 272);
  v17 = *(v1 + 184);
  v18 = *(v1 + 192);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v15, v16, &async function pointer to partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:), v12, v14, 1, v17, v18);
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)()
{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(v0[37], v0[36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v29 = v0[45];
  v8 = v0[36];
  v9 = v0[30];
  v10 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v0[50];
    v28 = v0[51];
    v11 = v0[32];
    v24 = v0[46];
    v25 = v0[48];
    v13 = v0[28];
    v12 = v0[29];
    v26 = v0[49];
    v15 = v0[26];
    v14 = v0[27];
    v23 = v0[47];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v13 + 32))(v12, v8, v14);
    (*(v10 + 32))(v11, v8 + v16, v9);
    (*(v10 + 16))(v15, v11, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    v0[2] = v29;
    v0[3] = v24;
    v0[4] = v23;
    v0[5] = v25;
    v0[6] = v26;
    v0[7] = v27;
    v0[8] = v28;
    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = TokenGenerator._tokenCount<A>(configuration:);
    v18 = v0[29];
    v19 = v0[26];

    return TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)(v19, v18, (v0 + 2));
  }

  else
  {
    (*(v10 + 32))(v0[33], v0[36], v0[30]);
    v0[9] = v29;
    v0[10] = v7;
    v0[11] = v6;
    v0[12] = v5;
    v0[13] = v4;
    v0[14] = v3;
    v0[15] = v2;
    v21 = swift_task_alloc();
    v0[55] = v21;
    *v21 = v0;
    v21[1] = TokenGenerator._tokenCount<A>(configuration:);
    v22 = v0[33];

    return TokenGenerator.countTokens(in:metadata:)(v22, v0 + 9);
  }
}

{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[37];
  v7 = v0[17];
  (*(v0[31] + 8))(v0[33], v0[30]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v7);
}

{
  (*(v0[31] + 8))(v0[32], v0[30]);
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[37];
  v7 = v0[20];
  (*(v0[28] + 8))(v0[29], v0[27]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v7);
}

{
  (*(v0[42] + 8))(v0[44], v0[41]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  (*(v0[31] + 8))(v0[33], v0[30]);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[29];
  v6 = v0[27];
  v7 = v0[28];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v7 + 8))(v5, v6);
  outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(v4);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(v0[37], v0[36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v29 = v0[45];
  v8 = v0[36];
  v9 = v0[30];
  v10 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v0[50];
    v28 = v0[51];
    v11 = v0[32];
    v24 = v0[46];
    v25 = v0[48];
    v13 = v0[28];
    v12 = v0[29];
    v26 = v0[49];
    v15 = v0[26];
    v14 = v0[27];
    v23 = v0[47];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v13 + 32))(v12, v8, v14);
    (*(v10 + 32))(v11, v8 + v16, v9);
    (*(v10 + 16))(v15, v11, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    v0[2] = v29;
    v0[3] = v24;
    v0[4] = v23;
    v0[5] = v25;
    v0[6] = v26;
    v0[7] = v27;
    v0[8] = v28;
    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = TokenGenerator._tokenCount<A>(configuration:);
    v18 = v0[29];
    v19 = v0[26];

    return TokenGenerator.countTokens(prompt:promptTemplateInfo:metadata:)(v19, v18, (v0 + 2));
  }

  else
  {
    (*(v10 + 32))(v0[33], v0[36], v0[30]);
    v0[9] = v29;
    v0[10] = v7;
    v0[11] = v6;
    v0[12] = v5;
    v0[13] = v4;
    v0[14] = v3;
    v0[15] = v2;
    v21 = swift_task_alloc();
    v0[55] = v21;
    *v21 = v0;
    v21[1] = TokenGenerator._tokenCount<A>(configuration:);
    v22 = v0[33];

    return TokenGenerator.countTokens(in:metadata:)(v22, v0 + 9);
  }
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1)
{
  v3 = *v2;
  v3[16] = v2;
  v3[17] = a1;
  v3[18] = v1;
  v3[56] = v1;

  if (v1)
  {
    v4 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {

    v4 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[19] = v2;
  v4[20] = a1;
  v4[21] = v1;
  v5 = v3[26];
  v4[58] = v1;

  outlined consume of RequestMetadata?(v4[2], v4[3], v4[4], v4[5], v4[6], v4[7], v4[8]);
  outlined destroy of PromptVariant?(v5);
  if (v1)
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v3 = *v2;
  v3[16] = v2;
  v3[17] = a1;
  v3[18] = v1;
  v3[56] = v1;

  if (v1)
  {
    v4 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {

    v4 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[19] = v2;
  v4[20] = a1;
  v4[21] = v1;
  v5 = v3[26];
  v4[58] = v1;

  outlined consume of RequestMetadata?(v4[2], v4[3], v4[4], v4[5], v4[6], v4[7], v4[8]);
  outlined destroy of PromptVariant?(v5);
  if (v1)
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  else
  {
    v6 = TokenGenerator._tokenCount<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t closure #1 in TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for RunnableConfigurationStorage();
  v4[6] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for RunnableConfigurationStorage();
  v4[6] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._tokenCount<A>(configuration:)()
{
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();

  v1 = *(v0 + 8);

  return v1();
}

{
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

uint64_t outlined init with copy of TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of RequestMetadata?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t outlined destroy of PromptVariant?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1)
{
  v2 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return TokenGenerator._tokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return TokenGenerator._tokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Prompt();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY0_()
{
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.prompt);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AB828000, v2, v3, "TemplateOverrideConverter: Attempting to render prompt", v4, 2u);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  v5 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8], &protocol conformance descriptor for CompletionPrompt);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for CompletionPrompt();
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TQ1_;
  v9 = *(v0 + 56);

  return v11(v9, v7, v5);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TQ1_()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY3_;
  }

  else
  {
    v2 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY2_()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI0014targetRenderedK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtKAA0mK0RzlFZAaOV_Tt2g5(v0[2], v0[3]);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];
  if (!v1)
  {
    v6 = v5;
  }

  return v7(v6);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5TY3_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Prompt();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY0_()
{
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.prompt);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AB828000, v2, v3, "TemplateOverrideConverter: Attempting to render prompt", v4, 2u);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  v5 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], &protocol conformance descriptor for ChatMessagesPrompt);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for ChatMessagesPrompt();
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TQ1_;
  v9 = *(v0 + 56);

  return v11(v9, v7, v5);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TQ1_()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY3_;
  }

  else
  {
    v2 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI0014targetRenderedK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtKAA0mK0RzlFZAaOV_Tt2g5(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for prompt != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.prompt);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AB828000, v4, v5, "TemplateOverrideConverter: Attempting to convert rich variable bindings to meet the target prompt requirements.", v6, 2u);
      MEMORY[0x1AC5A6CD0](v6, -1, -1);
    }

    v7 = static TemplateOverrideConverter.flattenedPromptSegments(_:)();
    v8 = v7;
    v9 = *(v7 + 16);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    v11 = (v7 + 48);
    while (v10 < *(v8 + 16))
    {
      if (*v11 == 1)
      {
        if (!*(a2 + 16) || (v12 = *(v11 - 2), v13 = *(v11 - 1), , specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), v15 = v14, outlined consume of TemplateOverrideConverter.Segment(v12, v13), (v15 & 1) == 0))
        {

          v16 = 1;
          goto LABEL_19;
        }
      }

      ++v10;
      v11 += 24;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_12:
  v17 = Prompt.string.getter();
  a2 = static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(v8, a2, v17, v18, MEMORY[0x1E69E7CC0], 0xFuLL, 0);

  if (a2)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AB828000, v19, v20, "TemplateOverrideConverter: Successfully converted rich variable bindings. WARNING: May have dropped self-attention and changed attachments positions.", v21, 2u);
      MEMORY[0x1AC5A6CD0](v21, -1, -1);
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      a2 = swift_slowAlloc();
      *a2 = 0;
      _os_log_impl(&dword_1AB828000, v22, v23, "TemplateOverrideConverter: Failed to convert rich variable bindings.", a2, 2u);
      MEMORY[0x1AC5A6CD0](a2, -1, -1);
    }

    v16 = 0;
LABEL_19:
    lazy protocol witness table accessor for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError();
    swift_allocError();
    *v24 = v16;
    swift_willThrow();
  }

  return a2;
}

uint64_t RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v46 = a1;
  v8 = type metadata accessor for UUID();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMd, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v43 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v14 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v47 = a2;
  v18 = GenerativeConfigurationProtocol.trackingConfig.getter();
  if (v18)
  {
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v17;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v19, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v48);

    v17 = v48;
  }

  v21 = GenerativeConfigurationProtocol._internalTrackingConfig.getter();
  if (v21)
  {
    v22 = v21;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v17;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v23, &v48);

    v17 = v48;
  }

  GenerativeConfigurationProtocol._internalSessionTrackingConfig.getter();
  v24 = v43;
  if ((*(v14 + 48))(v13, 1, v43) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMd, &_s16GenerativeModels32_ClientInfoSessionTrackingConfigVSgMR);
  }

  else
  {
    (*(v14 + 32))(v16, v13, v24);
    v25 = _ClientInfoSessionTrackingConfig.sessionTrackingConifg.getter();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v17;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v25, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v26, &v48);

    v27 = v48;
    v28 = _ClientInfoSessionTrackingConfig._internalSessionTrackingConfig.getter();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v27;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v29, &v48);

    (*(v14 + 8))(v16, v24);
    v17 = v48;
  }

  v30 = v46;
  GenerativeFunctionInstrumenter.invocationIdentifier.getter();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v44 + 8))(v10, v45);
  v34 = GenerativeFunctionInstrumenter.functionIdentifier.getter();
  v36 = v35;
  v37 = GenerativeFunctionInstrumenter.clientRequestIdentifier.getter();
  v39 = v38;
  (*(*(a3 - 8) + 8))(v47, a3);
  v40 = type metadata accessor for GenerativeFunctionInstrumenter();
  result = (*(*(v40 - 8) + 8))(v30, v40);
  *a5 = v31;
  a5[1] = v33;
  a5[2] = v34;
  a5[3] = v36;
  a5[4] = v37;
  a5[5] = v39;
  a5[6] = v17;
  return result;
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v9 = type metadata accessor for ChatMessagesPrompt();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for CompletionPrompt();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v11 = type metadata accessor for PromptVariant();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
  v8[32] = swift_task_alloc();
  v8[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for ScrubbedPromptVariant(0);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v8[48] = v12;
  v8[49] = *(v12 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v13 = type metadata accessor for Prompt();
  v8[61] = v13;
  v8[62] = *(v13 - 8);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
  v8[66] = swift_task_alloc();
  v14 = type metadata accessor for PromptTemplate();
  v8[67] = v14;
  v8[68] = *(v14 - 8);
  v8[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v8[70] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
}

uint64_t TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)()
{
  v1 = v0[70];
  v2 = v0[66];
  v3 = v0[13];
  v0[71] = GenerativeConfigurationProtocol.variableBindings.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  GenerativeConfigurationProtocol.promptContent.getter();
  Prompt.promptTemplateIfWholePromptIsASinglePromptTemplate()(v2);
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[61];
  v9 = v0[62];
  v10 = *(v9 + 8);
  v0[72] = v10;
  v0[73] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v12 = v0[59];
    v11 = v0[60];
    v13 = v0[48];
    v14 = v0[49];
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[66], &_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
    (*(v14 + 56))(v11, 1, 1, v13);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v12, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v15 = (*(v14 + 48))(v12, 1, v13);
    v16 = v0[59];
    if (v15 == 1)
    {

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v17 = swift_task_alloc();
      v0[76] = v17;
      *v17 = v0;
      v17[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v18 = v0[70];
      v19 = v0[46];
    }

    else
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[59], v0[53], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v29 = swift_task_alloc();
      v0[74] = v29;
      *v29 = v0;
      v29[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v18 = v0[70];
      v19 = v0[47];
    }
  }

  else
  {
    v20 = v0[69];
    v21 = v0[68];
    v22 = v0[67];
    v23 = v0[58];
    v25 = v0[48];
    v24 = v0[49];
    v34 = v0[57];
    (*(v21 + 32))(v20, v0[66], v22);
    (*(v21 + 16))(v23, v20, v22);
    GenerativeConfigurationProtocol<>.locale.getter();
    (*(v24 + 56))(v23, 0, 1, v25);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, v34, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    v26 = (*(v24 + 48))(v34, 1, v25);
    v27 = v0[57];
    if (v26 == 1)
    {

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v28 = swift_task_alloc();
      v0[89] = v28;
      *v28 = v0;
      v28[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v18 = v0[70];
      v19 = v0[40];
    }

    else
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v0[57], v0[50], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v30 = swift_task_alloc();
      v0[87] = v30;
      *v30 = v0;
      v30[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
      v18 = v0[70];
      v19 = v0[41];
    }
  }

  v31 = v0[14];
  v32 = v0[15];

  return closure #1 in TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v19, v31, v32, v18);
}

{
  v2 = *v1;
  v2[75] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[78] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v4 = v2[71];

    return Dictionary<>.richVariableBindings()(v4);
  }
}

{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[60];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[53], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v2 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v3 = v0[1];

  return v3();
}

{
  outlined init with copy of PromptCompletion(v0[47], v0[45], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[45];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[31];
    v3 = v0[32];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v4) = *(v3 + *(v4 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v4 & 1) == 0)
    {
LABEL_3:

      v5 = v0[68];
      v6 = v0[67];
      v69 = v0[60];
      v7 = v0[52];
      v8 = v0[53];
      v9 = v0[51];
      v10 = v0[48];
      v70 = v0[43];
      v71 = v0[47];
      v73 = v0[28];
      v74 = v0[56];
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v68 = *(v10 + 48);
      PromptTemplate.templateID.getter();
      v11 = *(v5 + 8);
      v11(v7, v6);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v69, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v11(v9, v6);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v68, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v71, v70, type metadata accessor for ScrubbedPromptVariant);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = v0[43];
      if (v12 == 1)
      {
        v14 = v0 + 32;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v15 = MEMORY[0x1E69DA6E8];
        v16 = 19;
        v17 = 20;
      }

      else
      {
        v14 = v0 + 34;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v15 = MEMORY[0x1E69DA6E0];
        v16 = 23;
        v17 = 24;
      }

      v29 = v0[47];
      v30 = v0[27];
      (*(v0[v17] + 32))(v74 + v72, *v14, v0[v16]);
      (*(v73 + 104))(v74 + v72, *v15, v30);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v29, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      v31 = v0[16];
      v32 = v0[17];
      v33 = v0[13];
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[56], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v32 - 8) + 8))(v31, v32);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v28 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v0[33];
    v18 = v0[34];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v19) = *(v18 + *(v19 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v19 != 1)
    {
      goto LABEL_3;
    }
  }

  v20 = v0[80];
  v21 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v22 = CatalogClient.init()();
  v23 = MEMORY[0x1E69DA6B8];
  v0[5] = v21;
  v0[6] = v23;
  v0[2] = v22;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v20)
  {
    v24 = v0[60];
    v25 = v0[53];
    v26 = v0[47];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v26, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v27 = v0[13];
    (*(*(v0[17] - 8) + 8))(v0[16]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v28 = v0[1];
LABEL_10:

    return v28();
  }

  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of PromptCompletion(v35, v36, type metadata accessor for ScrubbedPromptVariant);
  v38 = swift_getEnumCaseMultiPayload();
  v39 = (v37 + 104);
  v40 = v0[44];
  v41 = v0[30];
  v42 = v0[27];
  if (v38 == 1)
  {
    v43 = v0[32];
    v44 = v0[19];
    v45 = v0[20];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v40, v43, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v45 + 32))(v41, v43, v44);
    (*v39)(v41, *MEMORY[0x1E69DA6E8], v42);
    v46 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v47 = v0[34];
    v48 = v0[23];
    v49 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v40, v47, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v49 + 32))(v41, v47, v48);
    v46 = *MEMORY[0x1E69DA6E0];
    (*v39)(v41, *MEMORY[0x1E69DA6E0], v42);
  }

  v50 = (*(v0[28] + 88))(v0[30], v0[27]);
  if (v50 == v46)
  {
    v51 = v0[30];
    v52 = v0[27];
    v53 = v0[28];
    v54 = v0[26];
    v55 = v0[23];
    v56 = v0[24];

    (*(v53 + 96))(v51, v52);
    (*(v56 + 32))(v54, v51, v55);
    v75 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v57 = swift_task_alloc();
    v0[81] = v57;
    *v57 = v0;
    v57[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v58 = v0[79];
    v59 = v0[64];
    v60 = v0[26];
LABEL_20:

    return v75(v59, v58, v60);
  }

  if (v50 == *MEMORY[0x1E69DA6E8])
  {
    v61 = v0[30];
    v62 = v0[27];
    v63 = v0[28];
    v64 = v0[22];
    v65 = v0[19];
    v66 = v0[20];

    (*(v63 + 96))(v61, v62);
    (*(v66 + 32))(v64, v61, v65);
    v75 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v67 = swift_task_alloc();
    v0[83] = v67;
    *v67 = v0;
    v67[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v58 = v0[79];
    v59 = v0[64];
    v60 = v0[22];
    goto LABEL_20;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[60];
  v2 = v0[53];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[47], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0;
  v3 = v0[24];
  v2 = v0 + 24;
  v4 = v2[48];
  v5 = v2[40];
  v6 = v2[37];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  v4(v5, v6);
  v8 = v2[43];
  v7 = v2[44];
  v27 = v2[36];
  v32 = v2[32];
  v9 = v2[28];
  v10 = v2[29];
  v25 = v2[27];
  v11 = v2[24];
  v28 = v2[19];
  v29 = v2[23];
  v31 = v2[4];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v26 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v25, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v29, v28, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v2[19];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 20;
    v16 = v1 + 19;
    v17 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v15 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v17 = MEMORY[0x1E69DA6E0];
    v16 = v2 - 1;
  }

  v18 = v1[47];
  v19 = v1[27];
  (*(*v2 + 32))(v32 + v30, *v15, *v16);
  (*(v31 + 104))(v32 + v30, *v17, v19);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v18, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v20 = v1[16];
  v21 = v1[17];
  v22 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[56], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v21 - 8) + 8))(v20, v21);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v23 = v1[1];

  return v23();
}

{
  v1 = v0[72];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[53];
  v6 = v0[47];
  (*(v0[24] + 8))(v0[26], v0[23]);
  v1(v2, v3);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v6, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v4 = v2[52];
  v5 = v2[44];
  v6 = v2[41];
  (*(v3 + 8))(v2[2], *(v2 - 1));
  v4(v5, v6);
  v8 = v2[47];
  v7 = v2[48];
  v27 = v2[40];
  v32 = v2[36];
  v9 = v2[32];
  v10 = v2[33];
  v25 = v2[31];
  v11 = v2[28];
  v28 = v2[23];
  v29 = v2[27];
  v31 = v2[8];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v26 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v25, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v26, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v29, v28, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v2[23];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v16 = MEMORY[0x1E69DA6E8];
    v17 = v2 - 1;
  }

  else
  {
    v15 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v2 = v1 + 24;
    v17 = v1 + 23;
    v16 = MEMORY[0x1E69DA6E0];
  }

  v18 = v1[47];
  v19 = v1[27];
  (*(*v2 + 32))(v32 + v30, *v15, *v17);
  (*(v31 + 104))(v32 + v30, *v16, v19);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v18, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v20 = v1[16];
  v21 = v1[17];
  v22 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[56], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v21 - 8) + 8))(v20, v21);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v23 = v1[1];

  return v23();
}

{
  v1 = v0[72];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[53];
  v6 = v0[47];
  (*(v0[20] + 8))(v0[22], v0[19]);
  v1(v2, v3);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v6, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[28];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[60], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v1, v2, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[42];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v7 = MEMORY[0x1E69DA6E8];
    v8 = 19;
    v9 = 20;
  }

  else
  {
    v6 = v0 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v7 = MEMORY[0x1E69DA6E0];
    v8 = 23;
    v9 = 24;
  }

  v10 = *v6;
  v11 = v0[56];
  v12 = v0[46];
  v13 = v0[27];
  (*(v0[v9] + 32))(v11, v10, v0[v8]);
  (*(v3 + 104))(v11, *v7, v13);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v12, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[56], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v15 - 8) + 8))(v14, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v17 = v0[1];

  return v17();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[60], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v2 = v0[1];

  return v2();
}

{
  v2 = *v1;
  v2[88] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[91] = v3;
    *v3 = v2;
    v3[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v4 = v2[71];

    return Dictionary<>.richVariableBindings()(v4);
  }
}

{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  else
  {
    v2 = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[58];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[50], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v3 + 8))(v2, v4);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v6 = v0[1];

  return v6();
}

{
  outlined init with copy of PromptCompletion(v0[41], v0[39], type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[39];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[31];
    v3 = v0[32];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    LOBYTE(v4) = *(v3 + *(v4 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    if ((v4 & 1) == 0)
    {
LABEL_3:

      v5 = v0[68];
      v6 = v0[67];
      v75 = v0[58];
      v8 = v0[51];
      v7 = v0[52];
      v9 = v0[50];
      v10 = v0[48];
      v76 = v0[37];
      v77 = v0[41];
      v79 = v0[28];
      v80 = v0[55];
      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v7, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v74 = *(v10 + 48);
      PromptTemplate.templateID.getter();
      v11 = *(v5 + 8);
      v11(v7, v6);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v8, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v75, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
      v11(v8, v6);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7 + v74, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      outlined init with copy of PromptCompletion(v77, v76, type metadata accessor for ScrubbedPromptVariant);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = v0[37];
      if (v12 == 1)
      {
        v14 = v0 + 32;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
        v15 = MEMORY[0x1E69DA6E8];
        v16 = 19;
        v17 = 20;
      }

      else
      {
        v14 = v0 + 34;
        outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v13, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
        v15 = MEMORY[0x1E69DA6E0];
        v16 = 23;
        v17 = 24;
      }

      v32 = v0[41];
      v33 = v0[27];
      (*(v0[v17] + 32))(v80 + v78, *v14, v0[v16]);
      (*(v79 + 104))(v80 + v78, *v15, v33);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v32, type metadata accessor for ScrubbedPromptVariant);
      swift_storeEnumTagMultiPayload();
      v34 = v0[69];
      v35 = v0[68];
      v36 = v0[67];
      v38 = v0[16];
      v37 = v0[17];
      v39 = v0[13];
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[55], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
      (*(*(v37 - 8) + 8))(v38, v37);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
      (*(v35 + 8))(v34, v36);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

      v31 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v0[33];
    v18 = v0[34];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    LODWORD(v19) = *(v18 + *(v19 + 36));
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    if (v19 != 1)
    {
      goto LABEL_3;
    }
  }

  v20 = v0[93];
  v21 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v22 = CatalogClient.init()();
  v23 = MEMORY[0x1E69DA6B8];
  v0[10] = v21;
  v0[11] = v23;
  v0[7] = v22;
  PromptTemplate.loadPromptTemplate(catalogClient:)();
  if (v20)
  {
    v24 = v0[58];
    v25 = v0[50];
    v26 = v0[41];

    outlined destroy of TokenGeneratorCompletionResponseStringStream(v26, type metadata accessor for ScrubbedPromptVariant);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v27 = v0[69];
    v28 = v0[68];
    v29 = v0[67];
    v30 = v0[13];
    (*(*(v0[17] - 8) + 8))(v0[16]);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    (*(v28 + 8))(v27, v29);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

    v31 = v0[1];
LABEL_10:

    return v31();
  }

  v41 = v0[41];
  v42 = v0[38];
  v43 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined init with copy of PromptCompletion(v41, v42, type metadata accessor for ScrubbedPromptVariant);
  v44 = swift_getEnumCaseMultiPayload();
  v45 = (v43 + 104);
  v46 = v0[38];
  v47 = v0[29];
  v48 = v0[27];
  if (v44 == 1)
  {
    v49 = v0[32];
    v50 = v0[19];
    v51 = v0[20];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v46, v49, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    (*(v51 + 32))(v47, v49, v50);
    (*v45)(v47, *MEMORY[0x1E69DA6E8], v48);
    v52 = *MEMORY[0x1E69DA6E0];
  }

  else
  {
    v53 = v0[34];
    v54 = v0[23];
    v55 = v0[24];
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v46, v53, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    (*(v55 + 32))(v47, v53, v54);
    v52 = *MEMORY[0x1E69DA6E0];
    (*v45)(v47, *MEMORY[0x1E69DA6E0], v48);
  }

  v56 = (*(v0[28] + 88))(v0[29], v0[27]);
  if (v56 == v52)
  {
    v58 = v0[28];
    v57 = v0[29];
    v59 = v0[27];
    v61 = v0[24];
    v60 = v0[25];
    v62 = v0[23];

    (*(v58 + 96))(v57, v59);
    (*(v61 + 32))(v60, v57, v62);
    v81 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN010CompletionK0V_Tt2g5;
    v63 = swift_task_alloc();
    v0[94] = v63;
    *v63 = v0;
    v63[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v64 = v0[92];
    v65 = v0[63];
    v66 = v0[25];
LABEL_20:

    return v81(v65, v64, v66);
  }

  if (v56 == *MEMORY[0x1E69DA6E8])
  {
    v68 = v0[28];
    v67 = v0[29];
    v69 = v0[27];
    v71 = v0[20];
    v70 = v0[21];
    v72 = v0[19];

    (*(v68 + 96))(v67, v69);
    (*(v71 + 32))(v70, v67, v72);
    v81 = _s15TokenGeneration25TemplateOverrideConverterO27convertRichVariableBindings14originalPrompt0jghI006targetK0SDySS0aB4Core0kC4InfoV0gH7BindingVG0K3Kit0K0V_AMxtYaKAA08RenderedK11ConvertibleRzlFZAN012ChatMessagesK0V_Tt2g5;
    v73 = swift_task_alloc();
    v0[96] = v73;
    *v73 = v0;
    v73[1] = TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:);
    v64 = v0[92];
    v65 = v0[63];
    v66 = v0[21];
    goto LABEL_20;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

{
  v1 = v0[58];
  v2 = v0[50];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[41], type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v4 + 8))(v3, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0;
  v3 = v0[24];
  v2 = v0 + 24;
  v4 = v2[48];
  v5 = v2[39];
  v6 = v2[37];
  (*(v3 + 8))(v2[1], *(v2 - 1));
  v4(v5, v6);
  v8 = v2[43];
  v7 = v2[44];
  v30 = v2[34];
  v35 = v2[31];
  v9 = v2[28];
  v28 = v2[27];
  v10 = v2[26];
  v11 = v2[24];
  v31 = v2[13];
  v32 = v2[17];
  v34 = v2[4];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v29 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v28, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v28, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v29, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v32, v31, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v2[13];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v2 = v1 + 20;
    v16 = v1 + 19;
    v17 = MEMORY[0x1E69DA6E8];
  }

  else
  {
    v15 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v17 = MEMORY[0x1E69DA6E0];
    v16 = v2 - 1;
  }

  v18 = v1[41];
  v19 = v1[27];
  (*(*v2 + 32))(v35 + v33, *v15, *v16);
  (*(v34 + 104))(v35 + v33, *v17, v19);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v18, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v20 = v1[69];
  v21 = v1[68];
  v22 = v1[67];
  v24 = v1[16];
  v23 = v1[17];
  v25 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[55], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v23 - 8) + 8))(v24, v23);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v21 + 8))(v20, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v26 = v1[1];

  return v26();
}

{
  v1 = v0[72];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[50];
  v6 = v0[41];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1(v2, v3);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v6, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v8 + 8))(v7, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v4 = v2[52];
  v5 = v2[43];
  v6 = v2[41];
  (*(v3 + 8))(v2[1], *(v2 - 1));
  v4(v5, v6);
  v8 = v2[47];
  v7 = v2[48];
  v30 = v2[38];
  v35 = v2[35];
  v9 = v2[32];
  v28 = v2[31];
  v10 = v2[30];
  v11 = v2[28];
  v31 = v2[17];
  v32 = v2[21];
  v34 = v2[8];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v9, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  v29 = *(v11 + 48);
  PromptTemplate.templateID.getter();
  v12 = *(v7 + 8);
  v12(v9, v8);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, v28, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v30, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v12(v28, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9 + v29, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of PromptCompletion(v32, v31, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v2[17];
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v1 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v16 = MEMORY[0x1E69DA6E8];
    v17 = v2 - 1;
  }

  else
  {
    v15 = v1 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v14, v1[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v2 = v1 + 24;
    v17 = v1 + 23;
    v16 = MEMORY[0x1E69DA6E0];
  }

  v18 = v1[41];
  v19 = v1[27];
  (*(*v2 + 32))(v35 + v33, *v15, *v17);
  (*(v34 + 104))(v35 + v33, *v16, v19);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v18, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v20 = v1[69];
  v21 = v1[68];
  v22 = v1[67];
  v24 = v1[16];
  v23 = v1[17];
  v25 = v1[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1[55], v1[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v23 - 8) + 8))(v24, v23);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v21 + 8))(v20, v22);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v26 = v1[1];

  return v26();
}

{
  v1 = v0[72];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[50];
  v6 = v0[41];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1(v2, v3);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v6, type metadata accessor for ScrubbedPromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v8 + 8))(v7, v9);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[28];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[58], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  outlined init with copy of PromptCompletion(v1, v2, type metadata accessor for ScrubbedPromptVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 32;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[32], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR);
    v7 = MEMORY[0x1E69DA6E8];
    v8 = 19;
    v9 = 20;
  }

  else
  {
    v6 = v0 + 34;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v5, v0[34], &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR);
    v7 = MEMORY[0x1E69DA6E0];
    v8 = 23;
    v9 = 24;
  }

  v10 = *v6;
  v11 = v0[55];
  v12 = v0[40];
  v13 = v0[27];
  (*(v0[v9] + 32))(v11, v10, v0[v8]);
  (*(v3 + 104))(v11, *v7, v13);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v12, type metadata accessor for ScrubbedPromptVariant);
  swift_storeEnumTagMultiPayload();
  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[67];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[13];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[55], v0[12], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(*(v17 - 8) + 8))(v18, v17);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v15 + 8))(v14, v16);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v20 = v0[1];

  return v20();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[58], &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[13];
  (*(*(v0[17] - 8) + 8))(v0[16]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[70], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  v5 = v0[1];

  return v5();
}