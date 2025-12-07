BOOL AttachmentLedger_CreateTopicResponse.hasTopicConfig.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_ResponseStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t AttachmentLedger_CapabilityFlag.rawValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AttachmentLedger_CapabilityFlag@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AttachmentLedger_CapabilityFlag()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AttachmentLedger_CapabilityFlag@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AttachmentLedger_CapabilityFlag(void *a1@<X8>)
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

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CapabilityFlag(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_CapabilityFlag(uint64_t *a1, uint64_t *a2)
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

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.baseBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 36), v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_MMCSMetadata.baseBlob : AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 36), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_MMCSMetadata.baseBlob : AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v8 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_MMCSMetadata.baseBlob.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.baseBlob.modify;
}

uint64_t AttachmentLedger_MMCSMetadata.progressBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 40), v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_MMCSMetadata.progressBlob : AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 40), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_MMCSMetadata.progressBlob : AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v8 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AttachmentLedger_MMCSMetadata.progressBlob.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.progressBlob.modify;
}

void AttachmentLedger_MMCSMetadata.progressBlob.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_SubscribeResponse.InitializeAck.hasAuthPutMaterials.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 40), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t AttachmentLedger_MMCSMetadata.referenceSignature.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t AttachmentLedger_MMCSMetadata.referenceSignature.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.body.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.body.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1AEE0C200;
  *(a1 + 48) = xmmword_1AEE0C200;
  v2 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  UnknownStorage.init()();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);

  return v7(v5, 1, 1, v4);
}

uint64_t AttachmentLedger_AttachmentMetadata.encryptionSlots.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.mmcsMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 36), v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1AEE0C200;
  *(a1 + 48) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v9 = *(v7 + 36);
  v10 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v11 = *(*(v10 - 8) + 56);
  v11(a1 + v9, 1, 1, v10);
  v11(a1 + *(v7 + 40), 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_AttachmentMetadata.mmcsMetadata : AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_MMCSMetadata);
  v8 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_MMCSMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = xmmword_1AEE0C200;
    *(v14 + 48) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v17 = *(v9 + 36);
    v18 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    v19 = *(*(v18 - 8) + 56);
    v19(v14 + v17, 1, 1, v18);
    v19(v14 + *(v9 + 40), 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  return AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify;
}

void AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_MMCSMetadata.hasBaseBlob.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 36), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t AttachmentLedger_MMCSMetadata.clearBaseBlob()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_AttachmentMetadata.status.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.metadata.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

uint64_t AttachmentLedger_AttachmentMetadata.metadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_MMCSMetadata.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_AttachmentMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = xmmword_1AEE0C200;
  v2 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  UnknownStorage.init()();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t AttachmentLedger_AuthPutMaterials.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.signedAuthToken.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.signedAuthToken.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.accountID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.accountID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 28), v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v7 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_AttachmentEncryption.encryptionID : AttachmentLedger_AttachmentEncryption@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 28), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_AttachmentEncryption.encryptionID : AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_EncryptionID);
  v8 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_AttachmentEncryption.encryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_AttachmentEncryption.encryptionID.modify;
}

void AttachmentLedger_AttachmentEncryption.encryptionID.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionMaterial.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionMaterial.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_ErrorResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  a1[2] = 0;
  a1[3] = 0;
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_CreateTopicRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_CreateTopicResponse.error : AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v8 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_CreateTopicResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_CreateTopicResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

BOOL AttachmentLedger_UpdateAttachmentResponse.hasError.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t key path getter for AttachmentLedger_CreateTopicResponse.topicConfig : AttachmentLedger_CreateTopicResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v6, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v9 = *(*(Topic - 8) + 48);
  if (v9(v6, 1, Topic) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_CreateTopicResponse.topicConfig : AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  MEMORY[0x1EEE9AC00](Topic);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v8 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, Topic);
}

uint64_t AttachmentLedger_CreateTopicResponse.topicConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(*(Topic - 8) + 56);

  return v5(v1 + v3, 0, 1, Topic);
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*AttachmentLedger_CreateTopicResponse.topicConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR) - 8) + 64);
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
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5[2] = Topic;
  v10 = *(Topic - 8);
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
  v15 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Topic) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, Topic) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  return AttachmentLedger_CreateTopicResponse.topicConfig.modify;
}

