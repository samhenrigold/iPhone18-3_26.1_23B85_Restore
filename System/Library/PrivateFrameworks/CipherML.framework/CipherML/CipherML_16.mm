uint64_t AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        if (!v4)
        {
          type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedDcrtPlaintextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for AspireHeSerializedDcrtPlaintext(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext, &protocol conformance descriptor for AspireHeSerializedDcrtPlaintext);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySerializedDcrtPlaintextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for AspireHeSerializedDcrtPlaintext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext, &protocol conformance descriptor for AspireHeSerializedDcrtPlaintext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        if (!v4)
        {
          type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v15 + 32), v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v9, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySerializedCiphertextMatrix@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            closure #1 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 3:
            closure #3 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        }
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #2 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(*(v3 + 16) + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + 32) & 1) == 0 && *(v3 + 24))
    {
      lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*(v3 + 40) + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 44), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityClientConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 44);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig, &protocol conformance descriptor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig, &protocol conformance descriptor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig, &protocol conformance descriptor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig, &protocol conformance descriptor for AspireSimilaritySimilarityClientConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #3 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig, &protocol conformance descriptor for AspireSimilaritySimilarityClientConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityClientConfig);
}

uint64_t closure #2 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t closure #3 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityServerConfig@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = &a2[a1[8]];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)(v11, a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedDcrtPlaintextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 32), v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySerializedProcessedSimilarityDb@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb, &protocol conformance descriptor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb, &protocol conformance descriptor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb, &protocol conformance descriptor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityDbRow.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeRepeatedFloatField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v6 = v3[1];
  v7 = v3[2];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v3[3] + 16) || (result = dispatch thunk of Visitor.visitPackedFloatField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireSimilaritySimilarityDbRow(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityDbRow@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = MEMORY[0x277D84F90];
  a2[2] = 0xC000000000000000;
  a2[3] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow, &protocol conformance descriptor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityDbRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow, &protocol conformance descriptor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow, &protocol conformance descriptor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityDb.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireSimilaritySimilarityDbRow(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow, &protocol conformance descriptor for AspireSimilaritySimilarityDbRow);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireSimilaritySimilarityDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireSimilaritySimilarityDbRow(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow, &protocol conformance descriptor for AspireSimilaritySimilarityDbRow), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireSimilaritySimilarityDb(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireSimilaritySimilarityDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AspireSimilaritySimilarityDb(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb, &protocol conformance descriptor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb, &protocol conformance descriptor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb, &protocol conformance descriptor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireSimilaritySimilarityDb(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

char *one-time initialization function for defaultInstance()
{
  type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
  swift_allocObject();
  result = AspireSimilarityPecPreprocessDbArgs._StorageClass.init()();
  static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance = result;
  return result;
}

char *AspireSimilarityPecPreprocessDbArgs._StorageClass.init()()
{
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 1) = 0u;
  v1 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v2 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme];
  *v8 = 0;
  *(v8 + 4) = 256;
  *&v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli] = MEMORY[0x277D84F90];
  v9 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep];
  *v9 = 0;
  v9[4] = 1;
  v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel] = 2;
  return v0;
}

