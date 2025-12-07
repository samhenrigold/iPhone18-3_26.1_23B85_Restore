uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPirPreprocessDbCommand.Index(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirCuckooTableConfig);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirCuckooTableConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirCuckooTableConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #4 in AspirePirPirPreprocessDbCommand.Keyword.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirBatchKeywordPirConfig);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig, &protocol conformance descriptor for AspirePirBatchKeywordPirConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirBatchKeywordPirConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMd, &_s8CipherML021AspirePirBatchKeywordD6ConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  result = closure #1 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v10, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        closure #4 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #3 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    }

    type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirCuckooTableConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirCuckooTableConfig);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t closure #4 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirBatchKeywordPirConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig, &protocol conformance descriptor for AspirePirBatchKeywordPirConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirBatchKeywordPirConfig);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPirPreprocessDbCommand.Keyword@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = (a2 + *(a1 + 24));
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirSymmetricPirClientConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirSymmetricPirClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (!v3[2] || (lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int AspirePirPirParameters.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspirePirSymmetricPirClientConfig@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_225022910;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig, &protocol conformance descriptor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSymmetricPirClientConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig, &protocol conformance descriptor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig, &protocol conformance descriptor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

BOOL specialized static AspirePirPirPreprocessDbArgs.OneOf_Sharding.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(*a1, v3, 0);
      v8 = v5;
      v9 = v6;
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(*a1, v3, 1);
      v8 = v5;
      v9 = v6;
      v10 = 1;
LABEL_7:
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v8, v9, v10);
      return v2 == v5;
    }

    goto LABEL_15;
  }

  if (v7 != 2)
  {

LABEL_15:
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, v7);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, v4);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, v7);
    return 0;
  }

  v12 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v12, v3, 2);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    return 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, 2);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, 2);
    return v14 & 1;
  }
}

uint64_t specialized static AspirePirSerializedKeywordDbRow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) && specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    v4 = *(type metadata accessor for AspirePirSerializedKeywordDbRow(0) + 28);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_10;
        }
      }
    }

    else if (!v8)
    {
LABEL_10:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static AspirePirPIRShardingFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_9:
      type metadata accessor for AspirePirPIRShardingFunction(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v13[v15], v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  v18 = specialized static AspirePirPIRShardingFunction.OneOf_Function.== infix(_:_:)(v10, v7);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspirePirPIRShardingFunction.OneOf_Function.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  MEMORY[0x28223BE20](v26);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v25 - v16, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v17[v19], type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v17, v14, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v17[v19], v8, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      return v21 & 1;
    }

    v22 = type metadata accessor for AspirePirPIRShardingFunctionSHA256;
    v23 = v14;
    goto LABEL_9;
  }

  outlined init with copy of AspireHeEncryptionParameters(v17, v11, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod;
    v23 = v11;
LABEL_9:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v23, v22);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMR);
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v17[v19], v5, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  if (*v11 != *v5)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    goto LABEL_12;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  if ((v20 & 1) == 0)
  {
LABEL_12:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_13;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  v21 = 1;
  return v21 & 1;
}

uint64_t outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(result, a2, a3);
  }

  return result;
}

uint64_t outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(result, a2, a3);
  }

  return result;
}

uint64_t outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspirePirCuckooTableConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v27 - v17, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v18[v20], type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v18, v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v18[v20], v6, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v21 = specialized static AspirePirBatchKeywordPirConfig.== infix(_:_:)(v12, v6);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v22 = v12;
      v23 = type metadata accessor for AspirePirBatchKeywordPirConfig;
LABEL_9:
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v22, v23);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v18, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      return v21 & 1;
    }

    v24 = type metadata accessor for AspirePirBatchKeywordPirConfig;
    v25 = v12;
  }

  else
  {
    outlined init with copy of AspireHeEncryptionParameters(v18, v15, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v18[v20], v9, type metadata accessor for AspirePirCuckooTableConfig);
      v21 = specialized static AspirePirCuckooTableConfig.== infix(_:_:)(v15, v9);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirCuckooTableConfig);
      v22 = v15;
      v23 = type metadata accessor for AspirePirCuckooTableConfig;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AspirePirCuckooTableConfig;
    v25 = v15;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v25, v24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.Keyword.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v15 = *(v14 + 24);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v19)
  {
    goto LABEL_25;
  }

  v21 = *(v14 + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = *v22 == *v24 && v23 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v25)
  {
    goto LABEL_25;
  }

  v27 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v34 = v27;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v27], &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v34], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_28:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v30 & 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v29 = v34;
  if (v28(&v13[v34], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
LABEL_24:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMR);
    goto LABEL_25;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v13[v29], v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  v32 = specialized static AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config.== infix(_:_:)(v10, v7);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_25:
  v30 = 0;
  return v30 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.OneOf_Command.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  MEMORY[0x28223BE20](v26);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v25 - v16, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v17[v19], type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v17, v14, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v17[v19], v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      v21 = specialized static AspirePirPirPreprocessDbCommand.Keyword.== infix(_:_:)(v14, v8);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      return v21 & 1;
    }

    v22 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword;
    v23 = v14;
    goto LABEL_10;
  }

  outlined init with copy of AspireHeEncryptionParameters(v17, v11, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index;
    v23 = v11;
LABEL_10:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v23, v22);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMR);
LABEL_14:
    v21 = 0;
    return v21 & 1;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v17[v19], v5, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  if (*v11 != *v5 || v11[1] != v5[1])
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v5, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  if ((v20 & 1) == 0)
  {
LABEL_13:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_14;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  v21 = 1;
  return v21 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_9:
      type metadata accessor for AspirePirPirPreprocessDbCommand(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v13[v15], v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  v18 = specialized static AspirePirPirPreprocessDbCommand.OneOf_Command.== infix(_:_:)(v10, v7);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirCuckooTableConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  type metadata accessor for AspirePirCuckooTableConfig(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirBatchKeywordPirConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMd, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v14 = *(v27 + 40);
  v15 = *(v11 + 56);
  v29 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v28;
      outlined init with take of AspirePirPIRShardingFunction(&v13[v15], v28, type metadata accessor for AspirePirCuckooTableConfig);
      v19 = specialized static AspirePirCuckooTableConfig.== infix(_:_:)(v9, v18);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v18, type metadata accessor for AspirePirCuckooTableConfig);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirCuckooTableConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      if ((v19 & 1) == 0)
      {
LABEL_15:
        v17 = 0;
        return v17 & 1;
      }

LABEL_8:
      if (*v29 != *a2 || *(v29 + 8) != *(a2 + 8) || *(v29 + 16) != *(a2 + 16) || *(v29 + 24) != *(a2 + 24) || *(v29 + 32) != *(a2 + 32))
      {
        goto LABEL_15;
      }

      v20 = *(v27 + 44);
      v21 = (v29 + v20);
      v22 = *(v29 + v20 + 8);
      v23 = (a2 + v20);
      v24 = *(a2 + v20 + 8);
      if (v22)
      {
        if (!v24)
        {
          goto LABEL_15;
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
          goto LABEL_15;
        }
      }

      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirCuckooTableConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMd, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static AspirePirSymmetricPirClientConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
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

  type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirKeywordPirParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v45 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMd, &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMR);
  MEMORY[0x28223BE20](v50);
  v10 = &v45 - v9;
  v11 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_21;
  }

  v48 = v10;
  v45 = v6;
  v21 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v22 = *(v21 + 28);
  v23 = *(v18 + 48);
  v46 = v21;
  v47 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v22, v20, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v24 = a2 + v22;
  v25 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, &v20[v23], &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v23], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
      v27 = v48;
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20, v17, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v26(&v20[v23], 1, v11) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirSymmetricPirClientConfig);
LABEL_11:
    v32 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMd;
    v33 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMR;
LABEL_19:
    v37 = v20;
LABEL_20:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, v32, v33);
    goto LABEL_21;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v20[v23], v14, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v34 = specialized static Data.== infix(_:_:)(*v17, *(v17 + 1), *v14, *(v14 + 1));
  v27 = v48;
  if (!v34)
  {
LABEL_18:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirSymmetricPirClientConfig);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirSymmetricPirClientConfig);
    v32 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd;
    v33 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR;
    goto LABEL_19;
  }

  v35 = *(v17 + 2);
  v36 = *(v14 + 2);
  if (v17[24])
  {
    v35 = v35 != 0;
  }

  if (v14[24] == 1)
  {
    if (v36)
    {
      if (v35 != 1)
      {
        goto LABEL_18;
      }
    }

    else if (v35)
    {
      goto LABEL_18;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_18;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirSymmetricPirClientConfig);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirSymmetricPirClientConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v28 = *(v46 + 32);
  v29 = *(v50 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v47 + v28, v27, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25 + v28, v27 + v29, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v30 = v52;
  v31 = *(v51 + 48);
  if (v31(v27, 1, v52) == 1)
  {
    if (v31(v27 + v29, 1, v30) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
LABEL_27:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_25;
  }

  v40 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, v49, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v31(v27 + v29, 1, v30) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v40, type metadata accessor for AspirePirPIRShardingFunction);
LABEL_25:
    v32 = &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMd;
    v33 = &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMR;
    v37 = v27;
    goto LABEL_20;
  }

  v41 = v27 + v29;
  v42 = v45;
  outlined init with take of AspirePirPIRShardingFunction(v41, v45, type metadata accessor for AspirePirPIRShardingFunction);
  v43 = specialized static AspirePirPIRShardingFunction.== infix(_:_:)(v40, v42);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v42, type metadata accessor for AspirePirPIRShardingFunction);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v40, type metadata accessor for AspirePirPIRShardingFunction);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v43)
  {
    goto LABEL_27;
  }

LABEL_21:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static AspirePirBatchPirParameters.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for AspirePirBatchPirParameters(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType()
{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy()
{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

uint64_t keypath_get_29Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t type metadata completion function for AspirePirCuckooTableConfig(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspirePirBatchKeywordPirConfig(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirCuckooTableConfig?, type metadata accessor for AspirePirCuckooTableConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspirePirBatchPirParameters(uint64_t a1)
{
  type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspirePirKeywordPirParameters(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirSymmetricPirClientConfig?, type metadata accessor for AspirePirSymmetricPirClientConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPIRShardingFunction?, type metadata accessor for AspirePirPIRShardingFunction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AspirePirCuckooTableConfig?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AspirePirPIRShardingFunctionDoubleMod(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspirePirEncryptedIndices(uint64_t a1)
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for [AspireHeSerializedCiphertext], type metadata accessor for AspireHeSerializedCiphertext, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspirePirSerializedKeywordDbRow(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UInt64?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for AspirePirPirParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void type metadata completion function for AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspirePirPIRShardingFunction.OneOf_Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
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

void type metadata completion function for AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1)
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config?, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AspirePirPirPreprocessDbCommand.Index(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspirePirPirParameters._StorageClass(uint64_t a1)
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?, type metadata accessor for AspireHeEvaluationKeyConfig, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirBatchPirParameters?, type metadata accessor for AspirePirBatchPirParameters, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for AspirePirPirPreprocessDbArgs._StorageClass(uint64_t a1)
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPirPreprocessDbCommand?, type metadata accessor for AspirePirPirPreprocessDbCommand, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme()
{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

id CMLXPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CMLXPCServer.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for RequestsManager();
  swift_allocObject();
  v1 = RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(0, 0, 0, 0, 0, closure #1 in default argument 4 of RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:), 0);
  v2 = (*(ObjectType + 112))(v1);
  swift_deallocPartialClassInstance();
  return v2;
}

id CMLXPCServer.__allocating_init(requestsManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CMLXPCServer.init(requestsManager:)(a1);

  return v4;
}

id CMLXPCServer.init(requestsManager:)(void *a1)
{
  v1 = specialized CMLXPCServer.init(requestsManager:)(a1);

  return v1;
}

Swift::Void __swiftcall CMLXPCServer.start()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v2 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v7 = [v1 initWithMachServiceName_];

  [v7 setDelegate_];
  [v7 resume];
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.framework);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_224E26000, v4, v5, "XPC Server has started", v6, 2u);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }
}

Swift::Void __swiftcall CMLXPCServer.registerScheduledTasks()()
{
  specialized ScheduledActivity.register()();
  specialized ScheduledActivity.register()();
  specialized ScheduledActivity.register()();
}

void specialized ScheduledActivity.register()()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD00000000000001FLL, 0x8000000225038290);
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x8000000225038290;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_24_0;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD00000000000001FLL, 0x80000002250382B0);
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x80000002250382B0;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_14_0;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000023;
  v5[3] = 0x8000000225037D00;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = partial apply for closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

id CMLXPCServer.__deallocating_deinit(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CMLXPCServer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in TokenCache.pruneCache()((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  TokenCache.save()();
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

    return CacheCleaner.cleanPirCaches()();
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 32) = v6;
    *v6 = v3;
    v6[1] = specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

    return CacheCleaner.cleanConfigCache()();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return TokenFetcherTask.run()();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(uint64_t *a1)
{
  v2 = *a1;
  *(v1 + 40) = *a1;
  return MEMORY[0x2822009F8](RotationTask.run(), v2, 0);
}

{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(v2);
}

id specialized CMLXPCServer.init(requestsManager:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_requestsManager] = a1;
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[2];
  v6 = a1[7];
  v5 = a1[8];
  type metadata accessor for CacheCleaner();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v7[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA12CacheCleanerCGMd, &_s8CipherML17ScheduledActivityCyAA12CacheCleanerCGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_cacheCleaner] = v8;
  type metadata accessor for RotationTask();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA12RotationTaskCGMd, &_s8CipherML17ScheduledActivityCyAA12RotationTaskCGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_rotationTask] = v10;
  type metadata accessor for TokenFetcherTask();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v6;
  v11[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA16TokenFetcherTaskCGMd, &_s8CipherML17ScheduledActivityCyAA16TokenFetcherTaskCGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_tokenFetcherTask] = v12;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CMLXPCServer();

  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t specialized CMLXPCServer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v3 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225038260);
  v4 = [a1 valueForEntitlement_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v14 == 1)
    {
      v5 = [objc_opt_self() interfaceDescription];
      [a1 setExportedInterface_];

      v6 = *(v1 + OBJC_IVAR____TtC8CipherML12CMLXPCServer_requestsManager);
      type metadata accessor for XPCHandler();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a1;

      v8 = a1;
      [v8 setExportedObject_];

      [v8 resume];
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.framework);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_224E26000, v11, v12, "Client does not have specified entitlement", v13, 2u);
    MEMORY[0x22AA61F40](v13, -1, -1);
  }

  return 0;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()();
}

{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()((v1 + 16));
}

{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = TokenFetcher.backgroundTokenFetch();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()((v1 + 16));
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t AspireHeEvaluationKeyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v2 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t AspireHeEncryptionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  type metadata accessor for AspireHeEncryptionParameters(0);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedEvaluationKey.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t AspireHeEvaluationKeyConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t AspireHeSerializedKeySwitchKey.keySwitchKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedCiphertextVec);
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedRelinKey.relinKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v7 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  return result;
}

uint64_t AspireHeSerializedRelinKey.relinKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedKeySwitchKey);
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedEvaluationKey.galoisKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedGaloisKey);
  v4 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedEvaluationKey.relinKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedRelinKey);
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t AspireHeSecurityLevel.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireHeSecurityLevel.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSecurityLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireHeErrorStdDev.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireHeErrorStdDev.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AspireHeErrorStdDev@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AspireHeErrorStdDev()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AspireHeErrorStdDev@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AspireHeErrorStdDev(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeErrorStdDev(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeErrorStdDev(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t AspireHeHeScheme.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeHeScheme(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireHeSerializedDcrtPlaintext.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireHeSerializedDcrtPlaintext.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireHeSerializedCiphertextVec.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AspireHeSerializedCiphertextVec(0);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedCiphertext.seeded.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_5:
    *a1 = xmmword_225022910;
    a1[1] = xmmword_225022910;
    type metadata accessor for AspireHeSerializedSeededCiphertext(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    goto LABEL_5;
  }

  return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedSeededCiphertext);
}

uint64_t AspireHeSerializedSeededCiphertext.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  return UnknownStorage.init()();
}

void (*AspireHeSerializedCiphertext.seeded.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireHeSerializedSeededCiphertext(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v11, type metadata accessor for AspireHeSerializedSeededCiphertext);
      return AspireHeSerializedCiphertext.seeded.modify;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  }

  *v11 = xmmword_225022910;
  v11[1] = xmmword_225022910;
  UnknownStorage.init()();
  return AspireHeSerializedCiphertext.seeded.modify;
}