void AttachmentLedger_CreateTopicResponse.topicConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_AttachmentEncryption.clearEncryptionID()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_EncryptionID.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_EncryptionID.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeRequest.initialize.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v13 - v5, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = 0;
  *(a1 + 4) = v8;
  *(a1 + 5) = 0;
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  UnknownStorage.init()();
  v10 = *(v9 + 40);
  v11 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.initialize : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = 0;
  *(a1 + 4) = v2;
  *(a1 + 5) = 0;
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  UnknownStorage.init()();
  v4 = *(v3 + 40);
  v5 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*AttachmentLedger_SubscribeRequest.initialize.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      return AttachmentLedger_SubscribeRequest.initialize.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = v16;
  *(v13 + 3) = 0;
  *(v13 + 4) = v16;
  *(v13 + 5) = 0;
  UnknownStorage.init()();
  v17 = *(v10 + 40);
  v18 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  return AttachmentLedger_SubscribeRequest.initialize.modify;
}

void AttachmentLedger_SubscribeRequest.initialize.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.updateEncryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.updateEncryptionID : AttachmentLedger_SubscribeRequest@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a2 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.updateEncryptionID : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_EncryptionID);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeRequest.updateEncryptionID.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_EncryptionID);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeRequest.updateEncryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_EncryptionID(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeRequest.updateEncryptionID.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_EncryptionID);
  return AttachmentLedger_SubscribeRequest.updateEncryptionID.modify;
}

void AttachmentLedger_SubscribeRequest.updateEncryptionID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.attachmentAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.attachmentAck : AttachmentLedger_SubscribeRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.attachmentAck : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeRequest.attachmentAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeRequest.attachmentAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = 0;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeRequest.attachmentAck.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  return AttachmentLedger_SubscribeRequest.attachmentAck.modify;
}

void AttachmentLedger_SubscribeRequest.attachmentAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_SubscribeRequest.AttachmentAck.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 40), v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v7 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID : AttachmentLedger_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 40), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID : AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_EncryptionID);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify;
}

uint64_t AttachmentLedger_MMCSMetadata.clearProgressBlob()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.knownAttachments.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.uuids.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.initializeAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v15 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v8;
  *(a1 + 32) = v8;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  UnknownStorage.init()();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 40);
  v13 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.initializeAck : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.initializeAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  UnknownStorage.init()();
  v4 = *(v3 + 36);
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 40);
  v7 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*AttachmentLedger_SubscribeResponse.initializeAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      return AttachmentLedger_SubscribeResponse.initializeAck.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = v16;
  *(v13 + 32) = v16;
  UnknownStorage.init()();
  v17 = *(v10 + 36);
  v18 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  v19 = *(v10 + 40);
  v20 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return AttachmentLedger_SubscribeResponse.initializeAck.modify;
}

void AttachmentLedger_SubscribeResponse.initializeAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.attachmentUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  *(a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.attachmentUpdate : AttachmentLedger_SubscribeResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  *(a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.attachmentUpdate : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.attachmentUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  *(a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20)) = 0;
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.attachmentUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    *(v13 + *(v10 + 20)) = 0;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.attachmentUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  return AttachmentLedger_SubscribeResponse.attachmentUpdate.modify;
}

void AttachmentLedger_SubscribeResponse.attachmentUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.topicUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.topicUpdate : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.topicUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.topicUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.topicUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  return AttachmentLedger_SubscribeResponse.topicUpdate.modify;
}

void AttachmentLedger_SubscribeResponse.topicUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.error : AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 36), v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.error : AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.missingEncryptionIds.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials : AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 40), v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials : AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  return AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 24), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_EncryptionID);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify;
}