void *AspireSimilarityPecPreprocessDbArgs._StorageClass.deinit()
{

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);

  return v0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs._StorageClass.__deallocating_deinit()
{
  AspireSimilarityPecPreprocessDbArgs._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 2:
          closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 3:
          closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 4:
          closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID;
          goto LABEL_5;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID;
          goto LABEL_5;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters;
LABEL_5:
          closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          break;
        case 10:
          closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 11:
          closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 12:
          closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        case 13:
          closure #13 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0);
  result = closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
    closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {

      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig, &protocol conformance descriptor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
}

uint64_t closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v5 + 8))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  if ((*(v4 + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v83 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  swift_beginAccess();
  v16 = a1[2];
  v15 = a1[3];
  swift_beginAccess();
  v84 = a2;
  v17 = a2[3];
  if (v15)
  {
    if (!v17 || (v16 != v84[2] || v15 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  swift_beginAccess();
  v18 = a1[4];
  v19 = a1[5];
  v20 = v84;
  swift_beginAccess();
  v21 = v20[5];
  if (v19)
  {
    if (!v21 || (v18 != v84[4] || v19 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = a1[6];
  v23 = a1[7];
  v24 = v84;
  swift_beginAccess();
  v25 = v24[7];
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v25 || (v22 != v84[6] || v23 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v26 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v26, v14, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v27 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v28 = v84;
  swift_beginAccess();
  v29 = *(v6 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v81 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v27, &v8[v29], &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v30 = *(v83 + 48);
  if (v30(v8, 1, v4) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    v31 = v28;
    if (v30(&v8[v81], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
      goto LABEL_31;
    }

LABEL_27:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
    goto LABEL_28;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8, v11, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v32 = v81;
  if (v30(&v8[v81], 1, v4) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    goto LABEL_27;
  }

  v34 = &v8[v32];
  v35 = v82;
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v34, v82, type metadata accessor for AspireSimilaritySimilarityServerConfig);

  v31 = v84;

  v36 = specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(v11, v35);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v35, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v37 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = (v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v41)
  {
    goto LABEL_28;
  }

  v42 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v45 = (v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (v43 != *v45 || v44 != v46) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v46)
  {
    goto LABEL_28;
  }

  v47 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = (v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (v48 != *v50 || v49 != v51) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v51)
  {
    goto LABEL_28;
  }

  v52 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v55 = (v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (v53 != *v55 || v54 != v56) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v56)
  {
    goto LABEL_28;
  }

  v57 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = (v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (v58 != *v60 || v59 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v61)
  {
    goto LABEL_28;
  }

  v62 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[9];
  v65 = v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  if (v64)
  {
    if (v65[9])
    {
      goto LABEL_68;
    }

LABEL_28:

    return 0;
  }

  if (v65[9])
  {
    goto LABEL_28;
  }

  v73 = *v65;
  if (v65[8])
  {
    if (v73)
    {
      if (v73 == 1)
      {
        v74 = v63 == 1;
      }

      else
      {
        v74 = v63 == 2;
      }

      v31 = v84;
      if (!v74)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v31 = v84;
      if (v63)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v63 != v73)
  {
    goto LABEL_28;
  }

LABEL_68:
  v66 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v67 = *(a1 + v66);
  v68 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v67, *(v31 + v68)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v69 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[4];
  v72 = v31 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  if (v71)
  {
    if ((v72[4] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v72[4] & 1) != 0 || v70 != *v72)
  {
    goto LABEL_28;
  }

  v75 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  v76 = *(a1 + v75);

  v77 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  v78 = v84;
  swift_beginAccess();
  v79 = *(v78 + v77);

  if (v76 == 2)
  {
    if (v79 != 2)
    {
      return 0;
    }
  }

  else if (v79 == 2 || ((v76 ^ v79) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

Swift::Int AspireSimilarityPlaintextPacking.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs, &protocol conformance descriptor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs, &protocol conformance descriptor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs, &protocol conformance descriptor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireSimilaritySerializedDcrtPlaintextMatrix.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void, double), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v20 = v16;
  if ((a3(a1[1], a2[1], v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v30 = a4(0);
  v21 = *(v30 + 32);
  v22 = *(v20 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v21, v19, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v23 = a2 + v21;
  v24 = v22;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, &v19[v22], &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v25 = *(v9 + 48);
  if (v25(v19, 1, v8) == 1)
  {
    if (v25(&v19[v24], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
LABEL_12:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v26 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19, v14, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v25(&v19[v24], 1, v8) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
    goto LABEL_9;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v19[v24], v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  v28 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v14, v11);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_9:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static AspireSimilaritySerializedProcessedSimilarityDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML45AspireSimilaritySerializedDcrtPlaintextMatrixV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v16 = a2 + v14;
  v17 = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, &v13[v15], &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
LABEL_13:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilaritySimilarityServerConfig);
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
    goto LABEL_10;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v13[v17], v7, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v21 = specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(v10, v7);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityDbRow.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AspireSimilaritySimilarityDbRow(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - v21;
  v24 = *(v23 + 56);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, &v36 - v21, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a2, &v22[v24], type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v22, v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = &v22[v24];
        v27 = v36;
        _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v26, v36, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal;
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v27, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
        v30 = v16;
LABEL_13:
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v30, v29);
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v22, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        return v28 & 1;
      }

      v31 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal;
      v32 = v16;
    }

    else
    {
      outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v22, v13, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = &v22[v24];
        v34 = v37;
        _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v33, v37, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn;
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v34, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
        v30 = v13;
        goto LABEL_13;
      }

      v31 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn;
      v32 = v13;
    }
  }

  else
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v22, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    if (!swift_getEnumCaseMultiPayload())
    {
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v22[v24], v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow;
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      v30 = v19;
      goto LABEL_13;
    }

    v31 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow;
    v32 = v19;
  }

  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v32, v31);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMR);
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_9:
      type metadata accessor for AspireSimilarityPlaintextPacking(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v13[v15], v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  v18 = specialized static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v10, v7);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v54 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v48);
  v52 = &v45 - v7;
  v8 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v45 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v49 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v19 = *(v49 + 24);
  v20 = *(v16 + 56);
  v53 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&a1[v19], v18, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v21 = v54;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v54[v19], &v18[v20], &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMd;
    v24 = &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMR;
    v25 = v18;
LABEL_14:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, v23, v24);
    goto LABEL_15;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    goto LABEL_6;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v18[v20], v11, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v26 = specialized static AspireSimilaritySimilarityClientConfig.== infix(_:_:)(v14, v11);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = v49;
  v28 = *(v49 + 28);
  v29 = *(v48 + 48);
  v31 = v52;
  v30 = v53;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v53[v28], v52, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v21[v28], v31 + v29, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v32 = v51;
  v33 = *(v50 + 48);
  if (v33(v31, 1, v51) != 1)
  {
    v34 = v47;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31, v47, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    if (v33(v31 + v29, 1, v32) != 1)
    {
      v37 = v31 + v29;
      v38 = v46;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v37, v46, type metadata accessor for AspireSimilarityPlaintextPacking);
      v39 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v34, v38);
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v38, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v34, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      if ((v39 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v34, type metadata accessor for AspireSimilarityPlaintextPacking);
    goto LABEL_13;
  }

  if (v33(v31 + v29, 1, v32) != 1)
  {
LABEL_13:
    v23 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v24 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v25 = v31;
    goto LABEL_14;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
LABEL_18:
  if (*v30 == *v21)
  {
    v40 = *(v27 + 32);
    v41 = &v30[v40];
    v42 = v30[v40 + 4];
    v43 = &v21[v40];
    v44 = v21[v40 + 4];
    if (v42)
    {
      if (v44)
      {
LABEL_25:
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v35 & 1;
      }
    }

    else
    {
      if (*v41 != *v43)
      {
        LOBYTE(v44) = 1;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityClientConfig.== infix(_:_:)(void *a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v43);
  v47 = &v40 - v7;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v19 = *(v44 + 40);
  v20 = *(v16 + 56);
  v48 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v21 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v19, &v18[v20], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v24 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v25 = v18;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, v23, v24);
    goto LABEL_28;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v18[v20], v11, type metadata accessor for AspireHeEncryptionParameters);
  v26 = specialized static AspireHeEncryptionParameters.== infix(_:_:)(v14, v11);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v27 = v48;
  if (*v48 != *v21)
  {
    goto LABEL_28;
  }

  v28 = *(v44 + 44);
  v29 = *(v43 + 48);
  v30 = v47;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48 + v28, v47, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21 + v28, v30 + v29, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v31 = v46;
  v32 = *(v45 + 48);
  if (v32(v30, 1, v46) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v42, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v23 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v24 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v25 = v30;
    goto LABEL_7;
  }

  v34 = v30 + v29;
  v35 = v41;
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v34, v41, type metadata accessor for AspireSimilarityPlaintextPacking);
  v36 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v33, v35);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v35, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (*(v27 + 2) != *(v21 + 8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v27[2], *(v21 + 16)) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v27[4])
  {
    if (*(v21 + 32))
    {
      goto LABEL_26;
    }

    v37 = 0;
LABEL_25:
    if (v37 == *(v21 + 24))
    {
      goto LABEL_26;
    }

LABEL_28:
    v38 = 0;
    return v38 & 1;
  }

  v37 = v27[3];
  if ((*(v21 + 32) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v37)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v27[5], *(v21 + 40)) & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v38 & 1;
}

uint64_t specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v52 - v4;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v5 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v53 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  v55 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  v56 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  v57 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  v58 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  *v12 = 0;
  *(v12 + 8) = 256;
  v59 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  *(v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli) = MEMORY[0x277D84F90];
  v13 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  v60 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  *v13 = 0;
  *(v13 + 4) = 1;
  v61 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  *(v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel) = 2;
  swift_beginAccess();
  v15 = a1[2];
  v52 = a1[3];
  v14 = v52;
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v14;
  swift_beginAccess();
  v17 = a1[4];
  v16 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;
  swift_beginAccess();
  v19 = a1[6];
  v18 = a1[7];
  swift_beginAccess();
  *(v1 + 48) = v19;
  *(v1 + 56) = v18;
  v20 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  v21 = v54;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v20, v54, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v22 = v53;
  swift_beginAccess();

  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v21, v1 + v22, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  swift_beginAccess();
  *v7 = v25;
  v7[1] = v24;

  v26 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  *v8 = v28;
  v8[1] = v27;

  v29 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  v32 = v55;
  swift_beginAccess();
  *v32 = v31;
  v32[1] = v30;

  v33 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v56;
  swift_beginAccess();
  *v36 = v35;
  v36[1] = v34;

  v37 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v57;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  v41 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v39) = v41[8];
  LOBYTE(v41) = v41[9];
  v43 = v58;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v39;
  *(v43 + 9) = v41;
  v44 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v59;
  swift_beginAccess();
  *(v1 + v46) = v45;

  v47 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  LODWORD(v42) = *v47;
  LOBYTE(v47) = v47[4];
  v48 = v60;
  swift_beginAccess();
  *v48 = v42;
  *(v48 + 4) = v47;
  v49 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v49);
  v50 = v61;
  swift_beginAccess();
  *(v1 + v50) = a1;
  return v1;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [AspireSimilaritySimilarityMetric] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8CipherML016AspireSimilarityD6MetricOGMd, &_sSay8CipherML016AspireSimilarityD6MetricOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(uint64_t a1)
{
  result = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_102Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityClientConfig(uint64_t a1)
{
  type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityServerConfig(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityClientConfig?, type metadata accessor for AspireSimilaritySimilarityClientConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1)
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedDcrtPlaintextMatrix], type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityServerConfig?, type metadata accessor for AspireSimilaritySimilarityServerConfig, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityDbRow(uint64_t a1)
{
  type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [Float], MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt32](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireSimilarityPecPreprocessDbArgs(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for AspireSimilarityPecPreprocessDbArgs._StorageClass(uint64_t a1)
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityServerConfig?, type metadata accessor for AspireSimilaritySimilarityServerConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *CacheCleaner.__allocating_init(allowListLock:activeUseCaseTracker:cache:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t CacheCleaner.currentDate.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *CacheCleaner.init(allowListLock:activeUseCaseTracker:cache:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t CacheCleaner.run()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CacheCleaner.run(), 0, 0);
}

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
    v5[1] = CacheCleaner.run();

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

uint64_t CacheCleaner.cleanPirCaches()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CacheCleaner.cleanPirCaches(), 0, 0);
}

{
  v30 = v0;
  v27 = *(v0 + 16);
  v1 = v27[2];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v2 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v2 + 40) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;

  v12 = 0;
  v26 = result;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(result + 56) + (v15 << 6);
    if ((*(v16 + 56) & 1) != 0 && (*(v16 + 16) & 1) == 0)
    {
      v17 = (*(result + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v28 = *(v16 + 8);
      if (*(v16 + 32))
      {
        v20 = 10080;
      }

      else
      {
        v20 = *(v16 + 24);
      }

      v21 = v27[5];
      v22 = v27[6];
      LOBYTE(v29) = 0;
      type metadata accessor for SqliteCache(0);
      swift_allocObject();
      swift_bridgeObjectRetain_n();

      v23 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v18, v19, v28, v20, &v29, v21, v22);
      (*(*v23 + 152))(v23);

      result = v26;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v24 = *(v25 + 8);

  return v24();
}

uint64_t CacheCleaner.cleanConfigCache()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), 0, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 6);

  os_unfair_lock_unlock(v2 + 6);

  v0[10] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5();
  v3 = *(v1 + 24);
  v0[11] = v3;

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), v3, 0);
}

{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  (*(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;

  specialized _NativeDictionary.filter(_:)(partial apply for closure #1 in ActiveUseCaseTracker.activeUseCases.getter, v9, v8);

  v0[12] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5();
  v6(v2, v4);

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[10];
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v6 = v0[10];
    specialized Set._subtract<A>(_:)(v1);

    v3 = v6;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v0[12], v2);
  }

  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = CacheCleaner.cleanConfigCache();

  return Cache.prune(removingUsecases:)(v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *CacheCleaner.deinit()
{

  return v0;
}

uint64_t CacheCleaner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance CacheCleaner()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return CacheCleaner.run()();
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = specialized _NativeSet.extractSubset(using:count:)(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x22AA61F40](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x22AA61F40](v44, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AA61F40](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    outlined consume of Set<String>.Iterator._Variant(v13);
    return v5;
  }

  result = MEMORY[0x22AA61F40](v50, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return specialized _NativeSet.extractSubset(using:count:)(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t DatabaseTable<>.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v5[2] = AssociatedTypeWitness;
  v5[11] = type metadata accessor for Predicate();
  type metadata accessor for Optional();
  v5[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[13] = AssociatedConformanceWitness;
  v5[14] = *(AssociatedConformanceWitness + 8);
  Descriptor = type metadata accessor for FetchDescriptor();
  v5[15] = Descriptor;
  v5[16] = *(Descriptor - 8);
  v5[17] = swift_task_alloc();
  v5[18] = *(a4 + 8);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DatabaseTable<>.get(_:), v11, v10);
}

uint64_t DatabaseTable<>.get(_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  (*(v0[8] + 56))(v0[6], v0[7]);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  type metadata accessor for SortDescriptor();
  static Array._allocateUninitialized(_:)();
  FetchDescriptor.init(predicate:sortBy:)();
  ModelActor.modelContext.getter();
  v3 = dispatch thunk of ModelContext.fetch<A>(_:)();

  v0[3] = v3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  if (v0[4])
  {
    v4 = v0[13];
    v5 = v0[10];

    (*(v4 + 64))(v5, v4);
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v10 = 1;
  }

  v6 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v6, v10, 1, AssociatedTypeWitness);

  v8 = v0[1];

  return v8();
}

uint64_t DatabaseTable<>.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = *(AssociatedTypeWitness - 8);
  v5[12] = swift_task_alloc();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v9;
  v5[14] = v8;

  return MEMORY[0x2822009F8](DatabaseTable<>.set(key:value:), v9, v8);
}

uint64_t DatabaseTable<>.set(key:value:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  (*(v0[9] + 16))(v1, v0[3], v0[8]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[7];
    v41 = v0[5];
    v5 = v0[2];
    (*(v0[9] + 8))(v0[10], v0[8]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v7 = *(AssociatedTypeWitness - 8);
    swift_allocObject();
    v8 = static Array._adoptStorage(_:count:)();
    v0[19] = v8;
    (*(v7 + 16))(v9, v5, AssociatedTypeWitness);
    type metadata accessor for Array();
    swift_getTupleTypeMetadata2();
    v10 = static Array._allocateUninitialized(_:)();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = specialized Dictionary.init(dictionaryLiteral:)(v10, AssociatedTypeWitness, v4, AssociatedConformanceWitness);
    v0[20] = v12;

    v39 = (*(v41 + 64) + **(v41 + 64));
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = DatabaseTable<>.set(key:value:);
    v14 = v0[5];
    v15 = v0[4];
    v16 = v8;
    v17 = v12;
    v18 = v39;
  }

  else
  {
    v19 = v0[11];
    v20 = v0[7];
    v42 = v0[5];
    v37 = v0[12];
    v21 = v0[2];
    v36 = v21;
    (*(v19 + 32))(v37, v0[10], v20);
    v22 = swift_getAssociatedTypeWitness();
    getContiguousArrayStorageType<A>(for:)(v22, v22);
    v23 = *(v22 - 8);
    swift_allocObject();
    v40 = static Array._adoptStorage(_:count:)();
    v0[15] = v40;
    v24 = *(v23 + 16);
    v24(v25, v21, v22);
    type metadata accessor for Array();
    v26 = v20;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    v28 = static Array._adoptStorage(_:count:)();
    v30 = v29;
    v31 = *(TupleTypeMetadata2 + 48);
    v24(v29, v36, v22);
    (*(v19 + 16))(v30 + v31, v37, v26);
    type metadata accessor for Array();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = specialized Dictionary.init(dictionaryLiteral:)(v28, v22, v26, v32);
    v0[16] = v33;

    v38 = (*(v42 + 64) + **(v42 + 64));
    v34 = swift_task_alloc();
    v0[17] = v34;
    *v34 = v0;
    v34[1] = DatabaseTable<>.set(key:value:);
    v14 = v0[5];
    v15 = v0[4];
    v18 = v38;
    v16 = v40;
    v17 = v33;
  }

  return v18(v16, v17, v15, v14);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = DatabaseTable<>.set(key:value:);
  }

  else
  {
    v5 = DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[11] + 8))(v0[12], v0[7]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = v2[14];

    return MEMORY[0x2822009F8](DatabaseTable<>.set(key:value:), v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

{
  (*(v0[11] + 8))(v0[12], v0[7]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

CipherML::CacheStatus __swiftcall CacheStatus.init(cacheCapacity:elementCount:entryMinutesToLive:evictionPolicy:)(Swift::Int cacheCapacity, Swift::Int elementCount, Swift::Int entryMinutesToLive, CipherML::CacheEvictionPolicy evictionPolicy)
{
  v5 = *evictionPolicy;
  *v4 = cacheCapacity;
  *(v4 + 8) = elementCount;
  *(v4 + 16) = entryMinutesToLive;
  *(v4 + 24) = v5;
  result.entryMinutesToLive = entryMinutesToLive;
  result.elementCount = elementCount;
  result.cacheCapacity = cacheCapacity;
  result.evictionPolicy = evictionPolicy;
  return result;
}

uint64_t DatabaseTable<>.update(keys:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[11] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = *(AssociatedTypeWitness - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v5[18] = v9;
  v5[2] = v9;
  v5[19] = type metadata accessor for Predicate();
  type metadata accessor for Optional();
  v5[20] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[21] = AssociatedConformanceWitness;
  v5[22] = *(AssociatedConformanceWitness + 8);
  Descriptor = type metadata accessor for FetchDescriptor();
  v5[23] = Descriptor;
  v5[24] = *(Descriptor - 8);
  v5[25] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v5[26] = v12;
  v13 = *(v12 - 8);
  v5[27] = v13;
  v5[28] = *(v13 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = *(a4 + 8);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DatabaseTable<>.update(keys:with:), v15, v14);
}

uint64_t DatabaseTable<>.update(keys:with:)()
{
  if (MEMORY[0x22AA60BE0](v0[6], v0[26]))
  {
    v1 = 0;
    v2 = v0[27];
    v36 = v0[28];
    v3 = v0[21];
    v4 = v0[15];
    v51 = (v2 + 16);
    v45 = (v0[9] + 56);
    v46 = (v2 + 32);
    v44 = v0[19] - 8;
    v43 = (v4 + 48);
    v41 = (v4 + 32);
    v39 = (v3 + 80);
    v37 = (v3 + 72);
    v38 = (v4 + 16);
    v42 = (v4 + 8);
    v49 = v2;
    v47 = (v0[24] + 8);
    v48 = (v2 + 8);
    v40 = (v0[13] + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v17 = *(v49 + 16);
        v17(v0[31], v0[6] + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v1, v0[26]);
        v18 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v33 = v0[31];
        v34 = v0[26];
        v0[3] = result;
        v17 = *v51;
        (*v51)(v33, (v0 + 3), v34);
        swift_unknownObjectRelease();
        v18 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v50 = v17;
      v52 = v18;
      v53 = v1;
      v19 = v0[30];
      v21 = v0[19];
      v20 = v0[20];
      v22 = v0[9];
      v23 = v0[8];
      (*v46)(v19, v0[31], v0[26]);
      (*v45)(v19, v23, v22);
      (*(*v44 + 56))(v20, 0, 1, v21);
      type metadata accessor for SortDescriptor();
      static Array._allocateUninitialized(_:)();
      FetchDescriptor.init(predicate:sortBy:)();
      ModelActor.modelContext.getter();
      v24 = dispatch thunk of ModelContext.fetch<A>(_:)();
      v25 = v0[30];
      v26 = v0[26];
      v27 = v24;
      v28 = v0[14];
      v29 = v0[11];
      v55 = v0[7];

      v0[4] = v27;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Collection.first.getter();

      v30 = v0[5];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      MEMORY[0x22AA60910](v25, v55, v26, v29, AssociatedConformanceWitness);
      if ((*v43)(v28, 1, v29) == 1)
      {
        (*v40)(v0[14], v0[12]);
        if (v30)
        {
          ModelActor.modelContext.getter();
          dispatch thunk of ModelContext.delete<A>(_:)();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*v41)(v0[17], v0[14], v0[11]);
        if (v30)
        {
          (*v39)(v0[17], v0[18], v0[21]);
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = v0[29];
          v5 = v0[30];
          v7 = v0[26];
          v54 = v0[21];
          v9 = v0[17];
          v8 = v0[18];
          v10 = v0[16];
          v11 = v0[11];
          ModelActor.modelContext.getter();
          v50(v6, v5, v7);
          (*v38)(v10, v9, v11);
          (*v37)(v6, v10, v8, v54);
          dispatch thunk of ModelContext.insert<A>(_:)();
          swift_unknownObjectRelease();
        }

        (*v42)(v0[17], v0[11]);
      }

      v12 = v0[30];
      v13 = v0[26];
      v14 = v0[6];
      (*v47)(v0[25], v0[23]);
      (*v48)(v12, v13);
      v15 = MEMORY[0x22AA60BE0](v14, v13);
      v1 = v53 + 1;
    }

    while (v52 != v15);
  }

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v35 = v0[1];

  return v35();
}

uint64_t DatabaseTable<>.update(configs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DatabaseTable<>.update(configs:), v6, v5);
}

uint64_t DatabaseTable<>.update(configs:)()
{
  v9 = v0[5];
  v1 = v0[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v0[2] = v1;
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v2 = Array.init<A>(_:)();
  v0[9] = v2;
  v8 = (*(v9 + 64) + **(v9 + 64));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = DatabaseTable<>.update(configs:);
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return v8(v2, v5, v6, v4);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](DatabaseTable<>.update(configs:), v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void (*StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify;
}

double key path getter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  *&v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t key path setter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

void (*StoredEvaluationKeyConfig.serializedEvalKeyConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredEvaluationKeyConfig.serializedEvalKeyConfig.modify;
}

char *StoredEvaluationKeyConfig.init(key:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  v11 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data._Representation(a1, a2);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  v6 = Message.serializedData(partial:)();
  if (v12)
  {
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined consume of Data._Representation(a1, a2);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v8 = type metadata accessor for ObservationRegistrar();
    (*(*(v8 - 8) + 8))(v3 + v11, v8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v6;
    v9 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    swift_getKeyPath();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined consume of Data._Representation(a1, a2);
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined consume of Data._Representation(v13, v9);
  }

  return v3;
}

uint64_t key path setter for StoredEvaluationKeyConfig.persistentBackingData : StoredEvaluationKeyConfig(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of NetworkManager(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  outlined init with take of LocalizedError(v5, v3 + 16);
  return swift_endAccess();
}

void (*StoredEvaluationKeyConfig.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return StoredEvaluationKeyConfig.persistentBackingData.modify;
}

uint64_t *StoredEvaluationKeyConfig.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v2 + 2);
  outlined init with take of LocalizedError(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t *StoredEvaluationKeyConfig.init(backingData:)(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  outlined init with take of LocalizedError(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t StoredEvaluationKeyConfig.value.getter()
{
  v0 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t StoredEvaluationKeyConfig.updateValue(to:)()
{
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  result = Message.serializedData(partial:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

double protocol witness for StoredType.key.getter in conformance StoredEvaluationKeyConfig@<D0>(_OWORD *a1@<X8>)
{
  *&v4 = v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v4;
  return result;
}

uint64_t protocol witness for StoredType.init(key:value:) in conformance StoredEvaluationKeyConfig(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  StoredEvaluationKeyConfig.init(key:value:)(v3, v4, a2);
  return v5;
}

uint64_t protocol witness for StoredType.updateValue(to:) in conformance StoredEvaluationKeyConfig()
{
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  result = Message.serializedData(partial:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

uint64_t closure #2 in static EvaluationKeyConfigTable.equalityPredicate(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a4);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Data and conformance Data();
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t EvaluationKeyConfigTable.prune(keeping:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR);
  v2[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for EvaluationKeyConfigTable();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, v4, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](EvaluationKeyConfigTable.prune(keeping:), v6, v5);
}

uint64_t EvaluationKeyConfigTable.prune(keeping:)()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  *(swift_task_alloc() + 16) = v5;
  v0[2] = type metadata accessor for StoredEvaluationKeyConfig(0);
  Predicate.init(_:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, v6, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  ModelActor.modelContext.getter();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[5], &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR);

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  (*(v0[7] + 8))();

  v8 = v0[1];

  return v8();
}

uint64_t closure #2 in EvaluationKeyConfigTable.prune(keeping:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance Set<A>, &_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR, MEMORY[0x277D83B68]);
  lazy protocol witness table accessor for type Data and conformance Data();
  v18 = v23;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v26 + 8))(v9, v18);
  (*(v11 + 8))(v13, v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMd, &_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMR);
  v20 = v27;
  v27[3] = v19;
  v20[4] = lazy protocol witness table accessor for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>();
  __swift_allocate_boxed_opaque_existential_1(v20);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR, MEMORY[0x277CC8FA0]);
  v21 = v24;
  static PredicateExpressions.build_Negation<A>(_:)();
  return (*(v25 + 8))(v17, v21);
}

uint64_t protocol witness for DatabaseTable.update(keys:with:) in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.update(keys:with:)(a1, a2);
}

uint64_t protocol witness for DatabaseTable.get(_:) in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.get(_:)(a1, v4, v5);
}

uint64_t key path getter for StoredConfig.usecase : StoredConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StoredConfig.usecase : StoredConfig(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t StoredConfig.usecase.init(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t StoredConfig.usecase.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t StoredConfig.usecase.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in StoredConfig.usecase.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*StoredConfig.usecase.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return StoredConfig.usecase.modify;
}

void StoredConfig.usecase.modify(void **a1, char a2)
{
  v3 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t key path getter for StoredConfig.serializedConfig : StoredConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StoredConfig.serializedConfig : StoredConfig(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.init(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getKeyPath();
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return outlined consume of Data._Representation(a1, a2);
}

uint64_t StoredConfig.serializedConfig.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t StoredConfig.serializedConfig.setter(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t closure #1 in StoredEvaluationKeyConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a5, 255, a6, a7);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*StoredConfig.serializedConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredConfig.serializedConfig.modify;
}

void StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v6[2] = (*a1)[4];
  v8 = *v6;
  v7 = v6[1];
  swift_getKeyPath();
  if (a2)
  {
    outlined copy of Data._Representation(v8, v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v8, v7);

    outlined consume of Data._Representation(*v6, v6[1]);
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v8, v7);
  }

  free(v6);
}

uint64_t StoredEvaluationKeyConfig.__allocating_init(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  a4(a1, a2, a3);
  return v8;
}

char *StoredConfig.init(key:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for StoredConfig(0);
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  v4 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  type metadata accessor for AspireApiConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  v5 = Message.serializedData(partial:)();
  if (v12)
  {
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireApiConfig);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v7 = type metadata accessor for ObservationRegistrar();
    (*(*(v7 - 8) + 8))(v3 + v4, v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    swift_getKeyPath();
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireApiConfig);
    outlined consume of Data._Representation(v8, v9);
  }

  return v3;
}

uint64_t StoredEvaluationKeyConfig.persistentBackingData.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  a2(a1, v2 + 16);
  return swift_endAccess();
}

void (*StoredConfig.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return StoredEvaluationKeyConfig.persistentBackingData.modify;
}

void StoredEvaluationKeyConfig.persistentBackingData.modify(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of NetworkManager(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v5 + 16));
    a3(v4 + 5, v5 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v5 + 16));
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t static StoredConfig.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  type metadata accessor for Schema.PropertyMetadata();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_225022920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, 255, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.externalStorage.getter();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v1;
}

uint64_t *StoredConfig.__allocating_init(backingData:)(void *a1)
{
  v3 = swift_allocObject();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  *&v5 = v1;
  *(&v5 + 1) = v1;
  v6 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  v7 = v6;
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of NetworkManager(a1, &v5);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  outlined init with take of LocalizedError(&v5, (v3 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t *StoredConfig.init(backingData:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoredConfig(0);
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  v6[0] = v4;
  v6[1] = v4;
  v7 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  v8 = v7;
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of NetworkManager(a1, v6);
  (*(*v2 + 248))(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t StoredEvaluationKeyConfig.deinit(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v3 = *a1;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t StoredEvaluationKeyConfig.__deallocating_deinit(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v3 = *a1;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t StoredConfig.value.getter()
{
  v1 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for AspireApiConfig(0);
  (*(*v0 + 184))();
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t StoredConfig.updateValue(to:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
    result = Message.serializedData(partial:)();
    if (!v2)
    {
      return (*(*v1 + 192))(result);
    }
  }

  return result;
}

uint64_t protocol witness for StoredType.key.getter in conformance StoredConfig@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 136))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for StoredType.value.getter in conformance StoredConfig()
{
  v1 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for AspireApiConfig(0);
  (*(*v0 + 184))();
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t protocol witness for StoredType.updateValue(to:) in conformance StoredConfig(uint64_t a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
    result = Message.serializedData(partial:)();
    if (!v2)
    {
      return (*(*v1 + 192))(result);
    }
  }

  return result;
}

uint64_t closure #2 in static ConfigTable.equalityPredicate(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a4);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR, MEMORY[0x277CC9080]);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t ConfigTable.usedEvalKeyConfigHashes()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMR);
  v1[4] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMR);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for ConfigTable();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v3, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ConfigTable.usedEvalKeyConfigHashes(), v5, v4);
}

uint64_t ConfigTable.usedEvalKeyConfigHashes()(uint64_t a1, uint64_t a2)
{
  v2[2] = MEMORY[0x277D84FA0];
  v3 = v2[4];
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, a2, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  ModelActor.modelContext.getter();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMR);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  FetchDescriptor.init(predicate:sortBy:)();
  *(swift_task_alloc() + 16) = v2 + 2;
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  (*(v2[6] + 8))(v2[7], v2[5]);

  v5 = v2[2];

  v6 = v2[1];

  return v6(v5);
}

uint64_t closure #1 in ConfigTable.usedEvalKeyConfigHashes()(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for AspireApiConfig(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*(*a1 + 184))(v15);
  v29 = v18;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined destroy of AspireHeEvaluationKeyConfig(v17, type metadata accessor for AspireApiConfig);
    v20 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    result = (*(*(v20 - 8) + 48))(v12, 1, v20);
    if (result != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of AspireApiConfig(v12, v9, type metadata accessor for AspireApiPECConfig);
        v21 = *(v9 + 4);
        v22 = *(v9 + 5);
        outlined copy of Data._Representation(v21, v22);
        v23 = type metadata accessor for AspireApiPECConfig;
        v24 = v9;
      }

      else
      {
        outlined init with take of AspireApiConfig(v12, v6, type metadata accessor for AspireApiPIRConfig);
        v25 = (*&v6[*(v4 + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
        swift_beginAccess();
        v21 = *v25;
        v22 = v25[1];
        outlined copy of Data._Representation(v21, v22);
        v23 = type metadata accessor for AspireApiPIRConfig;
        v24 = v6;
      }

      outlined destroy of AspireHeEvaluationKeyConfig(v24, v23);
      specialized Set._Variant.insert(_:)(&v28, v21, v22);
      return outlined consume of Data._Representation(v28, v29);
    }
  }

  return result;
}

void *EvaluationKeyConfigTable.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v3 = DefaultSerialModelExecutor.init(modelContext:)();
  v4 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598], MEMORY[0x277CDD590]);
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = a1;
  return v2;
}

void *EvaluationKeyConfigTable.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598], MEMORY[0x277CDD590]);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a1;
  return v2;
}

uint64_t EvaluationKeyConfigTable.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t EvaluationKeyConfigTable.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DatabaseTable.update(keys:with:) in conformance ConfigTable(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.update(keys:with:)(a1, a2);
}

uint64_t protocol witness for DatabaseTable.get(_:) in conformance ConfigTable(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.get(_:)(a1, v4, v5);
}

uint64_t Cache.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Cache.init(modelContainer:)(a1);
  return v2;
}

void *Cache.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();

  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598], MEMORY[0x277CDD590]);
  v2[4] = v4;
  v2[5] = v5;
  v2[6] = a1;
  type metadata accessor for ConfigTable();
  v6 = swift_allocObject();
  swift_allocObject();
  swift_retain_n();
  ModelContext.init(_:)();
  swift_allocObject();
  v6[2] = DefaultSerialModelExecutor.init(modelContext:)();
  v6[3] = v5;
  v6[4] = a1;
  v2[2] = v6;
  type metadata accessor for EvaluationKeyConfigTable();
  v7 = swift_allocObject();
  swift_allocObject();

  ModelContext.init(_:)();
  swift_allocObject();
  v8 = DefaultSerialModelExecutor.init(modelContext:)();

  v7[2] = v8;
  v7[3] = v5;
  v7[4] = a1;
  v2[3] = v7;
  return v2;
}

uint64_t Cache.prune(removingUsecases:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for AspireApiConfig(0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  type metadata accessor for Cache();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Cache and conformance Cache, v4, type metadata accessor for Cache, &protocol conformance descriptor for Cache);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v6;
  v2[22] = v5;

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v6, v5);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[40] = a1;
    v8 = v4[21];
    v9 = v4[22];

    return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v8, v9);
  }
}