uint64_t AspireHeSerializedCiphertext.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedFullCiphertext);
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  }

  *a1 = xmmword_225022910;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  type metadata accessor for AspireHeSerializedFullCiphertext(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireHeSerializedCiphertext.seeded : AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, &v17 - v13, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v14, a2, a7);
  v15 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t AspireHeSerializedCiphertext.seeded.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v3, a2);
  v6 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t AspireHeSerializedFullCiphertext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_225022910;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  type metadata accessor for AspireHeSerializedFullCiphertext(0);
  return UnknownStorage.init()();
}

void (*AspireHeSerializedCiphertext.full.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireHeSerializedFullCiphertext(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_15:
    *v11 = xmmword_225022910;
    *(v11 + 16) = MEMORY[0x277D84F90];
    *(v11 + 24) = 0;
    UnknownStorage.init()();
    return AspireHeSerializedCiphertext.full.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    goto LABEL_15;
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v11, type metadata accessor for AspireHeSerializedFullCiphertext);
  return AspireHeSerializedCiphertext.full.modify;
}

void AspireHeSerializedCiphertext.seeded.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v14 = **a1;
  v13 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[3], v11, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v11, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v12, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v12, v14, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14, 0, 1, v9);
  }

  free(v12);
  free(v11);
  free(v13);

  free(v8);
}

uint64_t static AspireHeSerializedSeededCiphertext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedCiphertext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for AspireHeSerializedCiphertext(0);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedSeededCiphertext.seed.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspireHeSerializedSeededCiphertext.seed.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AspireHeSerializedFullCiphertext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireHeSerializedFullCiphertext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireHeSerializedKeySwitchKey.keySwitchKey.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v7 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedKeySwitchKey.keySwitchKey : AspireHeSerializedKeySwitchKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v8 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a2, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedKeySwitchKey.keySwitchKey : AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v7, type metadata accessor for AspireHeSerializedCiphertextVec);
  v8 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2 + v8, type metadata accessor for AspireHeSerializedCiphertextVec);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireHeSerializedKeySwitchKey.keySwitchKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  return AspireHeSerializedKeySwitchKey.keySwitchKey.modify;
}

void AspireHeSerializedKeySwitchKey.keySwitchKey.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v5, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v10 + v4, type metadata accessor for AspireHeSerializedCiphertextVec);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, v10 + v4, type metadata accessor for AspireHeSerializedCiphertextVec);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t AspireHeSerializedGaloisKey.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for AspireHeSerializedGaloisKey(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireHeSerializedRelinKey.relinKey : AspireHeSerializedRelinKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v8 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a2, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedRelinKey.relinKey : AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v7, type metadata accessor for AspireHeSerializedKeySwitchKey);
  v8 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2 + v8, type metadata accessor for AspireHeSerializedKeySwitchKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireHeSerializedRelinKey.relinKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  return AspireHeSerializedRelinKey.relinKey.modify;
}

void AspireHeSerializedRelinKey.relinKey.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v5, type metadata accessor for AspireHeSerializedKeySwitchKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v10 + v4, type metadata accessor for AspireHeSerializedKeySwitchKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, v10 + v4, type metadata accessor for AspireHeSerializedKeySwitchKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireHeSerializedKeySwitchKey.hasKeySwitchKey.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AspireHeSerializedKeySwitchKey.clearKeySwitchKey()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireHeSerializedKeySwitchKey.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t AspireHeSerializedSecretKey.polys.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspireHeSerializedSecretKey.polys.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AspireHeSerializedDcrtPlaintext.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedEvaluationKey.galoisKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v7 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedEvaluationKey.galoisKey : AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a2, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedEvaluationKey.galoisKey : AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v7, type metadata accessor for AspireHeSerializedGaloisKey);
  v8 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2 + v8, type metadata accessor for AspireHeSerializedGaloisKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireHeSerializedEvaluationKey.galoisKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedGaloisKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  return AspireHeSerializedEvaluationKey.galoisKey.modify;
}

void AspireHeSerializedEvaluationKey.galoisKey.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v5, type metadata accessor for AspireHeSerializedGaloisKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v10 + v4, type metadata accessor for AspireHeSerializedGaloisKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, v10 + v4, type metadata accessor for AspireHeSerializedGaloisKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t AspireHeSerializedEvaluationKey.relinKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeSerializedRelinKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedEvaluationKey.relinKey : AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 24), v6, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a2, type metadata accessor for AspireHeSerializedRelinKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedEvaluationKey.relinKey : AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v7, type metadata accessor for AspireHeSerializedRelinKey);
  v8 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2 + v8, type metadata accessor for AspireHeSerializedRelinKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AspireHeSerializedEvaluationKey.relinKey.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedRelinKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedRelinKey);
  }

  return AspireHeSerializedEvaluationKey.relinKey.modify;
}

void AspireHeSerializedEvaluationKey.relinKey.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v5, type metadata accessor for AspireHeSerializedRelinKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v10 + v4, type metadata accessor for AspireHeSerializedRelinKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedRelinKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, v10 + v4, type metadata accessor for AspireHeSerializedRelinKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireHeSerializedEvaluationKey.hasRelinKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 24), v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v5 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireHeSerializedEvaluationKey.clearRelinKey()()
{
  v1 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v2 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path setter for AspireHeEvaluationKeyConfig.encryptionParameters : AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v7, type metadata accessor for AspireHeEncryptionParameters);
  v8 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2 + v8, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireHeEvaluationKeyConfig.encryptionParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeEncryptionParameters);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireHeEvaluationKeyConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
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
  v15 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireHeEvaluationKeyConfig.encryptionParameters.modify;
}

void AspireHeEvaluationKeyConfig.encryptionParameters.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v5, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v10 + v4, type metadata accessor for AspireHeEncryptionParameters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, v10 + v4, type metadata accessor for AspireHeEncryptionParameters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireHeEvaluationKeyConfig.hasEncryptionParameters.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 28), v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireHeEvaluationKeyConfig.clearEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireHeEvaluationKeyConfig.galoisElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AspireHeSerializedSeededCiphertext.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireHeSerializedSeededCiphertext.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireHeEncryptionParameters.coefficientModuli.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void AspireHeEncryptionParameters.errorStdDev.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.errorStdDev.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AspireHeEncryptionParameters.securityLevel.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.securityLevel.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void AspireHeEncryptionParameters.heScheme.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.heScheme.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t AspireHeEncryptionParameters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireHeEncryptionParameters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext, &protocol conformance descriptor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext, &protocol conformance descriptor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext, &protocol conformance descriptor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedCiphertextVec.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertext(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireHeSerializedCiphertextVec.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireHeSerializedCiphertextVec(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedCiphertextVec(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v12, v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v19, v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
      v32 = v41;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v16, v41, type metadata accessor for AspireHeSerializedSeededCiphertext);
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v32, v25, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext, &protocol conformance descriptor for AspireHeSerializedSeededCiphertext);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  }

  else
  {
    v36 = v40;
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v33, v40, type metadata accessor for AspireHeSerializedSeededCiphertext);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v36, v37, type metadata accessor for AspireHeSerializedSeededCiphertext);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v12, v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v19, v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
      v32 = v41;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v16, v41, type metadata accessor for AspireHeSerializedFullCiphertext);
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v32, v25, type metadata accessor for AspireHeSerializedFullCiphertext);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext, &protocol conformance descriptor for AspireHeSerializedFullCiphertext);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  }

  else
  {
    v36 = v40;
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v33, v40, type metadata accessor for AspireHeSerializedFullCiphertext);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v36, v37, type metadata accessor for AspireHeSerializedFullCiphertext);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v13 - v9, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v10, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AspireHeSerializedCiphertext(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v10, type metadata accessor for AspireHeSerializedSeededCiphertext);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext, &protocol conformance descriptor for AspireHeSerializedSeededCiphertext);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v10, type metadata accessor for AspireHeSerializedSeededCiphertext);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v7, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v10, type metadata accessor for AspireHeSerializedFullCiphertext);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext, &protocol conformance descriptor for AspireHeSerializedFullCiphertext);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v10, type metadata accessor for AspireHeSerializedFullCiphertext);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v7, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedCiphertext@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedSeededCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspireHeSerializedSeededCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext, &protocol conformance descriptor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedSeededCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext, &protocol conformance descriptor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext, &protocol conformance descriptor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedFullCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t AspireHeSerializedFullCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AspireHeSerializedFullCiphertext(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedFullCiphertext@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_225022910;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedFullCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext, &protocol conformance descriptor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedFullCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext, &protocol conformance descriptor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedFullCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext, &protocol conformance descriptor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspireHeSerializedKeySwitchKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  type metadata accessor for AspireHeSerializedCiphertextVec(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AspireHeSerializedKeySwitchKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v11, type metadata accessor for AspireHeSerializedCiphertextVec);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedKeySwitchKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspireHeSerializedGaloisKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufUInt64();
  type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t AspireHeSerializedGaloisKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtobufUInt64(), type metadata accessor for AspireHeSerializedKeySwitchKey(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v5))
  {
    type metadata accessor for AspireHeSerializedGaloisKey(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireHeSerializedCiphertextVec.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedGaloisKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey, &protocol conformance descriptor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedGaloisKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey, &protocol conformance descriptor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedGaloisKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey, &protocol conformance descriptor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedCiphertextVec(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedKeySwitchKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in AspireHeSerializedRelinKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireHeSerializedRelinKey(0);
  type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeSerializedKeySwitchKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedRelinKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v11, type metadata accessor for AspireHeSerializedKeySwitchKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey, &protocol conformance descriptor for AspireHeSerializedKeySwitchKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedKeySwitchKey);
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedKeySwitchKey@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey, &protocol conformance descriptor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedRelinKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey, &protocol conformance descriptor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey, &protocol conformance descriptor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedDcrtPlaintext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

{
  return AspireHeSerializedSecretKey.decodeMessage<A>(decoder:)(a1, a2, a3);
}

uint64_t AspireHeSerializedDcrtPlaintext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  a4(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static AspireHeSerializedDcrtPlaintext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedSecretKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey, &protocol conformance descriptor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedSecretKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey, &protocol conformance descriptor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedSecretKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey, &protocol conformance descriptor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  type metadata accessor for AspireHeSerializedGaloisKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey, &protocol conformance descriptor for AspireHeSerializedGaloisKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  type metadata accessor for AspireHeSerializedRelinKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey, &protocol conformance descriptor for AspireHeSerializedRelinKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v11, type metadata accessor for AspireHeSerializedGaloisKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey, &protocol conformance descriptor for AspireHeSerializedGaloisKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedGaloisKey);
}

uint64_t closure #2 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v11, type metadata accessor for AspireHeSerializedRelinKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey, &protocol conformance descriptor for AspireHeSerializedRelinKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedRelinKey);
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedEvaluationKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        break;
      case 1:
        closure #1 in AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if (v3[8] == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    type metadata accessor for AspireHeEvaluationKeyConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, v11, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t protocol witness for Message.init() in conformance AspireHeEvaluationKeyConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeEvaluationKeyConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeEncryptionParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        switch(result)
        {
          case 4:
            v6 = v3;
            lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();
LABEL_5:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v6 = v3;
            lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();
            goto LABEL_5;
          case 6:
            v6 = v3;
            lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
            goto LABEL_5;
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 3)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireHeEncryptionParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 16) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
      {
        if ((*(v3 + 32) & 1) == 0)
        {
          v6 = v4;
          if (!*(v3 + 24))
          {
            goto LABEL_11;
          }

          lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v4)
          {
            return result;
          }
        }

        v6 = v4;
LABEL_11:
        if (*(v3 + 40))
        {
          lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();
          v7 = v6;
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v6)
          {
            return result;
          }

          if (!*(v3 + 56))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = v6;
          if (!*(v3 + 56))
          {
LABEL_17:
            type metadata accessor for AspireHeEncryptionParameters(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }

        lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

Swift::Int AspireHeSerializedDcrtPlaintext.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspireHeEncryptionParameters@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspireHeEncryptionParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeEncryptionParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

BOOL specialized static AspireHeSerializedFullCiphertext.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  result = specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]);
  if (!result)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    return 0;
  }

  if (v7)
  {
    v8 = v5 == v6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_11:
    if (a1[3] == a2[3])
    {
      type metadata accessor for AspireHeSerializedFullCiphertext(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    return 0;
  }

  v9 = (v5 + 32);
  v10 = (v6 + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMd, &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v46);
  v49 = &v41 - v8;
  v9 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v41 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v45 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v19 = *(v45 + 20);
  v20 = *(v16 + 56);
  v50 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, &v18[v20], &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v14, type metadata accessor for AspireHeSerializedGaloisKey);
LABEL_9:
    v29 = &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMd;
    v30 = &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMR;
LABEL_10:
    v31 = v18;
LABEL_11:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, v29, v30);
    goto LABEL_12;
  }

  v34 = v44;
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v18[v20], v44, type metadata accessor for AspireHeSerializedGaloisKey);
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_8CipherML027AspireHeSerializedKeySwitchH0VTt1g5(*v14, *v34);
  if ((v35 & 1) == 0)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v34, type metadata accessor for AspireHeSerializedGaloisKey);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v14, type metadata accessor for AspireHeSerializedGaloisKey);
    v29 = &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd;
    v30 = &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR;
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v34, type metadata accessor for AspireHeSerializedGaloisKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v14, type metadata accessor for AspireHeSerializedGaloisKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v24 = *(v45 + 24);
  v25 = *(v46 + 48);
  v26 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v24, v49, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v24, v26 + v25, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v27 = v48;
  v28 = *(v47 + 48);
  if (v28(v26, 1, v48) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
LABEL_22:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_19;
  }

  v37 = v43;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v43, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v37, type metadata accessor for AspireHeSerializedRelinKey);
LABEL_19:
    v29 = &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMd;
    v30 = &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMR;
    v31 = v26;
    goto LABEL_11;
  }

  v38 = v26 + v25;
  v39 = v42;
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v38, v42, type metadata accessor for AspireHeSerializedRelinKey);
  v40 = specialized static AspireHeSerializedRelinKey.== infix(_:_:)(v37, v39);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v39, type metadata accessor for AspireHeSerializedRelinKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v37, type metadata accessor for AspireHeSerializedRelinKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if (v40)
  {
    goto LABEL_22;
  }

LABEL_12:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static AspireHeSerializedCiphertext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_9:
      type metadata accessor for AspireHeSerializedCiphertext(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v10, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v13[v15], v7, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v18 = specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(v10, v7);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v7, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v10, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireHeSerializedRelinKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMR);
    goto LABEL_7;
  }

  v18 = v21[0];
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v13[v15], v21[0], type metadata accessor for AspireHeSerializedKeySwitchKey);
  v19 = specialized static AspireHeSerializedKeySwitchKey.== infix(_:_:)(v9, v18);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v18, type metadata accessor for AspireHeSerializedKeySwitchKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireHeEvaluationKeyConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v24;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v13[v15], v24, type metadata accessor for AspireHeEncryptionParameters);
      v19 = specialized static AspireHeEncryptionParameters.== infix(_:_:)(v9, v18);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v18, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if ((v19 & 1) == 0)
      {
LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

LABEL_8:
      v20 = v25;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(*v25, *a2) & 1) != 0 && *(v20 + 8) == *(a2 + 8))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v17 & 1;
      }

      goto LABEL_10;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeEncryptionParameters);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  MEMORY[0x28223BE20](v26);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, &v26 - v15, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a2, &v16[v18], type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext(v16, v10, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v5, type metadata accessor for AspireHeSerializedFullCiphertext);
      if (specialized static Data.== infix(_:_:)(*v10, v10[1], *v5, v5[1]) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v10[2], v5[2]) & 1) != 0 && v10[3] == v5[3])
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v19 = type metadata accessor for AspireHeSerializedFullCiphertext;
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedFullCiphertext);
          v20 = v10;
LABEL_16:
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v20, v19);
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
          return 1;
        }
      }

      v24 = type metadata accessor for AspireHeSerializedFullCiphertext;
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedFullCiphertext);
      v25 = v10;