uint64_t AttachmentLedger_CreateTopicResponse.clearError()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0, &v6 - v2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v3, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v3, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    return 0;
  }

  return *v3;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v10 - v5);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v9 = *v6;
      goto LABEL_7;
    }

    result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v9 = xmmword_1AEE0C200;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  outlined copy of Data._Representation(*a1, v4);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *a2 = v3;
  a2[1] = v4;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.setter(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(v2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v12 = *v9;
      goto LABEL_13;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v12 = xmmword_1AEE0C200;
LABEL_13:
  *v6 = v12;
  return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    outlined copy of Data._Representation(**a1, v3);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    outlined consume of Data._Representation(*v2, v2[1]);
  }

  else
  {
    outlined destroy of NSObject?((*a1)[2], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v12 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v12;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  UnknownStorage.init()();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
LABEL_15:
    *v13 = xmmword_1AEE0C200;
    *(v13 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v16 = *(v10 + 36);
    v17 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

BOOL AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent(uint64_t a1, uint64_t a2)
{
  updated = lazy protocol witness table accessor for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent();

  return MEMORY[0x1EEE15710](a1, a2, updated);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.added : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.added : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  UnknownStorage.init()();
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  *a1 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  *a2 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_EncryptionID.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  a1(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    *v11 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.sequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_5:
    v12 = xmmword_1AEE0C200;
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    *(a1 + 40) = v12;
    v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
    UnknownStorage.init()();
    v9 = *(v8 + 36);
    v10 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  *(v13 + 40) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v16 = *(v10 + 36);
  v17 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *a1 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *a2 = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_15:
    *v11 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_5:
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = 0;
    v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
    UnknownStorage.init()();
    v9 = *(v8 + 28);
    v10 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_AttachmentEncryption.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1AEE0C200;
  *(a3 + 16) = 0;
  v5 = a1(0);
  UnknownStorage.init()();
  v6 = *(v5 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = 0;
  UnknownStorage.init()();
  v16 = *(v10 + 28);
  v17 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_15:
    *v11 = xmmword_1AEE0C200;
    *(v11 + 16) = 0;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 28), v5, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 28), v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.modify;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_5:
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
    UnknownStorage.init()();
    v9 = *(v8 + 28);
    v10 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    return (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  UnknownStorage.init()();
  v16 = *(v10 + 28);
  v17 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_15:
    *v11 = xmmword_1AEE0C200;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = 0;
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_ErrorResponse.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_ErrorResponse.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 28), v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 28), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v8 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.baseBlob.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.add.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v6, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  UnknownStorage.init()();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  return (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.add : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.add.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.add.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      return AttachmentLedger_UpdateAttachmentRequest.add.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v16 = *(updated + 24);
  v17 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  return AttachmentLedger_UpdateAttachmentRequest.add.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.add.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.remove.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v6, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.remove : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(updated - 8) + 56))(a2, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.remove.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.remove.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v5[4] = updated;
  v13 = *(updated - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    return AttachmentLedger_UpdateAttachmentRequest.remove.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  return AttachmentLedger_UpdateAttachmentRequest.remove.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.remove.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateEncryption.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v6, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  UnknownStorage.init()();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.updateEncryption : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateEncryption.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v5 = a1(0);
  UnknownStorage.init()();
  v6 = *(v5 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

void (*AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    UnknownStorage.init()();
    v16 = *(updated + 24);
    v17 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  return AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v6, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  UnknownStorage.init()();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.updateStatus : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateStatus.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    UnknownStorage.init()();
    v16 = *(updated + 24);
    v17 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  return AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v5, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v12 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v12;
  UnknownStorage.init()();
  v9 = *(v7 + 36);
  v10 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata : AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v8 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v17 = *(v9 + 36);
    v18 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  *a1 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  v8 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return (*(v5 + 56))(a2 + v8, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  UnknownStorage.init()();
  v3 = *(updated + 24);
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR) - 8) + 64);
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
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5[2] = updated;
  v10 = *(updated - 8);
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
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, updated) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v17 = *(updated + 24);
    v18 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, updated) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v5, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v8 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  v8 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v5 + 56))(a2 + v8, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1AEE0C200;
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR) - 8) + 64);
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
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5[2] = updated;
  v10 = *(updated - 8);
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
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, updated) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, updated) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.status.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.progressBlob.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.progressBlob.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentResponse.error : AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v8 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_UpdateAttachmentResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  UnknownStorage.init()();
  v3 = *(updated + 24);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.testOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenRequest + 32), v5, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v8 = *(*(AuthToken - 8) + 48);
  if (v8(v5, 1, AuthToken) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, AuthToken);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenRequest.testOption : AttachmentLedger_GetAuthTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenRequest + 32), v6, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v9 = *(*(AuthToken - 8) + 48);
  if (v9(v6, 1, AuthToken) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, AuthToken);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenRequest.testOption : AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(AuthToken - 8);
  MEMORY[0x1EEE9AC00](AuthToken);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  v8 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  return (*(v5 + 56))(a2 + v8, 0, 1, AuthToken);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.testOption.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(*(AuthToken - 8) + 56);

  return v5(v1 + v3, 0, 1, AuthToken);
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  a1(0);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_GetAuthTokenRequest.testOption.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR) - 8) + 64);
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
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5[2] = AuthToken;
  v10 = *(AuthToken - 8);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, AuthToken) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, AuthToken) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  return AttachmentLedger_GetAuthTokenRequest.testOption.modify;
}