uint64_t Cache.prune(removingUsecases:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v2 + 32);
  *(v0 + 336) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 192) = v7;
    *(v0 + 200) = v9;
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);
    v13 = (*(v8 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    *(v0 + 208) = *v13;
    *(v0 + 216) = v13[1];
    *(v0 + 224) = *(v3 + 16);
    (*(v1 + 56))(v11, 1, 1, v12);
    type metadata accessor for ConfigTable();
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v14, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);

    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 232) = v16;
    *(v0 + 240) = v15;

    return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v16, v15);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = Cache.prune(removingUsecases:);

    return ConfigTable.usedEvalKeyConfigHashes()();
  }
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[20], v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[19];
  if (v4 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[35] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[36] = v9;
    v10 = swift_task_alloc();
    v0[37] = v10;
    *v10 = v0;
    v11 = Cache.prune(removingUsecases:);
  }

  else
  {
    v12 = v0[18];
    outlined init with take of AspireApiConfig(v7, v12, type metadata accessor for AspireApiConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[31] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMd, &_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMR);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_225022960;
    v16 = (v15 + v14);
    v17 = v13[14];
    *v16 = v6;
    v16[1] = v5;
    _s8CipherML15AspireApiConfigVWOcTm_0(v12, v16 + v17, type metadata accessor for AspireApiConfig);

    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(v15);
    v0[32] = v9;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
    swift_deallocClassInstance();
    v10 = swift_task_alloc();
    v0[33] = v10;
    *v10 = v0;
    v11 = Cache.prune(removingUsecases:);
  }

  v10[1] = v11;

  return specialized DatabaseTable<>.update(keys:with:)(inited, v9);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = v2[31];

  swift_setDeallocating();
  outlined destroy of String(v3 + 32);
  v4 = v2[30];
  v5 = v2[29];
  if (v0)
  {
    v6 = Cache.prune(removingUsecases:);
  }

  else
  {
    v6 = Cache.prune(removingUsecases:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v2 = *v1;
  v2[38] = v0;

  v3 = v2[35];

  swift_setDeallocating();
  outlined destroy of String(v3 + 32);
  if (v0)
  {
    v4 = v2[29];
    v5 = v2[30];
    v6 = Cache.prune(removingUsecases:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v4 = v2[21];
    v5 = v2[22];
    v6 = Cache.prune(removingUsecases:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  outlined destroy of AspireHeEvaluationKeyConfig(v0[18], type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{
  outlined destroy of AspireHeEvaluationKeyConfig(v0[18], type metadata accessor for AspireApiConfig);
  v0[39] = v0[34];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v0[39] = v0[38];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = Cache.prune(removingUsecases:);
  v2 = *(v0 + 320);

  return EvaluationKeyConfigTable.prune(keeping:)(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Cache.prune(removingUsecases:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v5 = (*(v3 + 192) - 1) & *(v3 + 192);
  if (v5)
  {
    v6 = *(v3 + 112);
LABEL_7:
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    v8 = *(v3 + 160);
    v9 = *(v3 + 128);
    v10 = *(v3 + 136);
    v11 = *(v3 + 120);
    v12 = (*(v6 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v5)))));
    *(v3 + 208) = *v12;
    *(v3 + 216) = v12[1];
    *(v3 + 224) = *(v11 + 16);
    (*(v10 + 56))(v8, 1, 1, v9);
    type metadata accessor for ConfigTable();
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v13, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);

    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v15;
    *(v3 + 232) = v14;
    *(v3 + 240) = v15;
    a1 = Cache.prune(removingUsecases:);
    a2 = v14;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      if (v7 >= (((1 << *(v3 + 336)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v3 + 112);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v16 = swift_task_alloc();
    *(v3 + 184) = v16;
    *v16 = v3;
    v16[1] = Cache.prune(removingUsecases:);

    return ConfigTable.usedEvalKeyConfigHashes()();
  }
}

uint64_t Cache.getConfigs(for:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AspireApiKeyStatus(0);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for AspireApiPIRConfig(0);
  v3[17] = swift_task_alloc();
  type metadata accessor for AspireApiPECConfig(0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiConfig(0);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for AspireApiConfigResponse(0);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  type metadata accessor for Cache();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Cache and conformance Cache, v8, type metadata accessor for Cache, &protocol conformance descriptor for Cache);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[28] = v10;
  v3[29] = v9;

  return MEMORY[0x2822009F8](Cache.getConfigs(for:), v10, v9);
}

uint64_t Cache.getConfigs(for:)()
{
  v1 = v0[27];
  v2 = v0[6];
  v3 = MEMORY[0x277D84F90];
  *v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1[1] = v3;
  UnknownStorage.init()();
  v4 = *(v2 + 16);
  v0[30] = v4;
  if (v4)
  {
    v0[31] = v3;
    v0[32] = 0;
    v5 = v0[6];
    v6 = *(v5 + 32);
    v0[33] = v6;
    v7 = *(v5 + 40);
    v0[34] = v7;

    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = Cache.getConfigs(for:);
    v9 = v0[20];

    return specialized DatabaseTable<>.get(_:)(v9, v6, v7);
  }

  else
  {
    outlined init with take of AspireApiConfig(v0[27], v0[5], type metadata accessor for AspireApiConfigResponse);
    (*(v0[26] + 56))(v0[5], 0, 1, v0[25]);

    v11 = v0[1];

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = Cache.getConfigs(for:);
  }

  else
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = Cache.getConfigs(for:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v43 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.daemon);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[34];
    if (v5)
    {
      v7 = v0[33];
      v8 = v0[27];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v42 = v10;
      *v9 = 136446210;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v42);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_224E26000, v3, v4, "Missing cached config for useCase '%{public}s'.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA61F40](v10, -1, -1);
      MEMORY[0x22AA61F40](v9, -1, -1);
    }

    else
    {
      v8 = v0[27];
    }

LABEL_17:
    outlined destroy of AspireHeEvaluationKeyConfig(v8, type metadata accessor for AspireApiConfigResponse);
    (*(v0[26] + 56))(v0[5], 1, 1, v0[25]);

    v36 = v0[1];

    return v36();
  }

  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[19];
  outlined init with take of AspireApiConfig(v1, v15, type metadata accessor for AspireApiConfig);
  _s8CipherML15AspireApiConfigVWOcTm_0(v15, v16, type metadata accessor for AspireApiConfig);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, v12, isUniquelyReferenced_nonNull_native);
  *v14 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v15, v17, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v19 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.daemon);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[34];
    if (v23)
    {
      v25 = v0[33];
      v8 = v0[27];
      v26 = v0[24];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136446210;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v42);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_224E26000, v21, v22, "Missing evaluationKeyConfig hash for useCase '%{public}s'.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA61F40](v28, -1, -1);
      MEMORY[0x22AA61F40](v27, -1, -1);
    }

    else
    {
      v8 = v0[27];
      v26 = v0[24];
    }

    outlined destroy of AspireHeEvaluationKeyConfig(v26, type metadata accessor for AspireApiConfig);
    goto LABEL_17;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v0[18];
    outlined init with take of AspireApiConfig(v31, v32, type metadata accessor for AspireApiPECConfig);
    v34 = *(v32 + 32);
    v33 = *(v32 + 40);
    outlined copy of Data._Representation(v34, v33);
    v35 = type metadata accessor for AspireApiPECConfig;
  }

  else
  {
    v38 = v0[16];
    v32 = v0[17];
    outlined init with take of AspireApiConfig(v31, v32, type metadata accessor for AspireApiPIRConfig);
    v39 = (*(v32 + *(v38 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v34 = *v39;
    v33 = v39[1];
    outlined copy of Data._Representation(v34, v33);
    v35 = type metadata accessor for AspireApiPIRConfig;
  }

  outlined destroy of AspireHeEvaluationKeyConfig(v32, v35);
  v0[37] = v34;
  v0[38] = v33;
  v40 = swift_task_alloc();
  v0[39] = v40;
  *v40 = v0;
  v40[1] = Cache.getConfigs(for:);
  v41 = v0[12];

  return specialized DatabaseTable<>.get(_:)(v41, v34, v33);
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = Cache.getConfigs(for:);
  }

  else
  {
    v5 = Cache.getConfigs(for:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v45 = v0;
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v3 = v0[37];
    v2 = v0[38];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.daemon);
    outlined copy of Data._Representation(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined consume of Data._Representation(v3, v2);
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[37];
    v8 = v0[38];
    v10 = v0[27];
    v11 = v0[24];
    if (v7)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v44 = v13;
      *v12 = 136446210;
      outlined copy of Data._Representation(v9, v8);
      v14 = Data.description.getter();
      v42 = v10;
      v16 = v15;
      outlined consume of Data._Representation(v9, v8);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v44);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_224E26000, v5, v6, "Cache missing evalKeyConfigHash '%{public}s'.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA61F40](v13, -1, -1);
      MEMORY[0x22AA61F40](v12, -1, -1);

      outlined consume of Data._Representation(v9, v8);
      outlined destroy of AspireHeEvaluationKeyConfig(v11, type metadata accessor for AspireApiConfig);
      v18 = v42;
    }

    else
    {
      outlined consume of Data._Representation(v0[37], v0[38]);

      outlined destroy of AspireHeEvaluationKeyConfig(v11, type metadata accessor for AspireApiConfig);
      v18 = v10;
    }

    outlined destroy of AspireHeEvaluationKeyConfig(v18, type metadata accessor for AspireApiConfigResponse);
    v32 = 1;
    goto LABEL_14;
  }

  v19 = v0[15];
  v21 = v0[10];
  v20 = v0[11];
  outlined init with take of AspireApiConfig(v1, v19, type metadata accessor for AspireHeEvaluationKeyConfig);
  *(swift_task_alloc() + 16) = v19;
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, 255, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
  static Message.with(_:)();

  _s8CipherML15AspireApiConfigVWOcTm_0(v20, v21, type metadata accessor for AspireApiKeyStatus);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v0[31]);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[15];
  v30 = v0[10];
  v29 = v0[11];
  v31 = v0[9];
  v41 = v0[32] + 1;
  v43 = v0[30];
  outlined consume of Data._Representation(v0[37], v0[38]);
  outlined destroy of AspireHeEvaluationKeyConfig(v29, type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspireHeEvaluationKeyConfig(v27, type metadata accessor for AspireApiConfig);
  v23[2] = v25 + 1;
  outlined init with take of AspireApiConfig(v30, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, type metadata accessor for AspireApiKeyStatus);
  *(v26 + 8) = v23;
  outlined destroy of AspireHeEvaluationKeyConfig(v28, type metadata accessor for AspireHeEvaluationKeyConfig);
  if (v41 == v43)
  {
    outlined init with take of AspireApiConfig(v0[27], v0[5], type metadata accessor for AspireApiConfigResponse);
    v32 = 0;
LABEL_14:
    (*(v0[26] + 56))(v0[5], v32, 1, v0[25]);

    v33 = v0[1];

    return v33();
  }

  v35 = v0[32] + 1;
  v0[31] = v23;
  v0[32] = v35;
  v36 = v0[6] + 16 * v35;
  v37 = *(v36 + 32);
  v0[33] = v37;
  v38 = *(v36 + 40);
  v0[34] = v38;

  v39 = swift_task_alloc();
  v0[35] = v39;
  *v39 = v0;
  v39[1] = Cache.getConfigs(for:);
  v40 = v0[20];

  return specialized DatabaseTable<>.get(_:)(v40, v37, v38);
}

{
  outlined destroy of AspireHeEvaluationKeyConfig(*(v0 + 216), type metadata accessor for AspireApiConfigResponse);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[24];
  outlined consume of Data._Representation(v0[37], v0[38]);
  outlined destroy of AspireHeEvaluationKeyConfig(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AspireHeEvaluationKeyConfig(v0[27], type metadata accessor for AspireApiConfigResponse);

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in Cache.getConfigs(for:)(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  _s8CipherML15AspireApiConfigVWOcTm_0(a2, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  v8 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v8], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiConfig(v7, &a1[v8], type metadata accessor for AspireHeEvaluationKeyConfig);
  return (*(v5 + 56))(&a1[v8], 0, 1, v4);
}

void *Cache.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Actor.unownedExecutor.getter in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = a3(a1, a2);
  v11 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a4, v10, a5, a6);

  return MEMORY[0x28212C8C8](v9, v11);
}

Swift::Int StoredEvaluationKeyConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *protocol witness for PersistentModel.init(backingData:) in conformance StoredEvaluationKeyConfig(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  v4[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v4 + 2);
  outlined init with take of LocalizedError(a1, (v4 + 2));
  swift_endAccess();
  return v4;
}

uint64_t protocol witness for PersistentModel.persistentBackingData.setter in conformance StoredEvaluationKeyConfig(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  outlined init with take of LocalizedError(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredEvaluationKeyConfig(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredEvaluationKeyConfig;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StoredEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StoredEvaluationKeyConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StoredEvaluationKeyConfig(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);

  return MEMORY[0x28212CAA0](v3, v4, v2, v5);
}

Swift::Int StoredConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredConfig(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StoredConfig()
{
  Hasher.init(_seed:)();
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StoredConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance StoredConfig()
{
  v0 = type metadata accessor for StoredConfig(0);
  v1 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  return MEMORY[0x22AA60770](v0, v1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StoredConfig(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    outlined copy of Data._Representation(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        outlined copy of Data._Representation(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      outlined copy of Data._Representation(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    outlined copy of Data._Representation(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    MEMORY[0x22AA5F1C0]();
    a3 = v44;
    closure #1 in static Data.== infix(_:_:)(v32, a2, v44, v50);
    outlined consume of Data._Representation(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  outlined copy of Data._Representation(v18, v17);
LABEL_60:
  closure #1 in static Data.== infix(_:_:)(v50, a2, a3, &v49);
  outlined consume of Data._Representation(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  outlined consume of Data._Representation(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  outlined copy of Data._Representation(v39, *(&v39 + 1));
  return 0;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_68;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              outlined copy of Data._Representation(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            outlined copy of Data._Representation(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              outlined copy of Data._Representation(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              MEMORY[0x22AA5F1C0]();
              v7 = v41;
              a2 = v42;
              closure #1 in static Data.== infix(_:_:)(v34, v41, v42, v50);
              result = outlined consume of Data._Representation(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            outlined copy of Data._Representation(v20, v19);
            v13 = v46;
          }

          closure #1 in static Data.== infix(_:_:)(v50, v7, a2, &v49);
          result = outlined consume of Data._Representation(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = outlined copy of Data._Representation(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x22AA60BC0](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x22AA60BF0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t specialized Cache.__allocating_init(cacheFile:)(uint64_t a1)
{
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  MEMORY[0x28223BE20](v2 - 8);
  v34[1] = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  v14 = type metadata accessor for ModelConfiguration();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v35 = v34 - v19;
  v37 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    ModelConfiguration.init(isStoredInMemoryOnly:)();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v20 = (*(v8 + 16))(v10, v13, v7);
    MEMORY[0x22AA607B0](v20);
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v8 + 8))(v13, v7);
  }

  v21 = v35;
  (*(v15 + 32))(v35, v17, v14);
  v22 = type metadata accessor for ModelContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_225022920;
  v24 = type metadata accessor for StoredConfig(0);
  v25 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  v26 = type metadata accessor for StoredEvaluationKeyConfig(0);
  v27 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  *(v23 + 48) = v26;
  *(v23 + 56) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMd, &_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_225022960;
  *(v28 + 56) = v14;
  *(v28 + 64) = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ModelConfiguration and conformance ModelConfiguration, 255, MEMORY[0x277CDD500], MEMORY[0x277CDD4F8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  (*(v15 + 16))(boxed_opaque_existential_1, v21, v14);
  v30 = v36;
  v31 = ModelContainer.__allocating_init(for:configurations:)();
  if (!v30)
  {
    v32 = v31;
    type metadata accessor for Cache();
    v22 = swift_allocObject();
    Cache.init(modelContainer:)(v32);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v15 + 8))(v21, v14);
  return v22;
}

uint64_t lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static StoredEvaluationKeyConfig.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_225022920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, 255, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t outlined destroy of AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AspireApiConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for StoredEvaluationKeyConfig(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EvaluationKeyConfigTable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, a2, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StoredConfig(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ConfigTable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, a2, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of DatabaseTable.update(keys:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DatabaseTable.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EvaluationKeyConfigTable.prune(keeping:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v6(a1);
}

uint64_t type metadata completion function for StoredEvaluationKeyConfig(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConfigTable.usedEvalKeyConfigHashes()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v4();
}

uint64_t dispatch thunk of Cache.prune(removingUsecases:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v6(a1);
}

uint64_t dispatch thunk of Cache.getConfigs(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v8(a1, a2);
}

uint64_t _s8CipherML15AspireApiConfigVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMd, &_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR);
    lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance <> Set<A>, lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83B70]);
    lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance <> Set<A>, lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t dispatch thunk of KeyStorage.get(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyStorage.set(group:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyStorage.synchronize()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v7(a1, a2);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return MEMORY[0x28211CA28]();
}

{
  return MEMORY[0x28211CA30]();
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D088](percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return MEMORY[0x28211D2B0]();
}

{
  return MEMORY[0x28211D2C0]();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Connection.run(_:)()
{
  return MEMORY[0x2821D02A0]();
}

{
  return MEMORY[0x2821D02A8]();
}

Swift::String __swiftcall Expressible.asSQL()()
{
  v0 = MEMORY[0x2821D0328]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return MEMORY[0x2821D0338]();
}

{
  return MEMORY[0x2821D0340]();
}

uint64_t < infix<A>(_:_:)()
{
  return MEMORY[0x2821D0358]();
}

{
  return MEMORY[0x2821D0360]();
}

uint64_t <- infix<A>(_:_:)()
{
  return MEMORY[0x2821D0378]();
}

{
  return MEMORY[0x2821D0380]();
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return MEMORY[0x28217E280]();
}

{
  return MEMORY[0x28217E288]();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)()
{
  return MEMORY[0x28217E290]();
}

{
  return MEMORY[0x28217E298]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)()
{
  return MEMORY[0x28217E358]();
}

{
  return MEMORY[0x28217E360]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x28217E438]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9A8]();
}

{
  return MEMORY[0x2821FD9F0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAE0]();
}

{
  return MEMORY[0x2821FDB28]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA8]();
}