LABEL_19:
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v25, v24);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      return 0;
    }

    v21 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v22 = v10;
  }

  else
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext(v16, v13, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v7, type metadata accessor for AspireHeSerializedSeededCiphertext);
      if (specialized static Data.== infix(_:_:)(*v13, *(v13 + 1), *v7, *(v7 + 1)) && specialized static Data.== infix(_:_:)(*(v13 + 2), *(v13 + 3), *(v7 + 2), *(v7 + 3)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v19 = type metadata accessor for AspireHeSerializedSeededCiphertext;
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v7, type metadata accessor for AspireHeSerializedSeededCiphertext);
          v20 = v13;
          goto LABEL_16;
        }
      }

      v24 = type metadata accessor for AspireHeSerializedSeededCiphertext;
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v7, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v25 = v13;
      goto LABEL_19;
    }

    v21 = type metadata accessor for AspireHeSerializedSeededCiphertext;
    v22 = v13;
  }

  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v22, v21);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  return 0;
}

uint64_t specialized static AspireHeSerializedKeySwitchKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23[0] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  v15 = *(v11 + 56);
  v23[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v23[0];
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v13[v15], v23[0], type metadata accessor for AspireHeSerializedCiphertextVec);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v9, *v21))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_9:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedCiphertextVec);
      v18 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd;
      v19 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR;
LABEL_8:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, v18, v19);
      goto LABEL_9;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedCiphertextVec);
LABEL_7:
    v18 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd;
    v19 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR;
    goto LABEL_8;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static AspireHeEncryptionParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v4 = *(a1 + 24);
    if (*(a2 + 32))
    {
      if (v4)
      {
        return 0;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = 0;
LABEL_10:
    if (v4 != *(a2 + 24))
    {
      return 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (*(a1 + 48))
  {
    v5 = v5 != 0;
  }

  if (*(a2 + 48) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
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

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v7 != 1)
        {
          return 0;
        }
      }

      else if (v7 != 2)
      {
        return 0;
      }

LABEL_26:
      type metadata accessor for AspireHeEncryptionParameters(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v7)
    {
      goto LABEL_26;
    }
  }

  else if (v7 == v8)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev()
{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel()
{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

void type metadata completion function for AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for [AspireHeSerializedCiphertext](319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [AspireHeSerializedCiphertext](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(uint64_t a1)
{
  result = type metadata accessor for AspireHeSerializedSeededCiphertext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireHeSerializedFullCiphertext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AspireHeSerializedSeededCiphertext(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspireHeSerializedFullCiphertext(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspireHeSerializedGaloisKey(uint64_t a1)
{
  type metadata accessor for [UInt64 : AspireHeSerializedKeySwitchKey](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_83Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for [AspireHeSerializedCiphertext](319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_3(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t type metadata completion function for AspireHeSerializedDcrtPlaintext(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspireHeSerializedEvaluationKey(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeSerializedGaloisKey?, type metadata accessor for AspireHeSerializedGaloisKey, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeSerializedRelinKey?, type metadata accessor for AspireHeSerializedRelinKey, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireHeEvaluationKeyConfig(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireHeEncryptionParameters(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t RequestContext.useCase.getter()
{
  v1 = [*v0 useCase];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RequestContext.networkManager()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NetworkConfig(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkManagerConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NetworkConfig(v2 + *(a1 + 32), v7);
  v11 = [*v2 sourceApplicationBundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  outlined init with take of NetworkConfig(v7, v10);
  v16 = &v10[*(v8 + 20)];
  *v16 = v13;
  v16[1] = v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(v20, v10);
  outlined destroy of NetworkManagerConfig(v10);
  outlined init with copy of NetworkManager?(v20, &v18);
  if (v19)
  {
    outlined destroy of NetworkManager?(v20);
    return outlined init with take of LocalizedError(&v18, a2);
  }

  else
  {
    outlined destroy of NetworkManager?(&v18);
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of NetworkManager?(v20);
  }
}

uint64_t outlined init with copy of NetworkConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkManagerConfig(uint64_t a1)
{
  v2 = type metadata accessor for NetworkManagerConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of NetworkManager?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkManager?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestContext.init(clientConfig:staticConfig:networkConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for RequestContext(0, a4, a3, a4);
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a2, a4);
  v10 = &a5[*(v9 + 32)];

  return outlined init with take of NetworkConfig(a3, v10);
}

uint64_t type metadata completion function for RequestContext(uint64_t a1)
{
  result = type metadata accessor for CMLClientConfig();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NetworkConfig(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestContext(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for URL() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v12 = *(v9 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = v12 + ((v10 + 16) & ~v10);
  v14 = ((v12 + ((v11 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v14 <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v16 = (v14 & 0xFFFFFFFFFFFFFFF8) + ((*(v6 + 64) + (v10 | 7) + ((v15 + 8) & ~v15)) & ~(v10 | 7)) + 24;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v8 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v16)) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) != 0)
    {
      v25 = *(v6 + 48);

      return v25((a1 + v15 + 8) & ~v15, v7, v5);
    }

    else
    {
      v24 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v8 + (v17 | v23) + 1;
}

void storeEnumTagSinglePayload for RequestContext(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = v14 + ((v12 + 16) & ~v12);
  v16 = ((v14 + ((v13 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 <= v15 + 1)
  {
    v16 = v15 + 1;
  }

  v17 = *(v8 + 80);
  v18 = (v16 & 0xFFFFFFFFFFFFFFF8) + ((*(v8 + 64) + (v12 | 7) + ((v17 + 8) & ~v17)) & ~(v12 | 7)) + 24;
  if (v10 >= a3)
  {
    v21 = 0;
    v22 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = a3 - v10 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_22:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v26 + 56);

        v25((a1 + v17 + 8) & ~v17, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *a1 = v24;
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    bzero(a1, v18);
    *a1 = ~v10 + a2;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

unint64_t type metadata accessor for CMLClientConfig()
{
  result = lazy cache variable for type metadata for CMLClientConfig;
  if (!lazy cache variable for type metadata for CMLClientConfig)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CMLClientConfig);
  }

  return result;
}

uint64_t KeyRotation.__allocating_init(cache:keyStorage:allowList:activeUseCaseTracker:networkDelegation:coordinator:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 224) = 0;
  *(v17 + 192) = 0u;
  *(v17 + 208) = 0u;
  *(v17 + 112) = a1;
  *(v17 + 120) = a2;
  *(v17 + 128) = a3;
  *(v17 + 136) = a4;
  *(v17 + 144) = a5;
  *(v17 + 152) = a9;
  *(v17 + 160) = a10;
  *(v17 + 168) = a6;
  *(v17 + 176) = a7;
  *(v17 + 184) = a8;
  return v17;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiKeyStatusVSgMd, &_s8CipherML18AspireApiKeyStatusVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for AspireApiKeyStatus(0);
  MEMORY[0x28223BE20](v10);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(v13 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v27;
  v31 = (v13 + 48);
  v19 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18, v14);
    if (v3)
    {
      break;
    }

    if ((*v31)(v9, 1, v10) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML18AspireApiKeyStatusVSgMd, &_s8CipherML18AspireApiKeyStatusVSgMR);
    }

    else
    {
      v20 = v30;
      _s8CipherML12UseCaseGroupVWObTm_3(v9, v30, type metadata accessor for AspireApiKeyStatus);
      _s8CipherML12UseCaseGroupVWObTm_3(v20, v32, type metadata accessor for AspireApiKeyStatus);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
        v23 = v17;
        v19 = v24;
      }

      else
      {
        v23 = v17;
      }

      v19[2] = v22 + 1;
      v17 = v23;
      _s8CipherML12UseCaseGroupVWObTm_3(v32, v19 + v27 + v22 * v23, type metadata accessor for AspireApiKeyStatus);
      v10 = v28;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t KeyRotation.currentTime.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t KeyRotation.networkDelegation.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t key path setter for KeyRotation.keyUploadService : KeyRotation(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v5, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v5, v3 + 192);
  return swift_endAccess();
}

uint64_t KeyRotation.keyUploadService.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of NetworkManager?(a1, v1 + 192);
  return swift_endAccess();
}

uint64_t KeyRotation.init(cache:keyStorage:allowList:activeUseCaseTracker:networkDelegation:coordinator:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_defaultActor_initialize();
  *(v10 + 224) = 0;
  *(v10 + 192) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  *(v10 + 128) = a3;
  *(v10 + 136) = a4;
  *(v10 + 144) = a5;
  *(v10 + 152) = a9;
  *(v10 + 160) = a10;
  *(v10 + 168) = a6;
  *(v10 + 176) = a7;
  *(v10 + 184) = a8;
  return v10;
}

uint64_t KeyRotation.activeGroups(activeUseCases:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = KeyRotation.activeGroups(activeUseCases:);

  return specialized KeyRotation.activeGroups(activeUseCases:)();
}

uint64_t KeyRotation.activeGroups(activeUseCases:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t KeyRotation.keyCreationCutoff(groupName:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v28[1] = a3;
  v29 = type metadata accessor for Date();
  v28[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UseCaseGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = *(*(v3 + 136) + 32);
  if (*(v15 + 16))
  {

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v30, a2);
    if (v17)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v15 + 56) + *(v9 + 72) * v16, v11, type metadata accessor for UseCaseGroup);

      result = _s8CipherML12UseCaseGroupVWObTm_3(v11, v14, type metadata accessor for UseCaseGroup);
      v19 = *&v14[*(v8 + 20)];
      if ((v19 * 60) >> 64 == (60 * v19) >> 63)
      {
        (*(v4 + 152))(result);
        Date.addingTimeInterval(_:)();
        (*(v28[0] + 8))(v7, v29);
        return _s8CipherML12UseCaseGroupVWOhTm_1(v14, type metadata accessor for UseCaseGroup);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.daemon);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v30;
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136446210;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a2, &v31);
    _os_log_impl(&dword_224E26000, v21, v22, "Invalid group '%{public}s'", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA61F40](v26, -1, -1);
    MEMORY[0x22AA61F40](v25, -1, -1);
  }

  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  *v27 = v24;
  v27[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t KeyRotation.areKeysExpired(groupName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for UserIdentifier(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.areKeysExpired(groupName:), v2, 0);
}

uint64_t KeyRotation.areKeysExpired(groupName:)()
{
  KeyRotation.keyCreationCutoff(groupName:)(v0[2], v0[3], v0[11]);
  v1 = *(v0[4] + 128);
  ObjectType = swift_getObjectType();
  v8 = (*(v1 + 8) + **(v1 + 8));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = KeyRotation.areKeysExpired(groupName:);
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v4, v5, v6, ObjectType, v1);
}

{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](KeyRotation.areKeysExpired(groupName:), v1, 0);
}

{
  v1 = v0[5];
  v2 = (*(v0[7] + 48))(v1, 1, v0[6]);
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[11], v0[9]);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v6 = v0[8];
    _s8CipherML12UseCaseGroupVWObTm_3(v1, v6, type metadata accessor for UserIdentifier);
    v7 = static Date.> infix(_:_:)();
    _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for UserIdentifier);
    (*(v4 + 8))(v3, v5);
    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = 1;
LABEL_6:

  v9 = v0[1];

  return v9(v8);
}

uint64_t KeyRotation.rotateUserId(groupName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for UserIdentifier(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for UseCaseGroup(0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v3, 0);
}

uint64_t KeyRotation.rotateUserId(groupName:)()
{
  v31 = v0;
  v1 = *(*(v0[5] + 136) + 32);
  if (*(v1 + 16))
  {
    v3 = v0[3];
    v2 = v0[4];

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    if (v5)
    {
      v7 = v0[18];
      v6 = v0[19];
      v8 = v0[16];
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v1 + 56) + *(v0[17] + 72) * v4, v7, type metadata accessor for UseCaseGroup);

      result = _s8CipherML12UseCaseGroupVWObTm_3(v7, v6, type metadata accessor for UseCaseGroup);
      v10 = *(v6 + *(v8 + 24));
      if ((v10 * 60) >> 64 == (60 * v10) >> 63)
      {
        KeyRotation.keyCreationCutoff(groupName:)(v0[3], v0[4], v0[15]);
        v22 = v0[5];
        Date.addingTimeInterval(_:)();
        v0[20] = *(v22 + 120);
        v23 = *(v22 + 128);
        v0[21] = v23;
        ObjectType = swift_getObjectType();
        v0[22] = ObjectType;
        v29 = (*(v23 + 8) + **(v23 + 8));
        v25 = swift_task_alloc();
        v0[23] = v25;
        *v25 = v0;
        v25[1] = KeyRotation.rotateUserId(groupName:);
        v26 = v0[7];
        v27 = v0[3];
        v28 = v0[4];

        return v29(v26, v27, v28, ObjectType, v23);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.daemon);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[3];
    v14 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446210;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v30);
    _os_log_impl(&dword_224E26000, v12, v13, "Invalid group '%{public}s'", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA61F40](v17, -1, -1);
    MEMORY[0x22AA61F40](v16, -1, -1);
  }

  v19 = v0[3];
  v18 = v0[4];
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  *v20 = v19;
  v20[1] = v18;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v1, 0);
}

{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_8:
    v26 = v0[21];
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[2];
    (*(v0[5] + 152))();
    (*(v11 + 16))(v16, v10, v12);
    UUID.init()();
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v18 = *(v11 + 8);
    v0[24] = v18;
    v0[25] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v12);
    *(v16 + *(v13 + 24)) = v17;
    _s8CipherML12UseCaseGroupVWOcTm_3(v16, v15, type metadata accessor for UserIdentifier);
    (*(v14 + 56))(v15, 0, 1, v13);
    v25 = (*(v26 + 16) + **(v26 + 16));
    v19 = swift_task_alloc();
    v0[26] = v19;
    *v19 = v0;
    v19[1] = KeyRotation.rotateUserId(groupName:);
    v21 = v0[21];
    v20 = v0[22];
    v22 = v0[6];
    v24 = v0[3];
    v23 = v0[4];

    return v25(v24, v23, v22, v20, v21);
  }

  _s8CipherML12UseCaseGroupVWObTm_3(v1, v0[10], type metadata accessor for UserIdentifier);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[10], type metadata accessor for UserIdentifier);
    goto LABEL_8;
  }

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[10];
  v6 = v0[2];
  v7 = *(v0[12] + 8);
  v7(v0[14], v4);
  v7(v3, v4);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWObTm_3(v5, v6, type metadata accessor for UserIdentifier);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v2, 0);
}

{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[11];
  v1(v0[14], v4);
  v1(v3, v4);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);

  v5 = v0[1];

  return v5();
}

uint64_t KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v7[12] = type metadata accessor for AspireApiPIRConfig(0);
  v7[13] = swift_task_alloc();
  type metadata accessor for AspireApiPECConfig(0);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v7[16] = swift_task_alloc();
  v8 = type metadata accessor for UserIdentifier(0);
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = type metadata accessor for UseCaseGroup(0);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v6, 0);
}

uint64_t KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)()
{
  v36 = v0;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.daemon);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    v6 = Set.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v35);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_224E26000, v2, v3, "Collecting key statuses for activeUseCases %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AA61F40](v5, -1, -1);
    MEMORY[0x22AA61F40](v4, -1, -1);
  }

  v9 = *(v0[11] + 136);
  v10 = *(v9 + 32);
  if (*(v10 + 16))
  {
    v12 = v0[6];
    v11 = v0[7];

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
    if (v14)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v10 + 56) + *(v0[21] + 72) * v13, v0[24], type metadata accessor for UseCaseGroup);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[20];
  v19 = v0[21];
  (*(v19 + 56))(v16, v15, 1, v18);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v17, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = v0[24];
    v22 = v0[6];
    v21 = v0[7];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[23], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v23 = v22;
    v23[1] = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[19];
    v27 = v0[8];
    _s8CipherML12UseCaseGroupVWObTm_3(v0[23], v0[22], type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOcTm_3(v27, v26, type metadata accessor for UserIdentifier);
    v28 = *(v9 + 56);
    if (*(v28 + 16))
    {
      v30 = v0[6];
      v29 = v0[7];

      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
      if (v32)
      {
        v33 = *(*(v28 + 56) + 8 * v31);
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v34 = v0[10];

    v0[25] = specialized _NativeSet.genericIntersection<A>(_:)(v33, v34);

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), 0, 0);
  }
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = *(v1 + 32);
  *(v0 + 272) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  *(v0 + 208) = MEMORY[0x277D84F90];
  *(v0 + 216) = 0;

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 224) = v6;
    *(v0 + 232) = v8;
    v10 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 240) = v12;
    *(v0 + 248) = *(*(v2 + 112) + 16);

    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
    v14 = *(v0 + 128);

    return specialized DatabaseTable<>.get(_:)(v14, v11, v12);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v2, 0);
  }
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v2 = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v3 = *(v2 + 128);
  v4 = type metadata accessor for AspireApiConfig(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  }

  else
  {
    v1 = *(v2 + 120);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v0 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v0 - 8) + 48))(v1, 1, v0) != 1)
    {
      v8 = *(v2 + 120);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = *(v2 + 112);
        _s8CipherML12UseCaseGroupVWObTm_3(v8, v9, type metadata accessor for AspireApiPECConfig);
        v3 = *(v9 + 32);
        v0 = *(v9 + 40);
        outlined copy of Data._Representation(v3, v0);
        v10 = type metadata accessor for AspireApiPECConfig;
      }

      else
      {
        v11 = *(v2 + 96);
        v9 = *(v2 + 104);
        _s8CipherML12UseCaseGroupVWObTm_3(v8, v9, type metadata accessor for AspireApiPIRConfig);
        v12 = (*(v9 + *(v11 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
        swift_beginAccess();
        v3 = *v12;
        v0 = v12[1];
        outlined copy of Data._Representation(v3, v0);
        v10 = type metadata accessor for AspireApiPIRConfig;
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v9, v10);
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v2 + 128), type metadata accessor for AspireApiConfig);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v2 + 208);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(*(v2 + 128), type metadata accessor for AspireApiConfig);
  }

  v5 = *(v2 + 232);
  v6 = (*(v2 + 224) - 1) & *(v2 + 224);
  *(v2 + 216) = *(v2 + 264);
  if (v6)
  {
LABEL_6:
    v7 = *(v2 + 200);
LABEL_18:
    *(v2 + 224) = v6;
    *(v2 + 232) = v5;
    v19 = *(v2 + 88);
    v20 = (*(v7 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v6)))));
    v21 = *v20;
    v22 = v20[1];
    *(v2 + 240) = v22;
    *(v2 + 248) = *(*(v19 + 112) + 16);

    v23 = swift_task_alloc();
    *(v2 + 256) = v23;
    *v23 = v2;
    v23[1] = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
    v24 = *(v2 + 128);

    return specialized DatabaseTable<>.get(_:)(v24, v21, v22);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v18 = v5 + 1;
        if (!__OFADD__(v5, 1))
        {
          break;
        }

        __break(1u);