void AttachmentLedger_GetAuthTokenRequest.testOption.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_GetAuthTokenResponse.hasAuthPutMaterials.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.Action(uint64_t a1, uint64_t a2)
{
  AuthToken = lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action();

  return MEMORY[0x1EEE15710](a1, a2, AuthToken);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AttachmentLedger_ResponseStatus@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AttachmentLedger_ResponseStatus@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedger_ResponseStatus(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment(uint64_t a1, uint64_t a2)
{
  AuthToken = lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment();

  return MEMORY[0x1EEE15710](a1, a2, AuthToken);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedger_ResponseStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AttachmentLedger_GetAuthTokenRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  UnknownStorage.init()();
  v3 = *(AuthTokenRequest + 32);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(*(AuthToken - 8) + 56);

  return v5(a1 + v3, 1, 1, AuthToken);
}

uint64_t static AttachmentLedger_ResponseStatus.allCases.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance AttachmentLedger_ResponseStatus@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenResponse.error : AttachmentLedger_GetAuthTokenResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 28), v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenResponse.error : AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v8 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAuthTokenResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenResponse.authPutMaterials : AttachmentLedger_GetAuthTokenResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 32), v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a2, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenResponse.authPutMaterials : AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v8 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.authPutMaterials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAuthTokenResponse.authPutMaterials.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  return AttachmentLedger_GetAuthTokenResponse.authPutMaterials.modify;
}

uint64_t AttachmentLedger_GetAuthTokenRequest.clearTestOption()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  UnknownStorage.init()();
  v3 = *(AuthTokenResponse + 28);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(AuthTokenResponse + 32);
  v6 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.topic.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.topic.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.attachmentUuid.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.attachmentUuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.error.getter@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v8 + 24), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_CreateTopicResponse.error : AttachmentLedger_CreateTopicResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v9 + 24), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v10 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a3, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0;
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAttachmentMetadataResponse.error : AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_ErrorResponse);
  v8 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAttachmentMetadataResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_GetAttachmentMetadataResponse.error.modify;
}

void AttachmentLedger_GetAttachmentMetadataResponse.error.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_ErrorResponse);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AttachmentMetadataResponse + 28), v5, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v7 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v12 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v12;
  UnknownStorage.init()();
  v9 = *(v7 + 36);
  v10 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata : AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v8 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2 + v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = xmmword_1AEE0C200;
    UnknownStorage.init()();
    v17 = *(v9 + 36);
    v18 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  return AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify;
}

void AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_CreateTopicResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  v5 = a1(0);
  UnknownStorage.init()();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(v5 + 28);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_ResponseStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_ResponseStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AEE0DC90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "IGNORED";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PLUGIN_BOUNCING";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "UNKNOWN_TOPIC";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INVALID_REQUEST";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NOT_AUTHORIZED";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "QUOTA_EXCEEDED";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MISSING_ENCRYPTION_IDS";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Initial";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SimulcastUploadInProgress";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SimulcastUploadSucceeded";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_MMCSMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_MMCSMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "baseBlob";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progressBlob";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ownerID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "originalAuthURL";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fileHash";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "referenceSignature";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_MMCSMetadata.BlobData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_MMCSMetadata.BlobData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "body";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionSlots";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mmcsMetadata";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "status";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "metadata";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AuthPutMaterials._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AuthPutMaterials._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signedAuthToken";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountID";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestURL";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tokenTtlInMilliseconds";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentAuthGetToken._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentAuthGetToken._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signedAuthToken";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accountID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tokenTtlInMilliseconds";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentEncryption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentEncryption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encryptionID";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionMaterial";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "version";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_ErrorResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_ErrorResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorMessage";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxRetries";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "retryIntervalInMilliseconds";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantIDSalt";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicConfig";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "maxSubscribeRpcStreamTries";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrySubscribeRpcStreamIntervalMillis";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxRefreshDataCryptorTries";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "refreshDataCryptorIntervalSeconds";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "gracefulShutdownWindowSeconds";
  *(v15 + 8) = 29;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updateEncryptionID";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attachmentAck";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localEncryptionID";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "knownEncryptionIDs";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "saltVerifiedSubscriberParticipantID";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "knownAttachments";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capabilities";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest.AttachmentAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest.AttachmentAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequenceNumber";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initializeAck";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentUpdate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicUpdate";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "otherSubscriberParticipantIDs";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "missingEncryptionIDs";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "attachments";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "authPutMaterials";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unchangedAttachmentMetadataUUID";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentMetadata";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantID";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SubscriberAdded";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SubscriberRemoved";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "added";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "removed";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "encryptionUpdated";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statusChanged";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 10;
  *v15 = "sequenceNumber";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentEncryptionVersion";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantID";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "encryptionMaterial";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlobVersion";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "add";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remove";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "updateEncryption";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "updateStatus";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryption";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topic";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attachmentUUIDs";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "testOption";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NewUploadToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NewDownloadToken";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TokenEnvironment._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TokenEnvironment._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "iCloud3";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "iCloud2";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Production";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TestOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TestOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "environment";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "overrideTtlInMilliseconds";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "authPutMaterials";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "signedAuthGetTokens";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentUUID";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attachmentMetadata";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_ResponseStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_ResponseStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AEE0DC90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "IGNORED";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "PLUGIN_BOUNCING";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "UNKNOWN_TOPIC";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "INVALID_REQUEST";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "NOT_AUTHORIZED";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "QUOTA_EXCEEDED";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "MISSING_ENCRYPTION_IDS";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 1000;
  *v22 = "OK";
  *(v22 + 8) = 2;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_Record._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_Record._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "seqNum";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "destinationParticipantIDs";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "encryptionID";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sentEpochMillis";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_KeyValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_KeyValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SequenceNumber._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SequenceNumber._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publisherParticipantID";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicTerminationAck";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicTerminationRequest";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest.Reason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest.Reason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "REASON_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INITIATOR_LEFT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribers._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribers._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "terminateTopic";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribers.TopicSubscribersInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribers.TopicSubscribersInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subscriberParticipantIDs";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SystemEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SystemEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicCreated";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicDestroyed";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordAck";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "knownSeqNums";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localEncryptionID";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "knownEncryptionIDs";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "subscriberParticipantID";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "saltVerifiedSubscriberParticipantID";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initializeAck";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "record";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicUpdate";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE14420;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "otherSubscriberParticipantIDs";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "topicCatchupSummary";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "missingEncryptionIDs";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "subscriberSeqNum";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "otherSaltVerifiedSubscriberParticipantIDs";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNums";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "participantID";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isSaltVerifiedID";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SubscriberAdded";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SubscriberRemoved";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MetadataChanged";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "record";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updatedEncryptionID";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishRequest.UpdatedEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishRequest.UpdatedEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "seqNumAck";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_UpsertTopicMetadataRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_UpsertTopicMetadataRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_UpsertTopicMetadataResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_UpsertTopicMetadataResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "participantIDSalt";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topicCategory";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicRequest.TopicCategory._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicRequest.TopicCategory._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "App";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "System";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ScreenShare";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "FastSync";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicConfig";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE14420;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "maxRecordDataSizeBytes";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxPublishQueueSize";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxDecryptionQueueSize";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "maxPrimaryRpcStreamTries";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retryPrimaryRpcStreamIntervalMillis";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "maxRefreshDataCryptorTries";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "refreshDataCryptorIntervalSeconds";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "gracefulShutdownWindowSeconds";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_FetchTopicsRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_FetchTopicsRequest._protobuf_nameMap);
  return _NameMap.init()();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_FetchTopicsResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_FetchTopicsResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topics";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_Datagram._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_Datagram._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "EncryptionID";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sentEpochMillis";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_SequenceNumber._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_SequenceNumber._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "senderParticipantID";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_EncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_EncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEE07B20;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEE07B20;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "developerMetadata";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}