LABEL_25:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
LABEL_11:
        v15 = *(v1 + 2);
        v14 = *(v1 + 3);
        if (v15 >= v14 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v1);
        }

        *(v1 + 2) = v15 + 1;
        v16 = &v1[16 * v15];
        *(v16 + 4) = v3;
        *(v16 + 5) = v0;
        v17 = *(v2 + 264);
        v5 = *(v2 + 232);
        v6 = (*(v2 + 224) - 1) & *(v2 + 224);
        *(v2 + 208) = v1;
        *(v2 + 216) = v17;
        if (v6)
        {
          goto LABEL_6;
        }
      }

      v7 = *(v2 + 200);
      if (v18 >= (((1 << *(v2 + 272)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v18 + 56);
      ++v5;
      if (v6)
      {
        v5 = v18;
        goto LABEL_18;
      }
    }

    v26 = *(v2 + 88);

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v26, 0);
  }
}

{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v1, 0);
}

{
  v1 = v0[22];
  v2 = v0[19];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[11];
  v6 = v0[9];
  v7 = swift_task_alloc();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v2;
  v7[5] = v4;
  v8 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v7, v6);
  if (v1)
  {
    v9 = v0[22];
    v10 = v0[19];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);

    _s8CipherML12UseCaseGroupVWOhTm_1(v10, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v9, type metadata accessor for UseCaseGroup);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v8;

    v14 = v0[24];
    if (v13[2])
    {
      v15 = v0[19];
      v16 = v0[5];
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
      _s8CipherML12UseCaseGroupVWOcTm_3(v15, v16, type metadata accessor for UserIdentifier);
      v17 = 0;
    }

    else
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
      v13 = MEMORY[0x277D84F90];
      v17 = 1;
    }

    v18 = v0[22];
    v19 = v0[19];
    (*(v0[18] + 56))(v0[5], v17, 1, v0[17]);
    _s8CipherML12UseCaseGroupVWOhTm_1(v19, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v18, type metadata accessor for UseCaseGroup);

    v20 = v0[1];

    return v20(v13);
  }
}

void closure #2 in KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v137 = a4;
  v138 = a5;
  v143 = a3;
  v148 = a1;
  v146 = a6;
  v130 = type metadata accessor for Date();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v131 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireApiKeyStatus(0);
  v145 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = &v120 - v12;
  v136 = type metadata accessor for SecretKey(0);
  v133 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v127 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = (&v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v132 = &v120 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v142 = (&v120 - v19);
  v20 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v140 = (&v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = &v120 - v24;
  v147 = type metadata accessor for AspireHeEncryptionParameters(0);
  v26 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v141 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v144 = (&v120 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v139 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v120 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v120 - v36;
  v150 = a2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Task<>.checkCancellation()();
  if (!v6)
  {
    v123 = v25;
    v124 = v26;
    v126 = 0;
    v125 = v9;
    v38 = *(v9 + 24);
    v39 = v148;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v148 + v38, v37, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v40 = v20;
    v43 = *(v21 + 48);
    v42 = v21 + 48;
    v41 = v43;
    v44 = v43(v37, 1, v40);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v44 == 1)
    {
      if (one-time initialization token for daemon == -1)
      {
LABEL_6:
        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.daemon);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v146;
        v50 = v125;
        if (v48)
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_224E26000, v46, v47, "Skipping key with empty key configuration", v51, 2u);
          MEMORY[0x22AA61F40](v51, -1, -1);
        }

        v52 = 1;
        goto LABEL_9;
      }

LABEL_66:
      swift_once();
      goto LABEL_6;
    }

    v122 = v38;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + v38, v34, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v53 = v41(v34, 1, v40);
    v121 = v41;
    v120 = v42;
    if (v53 == 1)
    {
      v54 = v123;
      *v123 = MEMORY[0x277D84F90];
      *(v54 + 8) = 0;
      UnknownStorage.init()();
      v55 = v124;
      (*(v124 + 56))(v54 + *(v40 + 28), 1, 1, v147);
      v56 = v40;
      v57 = v40;
      v58 = v54;
      v59 = v41(v34, 1, v57);
      v60 = v142;
      if (v59 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      v56 = v40;
      v58 = v123;
      _s8CipherML12UseCaseGroupVWObTm_3(v34, v123, type metadata accessor for AspireHeEvaluationKeyConfig);
      v55 = v124;
      v60 = v142;
    }

    v61 = v56;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + *(v56 + 28), v60, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v62 = *(v55 + 48);
    v63 = v147;
    if (v62(v60, 1, v147) == 1)
    {
      v64 = v144;
      *v144 = 0;
      v64[1] = 0;
      v64[2] = MEMORY[0x277D84F90];
      v64[3] = 0;
      *(v64 + 32) = 1;
      v64[5] = 0;
      *(v64 + 48) = 1;
      v64[7] = 0;
      *(v64 + 64) = 1;
      UnknownStorage.init()();
      _s8CipherML12UseCaseGroupVWOhTm_1(v58, type metadata accessor for AspireHeEvaluationKeyConfig);
      v65 = v62(v60, 1, v63);
      v50 = v125;
      v66 = v122;
      if (v65 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v60, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWOhTm_1(v58, type metadata accessor for AspireHeEvaluationKeyConfig);
      v64 = v144;
      _s8CipherML12UseCaseGroupVWObTm_3(v60, v144, type metadata accessor for AspireHeEncryptionParameters);
      v50 = v125;
      v66 = v122;
    }

    v67 = v126;
    v68 = AllowList.isAllowListed(group:encryptionParameters:)(v143, v64);
    if (v67)
    {
      _s8CipherML12UseCaseGroupVWOhTm_1(v64, type metadata accessor for AspireHeEncryptionParameters);
      return;
    }

    if (v68)
    {
      v69 = v139;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v148 + v66, v139, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v70 = v121;
      if (v121(v69, 1, v61) == 1)
      {
        v71 = v61;
        v72 = v70;
        v73 = v140;
        *v140 = MEMORY[0x277D84F90];
        *(v73 + 8) = 0;
        UnknownStorage.init()();
        (*(v124 + 56))(v73 + *(v71 + 28), 1, 1, v147);
        if (v72(v69, 1, v71) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        v73 = v140;
        _s8CipherML12UseCaseGroupVWObTm_3(v69, v140, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v82 = specialized Message.hash()();
      v84 = v83;
      v85 = _s8CipherML12UseCaseGroupVWOhTm_1(v73, type metadata accessor for AspireHeEvaluationKeyConfig);
      v149[0] = v82;
      v149[1] = v84;
      MEMORY[0x28223BE20](v85);
      *(&v120 - 2) = v149;
      v86 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say10Foundation4DataVG_TG5TA_0, (&v120 - 4), v137);
      v126 = 0;
      if ((v86 & 1) == 0)
      {
        v150 = v82;
        if (one-time initialization token for daemon != -1)
        {
          swift_once();
        }

        v95 = type metadata accessor for Logger();
        __swift_project_value_buffer(v95, static Logger.daemon);
        v96 = v134;
        _s8CipherML12UseCaseGroupVWOcTm_3(v148, v134, type metadata accessor for AspireApiKeyStatus);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = v84;
          v101 = swift_slowAlloc();
          v149[0] = v101;
          *v99 = 136446210;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, 255, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
          v102 = Message.textFormatString()();
          _s8CipherML12UseCaseGroupVWOhTm_1(v96, type metadata accessor for AspireApiKeyStatus);
          v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102._countAndFlagsBits, v102._object, v149);
          v50 = v125;

          *(v99 + 4) = v103;
          _os_log_impl(&dword_224E26000, v97, v98, "Skipping non-active key: %{public}s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v101);
          MEMORY[0x22AA61F40](v101, -1, -1);
          MEMORY[0x22AA61F40](v99, -1, -1);
          outlined consume of Data._Representation(v150, v100);
        }

        else
        {
          outlined consume of Data._Representation(v150, v84);

          _s8CipherML12UseCaseGroupVWOhTm_1(v96, type metadata accessor for AspireApiKeyStatus);
        }

        _s8CipherML12UseCaseGroupVWOhTm_1(v64, type metadata accessor for AspireHeEncryptionParameters);
        v52 = 1;
        v49 = v146;
        goto LABEL_9;
      }

      v147 = *(type metadata accessor for UserIdentifier(0) + 24);
      v87 = *(v138 + v147);
      if (*(v87 + 16))
      {
        v88 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v84);
        v89 = v135;
        v90 = v132;
        if (v91)
        {
          v92 = *(v87 + 56);
          v93 = v133;
          _s8CipherML12UseCaseGroupVWOcTm_3(v92 + *(v133 + 72) * v88, v132, type metadata accessor for SecretKey);
          v94 = 0;
        }

        else
        {
          v94 = 1;
          v93 = v133;
        }
      }

      else
      {
        v94 = 1;
        v89 = v135;
        v90 = v132;
        v93 = v133;
      }

      v104 = v136;
      v142 = *(v93 + 56);
      v142(v90, v94, 1, v136);
      v105 = (*(v93 + 48))(v90, 1, v104);
      if (v105)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v90, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
        v141 = 0;
      }

      else
      {
        v106 = v127;
        _s8CipherML12UseCaseGroupVWOcTm_3(v90, v127, type metadata accessor for SecretKey);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v90, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
        v141 = *v106;
        _s8CipherML12UseCaseGroupVWOhTm_1(v106, type metadata accessor for SecretKey);
      }

      v107 = v84;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      __swift_project_value_buffer(v108, static Logger.daemon);
      _s8CipherML12UseCaseGroupVWOcTm_3(v148, v89, type metadata accessor for AspireApiKeyStatus);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 134218240;
        v112 = *v89;
        _s8CipherML12UseCaseGroupVWOhTm_1(v89, type metadata accessor for AspireApiKeyStatus);
        *(v111 + 4) = v112;
        v64 = v144;
        *(v111 + 12) = 2048;
        *(v111 + 14) = v141;
        _os_log_impl(&dword_224E26000, v109, v110, "keyStatus.timestamp = %llu, secretKey.timestamp = %llu", v111, 0x16u);
        MEMORY[0x22AA61F40](v111, -1, -1);
      }

      else
      {
        _s8CipherML12UseCaseGroupVWOhTm_1(v89, type metadata accessor for AspireApiKeyStatus);
      }

      v113 = v107;

      v114 = v82;
      if (v105)
      {
        v115 = v131;
        (*(v150 + 152))();
        Date.timeIntervalSince1970.getter();
        if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v117 = v148;
          if (v116 > -1.0)
          {
            if (v116 < 1.84467441e19)
            {
LABEL_58:
              v118 = v128;
              *v128 = v116;
              v119 = v136;
              HE.SerializedSecretKey.init()();
              (*(v129 + 8))(v115, v130);
              v142(v118, 0, 1, v119);
              specialized Dictionary.subscript.setter(v118, v114, v113);
              _s8CipherML12UseCaseGroupVWOhTm_1(v64, type metadata accessor for AspireHeEncryptionParameters);
              v49 = v146;
              _s8CipherML12UseCaseGroupVWOcTm_3(v117, v146, type metadata accessor for AspireApiKeyStatus);
              v52 = 0;
              goto LABEL_37;
            }

            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if ((*(v143 + *(type metadata accessor for UseCaseGroup(0) + 28)) & 1) == 0 && *v148 != v141)
      {
        v115 = v131;
        (*(v150 + 152))();
        Date.timeIntervalSince1970.getter();
        if ((*&v116 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v117 = v148;
          if (v116 > -1.0)
          {
            if (v116 >= 1.84467441e19)
            {
              __break(1u);
              goto LABEL_66;
            }

            goto LABEL_58;
          }

LABEL_71:
          __break(1u);
          return;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v64, type metadata accessor for AspireHeEncryptionParameters);
      outlined consume of Data._Representation(v82, v113);
    }

    else
    {
      v126 = 0;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.daemon);
      v75 = v141;
      _s8CipherML12UseCaseGroupVWOcTm_3(v64, v141, type metadata accessor for AspireHeEncryptionParameters);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v149[0] = v79;
        *v78 = 136446210;
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, 255, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
        v80 = Message.textFormatString()();
        _s8CipherML12UseCaseGroupVWOhTm_1(v75, type metadata accessor for AspireHeEncryptionParameters);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80._countAndFlagsBits, v80._object, v149);

        *(v78 + 4) = v81;
        _os_log_impl(&dword_224E26000, v76, v77, "Skipping key with invalid encryption parameters: '%{public}s'", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x22AA61F40](v79, -1, -1);
        MEMORY[0x22AA61F40](v78, -1, -1);
      }

      else
      {

        _s8CipherML12UseCaseGroupVWOhTm_1(v75, type metadata accessor for AspireHeEncryptionParameters);
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v64, type metadata accessor for AspireHeEncryptionParameters);
    }

    v52 = 1;
    v49 = v146;
LABEL_37:
    v50 = v125;
LABEL_9:
    (*(v145 + 56))(v49, v52, 1, v50);
  }
}

uint64_t KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v4[79] = type metadata accessor for AspireApiEvaluationKeys(0);
  v4[80] = swift_task_alloc();
  type metadata accessor for AspireApiEvaluationKey(0);
  v4[81] = swift_task_alloc();
  v4[82] = *(type metadata accessor for SecretKey(0) - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v5 = type metadata accessor for SHA256();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  v6 = type metadata accessor for SHA256Digest();
  v4[88] = v6;
  v4[89] = *(v6 - 8);
  v4[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v4[91] = swift_task_alloc();
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v4[92] = v7;
  v4[93] = *(v7 - 8);
  v4[94] = swift_task_alloc();
  v8 = type metadata accessor for AspireApiKeyStatus(0);
  v4[95] = v8;
  v4[96] = *(v8 - 8);
  v4[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:), v3, 0);
}

uint64_t KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)()
{
  v60 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 616));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 624);
    v2 = *(v0 + 608);
    outlined init with take of LocalizedError((v0 + 56), v0 + 16);
    outlined init with copy of NetworkManager(v0 + 16, v0 + 96);
    swift_beginAccess();
    outlined assign with take of NetworkManager?(v0 + 96, v1 + 192);
    swift_endAccess();
    v3 = *(v2 + 16);
    *(v0 + 784) = v3;
    if (v3)
    {
      v4 = 0;
      v5 = *(v0 + 768);
      *(v0 + 840) = *(v5 + 80);
      *(v0 + 792) = *(v5 + 72);
      while (1)
      {
        *(v0 + 800) = v4;
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v0 + 608) + ((*(v0 + 840) + 32) & ~*(v0 + 840)) + *(v0 + 792) * v4, *(v0 + 776), type metadata accessor for AspireApiKeyStatus);
        static Task<>.checkCancellation()();
        v8 = *(v0 + 744);
        v9 = *(v0 + 736);
        v10 = *(v0 + 728);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 776) + *(*(v0 + 760) + 24), v10, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v11 = *(v8 + 48);
        v12 = v11(v10, 1, v9);
        v13 = *(v0 + 752);
        if (v12 == 1)
        {
          v14 = *(v0 + 736);
          v15 = *(v0 + 728);
          *v13 = MEMORY[0x277D84F90];
          *(v13 + 8) = 0;
          UnknownStorage.init()();
          v16 = *(v14 + 28);
          v17 = type metadata accessor for AspireHeEncryptionParameters(0);
          (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
          if (v11(v15, 1, v14) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 728), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 728), *(v0 + 752), type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
        v18 = Message.serializedData(partial:)();
        v20 = v19;
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        dispatch thunk of HashFunction.init()();
        v21 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          break;
        }

        if (v21)
        {
          if (v18 >> 32 < v18)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v18, __DataStorage._offset.getter()))
          {
            goto LABEL_42;
          }

LABEL_23:
          MEMORY[0x22AA5F1C0]();
          goto LABEL_25;
        }

        *(v0 + 844) = v18;
        *(v0 + 852) = v20;
        *(v0 + 854) = BYTE2(v20);
        *(v0 + 855) = BYTE3(v20);
        *(v0 + 856) = BYTE4(v20);
        *(v0 + 857) = BYTE5(v20);
LABEL_25:
        dispatch thunk of HashFunction.update(bufferPointer:)();
        outlined consume of Data._Representation(v18, v20);
        v24 = *(v0 + 720);
        v25 = *(v0 + 712);
        v26 = *(v0 + 704);
        v27 = *(v0 + 696);
        v28 = *(v0 + 688);
        v29 = *(v0 + 680);
        v30 = *(v0 + 600);
        dispatch thunk of HashFunction.finalize()();
        outlined consume of Data._Representation(v18, v20);
        (*(v28 + 8))(v27, v29);
        *(v0 + 240) = v26;
        *(v0 + 248) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
        (*(v25 + 16))(boxed_opaque_existential_1, v24, v26);
        __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v25 + 8))(v24, v26);
        v32 = *(v0 + 584);
        *(v0 + 808) = v32;
        v33 = *(v0 + 592);
        *(v0 + 816) = v33;
        __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        v34 = type metadata accessor for UserIdentifier(0);
        v35 = *(v30 + *(v34 + 24));
        if (*(v35 + 16))
        {
          v36 = v34;
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
          if (v38)
          {
            v39 = *(v0 + 752);
            v40 = *(v0 + 672);
            v41 = *(v0 + 664);
            v42 = *(v0 + 648);
            _s8CipherML12UseCaseGroupVWOcTm_3(*(v35 + 56) + *(*(v0 + 656) + 72) * v37, v41, type metadata accessor for SecretKey);
            _s8CipherML12UseCaseGroupVWObTm_3(v41, v40, type metadata accessor for SecretKey);
            generateEvaluationKey(secretKey:config:)(v40, v39, v42);
            v51 = *(v0 + 648);
            *(swift_task_alloc() + 16) = v51;
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, 255, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);
            static Message.with(_:)();

            static Task<>.checkCancellation()();
            v52 = *(v0 + 600);
            v53 = *(v0 + 40);
            v54 = *(v0 + 48);
            __swift_project_boxed_opaque_existential_1((v0 + 16), v53);
            v55 = *(v36 + 20);
            v58 = (*(v54 + 24) + **(v54 + 24));
            v56 = swift_task_alloc();
            *(v0 + 824) = v56;
            *v56 = v0;
            v56[1] = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
            v57 = *(v0 + 640);

            return v58(v57, v52 + v55, v53, v54);
          }
        }

        v6 = *(v0 + 776);
        v7 = *(v0 + 752);
        outlined consume of Data._Representation(v32, v33);
        _s8CipherML12UseCaseGroupVWOhTm_1(v7, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for AspireApiKeyStatus);
        v4 = *(v0 + 800) + 1;
        if (v4 == *(v0 + 784))
        {
          goto LABEL_32;
        }
      }

      if (v21 != 2)
      {
        *(v0 + 858) = 0;
        *(v0 + 864) = 0;
        goto LABEL_25;
      }

      v22 = *(v18 + 16);
      v23 = *(v18 + 24);

      if (__DataStorage._bytes.getter() && __OFSUB__(v22, __DataStorage._offset.getter()))
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v23, v22))
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

LABEL_32:
    v48 = *(v0 + 624);
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    swift_beginAccess();
    outlined assign with take of NetworkManager?(v0 + 376, v48 + 192);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v49 = *(v0 + 8);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (one-time initialization token for daemon != -1)
    {
LABEL_43:
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.daemon);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, 0x8000000225039970, v59);
      _os_log_impl(&dword_224E26000, v44, v45, "%s called with offline network manager", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA61F40](v47, -1, -1);
      MEMORY[0x22AA61F40](v46, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v49 = *(v0 + 8);
  }

  return v49();
}

{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 624);
  if (v0)
  {
    v4 = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
  }

  else
  {
    v4 = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  outlined consume of Data._Representation(*(v0 + 808), *(v0 + 816));
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for AspireApiEvaluationKeys);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for SecretKey);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiKeyStatus);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for AspireApiEvaluationKey);
  v6 = *(v0 + 800) + 1;
  if (v6 != *(v0 + 784))
  {
    v9 = *(v0 + 832);
    while (1)
    {
      *(v0 + 800) = v6;
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v0 + 608) + ((*(v0 + 840) + 32) & ~*(v0 + 840)) + *(v0 + 792) * v6, *(v0 + 776), type metadata accessor for AspireApiKeyStatus);
      static Task<>.checkCancellation()();
      v12 = *(v0 + 776);
      if (v9)
      {
        v48 = *(v0 + 624);
        _s8CipherML12UseCaseGroupVWOhTm_1(v12, type metadata accessor for AspireApiKeyStatus);
        *(v0 + 136) = 0u;
        *(v0 + 152) = 0u;
        *(v0 + 168) = 0;
        swift_beginAccess();
        outlined assign with take of NetworkManager?(v0 + 136, v48 + 192);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));

        v8 = *(v0 + 8);
        goto LABEL_27;
      }

      v13 = *(v0 + 744);
      v14 = *(v0 + 736);
      v15 = *(v0 + 728);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12 + *(*(v0 + 760) + 24), v15, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v16 = *(v13 + 48);
      v17 = v16(v15, 1, v14);
      v18 = *(v0 + 752);
      if (v17 == 1)
      {
        v19 = *(v0 + 736);
        v20 = *(v0 + 728);
        *v18 = MEMORY[0x277D84F90];
        *(v18 + 8) = 0;
        UnknownStorage.init()();
        v21 = *(v19 + 28);
        v22 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
        if (v16(v20, 1, v19) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 728), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 728), *(v0 + 752), type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
      v23 = Message.serializedData(partial:)();
      v25 = v24;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      dispatch thunk of HashFunction.init()();
      v26 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        break;
      }

      if (v26)
      {
        if (v23 >> 32 < v23)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v23, __DataStorage._offset.getter()))
        {
          goto LABEL_36;
        }

LABEL_17:
        MEMORY[0x22AA5F1C0]();
        goto LABEL_23;
      }

      *(v0 + 844) = v23;
      *(v0 + 852) = v25;
      *(v0 + 854) = BYTE2(v25);
      *(v0 + 855) = BYTE3(v25);
      *(v0 + 856) = BYTE4(v25);
      *(v0 + 857) = BYTE5(v25);
LABEL_23:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v23, v25);
      v29 = *(v0 + 720);
      v30 = *(v0 + 712);
      v31 = *(v0 + 704);
      v32 = *(v0 + 696);
      v33 = *(v0 + 688);
      v34 = *(v0 + 680);
      v35 = *(v0 + 600);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v23, v25);
      (*(v33 + 8))(v32, v34);
      *(v0 + 240) = v31;
      *(v0 + 248) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      (*(v30 + 16))(boxed_opaque_existential_1, v29, v31);
      __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      v9 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v30 + 8))(v29, v31);
      v37 = *(v0 + 584);
      *(v0 + 808) = v37;
      v38 = *(v0 + 592);
      *(v0 + 816) = v38;
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v39 = type metadata accessor for UserIdentifier(0);
      v40 = *(v35 + *(v39 + 24));
      if (*(v40 + 16))
      {
        v41 = v39;
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
        if (v43)
        {
          v44 = *(v0 + 752);
          v45 = *(v0 + 672);
          v46 = *(v0 + 664);
          v47 = *(v0 + 648);
          _s8CipherML12UseCaseGroupVWOcTm_3(*(v40 + 56) + *(*(v0 + 656) + 72) * v42, v46, type metadata accessor for SecretKey);
          _s8CipherML12UseCaseGroupVWObTm_3(v46, v45, type metadata accessor for SecretKey);
          generateEvaluationKey(secretKey:config:)(v45, v44, v47);
          v50 = *(v0 + 648);
          *(swift_task_alloc() + 16) = v50;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, 255, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);
          static Message.with(_:)();

          static Task<>.checkCancellation()();
          v51 = *(v0 + 600);
          v52 = *(v0 + 40);
          v53 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v52);
          v54 = *(v41 + 20);
          v57 = (*(v53 + 24) + **(v53 + 24));
          v55 = swift_task_alloc();
          *(v0 + 824) = v55;
          *v55 = v0;
          v55[1] = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
          v56 = *(v0 + 640);

          return v57(v56, v51 + v54, v52, v53);
        }
      }

      v10 = *(v0 + 776);
      v11 = *(v0 + 752);
      outlined consume of Data._Representation(v37, v38);
      _s8CipherML12UseCaseGroupVWOhTm_1(v11, type metadata accessor for AspireHeEvaluationKeyConfig);
      _s8CipherML12UseCaseGroupVWOhTm_1(v10, type metadata accessor for AspireApiKeyStatus);
      v6 = *(v0 + 800) + 1;
      if (v6 == *(v0 + 784))
      {
        goto LABEL_2;
      }
    }

    if (v26 != 2)
    {
      *(v0 + 858) = 0;
      *(v0 + 864) = 0;
      goto LABEL_23;
    }

    v27 = *(v23 + 16);
    v28 = *(v23 + 24);

    if (__DataStorage._bytes.getter() && __OFSUB__(v27, __DataStorage._offset.getter()))
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v28, v27))
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

LABEL_2:
  v7 = *(v0 + 624);
  *(v0 + 408) = 0;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v0 + 376, v7 + 192);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v8 = *(v0 + 8);
LABEL_27:

  return v8();
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 624);
  outlined consume of Data._Representation(*(v0 + 808), *(v0 + 816));
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for AspireApiEvaluationKeys);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for SecretKey);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiKeyStatus);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for AspireApiEvaluationKey);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v0 + 336, v6 + 192);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML22AspireApiEvaluationKeyVGMd, &_ss23_ContiguousArrayStorageCy8CipherML22AspireApiEvaluationKeyVGMR);
  v4 = *(type metadata accessor for AspireApiEvaluationKey(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_225022960;
  _s8CipherML12UseCaseGroupVWOcTm_3(a2, v6 + v5, type metadata accessor for AspireApiEvaluationKey);

  *a1 = v6;
  return result;
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v7[15] = type metadata accessor for NetworkManagerConfig(0);
  v7[16] = swift_task_alloc();
  v7[17] = type metadata accessor for NetworkManagerType(0);
  v7[18] = swift_task_alloc();
  v8 = type metadata accessor for UseCaseGroup(0);
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v9 = type metadata accessor for UserIdentifier(0);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:), v6, 0);
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225036730);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v0[6] = partial apply for closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:);
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[5] = &block_descriptor_5;
  v7 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v7);

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  v9 = v0[27];
  v10 = v0[13];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];

  return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v9, v13, v14, v11, v12, v10);
}

{
  v1 = v0[27];
  if (!*(v0[29] + 16))
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[8];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

    (*(v7 + 56))(v8, 1, 1, v6);
    goto LABEL_6;
  }

  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v2, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[26];

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_4:
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[27], v0[8], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_6:

    v9 = v0[1];
LABEL_14:

    return v9();
  }

  v10 = v0[14];
  _s8CipherML12UseCaseGroupVWObTm_3(v0[26], v0[25], type metadata accessor for UserIdentifier);
  v11 = *(*(v10 + 136) + 32);
  if (!*(v11 + 16))
  {
LABEL_13:
    v24 = v0[27];
    v25 = v0[25];
    v27 = v0[9];
    v26 = v0[10];

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v28 = v27;
    v28[1] = v26;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    _s8CipherML12UseCaseGroupVWOhTm_1(v25, type metadata accessor for UserIdentifier);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

    v9 = v0[1];
    goto LABEL_14;
  }

  v13 = v0[9];
  v12 = v0[10];

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  if ((v15 & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[19];
  v19 = v0[18];
  _s8CipherML12UseCaseGroupVWOcTm_3(*(v11 + 56) + *(v0[20] + 72) * v14, v17, type metadata accessor for UseCaseGroup);

  _s8CipherML12UseCaseGroupVWObTm_3(v17, v16, type metadata accessor for UseCaseGroup);
  v20 = *(v18 + 36);
  _s8CipherML12UseCaseGroupVWOcTm_3(v16 + v20, v19, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v22 = v0[25];
    v23 = v0[22];

    _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v22, type metadata accessor for UserIdentifier);
    goto LABEL_4;
  }

  v31 = v0[15];
  v30 = v0[16];
  v32 = v0[14];
  _s8CipherML12UseCaseGroupVWOcTm_3(v16 + v20, v30, type metadata accessor for NetworkConfig);
  v33 = *(v32 + 176);
  v34 = (v30 + *(v31 + 20));
  *v34 = *(v32 + 168);
  v34[1] = v33;

  v35 = swift_task_alloc();
  v0[31] = v35;
  *v35 = v0;
  v35[1] = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  v36 = v0[29];
  v37 = v0[25];
  v38 = v0[16];

  return KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(v37, v36, v38);
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v4 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[18];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[16], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[27], v0[8], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[18];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[16], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for NetworkManagerType);

  v5 = v0[1];

  return v5();
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v5 = *(v3 + 112);
  if (v1)
  {
    v6 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v6 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v6 = type metadata accessor for SHA256();
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5[45] = v8;
  v5[46] = *(v8 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v9 = type metadata accessor for AspireApiKeyStatus(0);
  v5[50] = v9;
  v5[51] = *(v9 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = type metadata accessor for AspireApiPIRConfig(0);
  v5[56] = swift_task_alloc();
  type metadata accessor for AspireApiPECConfig(0);
  v5[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v5[58] = swift_task_alloc();
  v10 = type metadata accessor for AspireApiConfig(0);
  v5[59] = v10;
  v5[60] = *(v10 - 8);
  v5[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = type metadata accessor for NetworkManagerType(0);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = type metadata accessor for NetworkManagerConfig(0);
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v11 = type metadata accessor for AspireApiConfigResponse(0);
  v5[71] = v11;
  v5[72] = *(v11 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v12 = type metadata accessor for UserIdentifier(0);
  v5[77] = v12;
  v5[78] = *(v12 - 8);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v13 = type metadata accessor for UseCaseGroup(0);
  v5[82] = v13;
  v5[83] = *(v13 - 8);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v4, 0);
}

uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[32] + 136);
  v0[88] = v1;
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v4 = v0[28];
    v3 = v0[29];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    if (v6)
    {
      v7 = v0[87];
      v8 = v0[86];
      v9 = *(v2 + 56);
      v10 = *(v0[83] + 72);
      v0[89] = v10;
      _s8CipherML12UseCaseGroupVWOcTm_3(v9 + v10 * v5, v8, type metadata accessor for UseCaseGroup);

      _s8CipherML12UseCaseGroupVWObTm_3(v8, v7, type metadata accessor for UseCaseGroup);
      v11 = swift_task_alloc();
      v0[90] = v11;
      *v11 = v0;
      v11[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
      v12 = v0[81];
      v13 = v0[28];
      v14 = v0[29];

      return KeyRotation.rotateUserId(groupName:)(v12, v13, v14);
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.daemon);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[28];
    v19 = v0[29];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v24);
    _os_log_impl(&dword_224E26000, v17, v18, "RotationTask: did not find group '%{public}s'", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA61F40](v22, -1, -1);
    MEMORY[0x22AA61F40](v21, -1, -1);
  }

  v23 = v0[1];

  return v23();
}

{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v49 = v0;
  v48[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 696) + *(*(v0 + 656) + 32));

  v3 = specialized _NativeSet.genericIntersection<A>(_:)(v2, v1);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v3 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(v48, v5 + 4, v4, v3);
    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(v48[0]);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 736) = v5;
  v7 = v5[2];
  *(v0 + 744) = v7;
  v8 = *(v0 + 696);
  if (!v7)
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 648), type metadata accessor for UserIdentifier);

    _s8CipherML12UseCaseGroupVWOhTm_1(v8, type metadata accessor for UseCaseGroup);

    v26 = *(v0 + 8);
LABEL_20:

    return v26();
  }

  v9 = *(v0 + 656);
  v10 = *(v0 + 608);
  v11 = *(v0 + 560);
  v12 = *(v0 + 544);
  v13 = *(v0 + 256);
  v14 = MEMORY[0x277D84F90];
  *v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10[1] = v14;
  UnknownStorage.init()();
  v15 = *(v9 + 36);
  _s8CipherML12UseCaseGroupVWOcTm_3(v8 + v15, v11, type metadata accessor for NetworkConfig);
  v16 = *(v13 + 168);
  *(v0 + 752) = v16;
  v17 = *(v13 + 176);
  *(v0 + 760) = v17;
  v18 = (v11 + *(v12 + 20));
  *v18 = v16;
  v18[1] = v17;
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 560);
  (*(*static NetworkManagerHelper.shared + 96))(v20);
  _s8CipherML12UseCaseGroupVWOhTm_1(v20, type metadata accessor for NetworkManagerConfig);
  if (!*(v0 + 128))
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 104, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.daemon);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 224);
      v30 = *(v0 + 232);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v48);
      _os_log_impl(&dword_224E26000, v28, v29, "Missing cached configuration for group: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA61F40](v33, -1, -1);
      MEMORY[0x22AA61F40](v32, -1, -1);
    }

    v34 = *(v0 + 696);
    v35 = *(v0 + 648);
    v36 = *(v0 + 608);
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    _s8CipherML12UseCaseGroupVWOhTm_1(v35, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v34, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v36, type metadata accessor for AspireApiConfigResponse);

    v26 = *(v0 + 8);
    goto LABEL_20;
  }

  v21 = *(v0 + 536);
  outlined init with take of LocalizedError((v0 + 104), v0 + 64);
  _s8CipherML12UseCaseGroupVWOcTm_3(v8 + v15, v21, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = *(v0 + 536);
    if (EnumCaseMultiPayload)
    {
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR) + 48);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37 + v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v40 = type metadata accessor for URL();
      (*(*(v40 - 8) + 8))(v37, v40);
    }

    else
    {

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37 + *(v38 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    v23 = swift_task_alloc();
    *(v0 + 768) = v23;
    *v23 = v0;
    v23[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v24 = *(v0 + 512);

    return Cache.getConfigs(for:)(v24, v5);
  }

  v41 = swift_task_alloc();
  *(v0 + 800) = v41;
  *v41 = v0;
  v41[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v42 = *(v0 + 648);
  v43 = *(v0 + 584);
  v44 = *(v0 + 248);
  v45 = *(v0 + 256);
  v46 = *(v0 + 224);
  v47 = *(v0 + 232);

  return fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v43, v44, v5, v45, v0 + 64, v42, v46, v47);
}

{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);

    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 256);
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v157 = v0;
  v156[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 512);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 504);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    (*(v1 + 56))(v4, 1, 1, v2);
    v5 = swift_task_alloc();
    *(v0 + 784) = v5;
    *v5 = v0;
    v5[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v6 = *(v0 + 736);
    v7 = *(v0 + 648);
    v8 = *(v0 + 592);
    v9 = *(v0 + 504);
    v10 = *(v0 + 256);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);

    return fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v8, v9, v6, v10, v0 + 64, v7, v11, v12);
  }

  _s8CipherML12UseCaseGroupVWObTm_3(v3, *(v0 + 600), type metadata accessor for AspireApiConfigResponse);
  if (one-time initialization token for daemon != -1)
  {
LABEL_136:
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  __swift_project_value_buffer(v133, static Logger.daemon);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v156[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v156);
    _os_log_impl(&dword_224E26000, v14, v15, "Using cached configuration for group '%{public}s'", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AA61F40](v19, -1, -1);
    MEMORY[0x22AA61F40](v18, -1, -1);
  }

  v20 = *(v0 + 776);
  v21 = *(v0 + 736);
  v22 = *(v0 + 608);
  v23 = *(v0 + 480);
  v127 = *(v0 + 456);
  v126 = *(v0 + 440);
  v153 = *(v0 + 400);
  v154 = *(v0 + 408);
  v125 = *(v0 + 384);
  v24 = *(v0 + 368);
  v131 = *(v0 + 392);
  v132 = *(v0 + 360);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 600), v22);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v28 = 0;
  v29 = *v22;
  v138 = v21 + 32;
  v139 = v27;
  v128 = v23;
  v136 = (v23 + 56);
  v137 = (v23 + 48);
  v30 = (v24 + 48);
  v147 = (v25 + 16);
  v148 = (v26 + 8);
  v146 = (v25 + 8);
  v134 = v29;
  v145 = (v24 + 48);
LABEL_11:
  if (v28 >= *(*(v0 + 736) + 16))
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v152 = v28;
  v34 = (v138 + 16 * v28);
  v35 = *v34;
  v36 = v34[1];
  v140 = *v34;
  if (*(v29 + 16))
  {

    v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
    v38 = *(v0 + 496);
    v39 = *(v0 + 472);
    if (v40)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v29 + 56) + *(v128 + 72) * v37, *(v0 + 496), type metadata accessor for AspireApiConfig);
      (*(v128 + 56))(v38, 0, 1, v39);
    }

    else
    {
      (*v136)(*(v0 + 496), 1, 1, *(v0 + 472));
    }
  }

  else
  {
    (*v136)(*(v0 + 496), 1, 1, *(v0 + 472));
  }

  v41 = *(v0 + 496);
  if ((*v137)(v41, 1, *(v0 + 472)))
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_20:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v133, static Logger.daemon);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v156[0] = v32;
      *v31 = 136446210;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v36, v156);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_224E26000, v45, v46, "Configuration missing for usecase '%{public}s'", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA61F40](v32, -1, -1);
      MEMORY[0x22AA61F40](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v42 = *(v0 + 488);
  v43 = *(v0 + 464);
  _s8CipherML12UseCaseGroupVWOcTm_3(v41, v42, type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v42, v43, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v42, type metadata accessor for AspireApiConfig);
  v44 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
  {
    goto LABEL_20;
  }

  v47 = *(v0 + 464);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *(v0 + 456);
    _s8CipherML12UseCaseGroupVWObTm_3(v47, v48, type metadata accessor for AspireApiPECConfig);
    v141 = *(v127 + 32);
    v135 = *(v127 + 40);
    outlined copy of Data._Representation(v141, v135);
    v49 = type metadata accessor for AspireApiPECConfig;
  }

  else
  {
    v48 = *(v0 + 448);
    _s8CipherML12UseCaseGroupVWObTm_3(v47, v48, type metadata accessor for AspireApiPIRConfig);
    v50 = (*(v48 + *(v126 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v141 = *v50;
    v135 = v50[1];
    outlined copy of Data._Representation(*v50, v135);
    v49 = type metadata accessor for AspireApiPIRConfig;
  }

  _s8CipherML12UseCaseGroupVWOhTm_1(v48, v49);
  v51 = *(*(v0 + 608) + 8);
  v143 = *(v51 + 16);
  if (v143)
  {
    v52 = 0;
    v151 = v51 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    if (v141)
    {
      v53 = 0;
    }

    else
    {
      v53 = v135 == 0xC000000000000000;
    }

    v149 = v135 >> 62;
    v55 = !v53 || v135 >> 62 != 3;
    v56 = __OFSUB__(HIDWORD(v141), v141);
    v129 = v56;
    v130 = v55;
    v150 = v36;
    v142 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v52 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_127;
      }

      v57 = *(v0 + 416);
      v59 = *(v0 + 352);
      v58 = *(v0 + 360);
      v155 = v52;
      _s8CipherML12UseCaseGroupVWOcTm_3(v151 + *(v154 + 72) * v52, v57, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v57 + *(v153 + 24), v59, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v60 = *v30;
      v61 = (*v30)(v59, 1, v58);
      v62 = *(v0 + 392);
      v144 = v60;
      if (v61 == 1)
      {
        v64 = *(v0 + 352);
        v63 = *(v0 + 360);
        *v62 = MEMORY[0x277D84F90];
        *(v131 + 8) = 0;
        UnknownStorage.init()();
        v65 = *(v132 + 28);
        v66 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v66 - 8) + 56))(&v62[v65], 1, 1, v66);
        if (v60(v64, 1, v63) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v62, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
      v67 = Message.serializedData(partial:)();
      if (v20)
      {
        v115 = *(v0 + 696);
        v116 = *(v0 + 648);
        v117 = *(v0 + 608);
        v118 = *(v0 + 416);
        v119 = *(v0 + 392);

        outlined consume of Data._Representation(v141, v135);

        _s8CipherML12UseCaseGroupVWOhTm_1(v119, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v118, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v116, type metadata accessor for UserIdentifier);

        goto LABEL_123;
      }

      v69 = v67;
      v70 = v68;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      dispatch thunk of HashFunction.init()();
      v71 = v70 >> 62;
      if ((v70 >> 62) <= 1)
      {
        break;
      }

      if (v71 == 2)
      {
        v72 = *(v69 + 16);
        v73 = *(v69 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v72, __DataStorage._offset.getter()))
        {
          goto LABEL_132;
        }

        if (__OFSUB__(v73, v72))
        {
          goto LABEL_129;
        }

LABEL_62:
        MEMORY[0x22AA5F1C0]();
        goto LABEL_64;
      }

      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_64:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v69, v70);
      v74 = *(v0 + 392);
      v75 = *(v0 + 336);
      v77 = *(v0 + 312);
      v76 = *(v0 + 320);
      v78 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v69, v70);
      (*v148)(v77, v78);
      *(v0 + 168) = v76;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v147)(boxed_opaque_existential_1, v75, v76);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v20 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v146)(v75, v76);
      _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEvaluationKeyConfig);
      v81 = *(v0 + 208);
      v80 = *(v0 + 216);
      outlined copy of Data._Representation(v81, v80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v82 = v80 >> 62;
      if (v80 >> 62 == 3)
      {
        v83 = v135 >> 62;
        v36 = v150;
        if (v81 || v80 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v81, v80);
        }

        else if ((v130 & 1) == 0)
        {

          goto LABEL_109;
        }

LABEL_80:
        v84 = 0;
        if (v83 <= 1)
        {
          goto LABEL_77;
        }

        goto LABEL_81;
      }

      outlined consume of Data._Representation(v81, v80);
      v83 = v135 >> 62;
      v36 = v150;
      if (v82 > 1)
      {
        if (v82 != 2)
        {
          goto LABEL_80;
        }

        v86 = *(v81 + 16);
        v85 = *(v81 + 24);
        v87 = __OFSUB__(v85, v86);
        v84 = v85 - v86;
        if (v87)
        {
          goto LABEL_134;
        }

        if (v149 <= 1)
        {
          goto LABEL_77;
        }
      }

      else if (v82)
      {
        LODWORD(v84) = HIDWORD(v81) - v81;
        if (__OFSUB__(HIDWORD(v81), v81))
        {
          goto LABEL_135;
        }

        v84 = v84;
        if (v149 <= 1)
        {
LABEL_77:
          v88 = BYTE6(v135);
          if (v83)
          {
            v88 = HIDWORD(v141) - v141;
            if (v129)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_83;
        }
      }

      else
      {
        v84 = BYTE6(v80);
        if (v149 <= 1)
        {
          goto LABEL_77;
        }
      }

LABEL_81:
      if (v83 != 2)
      {
        if (!v84)
        {
          goto LABEL_107;
        }

LABEL_42:
        outlined consume of Data._Representation(v81, v80);
        goto LABEL_43;
      }

      v90 = *(v141 + 16);
      v89 = *(v141 + 24);
      v87 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (v87)
      {
        goto LABEL_131;
      }

LABEL_83:
      if (v84 != v88)
      {
        goto LABEL_42;
      }

      if (v84 < 1)
      {
LABEL_107:

        outlined consume of Data._Representation(v81, v80);
        goto LABEL_109;
      }

      if (v82 > 1)
      {
        if (v82 != 2)
        {
          v91 = v0 + 982;
          *(v0 + 988) = 0;
          *(v0 + 982) = 0;
          goto LABEL_104;
        }

        v92 = *(v81 + 16);
        v93 = *(v81 + 24);
        v94 = __DataStorage._bytes.getter();
        if (v94)
        {
          v95 = __DataStorage._offset.getter();
          if (__OFSUB__(v92, v95))
          {
            goto LABEL_139;
          }

          v94 += v92 - v95;
        }

        if (__OFSUB__(v93, v92))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (!v82)
        {
          *(v0 + 968) = v81;
          *(v0 + 976) = v80;
          *(v0 + 978) = BYTE2(v80);
          *(v0 + 979) = BYTE3(v80);
          *(v0 + 980) = BYTE4(v80);
          *(v0 + 981) = BYTE5(v80);
          v91 = v0 + 968;
LABEL_104:
          closure #1 in static Data.== infix(_:_:)(v91, v141, v135, v156);
          goto LABEL_105;
        }

        if (v81 >> 32 < v81)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v94 = __DataStorage._bytes.getter();
        if (v94)
        {
          v96 = __DataStorage._offset.getter();
          if (__OFSUB__(v81, v96))
          {
            goto LABEL_140;
          }

          v94 += v81 - v96;
        }
      }

      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v94, v141, v135, v156);
      outlined consume of Data._Representation(v81, v80);
LABEL_105:
      if (v156[0])
      {

        v20 = 0;
LABEL_109:
        v30 = v145;
        v97 = *(v0 + 424);
        v98 = *(v0 + 432);
        v99 = *(v0 + 360);
        v100 = *(v0 + 344);
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v97, type metadata accessor for AspireApiKeyStatus);
        _s8CipherML12UseCaseGroupVWObTm_3(v97, v98, type metadata accessor for AspireApiKeyStatus);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v98 + *(v153 + 24), v100, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v101 = v144(v100, 1, v99);
        v102 = *(v0 + 384);
        if (v101 == 1)
        {
          v103 = *(v0 + 360);
          v104 = *(v0 + 344);
          *v102 = MEMORY[0x277D84F90];
          *(v125 + 8) = 0;
          UnknownStorage.init()();
          v105 = *(v132 + 28);
          v106 = type metadata accessor for AspireHeEncryptionParameters(0);
          (*(*(v106 - 8) + 56))(&v102[v105], 1, 1, v106);
          if (v144(v104, 1, v103) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        v107 = *(v0 + 432);
        v108 = *(v0 + 376);
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v108, type metadata accessor for AspireHeEvaluationKeyConfig);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v139;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, v141, v135, isUniquelyReferenced_nonNull_native);
        outlined consume of Data._Representation(v141, v135);
        _s8CipherML12UseCaseGroupVWOhTm_1(v107, type metadata accessor for AspireApiKeyStatus);
        v139 = v156[0];
LABEL_10:
        v28 = v152 + 1;
        *(v0 + 816) = v139;
        v29 = v134;
        if (v152 + 1 == *(v0 + 744))
        {
          v120 = *(v0 + 256);

          *(v0 + 824) = *(*(v120 + 112) + 24);
          type metadata accessor for EvaluationKeyConfigTable();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);

          v121 = dispatch thunk of Actor.unownedExecutor.getter();
          *(v0 + 832) = v121;
          *(v0 + 840) = v122;

          return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v121, v122);
        }

        goto LABEL_11;
      }

      v20 = 0;
LABEL_43:
      v30 = v145;
      v52 = v155 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v51 = v142;
      if (v143 == v155 + 1)
      {
        goto LABEL_114;
      }
    }

    if (!v71)
    {
      *(v0 + 996) = v69;
      *(v0 + 1004) = v70;
      *(v0 + 1006) = BYTE2(v70);
      *(v0 + 1007) = BYTE3(v70);
      *(v0 + 1008) = BYTE4(v70);
      *(v0 + 1009) = BYTE5(v70);
      goto LABEL_64;
    }

    if (v69 >> 32 < v69)
    {
      goto LABEL_128;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v69, __DataStorage._offset.getter()))
    {
      goto LABEL_133;
    }

    goto LABEL_62;
  }

LABEL_114:

  if (one-time initialization token for daemon != -1)
  {
LABEL_141:
    swift_once();
  }

  __swift_project_value_buffer(v133, static Logger.daemon);

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v156[0] = v113;
    *v112 = 136315138;
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v36, v156);

    *(v112 + 4) = v114;
    _os_log_impl(&dword_224E26000, v110, v111, "Configuration did not have matching keyStatus for usecase %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x22AA61F40](v113, -1, -1);
    MEMORY[0x22AA61F40](v112, -1, -1);
  }

  else
  {
  }

  v115 = *(v0 + 696);
  v123 = *(v0 + 648);
  v117 = *(v0 + 608);
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v141, v135);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v123, type metadata accessor for UserIdentifier);
LABEL_123:
  _s8CipherML12UseCaseGroupVWOhTm_1(v115, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v117, type metadata accessor for AspireApiConfigResponse);

  v124 = *(v0 + 8);

  return v124();
}

{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v2 + 504), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v3 = *(v2 + 256);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v2 + 504), &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v140 = v0;
  v139[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 792);
  v111 = (v0 + 982);
  v3 = *(v0 + 736);
  v4 = *(v0 + 608);
  v5 = *(v0 + 480);
  v109 = *(v0 + 440);
  v110 = *(v0 + 456);
  v136 = *(v0 + 400);
  v137 = *(v0 + 408);
  v108 = *(v0 + 384);
  v6 = *(v0 + 368);
  v115 = *(v0 + 392);
  v116 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 592), v4);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = 0;
  v11 = *v4;
  v121 = v3 + 32;
  v122 = v9;
  v112 = v5;
  v119 = (v5 + 56);
  v120 = (v5 + 48);
  v12 = (v6 + 48);
  v129 = (v7 + 16);
  v130 = (v8 + 8);
  v128 = (v7 + 8);
  v117 = v11;
  v131 = (v6 + 48);
  while (1)
  {
    if (v10 >= *(*(v0 + 736) + 16))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v135 = v10;
    v16 = (v121 + 16 * v10);
    v17 = *v16;
    v1 = v16[1];
    v123 = *v16;
    if (*(v11 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v1);
      v19 = *(v0 + 496);
      v20 = *(v0 + 472);
      if (v21)
      {
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v11 + 56) + *(v112 + 72) * v18, *(v0 + 496), type metadata accessor for AspireApiConfig);
        (*(v112 + 56))(v19, 0, 1, v20);
      }

      else
      {
        (*v119)(*(v0 + 496), 1, 1, *(v0 + 472));
      }
    }

    else
    {
      (*v119)(*(v0 + 496), 1, 1, *(v0 + 472));
    }

    v22 = *(v0 + 496);
    if ((*v120)(v22, 1, *(v0 + 472)))
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_13:
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.daemon);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v139[0] = v14;
        *v13 = 136446210;
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v1, v139);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_224E26000, v27, v28, "Configuration missing for usecase '%{public}s'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    v23 = *(v0 + 488);
    v24 = *(v0 + 464);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v23, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, v24, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for AspireApiConfig);
    v25 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_13;
    }

    v29 = *(v0 + 464);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(v0 + 456);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPECConfig);
      v124 = *(v110 + 32);
      v118 = *(v110 + 40);
      outlined copy of Data._Representation(v124, v118);
      v31 = type metadata accessor for AspireApiPECConfig;
    }

    else
    {
      v30 = *(v0 + 448);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPIRConfig);
      v32 = (*(v30 + *(v109 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v124 = *v32;
      v118 = v32[1];
      outlined copy of Data._Representation(*v32, v118);
      v31 = type metadata accessor for AspireApiPIRConfig;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(v30, v31);
    v33 = *(*(v0 + 608) + 8);
    v127 = *(v33 + 16);
    if (!v127)
    {
      break;
    }

    v34 = 0;
    v134 = v33 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    if (v124)
    {
      v35 = 0;
    }

    else
    {
      v35 = v118 == 0xC000000000000000;
    }

    v132 = v118 >> 62;
    v37 = !v35 || v118 >> 62 != 3;
    v114 = v37;
    v38 = __OFSUB__(HIDWORD(v124), v124);
    v113 = v38;
    v133 = v1;
    v126 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_123;
      }

      v39 = *(v0 + 416);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      _s8CipherML12UseCaseGroupVWOcTm_3(v134 + *(v137 + 72) * v34, v39, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + *(v136 + 24), v41, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v42 = *v12;
      v43 = (*v12)(v41, 1, v40);
      v44 = *(v0 + 392);
      v138 = v34;
      if (v43 == 1)
      {
        v46 = *(v0 + 352);
        v45 = *(v0 + 360);
        *v44 = MEMORY[0x277D84F90];
        *(v115 + 8) = 0;
        UnknownStorage.init()();
        v47 = *(v116 + 28);
        v48 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v48 - 8) + 56))(&v44[v47], 1, 1, v48);
        if (v42(v46, 1, v45) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v44, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
      v49 = Message.serializedData(partial:)();
      if (v2)
      {
        v97 = *(v0 + 696);
        v98 = *(v0 + 648);
        v99 = *(v0 + 608);
        v100 = *(v0 + 416);
        v101 = *(v0 + 392);

        outlined consume of Data._Representation(v124, v118);

        _s8CipherML12UseCaseGroupVWOhTm_1(v101, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v100, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v98, type metadata accessor for UserIdentifier);

        goto LABEL_119;
      }

      v51 = v49;
      v52 = v50;
      v125 = v42;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      dispatch thunk of HashFunction.init()();
      v53 = v52 >> 62;
      if ((v52 >> 62) <= 1)
      {
        if (!v53)
        {
          *(v0 + 996) = v51;
          *(v0 + 1004) = v52;
          *(v0 + 1006) = BYTE2(v52);
          *(v0 + 1007) = BYTE3(v52);
          *(v0 + 1008) = BYTE4(v52);
          *(v0 + 1009) = BYTE5(v52);
          goto LABEL_57;
        }

        if (v51 >> 32 < v51)
        {
          goto LABEL_124;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v51, __DataStorage._offset.getter()))
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      if (v53 == 2)
      {
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
        {
          goto LABEL_128;
        }

        if (__OFSUB__(v55, v54))
        {
          goto LABEL_125;
        }

LABEL_55:
        MEMORY[0x22AA5F1C0]();
        goto LABEL_57;
      }

      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_57:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v51, v52);
      v56 = *(v0 + 392);
      v57 = *(v0 + 336);
      v58 = *(v0 + 312);
      v59 = *(v0 + 320);
      v60 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v51, v52);
      (*v130)(v58, v60);
      *(v0 + 168) = v59;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v129)(boxed_opaque_existential_1, v57, v59);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v2 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v128)(v57, v59);
      _s8CipherML12UseCaseGroupVWOhTm_1(v56, type metadata accessor for AspireHeEvaluationKeyConfig);
      v63 = *(v0 + 208);
      v62 = *(v0 + 216);
      outlined copy of Data._Representation(v63, v62);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v64 = v62 >> 62;
      if (v62 >> 62 == 3)
      {
        v12 = v131;
        v1 = v133;
        if (v63 || v62 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v63, v62);
        }

        else if ((v114 & 1) == 0)
        {

          goto LABEL_105;
        }

        v66 = 0;
        v65 = v118 >> 62;
        if (v132 <= 1)
        {
LABEL_75:
          v70 = BYTE6(v118);
          if (v65)
          {
            v70 = HIDWORD(v124) - v124;
            if (v113)
            {
              goto LABEL_126;
            }
          }

          goto LABEL_77;
        }
      }

      else
      {
        outlined consume of Data._Representation(v63, v62);
        v12 = v131;
        v1 = v133;
        if (v64 > 1)
        {
          v65 = v118 >> 62;
          if (v64 == 2)
          {
            v72 = *(v63 + 16);
            v71 = *(v63 + 24);
            v69 = __OFSUB__(v71, v72);
            v66 = v71 - v72;
            if (v69)
            {
              goto LABEL_130;
            }

            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v66 = 0;
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v65 = v118 >> 62;
          if (v64)
          {
            LODWORD(v66) = HIDWORD(v63) - v63;
            if (__OFSUB__(HIDWORD(v63), v63))
            {
              goto LABEL_131;
            }

            v66 = v66;
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v66 = BYTE6(v62);
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }
        }
      }

      if (v65 != 2)
      {
        if (!v66)
        {
          goto LABEL_103;
        }

        goto LABEL_35;
      }

      v68 = *(v124 + 16);
      v67 = *(v124 + 24);
      v69 = __OFSUB__(v67, v68);
      v70 = v67 - v68;
      if (v69)
      {
        goto LABEL_127;
      }

LABEL_77:
      if (v66 == v70)
      {
        break;
      }

LABEL_35:
      outlined consume of Data._Representation(v63, v62);
LABEL_36:
      v34 = v138 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v33 = v126;
      if (v127 == v138 + 1)
      {
        goto LABEL_110;
      }
    }

    if (v66 < 1)
    {
LABEL_103:

      outlined consume of Data._Representation(v63, v62);
      goto LABEL_105;
    }

    if (v64 <= 1)
    {
      if (!v64)
      {
        *(v0 + 968) = v63;
        *(v0 + 976) = v62;
        *(v0 + 978) = BYTE2(v62);
        *(v0 + 979) = BYTE3(v62);
        *(v0 + 980) = BYTE4(v62);
        *(v0 + 981) = BYTE5(v62);
        closure #1 in static Data.== infix(_:_:)(v0 + 968, v124, v118, v139);
        if (v139[0])
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      if (v63 >> 32 < v63)
      {
        goto LABEL_132;
      }

      v75 = __DataStorage._bytes.getter();
      if (v75)
      {
        v77 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v77))
        {
          goto LABEL_135;
        }

        v75 += v63 - v77;
      }

LABEL_99:
      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v75, v124, v118, v139);
      outlined consume of Data._Representation(v63, v62);
      if (v139[0])
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    if (v64 == 2)
    {
      v73 = *(v63 + 16);
      v74 = *(v63 + 24);
      v75 = __DataStorage._bytes.getter();
      if (v75)
      {
        v76 = __DataStorage._offset.getter();
        if (__OFSUB__(v73, v76))
        {
          goto LABEL_134;
        }

        v75 += v73 - v76;
      }

      if (__OFSUB__(v74, v73))
      {
        goto LABEL_133;
      }

      goto LABEL_99;
    }

    *(v0 + 988) = 0;
    *v111 = 0;
    closure #1 in static Data.== infix(_:_:)(v111, v124, v118, v139);
    if ((v139[0] & 1) == 0)
    {
LABEL_102:
      v2 = 0;
      goto LABEL_36;
    }

LABEL_104:

    v2 = 0;
LABEL_105:
    v78 = *(v0 + 424);
    v79 = *(v0 + 432);
    v80 = *(v0 + 360);
    v81 = *(v0 + 344);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v78, type metadata accessor for AspireApiKeyStatus);
    _s8CipherML12UseCaseGroupVWObTm_3(v78, v79, type metadata accessor for AspireApiKeyStatus);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v79 + *(v136 + 24), v81, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v82 = v125(v81, 1, v80);
    v83 = *(v0 + 384);
    if (v82 == 1)
    {
      v84 = *(v0 + 360);
      v85 = *(v0 + 344);
      *v83 = MEMORY[0x277D84F90];
      *(v108 + 8) = 0;
      UnknownStorage.init()();
      v86 = *(v116 + 28);
      v87 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v87 - 8) + 56))(&v83[v86], 1, 1, v87);
      if (v125(v85, 1, v84) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v88 = *(v0 + 432);
    v89 = *(v0 + 376);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v89, type metadata accessor for AspireHeEvaluationKeyConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v122;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v124, v118, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v124, v118);
    _s8CipherML12UseCaseGroupVWOhTm_1(v88, type metadata accessor for AspireApiKeyStatus);
    v122 = v139[0];
LABEL_3:
    v10 = v135 + 1;
    *(v0 + 816) = v122;
    v11 = v117;
    if (v135 + 1 == *(v0 + 744))
    {
      v102 = *(v0 + 256);

      *(v0 + 824) = *(*(v102 + 112) + 24);
      type metadata accessor for EvaluationKeyConfigTable();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);

      v103 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 832) = v103;
      *(v0 + 840) = v104;

      return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v103, v104);
    }
  }

LABEL_110:

  if (one-time initialization token for daemon == -1)
  {
    goto LABEL_111;
  }

LABEL_136:
  swift_once();
LABEL_111:
  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.daemon);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v139[0] = v95;
    *v94 = 136315138;
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v1, v139);

    *(v94 + 4) = v96;
    _os_log_impl(&dword_224E26000, v92, v93, "Configuration did not have matching keyStatus for usecase %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x22AA61F40](v95, -1, -1);
    MEMORY[0x22AA61F40](v94, -1, -1);
  }

  else
  {
  }

  v97 = *(v0 + 696);
  v105 = *(v0 + 648);
  v99 = *(v0 + 608);
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v124, v118);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v105, type metadata accessor for UserIdentifier);
LABEL_119:
  _s8CipherML12UseCaseGroupVWOhTm_1(v97, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v99, type metadata accessor for AspireApiConfigResponse);

  v106 = *(v0 + 8);

  return v106();
}

{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);

    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 256);
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v140 = v0;
  v139[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 808);
  v111 = (v0 + 982);
  v3 = *(v0 + 736);
  v4 = *(v0 + 608);
  v5 = *(v0 + 480);
  v109 = *(v0 + 440);
  v110 = *(v0 + 456);
  v136 = *(v0 + 400);
  v137 = *(v0 + 408);
  v108 = *(v0 + 384);
  v6 = *(v0 + 368);
  v115 = *(v0 + 392);
  v116 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 584), v4);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = 0;
  v11 = *v4;
  v121 = v3 + 32;
  v122 = v9;
  v112 = v5;
  v119 = (v5 + 56);
  v120 = (v5 + 48);
  v12 = (v6 + 48);
  v129 = (v7 + 16);
  v130 = (v8 + 8);
  v128 = (v7 + 8);
  v117 = v11;
  v131 = (v6 + 48);
  while (1)
  {
    if (v10 >= *(*(v0 + 736) + 16))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v135 = v10;
    v16 = (v121 + 16 * v10);
    v17 = *v16;
    v1 = v16[1];
    v123 = *v16;
    if (*(v11 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v1);
      v19 = *(v0 + 496);
      v20 = *(v0 + 472);
      if (v21)
      {
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v11 + 56) + *(v112 + 72) * v18, *(v0 + 496), type metadata accessor for AspireApiConfig);
        (*(v112 + 56))(v19, 0, 1, v20);
      }

      else
      {
        (*v119)(*(v0 + 496), 1, 1, *(v0 + 472));
      }
    }

    else
    {
      (*v119)(*(v0 + 496), 1, 1, *(v0 + 472));
    }

    v22 = *(v0 + 496);
    if ((*v120)(v22, 1, *(v0 + 472)))
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_13:
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.daemon);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v139[0] = v14;
        *v13 = 136446210;
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v1, v139);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_224E26000, v27, v28, "Configuration missing for usecase '%{public}s'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    v23 = *(v0 + 488);
    v24 = *(v0 + 464);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v23, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, v24, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for AspireApiConfig);
    v25 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_13;
    }

    v29 = *(v0 + 464);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(v0 + 456);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPECConfig);
      v124 = *(v110 + 32);
      v118 = *(v110 + 40);
      outlined copy of Data._Representation(v124, v118);
      v31 = type metadata accessor for AspireApiPECConfig;
    }

    else
    {
      v30 = *(v0 + 448);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPIRConfig);
      v32 = (*(v30 + *(v109 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v124 = *v32;
      v118 = v32[1];
      outlined copy of Data._Representation(*v32, v118);
      v31 = type metadata accessor for AspireApiPIRConfig;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(v30, v31);
    v33 = *(*(v0 + 608) + 8);
    v127 = *(v33 + 16);
    if (!v127)
    {
      break;
    }

    v34 = 0;
    v134 = v33 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
    if (v124)
    {
      v35 = 0;
    }

    else
    {
      v35 = v118 == 0xC000000000000000;
    }

    v132 = v118 >> 62;
    v37 = !v35 || v118 >> 62 != 3;
    v114 = v37;
    v38 = __OFSUB__(HIDWORD(v124), v124);
    v113 = v38;
    v133 = v1;
    v126 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_123;
      }

      v39 = *(v0 + 416);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      _s8CipherML12UseCaseGroupVWOcTm_3(v134 + *(v137 + 72) * v34, v39, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + *(v136 + 24), v41, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v42 = *v12;
      v43 = (*v12)(v41, 1, v40);
      v44 = *(v0 + 392);
      v138 = v34;
      if (v43 == 1)
      {
        v46 = *(v0 + 352);
        v45 = *(v0 + 360);
        *v44 = MEMORY[0x277D84F90];
        *(v115 + 8) = 0;
        UnknownStorage.init()();
        v47 = *(v116 + 28);
        v48 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v48 - 8) + 56))(&v44[v47], 1, 1, v48);
        if (v42(v46, 1, v45) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v44, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
      v49 = Message.serializedData(partial:)();
      if (v2)
      {
        v97 = *(v0 + 696);
        v98 = *(v0 + 648);
        v99 = *(v0 + 608);
        v100 = *(v0 + 416);
        v101 = *(v0 + 392);

        outlined consume of Data._Representation(v124, v118);

        _s8CipherML12UseCaseGroupVWOhTm_1(v101, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v100, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v98, type metadata accessor for UserIdentifier);

        goto LABEL_119;
      }

      v51 = v49;
      v52 = v50;
      v125 = v42;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      dispatch thunk of HashFunction.init()();
      v53 = v52 >> 62;
      if ((v52 >> 62) <= 1)
      {
        if (!v53)
        {
          *(v0 + 996) = v51;
          *(v0 + 1004) = v52;
          *(v0 + 1006) = BYTE2(v52);
          *(v0 + 1007) = BYTE3(v52);
          *(v0 + 1008) = BYTE4(v52);
          *(v0 + 1009) = BYTE5(v52);
          goto LABEL_57;
        }

        if (v51 >> 32 < v51)
        {
          goto LABEL_124;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v51, __DataStorage._offset.getter()))
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      if (v53 == 2)
      {
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
        {
          goto LABEL_128;
        }

        if (__OFSUB__(v55, v54))
        {
          goto LABEL_125;
        }

LABEL_55:
        MEMORY[0x22AA5F1C0]();
        goto LABEL_57;
      }

      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_57:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v51, v52);
      v56 = *(v0 + 392);
      v57 = *(v0 + 336);
      v58 = *(v0 + 312);
      v59 = *(v0 + 320);
      v60 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v51, v52);
      (*v130)(v58, v60);
      *(v0 + 168) = v59;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v129)(boxed_opaque_existential_1, v57, v59);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v2 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v128)(v57, v59);
      _s8CipherML12UseCaseGroupVWOhTm_1(v56, type metadata accessor for AspireHeEvaluationKeyConfig);
      v63 = *(v0 + 208);
      v62 = *(v0 + 216);
      outlined copy of Data._Representation(v63, v62);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v64 = v62 >> 62;
      if (v62 >> 62 == 3)
      {
        v12 = v131;
        v1 = v133;
        if (v63 || v62 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v63, v62);
        }

        else if ((v114 & 1) == 0)
        {

          goto LABEL_105;
        }

        v66 = 0;
        v65 = v118 >> 62;
        if (v132 <= 1)
        {
LABEL_75:
          v70 = BYTE6(v118);
          if (v65)
          {
            v70 = HIDWORD(v124) - v124;
            if (v113)
            {
              goto LABEL_126;
            }
          }

          goto LABEL_77;
        }
      }

      else
      {
        outlined consume of Data._Representation(v63, v62);
        v12 = v131;
        v1 = v133;
        if (v64 > 1)
        {
          v65 = v118 >> 62;
          if (v64 == 2)
          {
            v72 = *(v63 + 16);
            v71 = *(v63 + 24);
            v69 = __OFSUB__(v71, v72);
            v66 = v71 - v72;
            if (v69)
            {
              goto LABEL_130;
            }

            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v66 = 0;
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v65 = v118 >> 62;
          if (v64)
          {
            LODWORD(v66) = HIDWORD(v63) - v63;
            if (__OFSUB__(HIDWORD(v63), v63))
            {
              goto LABEL_131;
            }

            v66 = v66;
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v66 = BYTE6(v62);
            if (v132 <= 1)
            {
              goto LABEL_75;
            }
          }
        }
      }

      if (v65 != 2)
      {
        if (!v66)
        {
          goto LABEL_103;
        }

        goto LABEL_35;
      }

      v68 = *(v124 + 16);
      v67 = *(v124 + 24);
      v69 = __OFSUB__(v67, v68);
      v70 = v67 - v68;
      if (v69)
      {
        goto LABEL_127;
      }

LABEL_77:
      if (v66 == v70)
      {
        break;
      }

LABEL_35:
      outlined consume of Data._Representation(v63, v62);
LABEL_36:
      v34 = v138 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v33 = v126;
      if (v127 == v138 + 1)
      {
        goto LABEL_110;
      }
    }

    if (v66 < 1)
    {
LABEL_103:

      outlined consume of Data._Representation(v63, v62);
      goto LABEL_105;
    }

    if (v64 <= 1)
    {
      if (!v64)
      {
        *(v0 + 968) = v63;
        *(v0 + 976) = v62;
        *(v0 + 978) = BYTE2(v62);
        *(v0 + 979) = BYTE3(v62);
        *(v0 + 980) = BYTE4(v62);
        *(v0 + 981) = BYTE5(v62);
        closure #1 in static Data.== infix(_:_:)(v0 + 968, v124, v118, v139);
        if (v139[0])
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      if (v63 >> 32 < v63)
      {
        goto LABEL_132;
      }

      v75 = __DataStorage._bytes.getter();
      if (v75)
      {
        v77 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v77))
        {
          goto LABEL_135;
        }

        v75 += v63 - v77;
      }

LABEL_99:
      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v75, v124, v118, v139);
      outlined consume of Data._Representation(v63, v62);
      if (v139[0])
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    if (v64 == 2)
    {
      v73 = *(v63 + 16);
      v74 = *(v63 + 24);
      v75 = __DataStorage._bytes.getter();
      if (v75)
      {
        v76 = __DataStorage._offset.getter();
        if (__OFSUB__(v73, v76))
        {
          goto LABEL_134;
        }

        v75 += v73 - v76;
      }

      if (__OFSUB__(v74, v73))
      {
        goto LABEL_133;
      }

      goto LABEL_99;
    }

    *(v0 + 988) = 0;
    *v111 = 0;
    closure #1 in static Data.== infix(_:_:)(v111, v124, v118, v139);
    if ((v139[0] & 1) == 0)
    {
LABEL_102:
      v2 = 0;
      goto LABEL_36;
    }

LABEL_104:

    v2 = 0;
LABEL_105:
    v78 = *(v0 + 424);
    v79 = *(v0 + 432);
    v80 = *(v0 + 360);
    v81 = *(v0 + 344);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v78, type metadata accessor for AspireApiKeyStatus);
    _s8CipherML12UseCaseGroupVWObTm_3(v78, v79, type metadata accessor for AspireApiKeyStatus);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v79 + *(v136 + 24), v81, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v82 = v125(v81, 1, v80);
    v83 = *(v0 + 384);
    if (v82 == 1)
    {
      v84 = *(v0 + 360);
      v85 = *(v0 + 344);
      *v83 = MEMORY[0x277D84F90];
      *(v108 + 8) = 0;
      UnknownStorage.init()();
      v86 = *(v116 + 28);
      v87 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v87 - 8) + 56))(&v83[v86], 1, 1, v87);
      if (v125(v85, 1, v84) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v88 = *(v0 + 432);
    v89 = *(v0 + 376);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v89, type metadata accessor for AspireHeEvaluationKeyConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v122;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v124, v118, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v124, v118);
    _s8CipherML12UseCaseGroupVWOhTm_1(v88, type metadata accessor for AspireApiKeyStatus);
    v122 = v139[0];
LABEL_3:
    v10 = v135 + 1;
    *(v0 + 816) = v122;
    v11 = v117;
    if (v135 + 1 == *(v0 + 744))
    {
      v102 = *(v0 + 256);

      *(v0 + 824) = *(*(v102 + 112) + 24);
      type metadata accessor for EvaluationKeyConfigTable();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);

      v103 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 832) = v103;
      *(v0 + 840) = v104;

      return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v103, v104);
    }
  }

LABEL_110:

  if (one-time initialization token for daemon == -1)
  {
    goto LABEL_111;
  }

LABEL_136:
  swift_once();
LABEL_111:
  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.daemon);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v139[0] = v95;
    *v94 = 136315138;
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v1, v139);

    *(v94 + 4) = v96;
    _os_log_impl(&dword_224E26000, v92, v93, "Configuration did not have matching keyStatus for usecase %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x22AA61F40](v95, -1, -1);
    MEMORY[0x22AA61F40](v94, -1, -1);
  }

  else
  {
  }

  v97 = *(v0 + 696);
  v105 = *(v0 + 648);
  v99 = *(v0 + 608);
  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v124, v118);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v105, type metadata accessor for UserIdentifier);
LABEL_119:
  _s8CipherML12UseCaseGroupVWOhTm_1(v97, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v99, type metadata accessor for AspireApiConfigResponse);

  v106 = *(v0 + 8);

  return v106();
}

{
  v10 = v0;
  v9[5] = *MEMORY[0x277D85DE8];
  v1 = v0[102];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DataV_Tt1g5(*(v1 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(v9, v3 + 2, v2, v1);
    v5 = v9[0];

    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[106] = v3;
  v6 = swift_task_alloc();
  v0[107] = v6;
  *v6 = v0;
  v6[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v7 = v0[102];

  return specialized DatabaseTable<>.update(keys:with:)(v3, v7);
}

{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = v2[105];
    v4 = v2[104];
    v5 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v6 = v2[32];

    v5 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v4 = v6;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[108];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[87];
    v3 = v0[76];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[29];
    v6 = v0[30];
    v8 = v0[28];
    v9 = *(v0[76] + 8);
    v10 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225036730);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = v9;
    v11[5] = v6;
    v0[6] = closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:)partial apply;
    v0[7] = v11;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v0[5] = &block_descriptor_24_1;
    v12 = _Block_copy(v0 + 2);

    AnalyticsSendEventLazy();
    _Block_release(v12);

    v13 = swift_task_alloc();
    v0[109] = v13;
    *v13 = v0;
    v13[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v14 = v0[81];
    v15 = v0[35];
    v16 = v0[29];
    v17 = v0[30];
    v18 = v0[28];

    return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v15, v18, v16, v14, v9, v17);
  }
}

{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v1, 0);
}

{
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[78];
  v2 = v0[77];
  if (!*(v0[110] + 16))
  {
    v7 = v0[36];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[35], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

    (*(v1 + 56))(v7, 1, 1, v2);
    v6 = (v1 + 48);
    goto LABEL_6;
  }

  v3 = v0[34];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[35], v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v1 + 48);
  v0[112] = v4;
  if (v4(v3, 1, v2) != 1)
  {
    v24 = v0[88];
    _s8CipherML12UseCaseGroupVWObTm_3(v0[34], v0[79], type metadata accessor for UserIdentifier);
    v25 = *(v24 + 32);
    if (*(v25 + 16))
    {
      v27 = v0[28];
      v26 = v0[29];

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
      if (v29)
      {
        v30 = v0[85];
        v31 = v0[84];
        v32 = v0[82];
        v33 = v0[66];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v25 + 56) + v0[89] * v28, v31, type metadata accessor for UseCaseGroup);

        _s8CipherML12UseCaseGroupVWObTm_3(v31, v30, type metadata accessor for UseCaseGroup);
        v34 = *(v32 + 36);
        _s8CipherML12UseCaseGroupVWOcTm_3(v30 + v34, v33, type metadata accessor for NetworkManagerType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
        {
          v45 = v0[95];
          v46 = v0[94];
          v47 = v0[69];
          v48 = v0[68];
          _s8CipherML12UseCaseGroupVWOcTm_3(v30 + v34, v47, type metadata accessor for NetworkConfig);
          v49 = (v47 + *(v48 + 20));
          *v49 = v46;
          v49[1] = v45;

          v50 = swift_task_alloc();
          v0[113] = v50;
          *v50 = v0;
          v50[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
          v51 = v0[110];
          v52 = v0[79];
          v53 = v0[69];

          return KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(v52, v51, v53);
        }

        v36 = v0[85];
        v37 = v0[79];

        _s8CipherML12UseCaseGroupVWOhTm_1(v36, type metadata accessor for UseCaseGroup);
        _s8CipherML12UseCaseGroupVWOhTm_1(v37, type metadata accessor for UserIdentifier);
        goto LABEL_4;
      }
    }

    v38 = v0[79];
    v39 = v0[35];
    v41 = v0[28];
    v40 = v0[29];

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    *v42 = v41;
    v42[1] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    _s8CipherML12UseCaseGroupVWOhTm_1(v38, type metadata accessor for UserIdentifier);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    v43 = v0[87];
    v44 = v0[76];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v43, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v44, type metadata accessor for AspireApiConfigResponse);

    v12 = v0[1];
    goto LABEL_18;
  }

  v5 = v0[34];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_4:
  v6 = (v0 + 112);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[35], v0[36], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_6:
  v8 = *v6;
  v9 = v0[77];
  v10 = v0[36];
  if (v8(v10, 1, v9) == 1)
  {
    v11 = v0[87];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v11, type metadata accessor for UseCaseGroup);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);

    v12 = v0[1];
LABEL_18:

    return v12();
  }

  v13 = v0[80];
  v14 = v0[78];
  v15 = v0[32];
  v16 = v0[33];
  _s8CipherML12UseCaseGroupVWObTm_3(v10, v13, type metadata accessor for UserIdentifier);
  v0[115] = *(v15 + 120);
  v17 = *(v15 + 128);
  v0[116] = v17;
  ObjectType = swift_getObjectType();
  v0[117] = ObjectType;
  _s8CipherML12UseCaseGroupVWOcTm_3(v13, v16, type metadata accessor for UserIdentifier);
  (*(v14 + 56))(v16, 0, 1, v9);
  v54 = (*(v17 + 16) + **(v17 + 16));
  v19 = swift_task_alloc();
  v0[118] = v19;
  *v19 = v0;
  v19[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v20 = v0[33];
  v22 = v0[28];
  v21 = v0[29];

  return v54(v22, v21, v20, ObjectType, v17);
}

{
  v1 = v0[87];
  v2 = v0[76];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireApiConfigResponse);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 912) = v0;

  v3 = *(v2 + 256);

  if (v0)
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 680);
  v2 = *(v0 + 632);
  v3 = *(v0 + 528);
  _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 552), type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(*(v0 + 280), *(v0 + 288), &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 288);
  if ((*(v0 + 896))(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 696);
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 648), type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v7, type metadata accessor for UseCaseGroup);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 608), type metadata accessor for AspireApiConfigResponse);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 640);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    _s8CipherML12UseCaseGroupVWObTm_3(v6, v10, type metadata accessor for UserIdentifier);
    *(v0 + 920) = *(v11 + 120);
    v13 = *(v11 + 128);
    *(v0 + 928) = v13;
    ObjectType = swift_getObjectType();
    *(v0 + 936) = ObjectType;
    _s8CipherML12UseCaseGroupVWOcTm_3(v10, v12, type metadata accessor for UserIdentifier);
    (*(v4 + 56))(v12, 0, 1, v5);
    v19 = (*(v13 + 16) + **(v13 + 16));
    v15 = swift_task_alloc();
    *(v0 + 944) = v15;
    *v15 = v0;
    v15[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v16 = *(v0 + 264);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);

    return v19(v18, v17, v16, ObjectType, v13);
  }
}

{
  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[66];
  v4 = v0[35];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[69], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  v5 = v0[87];
  v6 = v0[76];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for AspireApiConfigResponse);

  v7 = v0[1];

  return v7();
}

{
  v1 = *v0;
  v9 = *(*v0 + 928);
  v2 = *(*v0 + 264);
  v3 = *v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v8 = (*(v9 + 24) + **(v9 + 24));
  v4 = swift_task_alloc();
  v1[119] = v4;
  *v4 = v3;
  v4[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v5 = v1[117];
  v6 = v1[116];

  return v8(v5, v6);
}

{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v4 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[87];
  v2 = v0[81];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[80], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);

  v3 = v0[1];

  return v3();
}

{
  _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 696), type metadata accessor for UseCaseGroup);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);

  v4 = v0[1];

  return v4();
}

{
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[120];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[120];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224E26000, v4, v5, "RotationTask: failed to synchronize key storage, but continuing anyway: %{public}@", v8, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  v12 = v0[87];
  v13 = v0[81];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[80], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v13, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v12, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);

  v14 = v0[1];

  return v14();
}