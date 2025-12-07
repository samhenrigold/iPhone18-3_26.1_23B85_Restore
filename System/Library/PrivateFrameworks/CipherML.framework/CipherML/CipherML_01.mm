uint64_t key path setter for AMDPbHEQuery.pirQuery : AMDPbHEQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  outlined init with copy of AMDPbPIRConfig(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v15, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  outlined init with take of AMDPbPIRConfig(v14, a2 + v15, a7);
  v16 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t AMDPbHEQuery.pirQuery.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3 + v6, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v3 + v6, a2);
  v7 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

uint64_t AMDPbPECQuery.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_225022910;
  v2 = type metadata accessor for AMDPbPECQuery(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for AMDPbEvaluationKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*AMDPbHEQuery.pecQuery.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbPECQuery(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v14 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = xmmword_225022910;
    UnknownStorage.init()();
    v16 = *(v9 + 28);
    v17 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    v18 = *(v9 + 32);
    v19 = type metadata accessor for AMDPbEvaluationKey(0);
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    return AMDPbHEQuery.pecQuery.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    goto LABEL_15;
  }

  outlined init with take of AMDPbPIRConfig(v8, v12, type metadata accessor for AMDPbPECQuery);
  return AMDPbHEQuery.pecQuery.modify;
}

void AMDPbHEQuery.pirQuery.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig(v12, v11, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with take of AMDPbPIRConfig(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v12, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13 + v10, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with take of AMDPbPIRConfig(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t AMDPbHEQuery.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  v3 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t AMDPbHEReply.pirReply.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v7 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
LABEL_5:
    *a1 = MEMORY[0x277D84F90];
    type metadata accessor for AMDPbPIRReply(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    goto LABEL_5;
  }

  return outlined init with take of AMDPbPIRConfig(v6, a1, type metadata accessor for AMDPbPIRReply);
}

uint64_t key path getter for AMDPbHEReply.pirReply : AMDPbHEReply@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v7 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
LABEL_5:
    *a2 = MEMORY[0x277D84F90];
    type metadata accessor for AMDPbPIRReply(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    goto LABEL_5;
  }

  return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AMDPbPIRReply);
}

uint64_t key path setter for AMDPbHEReply.pecReply : AMDPbHEReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  outlined init with copy of AMDPbPIRConfig(a1, &v17 - v13, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  outlined init with take of AMDPbPIRConfig(v14, a2, a7);
  v15 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t AMDPbHEReply.pecReply.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v3, a2);
  v6 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*AMDPbHEReply.pirReply.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AMDPbPIRReply(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v12 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(v8, v11, type metadata accessor for AMDPbPIRReply);
      return AMDPbHEReply.pirReply.modify;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  }

  *v11 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  return AMDPbHEReply.pirReply.modify;
}

void AMDPbHEReply.pecReply.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[3], v10, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with take of AMDPbPIRConfig(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with take of AMDPbPIRConfig(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t AMDPbHEReply.pecReply.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v7 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbPIRConfig(v6, a1, type metadata accessor for AMDPbPECReply);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AMDPbPECReply(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AMDPbHEReply.pecReply : AMDPbHEReply@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v7 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AMDPbPECReply);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for AMDPbPECReply(0);
  return UnknownStorage.init()();
}

void (*AMDPbHEReply.pecReply.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AMDPbPECReply(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v12 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
LABEL_15:
    *v11 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return AMDPbHEReply.pecReply.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    goto LABEL_15;
  }

  outlined init with take of AMDPbPIRConfig(v8, v11, type metadata accessor for AMDPbPECReply);
  return AMDPbHEReply.pecReply.modify;
}

uint64_t AMDPbHEConfig.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

uint64_t AMDPbEvaluationKey.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v7 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AMDPbEvaluationKeyMetadata);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbEvaluationKey.metadata : AMDPbEvaluationKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v8 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AMDPbEvaluationKeyMetadata);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbEvaluationKey.metadata : AMDPbEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AMDPbEvaluationKeyMetadata);
  v8 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AMDPbEvaluationKeyMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbEvaluationKey.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AMDPbEvaluationKeyMetadata);
  v4 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AMDPbEvaluationKeyMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  return UnknownStorage.init()();
}

void (*AMDPbEvaluationKey.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
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
  v15 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AMDPbEvaluationKeyMetadata);
  }

  return AMDPbEvaluationKey.metadata.modify;
}

void AMDPbEvaluationKey.metadata.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AMDPbEvaluationKeyMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbEvaluationKeyMetadata);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AMDPbEvaluationKeyMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbEvaluationKey.hasMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 20), v3, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v5 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  return v6;
}

Swift::Void __swiftcall AMDPbEvaluationKey.clearMetadata()()
{
  v1 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v2 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AMDPbEvaluationKey.evaluationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbEvaluationKey.evaluationKey : AMDPbEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 24), v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for AspireHeSerializedRelinKey(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbEvaluationKey.evaluationKey : AMDPbEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspireHeSerializedEvaluationKey);
  v8 = *(type metadata accessor for AMDPbEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspireHeSerializedEvaluationKey);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbEvaluationKey.evaluationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbEvaluationKey.evaluationKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
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
  v15 = *(type metadata accessor for AMDPbEvaluationKey(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedGaloisKey(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedRelinKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  return AMDPbEvaluationKey.evaluationKey.modify;
}

void AMDPbEvaluationKey.evaluationKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireHeSerializedEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspireHeSerializedEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbEvaluationKey.hasEvaluationKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 24), v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v5 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  return v6;
}

Swift::Void __swiftcall AMDPbEvaluationKey.clearEvaluationKey()()
{
  v1 = *(type metadata accessor for AMDPbEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v2 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AMDPbFetchHEConfigs.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AMDPbFetchHEConfigs.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AMDPbEvaluationKey.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for AMDPbEvaluationKey(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t AMDPbPIRQuery.query.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AMDPbPIRQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v7 = type metadata accessor for AspirePirEncryptedIndices(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbPIRQuery.query : AMDPbPIRQuery@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AMDPbPIRQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v8 = type metadata accessor for AspirePirEncryptedIndices(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AspirePirEncryptedIndices);
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPIRQuery.query : AMDPbPIRQuery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspirePirEncryptedIndices);
  v8 = *(type metadata accessor for AMDPbPIRQuery(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspirePirEncryptedIndices);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbPIRQuery.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPIRQuery(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspirePirEncryptedIndices);
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbPIRQuery.query.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
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
  v15 = *(type metadata accessor for AMDPbPIRQuery(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspirePirEncryptedIndices);
  }

  return AMDPbPIRQuery.query.modify;
}

void AMDPbPIRQuery.query.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspirePirEncryptedIndices);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspirePirEncryptedIndices);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspirePirEncryptedIndices);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspirePirEncryptedIndices);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbHEKeyStatus.hasKeyConfig.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = (a3)(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AMDPbHEKeyStatus.clearKeyConfig()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void (*AMDPbPIRQuery.evaluationKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbEvaluationKey(0);
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
  v15 = *(type metadata accessor for AMDPbPIRQuery(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AMDPbEvaluationKey);
  }

  return AMDPbPIRQuery.evaluationKey.modify;
}

uint64_t AMDPbPECQuery.shardIndices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path setter for AMDPbPECQuery.query : AMDPbPECQuery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v8 = *(type metadata accessor for AMDPbPECQuery(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbPECQuery.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPECQuery(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbPECQuery.query.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
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
  v15 = *(type metadata accessor for AMDPbPECQuery(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v17 = *(v9 + 32);
    v18 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  return AMDPbPECQuery.query.modify;
}

void AMDPbPECQuery.query.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AMDPbPIRQuery.evaluationKey.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = (a1)(0, v6);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v9 + 32), v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v10 = type metadata accessor for AMDPbEvaluationKey(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v8, a2, type metadata accessor for AMDPbEvaluationKey);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v10 + 24);
  v15 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbPIRQuery.evaluationKey : AMDPbPIRQuery@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = (a2)(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v10 + 32), v9, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v11 = type metadata accessor for AMDPbEvaluationKey(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v9, a3, type metadata accessor for AMDPbEvaluationKey);
  }

  UnknownStorage.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  (*(*(v14 - 8) + 56))(a3 + v13, 1, 1, v14);
  v15 = *(v11 + 24);
  v16 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPIRQuery.evaluationKey : AMDPbPIRQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AMDPbEvaluationKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v11, type metadata accessor for AMDPbEvaluationKey);
  v12 = *(a5(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v12, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with take of AMDPbPIRConfig(v11, a2 + v12, type metadata accessor for AMDPbEvaluationKey);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t AMDPbPIRQuery.evaluationKey.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v2 + v4, type metadata accessor for AMDPbEvaluationKey);
  v5 = type metadata accessor for AMDPbEvaluationKey(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*AMDPbPECQuery.evaluationKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AMDPbEvaluationKey(0);
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
  v15 = *(type metadata accessor for AMDPbPECQuery(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AMDPbEvaluationKey);
  }

  return AMDPbPECQuery.evaluationKey.modify;
}

void AMDPbPECQuery.evaluationKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AMDPbEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AMDPbEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AMDPbEvaluationKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbPIRQuery.hasEvaluationKey.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = (a1)(0, v4);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 32), v6, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v8 = type metadata accessor for AMDPbEvaluationKey(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  return v9;
}

uint64_t AMDPbPIRQuery.clearEvaluationKey()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v2, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v3 = type metadata accessor for AMDPbEvaluationKey(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t AMDPbPECQuery.configurationHash.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AMDPbPECQuery.configurationHash.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AMDPbPECQuery.query.getter@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = (a1)(0, v6);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v9 + 28), v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v10 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v8, a2, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  *a2 = 0;
  *(a2 + 1) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v12 = *(v10 + 32);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbPECQuery.query : AMDPbPECQuery@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = (a2)(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v10 + 28), v9, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v11 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v9, a3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  *a3 = 0;
  *(a3 + 1) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v13 = *(v11 + 32);
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v14 - 8) + 56))(&a3[v13], 1, 1, v14);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPECShardReply.reply : AMDPbPECShardReply(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v8 = *(type metadata accessor for AMDPbPECShardReply(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbPECShardReply.reply.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPECShardReply(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbPECShardReply.reply.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
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
  v15 = *(type metadata accessor for AMDPbPECShardReply(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v17 = *(v9 + 32);
    v18 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  return AMDPbPECShardReply.reply.modify;
}

uint64_t AMDPbPECShardReply.entryMetadatas.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AMDPbPECShardReply.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for AMDPbPECShardReply(0);
  UnknownStorage.init()();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbFetchHEConfigs._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbFetchHEConfigs._protobuf_nameMap);
  return _NameMap.init()();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHEConfigsReply._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHEConfigsReply._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configs";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key_info";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHEKeyStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHEKeyStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key_config";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "group";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbPIRConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbPIRConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encryption_parameters";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shard_configs";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keyword_pir_params";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "algorithm";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "batch_size";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "evaluation_key_config_hash";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbPIRShardConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbPIRShardConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "num_entries";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_size";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dimensions";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbPECConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbPECConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encryption_parameters";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scaling_factor";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plaintext_packing";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embedding_dimension";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "similarity_metric";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "evaluation_key_config_hash";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHEQuery._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHEQuery._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pir_query";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "pec_query";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbEvaluationKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbEvaluationKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "evaluation_key";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbEvaluationKeyMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbEvaluationKeyMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbPECShardReply._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbPECShardReply._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reply";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_ids";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "entry_metadatas";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHE_APICode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHE_APICode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KEY_UPLOAD";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "USECASES_FETCH";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HE_QUERY";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HE_QUERIES";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHEResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHEResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22502B110;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "api_code";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "status";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "statuses";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "error_message";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "he_reply";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "he_replies";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "configs";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AMDPbHEResponse.PbStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AMDPbHEResponse.PbStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SUCCESS";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INVALID_REQ";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SERVER_ERROR";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INVALID_KEY";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VERSION_NOT_FOUND";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PARTIAL_SUCCESS";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiEvaluationKeyMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiEvaluationKeyMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiKeyStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiKeyStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key_config";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiEvaluationKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiEvaluationKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "evaluation_key";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiConfigRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiConfigRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "usecases";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "existing_config_ids";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pir_config";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pec_config";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "config_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reuse_existing_config";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiConfigResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiConfigResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configs";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key_info";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "usecase";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pir_request";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pec_request";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "oprf_request";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pir_response";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pec_response";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "oprf_response";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPIRShardConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPIRShardConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225022940;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "num_entries";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "entry_size";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "dimensions";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "shard_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "compress_vectorized_pir_response";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "vectorized_pir_internal_batching_size";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPIRConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPIRConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22502B5E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encryption_parameters";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shard_configs";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keyword_pir_params";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "algorithm";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "batch_size";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "evaluation_key_config_hash";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "batch_pir_params";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "pir_shard_configs";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPIRFixedShardConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPIRFixedShardConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shard_config";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shard_count";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPIRRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPIRRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shard_index";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "evaluation_key_metadata";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "config_id";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "shard_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "evaluation_key";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPIRResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPIRResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "replies";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stash";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPECConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPECConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22502B110;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "encryption_parameters";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "scaling_factor";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "plaintext_packing";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "embedding_dimension";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "similarity_metric";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "evaluation_key_config_hash";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "extra_plaintext_moduli";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPECRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPECRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22502B5F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shard_indices";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "evaluation_key_metadata";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "config_id";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "evaluation_key";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiPECShardResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiPECShardResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reply";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_ids";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "entry_metadatas";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiOPRFRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiOPRFRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_element";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "config_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiOPRFResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiOPRFResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "evaluated_element";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "proof";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiStashOfEntries._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiStashOfEntries._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hashed_keywords";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "removed_hashed_keywords";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireApiError._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireApiError._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "config_version_not_found";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "evaluation_key_not_found";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "invalid_request";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "internal_error";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirAlgorithm._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirAlgorithm._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACLS_PIR";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MUL_PIR";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "VECTORIZED_PIR";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirKeyCompressionStrategy._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirKeyCompressionStrategy._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NO_COMPRESSION";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MAXIMUM_COMPRESSION";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HYBRID_COMPRESSION";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirSymmetricPirConfigType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirSymmetricPirConfigType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SYMMETRIC_PIR_CONFIG_TYPE_UNSPECIFIED";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SYMMETRIC_PIR_CONFIG_TYPE_OPRF_P384_AES_GCM_192_NONCE_96_TAG_128";
  *(v10 + 1) = 64;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirParameters._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirParameters._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22502E820;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "encryption_parameters";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "num_entries";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entry_size";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dimensions";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "keyword_pir_params";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "algorithm";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "batch_size";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "evaluation_key_config";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "key_compression_strategy";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "compress_vectorized_pir_response";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "vectorized_pir_internal_batching_size";
  *(v26 + 1) = 37;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "batch_pir_params";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirCuckooTableConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirCuckooTableConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22502B110;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "expansion_factor";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "num_hash_functions";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "max_num_evictions";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "target_load_factor";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "slots_per_bucket";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "allow_expansion";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "multiple_tables";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirBatchKeywordPirConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirBatchKeywordPirConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22502B110;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "cuckoo_config";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "batch_size";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "target_load_factor";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "num_hash_functions";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "num_pir_dimensions";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "max_num_shards";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "target_vpir_internal_batch_size";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirBatchPirParameters._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirBatchPirParameters._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "num_hash_functions";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_hash_functions_per_bucket";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "batch_pir_table_size";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_pir_db_per_shard";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirKeywordPirParameters._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirKeywordPirParameters._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "num_hash_functions";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "multiple_tables";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "symmetric_pir_client_config";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sharding_function";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPIRShardingFunction._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPIRShardingFunction._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sha256";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "double_mod";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPIRShardingFunctionSHA256._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPIRShardingFunctionSHA256._protobuf_nameMap);
  return _NameMap.init()();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirEncryptedIndices._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirEncryptedIndices._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ciphertexts";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_pir_calls";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirSerializedKeywordDbRow._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirSerializedKeywordDbRow._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keyword";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shard_id";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirPreprocessDbArgs._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirPreprocessDbArgs._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_22502E830;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "input_database";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "values_proto_path";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "algorithm";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "num_shards";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "num_entries_per_shard";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "shard_id";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "predefined_encryption_parameters";
  *(v19 + 1) = 32;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "he_scheme";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "output_database";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "output_pir_parameters";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "output_key_config";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "key_compression_strategy";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "split_large_entry";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "skip_large_entry_size";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "uneven_dimensions";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "no_validate";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "command";
  *(v37 + 8) = 7;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirPreprocessDbCommand._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirPreprocessDbCommand._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keyword";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirPreprocessDbCommand.Index._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirPreprocessDbCommand.Index._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "num_entries";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_size";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirPirPreprocessDbCommand.Keyword._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirPirPreprocessDbCommand.Keyword._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "keyword";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cuckoo_config";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "batch_pir_config";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspirePirSymmetricPirClientConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspirePirSymmetricPirClientConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "server_public_key";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "config_type";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSecurityLevel._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSecurityLevel._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unchecked";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Quantum128";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeErrorStdDev._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeErrorStdDev._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 0;
  *v4 = "StdDev32";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeHeScheme._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeHeScheme._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BFV";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "BGV";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedDcrtPlaintext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedDcrtPlaintext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "poly";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedCiphertextVec._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedCiphertextVec._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "ciphertexts";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedCiphertext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedCiphertext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seeded";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "full";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedSeededCiphertext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedSeededCiphertext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "poly0";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seed";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedFullCiphertext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedFullCiphertext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "polys";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "skip_lsbs";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "correction_factor";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedKeySwitchKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedKeySwitchKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "key_switch_key";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedGaloisKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedGaloisKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "key_switch_keys";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedRelinKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedRelinKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "relin_key";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedSecretKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedSecretKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022960;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "polys";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeSerializedEvaluationKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeSerializedEvaluationKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022920;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "galois_key";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relin_key";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeEvaluationKeyConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeEvaluationKeyConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encryption_parameters";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "galois_elements";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "has_relin_key";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireHeEncryptionParameters._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireHeEncryptionParameters._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225022940;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "polynomial_degree";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "plaintext_modulus";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "coefficient_moduli";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "error_std_dev";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "security_level";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "he_scheme";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilarityPlaintextPacking._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilarityPlaintextPacking._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dense_row";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "diagonal";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dense_column";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySerializedCiphertextMatrix._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySerializedCiphertextMatrix._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "nrows";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ncols";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ciphertexts";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "packing";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySerializedDcrtPlaintextMatrix._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySerializedDcrtPlaintextMatrix._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "num_rows";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_cols";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plaintexts";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "packing";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySimilarityClientConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySimilarityClientConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22502B110;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "encryption_parameters";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scaling_factor";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plaintext_packing";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embedding_dimension";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "galois_elts";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "similarity_metric";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "extra_plaintext_moduli";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySimilarityServerConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySimilarityServerConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_config";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "db_packing";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parallel";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "baby_step";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySerializedProcessedSimilarityDb._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySerializedProcessedSimilarityDb._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "plaintext_matrices";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_ids";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entry_metadatas";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "server_config";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilaritySimilarityDbRow._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilaritySimilarityDbRow._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_225022930;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entry_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry_metadata";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "embedding";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AspireSimilarityPecPreprocessDbArgs._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AspireSimilarityPecPreprocessDbArgs._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_225032940;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "input_database";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "output_database";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "output_server_config";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "input_server_config";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "entry_id";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "entry_metadata_id";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "embedding_id";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "shard_id";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "predefined_encryption_parameters";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "he_scheme";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "extra_plaintext_moduli";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "baby_step";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "parallel";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t AMDPbFetchHEConfigs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static AMDPbFetchHEConfigs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbFetchHEConfigs(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbFetchHEConfigs and conformance AMDPbFetchHEConfigs, type metadata accessor for AMDPbFetchHEConfigs, &protocol conformance descriptor for AMDPbFetchHEConfigs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbFetchHEConfigs(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbFetchHEConfigs and conformance AMDPbFetchHEConfigs, type metadata accessor for AMDPbFetchHEConfigs, &protocol conformance descriptor for AMDPbFetchHEConfigs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbFetchHEConfigs(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbFetchHEConfigs and conformance AMDPbFetchHEConfigs, type metadata accessor for AMDPbFetchHEConfigs, &protocol conformance descriptor for AMDPbFetchHEConfigs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AMDPbFetchHEConfigs(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AMDPbHEConfigsReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in AMDPbHEConfigsReply.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for AMDPbHEKeyStatus(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEKeyStatus and conformance AMDPbHEKeyStatus, type metadata accessor for AMDPbHEKeyStatus, &protocol conformance descriptor for AMDPbHEKeyStatus);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbHEConfigsReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for AMDPbHEConfig(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t AMDPbHEConfigsReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for AMDPbHEConfig(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig), v4 = v6, result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v6))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for AMDPbHEKeyStatus(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEKeyStatus and conformance AMDPbHEKeyStatus, type metadata accessor for AMDPbHEKeyStatus, &protocol conformance descriptor for AMDPbHEKeyStatus), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AMDPbHEConfigsReply(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static AMDPbHEConfigsReply.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(*a1, *a2);
  if ((v4 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AMDPbHEConfigsReply(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEConfigsReply@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEConfigsReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEConfigsReply(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEConfigsReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfigsReply and conformance AMDPbHEConfigsReply, type metadata accessor for AMDPbHEConfigsReply, &protocol conformance descriptor for AMDPbHEConfigsReply);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AMDPbHEConfigsReply(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(*a1, *a2);
  if ((v5 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbHEConfig._protobuf_nameMap, "pir_config", 10, "pec_config");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbHEQueries._protobuf_nameMap, "queries", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbHEReplies._protobuf_nameMap, "replies", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbHEReply._protobuf_nameMap, "pir_reply", 9, "pec_reply");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbEvaluationKeys._protobuf_nameMap, "keys", 4, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbPIRQuery._protobuf_nameMap, "shard_index", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbPIRReply._protobuf_nameMap, "replies", 7, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbPECQuery._protobuf_nameMap, "shard_indices", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AMDPbPECReply._protobuf_nameMap, "shard_replies", 13, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiEmpty._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiEvaluationKeys._protobuf_nameMap, "keys", 4, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiRequests._protobuf_nameMap, "requests", 8, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiResponses._protobuf_nameMap, "responses", 9, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiPIRShardConfigs._protobuf_nameMap, "repeated_shard_config", 21, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiPECResponse._protobuf_nameMap, "shard_responses", 15, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiError.ConfigVersionNotFound._protobuf_nameMap, "config_response", 15, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiError.EvaluationKeyNotFound._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiError.InvalidRequest._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireApiError.InternalError._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspirePirPIRShardingFunctionDoubleMod._protobuf_nameMap, "other_shard_count", 17, MEMORY[0x277D21888]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspirePirSerializedKeywordDb._protobuf_nameMap, "rows", 4, MEMORY[0x277D21870]);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireSimilaritySimilarityMetric._protobuf_nameMap, 0, "CosineSimilarity", 16);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireSimilarityPlaintextPackingDenseRow._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireSimilarityPlaintextPackingDiagonal._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireSimilarityPlaintextPackingDenseColumn._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AspireSimilaritySimilarityDb._protobuf_nameMap, 1, "rows", 4);
}

uint64_t closure #1 in AMDPbHEConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AMDPbPIRConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
      v32 = v41;
      outlined init with take of AMDPbPIRConfig(v16, v41, type metadata accessor for AMDPbPIRConfig);
      outlined init with take of AMDPbPIRConfig(v32, v25, type metadata accessor for AMDPbPIRConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRConfig and conformance AMDPbPIRConfig, type metadata accessor for AMDPbPIRConfig, &protocol conformance descriptor for AMDPbPIRConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AMDPbPIRConfig(v33, v40, type metadata accessor for AMDPbPIRConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPIRConfigVSgMd, &_s8CipherML14AMDPbPIRConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    outlined init with take of AMDPbPIRConfig(v36, v37, type metadata accessor for AMDPbPIRConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AMDPbHEConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AMDPbPECConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
      v32 = v41;
      outlined init with take of AMDPbPIRConfig(v16, v41, type metadata accessor for AMDPbPECConfig);
      outlined init with take of AMDPbPIRConfig(v32, v25, type metadata accessor for AMDPbPECConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECConfig and conformance AMDPbPECConfig, type metadata accessor for AMDPbPECConfig, &protocol conformance descriptor for AMDPbPECConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AMDPbPIRConfig(v33, v40, type metadata accessor for AMDPbPECConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AMDPbPECConfigVSgMd, &_s8CipherML14AMDPbPECConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    outlined init with take of AMDPbPIRConfig(v36, v37, type metadata accessor for AMDPbPECConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AMDPbHEConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v13 - v9, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v11 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AMDPbHEConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AMDPbHEConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AMDPbHEConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbHEConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AMDPbPIRConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v11 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPIRConfig);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRConfig and conformance AMDPbPIRConfig, type metadata accessor for AMDPbPIRConfig, &protocol conformance descriptor for AMDPbPIRConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPIRConfig);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t closure #2 in AMDPbHEConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AMDPbPECConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v11 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPECConfig);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECConfig and conformance AMDPbPECConfig, type metadata accessor for AMDPbPECConfig, &protocol conformance descriptor for AMDPbPECConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPECConfig);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEConfig and conformance AMDPbHEConfig, type metadata accessor for AMDPbHEConfig, &protocol conformance descriptor for AMDPbHEConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbHEKeyStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        closure #2 in AMDPbHEKeyStatus.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in AMDPbHEKeyStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbHEKeyStatus(0);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbHEKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AMDPbHEKeyStatus.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3[2];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
      }

      type metadata accessor for AMDPbHEKeyStatus(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbHEKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbHEKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspireHeEvaluationKeyConfig);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeEvaluationKeyConfig);
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEKeyStatus@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEKeyStatus and conformance AMDPbHEKeyStatus, type metadata accessor for AMDPbHEKeyStatus, &protocol conformance descriptor for AMDPbHEKeyStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEKeyStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEKeyStatus and conformance AMDPbHEKeyStatus, type metadata accessor for AMDPbHEKeyStatus, &protocol conformance descriptor for AMDPbHEKeyStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEKeyStatus and conformance AMDPbHEKeyStatus, type metadata accessor for AMDPbHEKeyStatus, &protocol conformance descriptor for AMDPbHEKeyStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularBytesField(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in AMDPbPIRConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AMDPbPIRConfig);
            break;
          case 2:
            type metadata accessor for AMDPbPIRShardConfig(0);
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRShardConfig and conformance AMDPbPIRShardConfig, type metadata accessor for AMDPbPIRShardConfig, &protocol conformance descriptor for AMDPbPIRShardConfig);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 3:
            closure #3 in AMDPbPIRConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in AMDPbPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbPIRConfig(0);
  type metadata accessor for AspirePirKeywordPirParameters(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AMDPbPIRConfig.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AMDPbPIRConfig);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for AMDPbPIRShardConfig(0);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRShardConfig and conformance AMDPbPIRShardConfig, type metadata accessor for AMDPbPIRShardConfig, &protocol conformance descriptor for AMDPbPIRShardConfig);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #2 in AMDPbPIRConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v3[1])
    {
      lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (v3[3])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v9 = v3[4];
    v10 = v3[5];
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_17;
      }

      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
    }

    else
    {
      if (!v11)
      {
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v12 = v9;
      v13 = v9 >> 32;
    }

    if (v12 != v13)
    {
LABEL_16:
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    }

LABEL_17:
    type metadata accessor for AMDPbPIRConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #2 in AMDPbPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbPIRConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspirePirKeywordPirParameters);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspirePirKeywordPirParameters);
}

uint64_t protocol witness for Message.init() in conformance AMDPbPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xC000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRConfig and conformance AMDPbPIRConfig, type metadata accessor for AMDPbPIRConfig, &protocol conformance descriptor for AMDPbPIRConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPIRConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRConfig and conformance AMDPbPIRConfig, type metadata accessor for AMDPbPIRConfig, &protocol conformance descriptor for AMDPbPIRConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRConfig and conformance AMDPbPIRConfig, type metadata accessor for AMDPbPIRConfig, &protocol conformance descriptor for AMDPbPIRConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbPIRShardConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AMDPbPIRShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for AMDPbPIRShardConfig(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AMDPbPIRShardConfig@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AMDPbPIRShardConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AMDPbPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRShardConfig and conformance AMDPbPIRShardConfig, type metadata accessor for AMDPbPIRShardConfig, &protocol conformance descriptor for AMDPbPIRShardConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPIRShardConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRShardConfig and conformance AMDPbPIRShardConfig, type metadata accessor for AMDPbPIRShardConfig, &protocol conformance descriptor for AMDPbPIRShardConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRShardConfig and conformance AMDPbPIRShardConfig, type metadata accessor for AMDPbPIRShardConfig, &protocol conformance descriptor for AMDPbPIRShardConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbPECConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 5:
            lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularBytesField(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in AMDPbPIRConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AMDPbPECConfig);
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 3:
            closure #3 in AMDPbPECConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for AspireHeEncryptionParameters(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AMDPbPECConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbPECConfig(0);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AMDPbPIRConfig.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AMDPbPECConfig);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #2 in AMDPbPECConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + 24) & 1) == 0)
    {
      if (*(v3 + 16))
      {
        lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
        dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }

    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
    }

    else
    {
      if (!v11)
      {
        if ((v10 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v12 = v9;
      v13 = v9 >> 32;
    }

    if (v12 != v13)
    {
LABEL_17:
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    }

LABEL_18:
    type metadata accessor for AMDPbPECConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a5)(0, v12);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v15 + 36), v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v9, v14, type metadata accessor for AspireHeEncryptionParameters);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in AMDPbPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AMDPbPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AMDPbPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_225022910;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AMDPbPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AMDPbPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECConfig and conformance AMDPbPECConfig, type metadata accessor for AMDPbPECConfig, &protocol conformance descriptor for AMDPbPECConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPECConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECConfig and conformance AMDPbPECConfig, type metadata accessor for AMDPbPECConfig, &protocol conformance descriptor for AMDPbPECConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECConfig and conformance AMDPbPECConfig, type metadata accessor for AMDPbPECConfig, &protocol conformance descriptor for AMDPbPECConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbHEQueries.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AMDPbHEQuery(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AMDPbHEQueries(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEQueries(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQueries and conformance AMDPbHEQueries, type metadata accessor for AMDPbHEQueries, &protocol conformance descriptor for AMDPbHEQueries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEQueries(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQueries and conformance AMDPbHEQueries, type metadata accessor for AMDPbHEQueries, &protocol conformance descriptor for AMDPbHEQueries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEQueries(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQueries and conformance AMDPbHEQueries, type metadata accessor for AMDPbHEQueries, &protocol conformance descriptor for AMDPbHEQueries);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbHEReplies.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AMDPbHEReply(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AMDPbHEReplies(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEReplies(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEReplies(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEReplies(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReplies and conformance AMDPbHEReplies, type metadata accessor for AMDPbHEReplies, &protocol conformance descriptor for AMDPbHEReplies);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbHEQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AMDPbHEQuery.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in AMDPbHEQuery.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in AMDPbHEQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AMDPbPIRQuery(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      v32 = v50;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
      v33 = v16;
      v34 = v46;
      outlined init with take of AMDPbPIRConfig(v33, v46, type metadata accessor for AMDPbPIRQuery);
      outlined init with take of AMDPbPIRConfig(v34, v25, type metadata accessor for AMDPbPIRQuery);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AMDPbPIRConfig(v35, v45, type metadata accessor for AMDPbPIRQuery);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRQueryVSgMd, &_s8CipherML13AMDPbPIRQueryVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with take of AMDPbPIRConfig(v38, v39 + v40, type metadata accessor for AMDPbPIRQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #3 in AMDPbHEQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AMDPbPECQuery(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of AMDPbPIRConfig(v32, v46, type metadata accessor for AMDPbPECQuery);
      outlined init with take of AMDPbPIRConfig(v33, v25, type metadata accessor for AMDPbPECQuery);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AMDPbPIRConfig(v35, v45, type metadata accessor for AMDPbPECQuery);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECQueryVSgMd, &_s8CipherML13AMDPbPECQueryVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with take of AMDPbPIRConfig(v38, v39 + v40, type metadata accessor for AMDPbPECQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t AMDPbHEQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for AMDPbHEQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + *(v16 + 20), v12, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v17 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AMDPbHEQuery.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in AMDPbHEQuery.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v12, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbHEQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbPIRQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AMDPbHEQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 20), v7, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v12 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPIRQuery);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPIRQuery);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  __break(1u);
  return result;
}

uint64_t closure #2 in AMDPbHEQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbPECQuery(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AMDPbHEQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 20), v7, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v12 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPECQuery);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPECQuery);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEQuery@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEQuery(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225022920;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21888];
  v16 = type metadata accessor for _NameMap.NameDescription();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = a4;
  v18[16] = 2;
  v17();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225022960;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t AMDPbHEConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in AMDPbHEReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AMDPbPIRReply(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
      v32 = v41;
      outlined init with take of AMDPbPIRConfig(v16, v41, type metadata accessor for AMDPbPIRReply);
      outlined init with take of AMDPbPIRConfig(v32, v25, type metadata accessor for AMDPbPIRReply);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRReply and conformance AMDPbPIRReply, type metadata accessor for AMDPbPIRReply, &protocol conformance descriptor for AMDPbPIRReply);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AMDPbPIRConfig(v33, v40, type metadata accessor for AMDPbPIRReply);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPIRReplyVSgMd, &_s8CipherML13AMDPbPIRReplyVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with take of AMDPbPIRConfig(v36, v37, type metadata accessor for AMDPbPIRReply);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AMDPbHEReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AMDPbPECReply(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v12, v19, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined init with take of AMDPbPIRConfig(v19, v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
      v32 = v41;
      outlined init with take of AMDPbPIRConfig(v16, v41, type metadata accessor for AMDPbPECReply);
      outlined init with take of AMDPbPIRConfig(v32, v25, type metadata accessor for AMDPbPECReply);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECReply and conformance AMDPbPECReply, type metadata accessor for AMDPbPECReply, &protocol conformance descriptor for AMDPbPECReply);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AMDPbPIRConfig(v33, v40, type metadata accessor for AMDPbPECReply);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML13AMDPbPECReplyVSgMd, &_s8CipherML13AMDPbPECReplyVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with take of AMDPbPIRConfig(v36, v37, type metadata accessor for AMDPbPECReply);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AMDPbHEReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v13 - v9, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v11 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AMDPbHEReply.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AMDPbHEReply.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AMDPbHEReply(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbHEReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AMDPbPIRReply(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v11 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPIRReply);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRReply and conformance AMDPbPIRReply, type metadata accessor for AMDPbPIRReply, &protocol conformance descriptor for AMDPbPIRReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPIRReply);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  __break(1u);
  return result;
}

uint64_t closure #2 in AMDPbHEReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AMDPbPECReply(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v11 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AMDPbPIRConfig(v7, v10, type metadata accessor for AMDPbPECReply);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECReply and conformance AMDPbPECReply, type metadata accessor for AMDPbPECReply, &protocol conformance descriptor for AMDPbPECReply);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPECReply);
  }

  result = outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AMDPbHEConfig@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbHEReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbHEReply(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbHEReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbHEReply and conformance AMDPbHEReply, type metadata accessor for AMDPbHEReply, &protocol conformance descriptor for AMDPbHEReply);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbEvaluationKeys.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AMDPbEvaluationKey(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AMDPbEvaluationKeys(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AMDPbPIRReply.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeys and conformance AMDPbEvaluationKeys, type metadata accessor for AMDPbEvaluationKeys, &protocol conformance descriptor for AMDPbEvaluationKeys);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbEvaluationKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeys and conformance AMDPbEvaluationKeys, type metadata accessor for AMDPbEvaluationKeys, &protocol conformance descriptor for AMDPbEvaluationKeys);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeys and conformance AMDPbEvaluationKeys, type metadata accessor for AMDPbEvaluationKeys, &protocol conformance descriptor for AMDPbEvaluationKeys);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AMDPbEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AMDPbEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbEvaluationKey(0);
  type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AMDPbEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbEvaluationKey(0);
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AMDPbEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AMDPbEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AMDPbEvaluationKeyMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AMDPbEvaluationKeyMetadata);
}

uint64_t closure #2 in AMDPbEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspireHeSerializedEvaluationKey);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeSerializedEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AMDPbEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbEvaluationKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbEvaluationKeyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AMDPbEvaluationKeyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
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
    type metadata accessor for AMDPbEvaluationKeyMetadata(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AMDPbEvaluationKeyMetadata.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AMDPbEvaluationKeyMetadata@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbEvaluationKeyMetadata(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AMDPbEvaluationKeyMetadata(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AMDPbPIRQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AMDPbPIRQuery.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AMDPbPIRQuery);
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AMDPbPIRQuery.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AMDPbPIRQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbPIRQuery(0);
  type metadata accessor for AspirePirEncryptedIndices(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbPIRQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AMDPbPIRQuery.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AMDPbPIRQuery.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AMDPbPIRQuery);
      v9 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
      }

      else
      {
        if (!v11)
        {
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v12 = v9;
        v13 = v9 >> 32;
      }

      if (v12 != v13)
      {
LABEL_12:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      }

LABEL_13:
      type metadata accessor for AMDPbPIRQuery(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbPIRQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirEncryptedIndices(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbPIRQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspirePirEncryptedIndices);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspirePirEncryptedIndices);
}

uint64_t protocol witness for Message.init() in conformance AMDPbPIRQuery@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_225022910;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for AMDPbEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPIRQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPIRQuery(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPIRQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbPIRReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireHeSerializedCiphertextVec(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AMDPbPIRReply(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPIRReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRReply and conformance AMDPbPIRReply, type metadata accessor for AMDPbPIRReply, &protocol conformance descriptor for AMDPbPIRReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPIRReply(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRReply and conformance AMDPbPIRReply, type metadata accessor for AMDPbPIRReply, &protocol conformance descriptor for AMDPbPIRReply);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPIRReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPIRReply and conformance AMDPbPIRReply, type metadata accessor for AMDPbPIRReply, &protocol conformance descriptor for AMDPbPIRReply);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_225022950;
  v12 = v11 + v10;
  v13 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21888];
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "query";
  *(v17 + 8) = 5;
  *(v17 + 16) = 2;
  v16();
  v18 = (v12 + 2 * v9);
  v19 = v18 + v8[14];
  *v18 = 3;
  *v19 = "evaluation_key";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v16();
  v20 = (v12 + 3 * v9);
  v21 = v20 + v8[14];
  *v20 = 4;
  *v21 = "configuration_hash";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t AMDPbPECQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AMDPbPIRQuery.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AMDPbPECQuery);
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AMDPbPECQuery.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AMDPbPECQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbPECQuery(0);
  type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AMDPbPIRQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for AMDPbEvaluationKey(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbPECQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AMDPbPECQuery.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AMDPbPIRQuery.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AMDPbPECQuery);
      v9 = v3[1];
      v10 = v3[2];
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
      }

      else
      {
        if (!v11)
        {
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v12 = v9;
        v13 = v9 >> 32;
      }

      if (v12 != v13)
      {
LABEL_12:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      }

LABEL_13:
      type metadata accessor for AMDPbPECQuery(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbPECQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbPECQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
}

uint64_t closure #2 in AMDPbPIRQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for AMDPbEvaluationKey(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a5)(0, v12);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v15 + 32), v9, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v9, v14, type metadata accessor for AMDPbEvaluationKey);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AMDPbEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AMDPbPECQuery@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = xmmword_225022910;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for AMDPbEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPECQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPECQuery(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPECQuery(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AMDPbPECShardReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        break;
      case 1:
        closure #1 in AMDPbPECShardReply.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AMDPbPECShardReply.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMDPbPECShardReply(0);
  type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AMDPbPECShardReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AMDPbPECShardReply.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)();
    }

    type metadata accessor for AMDPbPECShardReply(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AMDPbPECShardReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AMDPbPECShardReply(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  }

  outlined init with take of AMDPbPIRConfig(v7, v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
}

uint64_t protocol witness for Message.init() in conformance AMDPbPECShardReply@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AMDPbHEConfigsReply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AMDPbHEConfigsReply(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPECShardReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECShardReply and conformance AMDPbPECShardReply, type metadata accessor for AMDPbPECShardReply, &protocol conformance descriptor for AMDPbPECShardReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPECShardReply(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECShardReply and conformance AMDPbPECShardReply, type metadata accessor for AMDPbPECShardReply, &protocol conformance descriptor for AMDPbPECShardReply);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPECShardReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECShardReply and conformance AMDPbPECShardReply, type metadata accessor for AMDPbPECShardReply, &protocol conformance descriptor for AMDPbPECShardReply);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225022960;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t AMDPbFetchHEConfigs._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static AMDPbFetchHEConfigs._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t AMDPbHEQueries.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      a4(0);
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a5, a6, a7);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t AMDPbPECReply.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AMDPbPECShardReply(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECShardReply and conformance AMDPbPECShardReply, type metadata accessor for AMDPbPECShardReply, &protocol conformance descriptor for AMDPbPECShardReply), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AMDPbPECReply(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int AMDPbFetchHEConfigs.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AMDPbHEConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AMDPbHEConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AMDPbPECReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECReply and conformance AMDPbPECReply, type metadata accessor for AMDPbPECReply, &protocol conformance descriptor for AMDPbPECReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance AMDPbFetchHEConfigs@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AMDPbPECReply(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECReply and conformance AMDPbPECReply, type metadata accessor for AMDPbPECReply, &protocol conformance descriptor for AMDPbPECReply);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AMDPbFetchHEConfigs(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AMDPbPECReply(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AMDPbPECReply and conformance AMDPbPECReply, type metadata accessor for AMDPbPECReply, &protocol conformance descriptor for AMDPbPECReply);

  return MEMORY[0x28217E440](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AMDPbFetchHEConfigs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AMDPbHEQueries(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedDcrtPlaintextV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v42 = type metadata accessor for AspireHeSerializedDcrtPlaintext(0);
  MEMORY[0x28223BE20](v42);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = (&v38 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v40 = 0;
      v41 = v14;
      while (1)
      {
        outlined init with copy of AMDPbPIRConfig(v12, v9, type metadata accessor for AspireHeSerializedDcrtPlaintext);
        outlined init with copy of AMDPbPIRConfig(v13, v5, type metadata accessor for AspireHeSerializedDcrtPlaintext);
        v15 = *v9;
        v16 = v9[1];
        v17 = *v5;
        v18 = v5[1];
        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_63;
            }

            goto LABEL_21;
          }

          v21 = 0;
          if (v20 > 1)
          {
            goto LABEL_15;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_64;
          }

          v21 = v21;
          if (v20 > 1)
          {
LABEL_15:
            if (v20 != 2)
            {
              if (v21)
              {
                goto LABEL_58;
              }

              goto LABEL_54;
            }

            v23 = *(v17 + 16);
            v22 = *(v17 + 24);
            v24 = __OFSUB__(v22, v23);
            v25 = v22 - v23;
            if (v24)
            {
              goto LABEL_62;
            }

            goto LABEL_28;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 > 1)
          {
            goto LABEL_15;
          }
        }

LABEL_22:
        if (v20)
        {
          LODWORD(v25) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
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
LABEL_68:
            __break(1u);
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v18);
        }

LABEL_28:
        if (v21 != v25)
        {
          goto LABEL_58;
        }

        if (v21 >= 1)
        {
          if (v19 > 1)
          {
            if (v19 != 2)
            {
              memset(v44, 0, 14);
LABEL_50:
              v34 = v40;
              closure #1 in static Data.== infix(_:_:)(v44, v17, v18, &v43);
              v40 = v34;
              if (!v43)
              {
                goto LABEL_58;
              }

              goto LABEL_54;
            }

            v28 = *(v15 + 16);
            v38 = *(v15 + 24);
            v39 = v17;
            v29 = __DataStorage._bytes.getter();
            if (v29)
            {
              v30 = __DataStorage._offset.getter();
              if (__OFSUB__(v28, v30))
              {
                goto LABEL_67;
              }

              v29 += v28 - v30;
            }

            if (__OFSUB__(v38, v28))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (!v19)
            {
              v44[0] = *v9;
              LOWORD(v44[1]) = v16;
              BYTE2(v44[1]) = BYTE2(v16);
              BYTE3(v44[1]) = BYTE3(v16);
              BYTE4(v44[1]) = BYTE4(v16);
              BYTE5(v44[1]) = BYTE5(v16);
              goto LABEL_50;
            }

            v31 = v15;
            if (v15 >> 32 < v15)
            {
              goto LABEL_65;
            }

            v39 = *v5;
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v38 = v32;
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v31, v33))
              {
                goto LABEL_68;
              }

              v29 = v31 - v33 + v38;
            }

            else
            {
              v29 = 0;
            }
          }

          MEMORY[0x22AA5F1C0]();
          v35 = v40;
          closure #1 in static Data.== infix(_:_:)(v29, v39, v18, v44);
          v40 = v35;
          if ((v44[0] & 1) == 0)
          {
LABEL_58:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireHeSerializedDcrtPlaintext);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AspireHeSerializedDcrtPlaintext);
            goto LABEL_59;
          }
        }

LABEL_54:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireHeSerializedDcrtPlaintext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AspireHeSerializedDcrtPlaintext);
        if (v36)
        {
          v13 += v41;
          v12 += v41;
          if (--v10)
          {
            continue;
          }
        }

        return v36 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          goto LABEL_54;
        }
      }

LABEL_21:
      if (v20 > 1)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v36 = 1;
  }

  else
  {
LABEL_59:
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspirePirSerializedKeywordDbRowV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v69[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspirePirSerializedKeywordDbRow(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v63 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v64 = *(v8 + 72);
      v65 = 0;
      v63 = v4;
      while (1)
      {
        outlined init with copy of AMDPbPIRConfig(v13, v10, type metadata accessor for AspirePirSerializedKeywordDbRow);
        v66 = v14;
        v67 = v13;
        outlined init with copy of AMDPbPIRConfig(v14, v6, type metadata accessor for AspirePirSerializedKeywordDbRow);
        v15 = *v10;
        v16 = v10[1];
        v18 = *v6;
        v17 = v6[1];
        v19 = v16 >> 62;
        v20 = v17 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_117;
            }

            goto LABEL_21;
          }

          v21 = 0;
          if (v20 <= 1)
          {
            goto LABEL_22;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_116;
          }

          v21 = v21;
          if (v20 <= 1)
          {
LABEL_22:
            if (v20)
            {
              LODWORD(v25) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                goto LABEL_113;
              }

              v25 = v25;
            }

            else
            {
              v25 = BYTE6(v17);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 <= 1)
          {
            goto LABEL_22;
          }
        }

LABEL_15:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_110;
          }

          goto LABEL_52;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (v24)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
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
        }

LABEL_28:
        if (v21 != v25)
        {
          goto LABEL_110;
        }

        if (v21 < 1)
        {
          goto LABEL_52;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v29 = *(v15 + 16);
            v28 = *(v15 + 24);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v29, v31))
              {
                goto LABEL_124;
              }

              v30 += v29 - v31;
            }

            if (__OFSUB__(v28, v29))
            {
              goto LABEL_121;
            }

            goto LABEL_48;
          }

          memset(v69, 0, 14);
        }

        else
        {
          if (v19)
          {
            v32 = v15;
            if (v15 >> 32 < v15)
            {
              goto LABEL_120;
            }

            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v32, v33))
              {
                goto LABEL_125;
              }

              v30 += v32 - v33;
            }

LABEL_48:
            MEMORY[0x22AA5F1C0]();
            v34 = v65;
            closure #1 in static Data.== infix(_:_:)(v30, v18, v17, v69);
            v65 = v34;
            v4 = v63;
            if ((v69[0] & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_52;
          }

          v69[0] = *v10;
          LOWORD(v69[1]) = v16;
          BYTE2(v69[1]) = BYTE2(v16);
          BYTE3(v69[1]) = BYTE3(v16);
          BYTE4(v69[1]) = BYTE4(v16);
          BYTE5(v69[1]) = BYTE5(v16);
        }

        v35 = v65;
        closure #1 in static Data.== infix(_:_:)(v69, v18, v17, &v68);
        v65 = v35;
        if (!v68)
        {
          goto LABEL_110;
        }

LABEL_52:
        v36 = v10[2];
        v37 = v10[3];
        v39 = v6[2];
        v38 = v6[3];
        v40 = v37 >> 62;
        v41 = v38 >> 62;
        if (v37 >> 62 == 3)
        {
          v42 = 0;
          if (!v36 && v37 == 0xC000000000000000 && v38 >> 62 == 3)
          {
            v42 = 0;
            if (!v39 && v38 == 0xC000000000000000)
            {
              goto LABEL_99;
            }
          }

LABEL_68:
          if (v41 <= 1)
          {
            goto LABEL_69;
          }

          goto LABEL_62;
        }

        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v47 = *(v36 + 16);
            v46 = *(v36 + 24);
            v24 = __OFSUB__(v46, v47);
            v42 = v46 - v47;
            if (v24)
            {
              goto LABEL_119;
            }

            goto LABEL_68;
          }

          v42 = 0;
          if (v41 <= 1)
          {
            goto LABEL_69;
          }
        }

        else if (v40)
        {
          LODWORD(v42) = HIDWORD(v36) - v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_118;
          }

          v42 = v42;
          if (v41 <= 1)
          {
LABEL_69:
            if (v41)
            {
              LODWORD(v45) = HIDWORD(v39) - v39;
              if (__OFSUB__(HIDWORD(v39), v39))
              {
                goto LABEL_115;
              }

              v45 = v45;
            }

            else
            {
              v45 = BYTE6(v38);
            }

            goto LABEL_75;
          }
        }

        else
        {
          v42 = BYTE6(v37);
          if (v41 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_62:
        if (v41 != 2)
        {
          if (v42)
          {
            goto LABEL_110;
          }

          goto LABEL_99;
        }

        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        v24 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        if (v24)
        {
          goto LABEL_114;
        }

LABEL_75:
        if (v42 != v45)
        {
          goto LABEL_110;
        }

        if (v42 < 1)
        {
          goto LABEL_99;
        }

        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v49 = *(v36 + 16);
            v48 = *(v36 + 24);
            v50 = __DataStorage._bytes.getter();
            if (v50)
            {
              v51 = __DataStorage._offset.getter();
              if (__OFSUB__(v49, v51))
              {
                goto LABEL_126;
              }

              v50 += v49 - v51;
            }

            if (__OFSUB__(v48, v49))
            {
              goto LABEL_123;
            }

            goto LABEL_95;
          }

          memset(v69, 0, 14);
        }

        else
        {
          if (v40)
          {
            v52 = v36;
            if (v36 >> 32 < v36)
            {
              goto LABEL_122;
            }

            v50 = __DataStorage._bytes.getter();
            if (v50)
            {
              v53 = __DataStorage._offset.getter();
              if (__OFSUB__(v52, v53))
              {
                goto LABEL_127;
              }

              v50 += v52 - v53;
            }

LABEL_95:
            MEMORY[0x22AA5F1C0]();
            v54 = v65;
            closure #1 in static Data.== infix(_:_:)(v50, v39, v38, v69);
            v65 = v54;
            v4 = v63;
            if ((v69[0] & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_99;
          }

          v69[0] = v10[2];
          LOWORD(v69[1]) = v37;
          BYTE2(v69[1]) = BYTE2(v37);
          BYTE3(v69[1]) = BYTE3(v37);
          BYTE4(v69[1]) = BYTE4(v37);
          BYTE5(v69[1]) = BYTE5(v37);
        }

        v55 = v65;
        closure #1 in static Data.== infix(_:_:)(v69, v39, v38, &v68);
        v65 = v55;
        if (!v68)
        {
          goto LABEL_110;
        }

LABEL_99:
        v56 = *(v4 + 28);
        v57 = (v10 + v56);
        v58 = *(v10 + v56 + 8);
        v59 = (v6 + v56);
        v60 = v59[1];
        if (v58)
        {
          if (!v60 || (*v57 != *v59 || v58 != v60) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_110:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspirePirSerializedKeywordDbRow);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspirePirSerializedKeywordDbRow);
            goto LABEL_111;
          }
        }

        else if (v60)
        {
          goto LABEL_110;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspirePirSerializedKeywordDbRow);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspirePirSerializedKeywordDbRow);
        if (v61)
        {
          v14 = v66 + v64;
          v13 = v67 + v64;
          if (--v11)
          {
            continue;
          }
        }

        return v61 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v17 >> 62 == 3)
      {
        v21 = 0;
        if (!v18 && v17 == 0xC000000000000000)
        {
          goto LABEL_52;
        }
      }

LABEL_21:
      if (v20 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v61 = 1;
  }

  else
  {
LABEL_111:
    v61 = 0;
  }

  return v61 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML42AspireSimilaritySerializedCiphertextMatrixV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v56 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v66);
  v71 = &v56 - v9;
  v72 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v73 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  MEMORY[0x28223BE20](v73);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_29:
    v51 = 0;
    return v51 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = v5;
    v27 = (v10 + 48);
    v28 = a2 + v24;
    v60 = (v26 + 48);
    v61 = v4;
    v62 = *(v20 + 72);
    v63 = v18;
    v58 = v14;
    v59 = v16;
    v57 = v27;
    while (1)
    {
      outlined init with copy of AMDPbPIRConfig(v25, v22, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      v70 = v28;
      outlined init with copy of AMDPbPIRConfig(v28, v18, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      if (*v22 != *v18 || *(v22 + 1) != *(v18 + 1) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*(v22 + 1), *(v18 + 1)) & 1) == 0)
      {
        break;
      }

      v67 = v25;
      v29 = *(v73 + 32);
      v30 = *(v14 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v22[v29], v16, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v18[v29], &v16[v30], &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v31 = *v27;
      v32 = v72;
      if ((*v27)(v16, 1, v72) == 1)
      {
        v33 = v31(&v16[v30], 1, v32);
        v18 = v63;
        if (v33 != 1)
        {
          goto LABEL_23;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v34 = v67;
      }

      else
      {
        v35 = v69;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v69, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        if (v31(&v16[v30], 1, v32) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspireSimilarityPlaintextPacking);
          v18 = v63;
LABEL_23:
          v52 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
          v53 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
          v54 = v16;
          goto LABEL_27;
        }

        v36 = v68;
        outlined init with take of AMDPbPIRConfig(&v16[v30], v68, type metadata accessor for AspireSimilarityPlaintextPacking);
        v37 = *(v66 + 48);
        v38 = v71;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v35, v71, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36, v38 + v37, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v39 = v61;
        v40 = *v60;
        v41 = (*v60)(v38, 1, v61);
        v18 = v63;
        if (v41 == 1)
        {
          v42 = v40(v71 + v37, 1, v39);
          v34 = v67;
          if (v42 != 1)
          {
            goto LABEL_25;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        }

        else
        {
          v43 = v71;
          v44 = v65;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v71, v65, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          v45 = v40(v43 + v37, 1, v39);
          v34 = v67;
          if (v45 == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_25:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_26:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v68, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AspireSimilarityPlaintextPacking);
            v52 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd;
            v53 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR;
            v54 = v59;
LABEL_27:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, v52, v53);
            break;
          }

          v46 = v64;
          outlined init with take of AMDPbPIRConfig(v43 + v37, v64, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v47 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v44, v46);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if ((v47 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = v68;
        v48 = v69;
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireSimilarityPlaintextPacking);
        v16 = v59;
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v27 = v57;
        v14 = v58;
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      if (v51)
      {
        v28 = v70 + v62;
        v25 = v34 + v62;
        if (--v23)
        {
          continue;
        }
      }

      return v51 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    goto LABEL_29;
  }

  v51 = 1;
  return v51 & 1;
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

          MEMORY[0x22AA5F1C0]();
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

          MEMORY[0x22AA5F1C0]();
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML22AspireApiEvaluationKeyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v110[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v97);
  v106 = &v87 - v11;
  v103 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = (&v87 - v15);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  MEMORY[0x28223BE20](v98);
  v108 = &v87 - v16;
  v105 = type metadata accessor for AspireApiEvaluationKey(0);
  MEMORY[0x28223BE20](v105);
  v107 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v87 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_76;
  }

  if (!v22 || a1 == a2)
  {
    v82 = 1;
    return v82 & 1;
  }

  v92 = v10;
  v91 = v7;
  v90 = 0;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v12 + 48);
  v27 = v25;
  v93 = *(v19 + 72);
  v94 = v4;
  v28 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR;
  v104 = &v87 - v20;
  v95 = (v5 + 48);
  v96 = v26;
  while (1)
  {
    v100 = v24;
    outlined init with copy of AMDPbPIRConfig(v24, v21, type metadata accessor for AspireApiEvaluationKey);
    v99 = v27;
    v29 = v107;
    outlined init with copy of AMDPbPIRConfig(v27, v107, type metadata accessor for AspireApiEvaluationKey);
    v30 = *(v105 + 20);
    v31 = *(v98 + 48);
    v32 = v108;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v21[v30], v108, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v30, v32 + v31, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v33 = *v96;
    v34 = v103;
    if ((*v96)(v32, 1, v103) == 1)
    {
      v35 = v33(v108 + v31, 1, v34);
      v36 = v104;
      v37 = v95;
      if (v35 != 1)
      {
        goto LABEL_71;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      goto LABEL_60;
    }

    v38 = v108;
    v39 = v102;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v108, v102, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    if (v33(v38 + v31, 1, v34) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireApiEvaluationKeyMetadata);
      v36 = v104;
LABEL_71:
      v84 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
      v85 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
      goto LABEL_72;
    }

    v40 = v38 + v31;
    v41 = v101;
    outlined init with take of AMDPbPIRConfig(v40, v101, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v36 = v104;
    if (*v39 != *v41)
    {
      goto LABEL_69;
    }

    v42 = v102[1];
    v43 = v102[2];
    v45 = v101[1];
    v44 = v101[2];
    v46 = v43 >> 62;
    v47 = v44 >> 62;
    if (v43 >> 62 == 3)
    {
      v48 = 0;
      if (!v42 && v43 == 0xC000000000000000 && v44 >> 62 == 3)
      {
        v48 = 0;
        if (!v45 && v44 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v47 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v54 = *(v42 + 16);
        v53 = *(v42 + 24);
        v51 = __OFSUB__(v53, v54);
        v48 = v53 - v54;
        if (v51)
        {
          goto LABEL_79;
        }

        goto LABEL_26;
      }

      v48 = 0;
      if (v47 <= 1)
      {
        goto LABEL_27;
      }
    }

    else if (v46)
    {
      LODWORD(v48) = HIDWORD(v42) - v42;
      if (__OFSUB__(HIDWORD(v42), v42))
      {
        goto LABEL_80;
      }

      v48 = v48;
      if (v47 <= 1)
      {
LABEL_27:
        if (v47)
        {
          LODWORD(v52) = HIDWORD(v45) - v45;
          if (__OFSUB__(HIDWORD(v45), v45))
          {
            goto LABEL_78;
          }

          v52 = v52;
        }

        else
        {
          v52 = BYTE6(v44);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v48 = BYTE6(v43);
      if (v47 <= 1)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if (v47 != 2)
    {
      if (v48)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v50 = *(v45 + 16);
    v49 = *(v45 + 24);
    v51 = __OFSUB__(v49, v50);
    v52 = v49 - v50;
    if (v51)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

LABEL_33:
    if (v48 != v52)
    {
      goto LABEL_69;
    }

    if (v48 >= 1)
    {
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          v55 = *(v42 + 16);
          v89 = *(v42 + 24);
          outlined copy of Data._Representation(v45, v44);
          v56 = __DataStorage._bytes.getter();
          if (v56)
          {
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v55, v57))
            {
              goto LABEL_83;
            }

            v56 += v55 - v57;
          }

          if (__OFSUB__(v89, v55))
          {
            goto LABEL_82;
          }

          MEMORY[0x22AA5F1C0]();
          v58 = v90;
          closure #1 in static Data.== infix(_:_:)(v56, v45, v44, v110);
          v90 = v58;
          outlined consume of Data._Representation(v45, v44);
          if ((v110[0] & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        }

        memset(v110, 0, 14);
        outlined copy of Data._Representation(v45, v44);
      }

      else
      {
        if (v46)
        {
          v59 = v42;
          v60 = v42 >> 32;
          v89 = v60 - v59;
          if (v60 < v59)
          {
            goto LABEL_81;
          }

          v61 = v59;
          outlined copy of Data._Representation(v45, v44);
          v62 = __DataStorage._bytes.getter();
          if (v62)
          {
            v88 = v62;
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v61, v63))
            {
              goto LABEL_84;
            }

            v88 += v61 - v63;
          }

          else
          {
            v88 = 0;
          }

          MEMORY[0x22AA5F1C0]();
          v65 = v90;
          closure #1 in static Data.== infix(_:_:)(v88, v45, v44, v110);
          v90 = v65;
          outlined consume of Data._Representation(v45, v44);
          if ((v110[0] & 1) == 0)
          {
LABEL_69:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v101, type metadata accessor for AspireApiEvaluationKeyMetadata);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v102, type metadata accessor for AspireApiEvaluationKeyMetadata);
            v84 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
            v85 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
LABEL_72:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, v84, v85);
            goto LABEL_75;
          }

          goto LABEL_59;
        }

        v110[0] = v102[1];
        LOWORD(v110[1]) = v43;
        BYTE2(v110[1]) = BYTE2(v43);
        BYTE3(v110[1]) = BYTE3(v43);
        BYTE4(v110[1]) = BYTE4(v43);
        BYTE5(v110[1]) = BYTE5(v43);
        outlined copy of Data._Representation(v45, v44);
      }

      v64 = v90;
      closure #1 in static Data.== infix(_:_:)(v110, v45, v44, &v109);
      v90 = v64;
      outlined consume of Data._Representation(v45, v44);
      if (!v109)
      {
        goto LABEL_69;
      }
    }

LABEL_59:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v67 = v101;
    v66 = v102;
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v67, type metadata accessor for AspireApiEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v66, type metadata accessor for AspireApiEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v37 = v95;
    if ((v68 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_60:
    v69 = v106;
    v70 = *(v105 + 24);
    v71 = *(v97 + 48);
    v72 = v36;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36 + v70, v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v107 + v70, v69 + v71, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
    v73 = *v37;
    v74 = v94;
    if ((*v37)(v69, 1, v94) != 1)
    {
      break;
    }

    if (v73(v106 + v71, 1, v74) != 1)
    {
      goto LABEL_74;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
LABEL_65:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v81 = v107;
    v82 = dispatch thunk of static Equatable.== infix(_:_:)();
    v83 = v81;
    v21 = v104;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v83, type metadata accessor for AspireApiEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AspireApiEvaluationKey);
    if (v82)
    {
      v27 = v99 + v93;
      v24 = v100 + v93;
      if (--v22)
      {
        continue;
      }
    }

    return v82 & 1;
  }

  v75 = v106;
  v76 = v28;
  v77 = v92;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v106, v92, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v76);
  if (v73(v75 + v71, 1, v74) != 1)
  {
    v78 = v106;
    v79 = v91;
    outlined init with take of AMDPbPIRConfig(v106 + v71, v91, type metadata accessor for AspireHeSerializedEvaluationKey);
    v80 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v77, v79);
    v36 = v104;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v79, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v76);
    v28 = v76;
    if ((v80 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_65;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_74:
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v36 = v72;
LABEL_75:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v107, type metadata accessor for AspireApiEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AspireApiEvaluationKey);
LABEL_76:
  v82 = 0;
  return v82 & 1;
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML25AspireApiPECShardResponseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v265[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v234 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v235 = &v208 - v8;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v236);
  v243 = &v208 - v9;
  v244 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v241 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v240 = &v208 - v13;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v242);
  v246 = &v208 - v14;
  v237 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  MEMORY[0x28223BE20](v237);
  v260 = (&v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v239 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  MEMORY[0x28223BE20](v239);
  v252 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  MEMORY[0x28223BE20](v245);
  v255 = &v208 - v17;
  v261 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v18 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v248 = (&v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v249 = (&v208 - v21);
  MEMORY[0x28223BE20](v22);
  v256 = &v208 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v257 = &v208 - v25;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v258);
  v27 = &v208 - v26;
  v251 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v238 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v262 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v208 - v30;
  v247 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v250 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v263 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v259 = &v208 - v34;
  v35 = type metadata accessor for AspireApiPECShardResponse(0);
  MEMORY[0x28223BE20](v35);
  v254 = &v208 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v253 = &v208 - v40;
  v41 = *(a1 + 16);
  if (v41 != *(a2 + 16))
  {
    goto LABEL_226;
  }

  if (!v41 || a1 == a2)
  {
    v200 = 1;
    return v200 & 1;
  }

  v217 = v38;
  v42 = 0;
  v223 = 0;
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = a1 + v43;
  v225 = a2 + v43;
  v229 = (v18 + 48);
  v218 = (v10 + 48);
  v210 = (v5 + 48);
  v45 = *(v39 + 72);
  v211 = v4;
  v46 = v259;
  v48 = v253;
  v47 = v254;
  v230 = v41;
  v216 = v44;
  v215 = v45;
  while (1)
  {
    v231 = v42;
    v49 = v45 * v42;
    outlined init with copy of AMDPbPIRConfig(v44 + v45 * v42, v48, type metadata accessor for AspireApiPECShardResponse);
    if (v231 == v230)
    {
      goto LABEL_236;
    }

    outlined init with copy of AMDPbPIRConfig(v225 + v49, v47, type metadata accessor for AspireApiPECShardResponse);
    v50 = *v48;
    v51 = *v47;
    v52 = *(*v48 + 16);
    if (v52 != *(*v47 + 16))
    {
      goto LABEL_225;
    }

    if (v52 && v50 != v51)
    {
      break;
    }

LABEL_202:
    v194 = v48[1];
    v195 = v47[1];
    v196 = *(v194 + 16);
    if (v196 != *(v195 + 16))
    {
      goto LABEL_225;
    }

    if (v196)
    {
      v197 = v194 == v195;
    }

    else
    {
      v197 = 1;
    }

    if (!v197)
    {
      v198 = (v194 + 32);
      v199 = (v195 + 32);
      while (v196)
      {
        if (*v198 != *v199)
        {
          goto LABEL_225;
        }

        ++v198;
        ++v199;
        if (!--v196)
        {
          goto LABEL_211;
        }
      }

      __break(1u);
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
    }

LABEL_211:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v48[2], v47[2]) & 1) == 0)
    {
      goto LABEL_225;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v200 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v47, type metadata accessor for AspireApiPECShardResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireApiPECShardResponse);
    if (v200)
    {
      v42 = v231 + 1;
      v44 = v216;
      v45 = v215;
      if (v231 + 1 != v230)
      {
        continue;
      }
    }

    return v200 & 1;
  }

  v53 = 0;
  v54 = (*(v250 + 80) + 32) & ~*(v250 + 80);
  v220 = v50 + v54;
  v219 = v51 + v54;
  v214 = v31;
  v213 = v50;
  v221 = v51;
  v212 = v52;
  v233 = v27;
  while (1)
  {
    if (v53 >= *(v50 + 16))
    {
      goto LABEL_237;
    }

    v55 = v53;
    v56 = *(v250 + 72) * v53;
    outlined init with copy of AMDPbPIRConfig(v220 + v56, v46, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v57 = *(v221 + 16);
    v222 = v55;
    if (v55 >= v57)
    {
      goto LABEL_238;
    }

    v58 = v219 + v56;
    v59 = v263;
    outlined init with copy of AMDPbPIRConfig(v58, v263, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v60 = v261;
    v61 = v229;
    if (*v46 != *v59)
    {
      goto LABEL_224;
    }

    if (*(v46 + 4) != *(v263 + 4))
    {
      goto LABEL_224;
    }

    v62 = *(v46 + 8);
    v63 = *(v263 + 8);
    v64 = *(v62 + 16);
    if (v64 != *(v63 + 16))
    {
      goto LABEL_224;
    }

    if (v64 && v62 != v63)
    {
      break;
    }

LABEL_190:
    v171 = v263;
    v172 = v233;
    v173 = *(v247 + 32);
    v174 = *(v242 + 48);
    v175 = v246;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46 + v173, v246, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v171 + v173, v175 + v174, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    v176 = *v218;
    v177 = v244;
    v178 = (*v218)(v175, 1, v244);
    v179 = v243;
    if (v178 == 1)
    {
      if (v176(v175 + v174, 1, v177) != 1)
      {
        goto LABEL_229;
      }

      v27 = v172;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v175, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v46 = v259;
      v31 = v214;
    }

    else
    {
      v180 = v240;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v175, v240, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      if (v176(v175 + v174, 1, v177) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v180, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_229:
        v205 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
        v206 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
        v207 = v175;
        goto LABEL_233;
      }

      v181 = v241;
      outlined init with take of AMDPbPIRConfig(v175 + v174, v241, type metadata accessor for AspireSimilarityPlaintextPacking);
      v182 = *(v236 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v180, v179, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v181, v179 + v182, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      v183 = *v210;
      v184 = v211;
      if ((*v210)(v179, 1, v211) == 1)
      {
        v185 = v183(v179 + v182, 1, v184);
        v31 = v214;
        if (v185 != 1)
        {
          goto LABEL_231;
        }

        v27 = v172;
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v179, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
      }

      else
      {
        v186 = v235;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v179, v235, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v187 = v183(v179 + v182, 1, v184);
        v31 = v214;
        if (v187 == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v186, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v180 = v240;
LABEL_231:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v179, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_232:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v241, type metadata accessor for AspireSimilarityPlaintextPacking);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v180, type metadata accessor for AspireSimilarityPlaintextPacking);
          v205 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd;
          v206 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR;
          v207 = v246;
LABEL_233:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v207, v205, v206);
          v46 = v259;
          goto LABEL_224;
        }

        v27 = v172;
        v188 = v234;
        outlined init with take of AMDPbPIRConfig(v179 + v182, v234, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        v189 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v186, v188);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v188, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v186, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v179, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v180 = v240;
        if ((v189 & 1) == 0)
        {
          goto LABEL_232;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v190 = v241;
      v191 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v190, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v180, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v246, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v46 = v259;
      if ((v191 & 1) == 0)
      {
        goto LABEL_224;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v192 = v263;
    v193 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v192, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v48 = v253;
    v47 = v254;
    v50 = v213;
    if ((v193 & 1) == 0)
    {
      goto LABEL_225;
    }

    v53 = v222 + 1;
    if (v222 + 1 == v212)
    {
      goto LABEL_202;
    }
  }

  v65 = 0;
  v66 = (*(v238 + 80) + 32) & ~*(v238 + 80);
  v228 = v62 + v66;
  v226 = v63 + v66;
  v227 = *(v238 + 72);
  v224 = v64;
  while (1)
  {
    v67 = v227 * v65;
    outlined init with copy of AMDPbPIRConfig(v228 + v227 * v65, v31, type metadata accessor for AspireHeSerializedCiphertext);
    if (v65 == v64)
    {
      goto LABEL_235;
    }

    v232 = v65;
    v68 = v46;
    v69 = v262;
    outlined init with copy of AMDPbPIRConfig(v226 + v67, v262, type metadata accessor for AspireHeSerializedCiphertext);
    v70 = *(v258 + 48);
    v71 = v233;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31, v233, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v69, v71 + v70, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v72 = *v61;
    if ((*v61)(v71, 1, v60) != 1)
    {
      break;
    }

    if (v72(v71 + v70, 1, v60) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v262, type metadata accessor for AspireHeSerializedCiphertext);
      v201 = v31;
      v202 = type metadata accessor for AspireHeSerializedCiphertext;
LABEL_219:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v201, v202);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
      goto LABEL_224;
    }

LABEL_188:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v169 = v262;
    v170 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v169, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AspireHeSerializedCiphertext);
    v64 = v224;
    v46 = v68;
    if ((v170 & 1) == 0)
    {
      goto LABEL_224;
    }

    v65 = v232 + 1;
    if (v232 + 1 == v224)
    {
      goto LABEL_190;
    }
  }

  v73 = v257;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v71, v257, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v72(v71 + v70, 1, v60) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v262, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AspireHeSerializedCiphertext);
    v202 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType;
    v201 = v73;
    goto LABEL_219;
  }

  v74 = v256;
  outlined init with take of AMDPbPIRConfig(v71 + v70, v256, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v75 = *(v245 + 48);
  v76 = v73;
  v77 = v255;
  outlined init with copy of AMDPbPIRConfig(v76, v255, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AMDPbPIRConfig(v74, v77 + v75, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v78 = v249;
    outlined init with copy of AMDPbPIRConfig(v77, v249, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v203 = type metadata accessor for AspireHeSerializedSeededCiphertext;
LABEL_222:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v78, v203);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v77, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
      goto LABEL_223;
    }

    v87 = v252;
    outlined init with take of AMDPbPIRConfig(v77 + v75, v252, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v88 = *v78;
    v89 = v78[1];
    v91 = *v87;
    v90 = v87[1];
    v92 = v89 >> 62;
    v93 = v90 >> 62;
    v94 = v78;
    if (v89 >> 62 == 3)
    {
      v95 = 0;
      v61 = v229;
      if (!v88 && v89 == 0xC000000000000000 && v90 >> 62 == 3)
      {
        v95 = 0;
        if (!v91 && v90 == 0xC000000000000000)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v61 = v229;
      if (v92 > 1)
      {
        if (v92 == 2)
        {
          v100 = *(v88 + 16);
          v99 = *(v88 + 24);
          v98 = __OFSUB__(v99, v100);
          v95 = v99 - v100;
          if (v98)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v95 = 0;
        }
      }

      else if (v92)
      {
        LODWORD(v95) = HIDWORD(v88) - v88;
        if (__OFSUB__(HIDWORD(v88), v88))
        {
          goto LABEL_248;
        }

        v95 = v95;
      }

      else
      {
        v95 = BYTE6(v89);
      }
    }

    if (v93 > 1)
    {
      if (v93 != 2)
      {
        if (v95)
        {
          goto LABEL_217;
        }

        goto LABEL_135;
      }

      v112 = *(v91 + 16);
      v111 = *(v91 + 24);
      v98 = __OFSUB__(v111, v112);
      v110 = v111 - v112;
      if (v98)
      {
        goto LABEL_240;
      }
    }

    else if (v93)
    {
      LODWORD(v110) = HIDWORD(v91) - v91;
      if (__OFSUB__(HIDWORD(v91), v91))
      {
        goto LABEL_242;
      }

      v110 = v110;
    }

    else
    {
      v110 = BYTE6(v90);
    }

    if (v95 != v110)
    {
      goto LABEL_217;
    }

    if (v95 < 1)
    {
      goto LABEL_135;
    }

    if (v92 > 1)
    {
      if (v92 != 2)
      {
        memset(v265, 0, 14);
        outlined copy of Data._Representation(v91, v90);
LABEL_111:
        v131 = v223;
        closure #1 in static Data.== infix(_:_:)(v265, v91, v90, &v264);
        v223 = v131;
        outlined consume of Data._Representation(v91, v90);
        if ((v264 & 1) == 0)
        {
          goto LABEL_217;
        }

        goto LABEL_135;
      }

      v113 = *(v88 + 16);
      v209 = *(v88 + 24);
      outlined copy of Data._Representation(v91, v90);
      v114 = __DataStorage._bytes.getter();
      if (v114)
      {
        v115 = v114;
        v116 = __DataStorage._offset.getter();
        if (__OFSUB__(v113, v116))
        {
          goto LABEL_258;
        }

        v117 = v113;
        v118 = v113 - v116 + v115;
      }

      else
      {
        v117 = v113;
        v118 = 0;
      }

      if (__OFSUB__(v209, v117))
      {
        goto LABEL_253;
      }

      MEMORY[0x22AA5F1C0]();
      v133 = v118;
    }

    else
    {
      if (!v92)
      {
        v265[0] = v88;
        LOWORD(v265[1]) = v89;
        BYTE2(v265[1]) = BYTE2(v89);
        BYTE3(v265[1]) = BYTE3(v89);
        BYTE4(v265[1]) = BYTE4(v89);
        BYTE5(v265[1]) = BYTE5(v89);
        outlined copy of Data._Representation(v91, v90);
        v94 = v249;
        goto LABEL_111;
      }

      v126 = v88;
      if (v88 >> 32 < v88)
      {
        goto LABEL_251;
      }

      outlined copy of Data._Representation(v91, v90);
      v127 = __DataStorage._bytes.getter();
      if (v127)
      {
        v128 = v127;
        v129 = __DataStorage._offset.getter();
        if (__OFSUB__(v126, v129))
        {
          goto LABEL_259;
        }

        v130 = v126 - v129 + v128;
        v71 = v233;
      }

      else
      {
        v130 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v133 = v130;
    }

    v141 = v223;
    closure #1 in static Data.== infix(_:_:)(v133, v91, v90, v265);
    v223 = v141;
    outlined consume of Data._Representation(v91, v90);
    v94 = v249;
    if ((v265[0] & 1) == 0)
    {
      goto LABEL_217;
    }

LABEL_135:
    v142 = *(v94 + 16);
    v143 = *(v94 + 24);
    v145 = *(v252 + 16);
    v144 = *(v252 + 24);
    v146 = v143 >> 62;
    v147 = v144 >> 62;
    if (v143 >> 62 == 3)
    {
      v148 = 0;
      if (!v142 && v143 == 0xC000000000000000 && v144 >> 62 == 3)
      {
        v148 = 0;
        if (!v145 && v144 == 0xC000000000000000)
        {
          goto LABEL_185;
        }
      }
    }

    else if (v146 > 1)
    {
      if (v146 == 2)
      {
        v150 = *(v142 + 16);
        v149 = *(v142 + 24);
        v98 = __OFSUB__(v149, v150);
        v148 = v149 - v150;
        if (v98)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v148 = 0;
      }
    }

    else if (v146)
    {
      LODWORD(v148) = HIDWORD(v142) - v142;
      if (__OFSUB__(HIDWORD(v142), v142))
      {
        goto LABEL_249;
      }

      v148 = v148;
    }

    else
    {
      v148 = BYTE6(v143);
    }

    if (v147 > 1)
    {
      if (v147 != 2)
      {
        if (v148)
        {
          goto LABEL_217;
        }

        goto LABEL_185;
      }

      v153 = *(v145 + 16);
      v152 = *(v145 + 24);
      v98 = __OFSUB__(v152, v153);
      v151 = v152 - v153;
      if (v98)
      {
        goto LABEL_243;
      }
    }

    else if (v147)
    {
      LODWORD(v151) = HIDWORD(v145) - v145;
      if (__OFSUB__(HIDWORD(v145), v145))
      {
        goto LABEL_244;
      }

      v151 = v151;
    }

    else
    {
      v151 = BYTE6(v144);
    }

    if (v148 != v151)
    {
      goto LABEL_217;
    }

    if (v148 >= 1)
    {
      if (v146 > 1)
      {
        if (v146 != 2)
        {
          memset(v265, 0, 14);
          outlined copy of Data._Representation(v145, v144);
LABEL_177:
          v165 = v223;
          closure #1 in static Data.== infix(_:_:)(v265, v145, v144, &v264);
          v223 = v165;
          outlined consume of Data._Representation(v145, v144);
          if ((v264 & 1) == 0)
          {
            goto LABEL_217;
          }

          goto LABEL_185;
        }

        v154 = *(v142 + 16);
        v209 = *(v142 + 24);
        outlined copy of Data._Representation(v145, v144);
        v155 = __DataStorage._bytes.getter();
        if (v155)
        {
          v156 = v155;
          v157 = __DataStorage._offset.getter();
          if (__OFSUB__(v154, v157))
          {
            goto LABEL_261;
          }

          v158 = v154;
          v159 = v154 - v157 + v156;
        }

        else
        {
          v158 = v154;
          v159 = 0;
        }

        if (__OFSUB__(v209, v158))
        {
          goto LABEL_256;
        }

        MEMORY[0x22AA5F1C0]();
        v166 = v159;
      }

      else
      {
        if (!v146)
        {
          v265[0] = *(v94 + 16);
          LOWORD(v265[1]) = v143;
          BYTE2(v265[1]) = BYTE2(v143);
          BYTE3(v265[1]) = BYTE3(v143);
          BYTE4(v265[1]) = BYTE4(v143);
          BYTE5(v265[1]) = BYTE5(v143);
          outlined copy of Data._Representation(v145, v144);
          v94 = v249;
          goto LABEL_177;
        }

        v160 = v142;
        if (v142 >> 32 < v142)
        {
          goto LABEL_255;
        }

        outlined copy of Data._Representation(*(v252 + 16), *(v252 + 24));
        v161 = __DataStorage._bytes.getter();
        if (v161)
        {
          v162 = v161;
          v163 = __DataStorage._offset.getter();
          if (__OFSUB__(v160, v163))
          {
            goto LABEL_262;
          }

          v164 = v160 - v163 + v162;
        }

        else
        {
          v164 = 0;
        }

        MEMORY[0x22AA5F1C0]();
        v166 = v164;
      }

      v167 = v223;
      closure #1 in static Data.== infix(_:_:)(v166, v145, v144, v265);
      v223 = v167;
      outlined consume of Data._Representation(v145, v144);
      v94 = v249;
      if ((v265[0] & 1) == 0)
      {
        goto LABEL_217;
      }
    }

LABEL_185:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v168 = dispatch thunk of static Equatable.== infix(_:_:)();
    v94 = v249;
    if ((v168 & 1) == 0)
    {
LABEL_217:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v252, type metadata accessor for AspireHeSerializedSeededCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v94, type metadata accessor for AspireHeSerializedSeededCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v255, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v46 = v259;
      goto LABEL_223;
    }

    v60 = v261;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v252, type metadata accessor for AspireHeSerializedSeededCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v94, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v68 = v259;
    goto LABEL_187;
  }

  v78 = v248;
  outlined init with copy of AMDPbPIRConfig(v77, v248, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v203 = type metadata accessor for AspireHeSerializedFullCiphertext;
    goto LABEL_222;
  }

  v79 = v260;
  outlined init with take of AMDPbPIRConfig(v77 + v75, v260, type metadata accessor for AspireHeSerializedFullCiphertext);
  v80 = *v78;
  v81 = v78[1];
  v83 = *v79;
  v82 = v79[1];
  v84 = v81 >> 62;
  v85 = v82 >> 62;
  if (v81 >> 62 == 3)
  {
    v86 = 0;
    if (!v80 && v81 == 0xC000000000000000 && v82 >> 62 == 3)
    {
      v86 = 0;
      if (!v83 && v82 == 0xC000000000000000)
      {
        goto LABEL_123;
      }
    }
  }

  else if (v84 > 1)
  {
    if (v84 == 2)
    {
      v97 = *(v80 + 16);
      v96 = *(v80 + 24);
      v98 = __OFSUB__(v96, v97);
      v86 = v96 - v97;
      if (v98)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v86 = 0;
    }
  }

  else if (v84)
  {
    LODWORD(v86) = HIDWORD(v80) - v80;
    if (__OFSUB__(HIDWORD(v80), v80))
    {
      goto LABEL_245;
    }

    v86 = v86;
  }

  else
  {
    v86 = BYTE6(v81);
  }

  if (v85 > 1)
  {
    if (v85 != 2)
    {
      if (v86)
      {
        goto LABEL_216;
      }

      goto LABEL_123;
    }

    v103 = *(v83 + 16);
    v102 = *(v83 + 24);
    v98 = __OFSUB__(v102, v103);
    v101 = v102 - v103;
    if (v98)
    {
      goto LABEL_241;
    }
  }

  else if (v85)
  {
    LODWORD(v101) = HIDWORD(v83) - v83;
    if (__OFSUB__(HIDWORD(v83), v83))
    {
      goto LABEL_239;
    }

    v101 = v101;
  }

  else
  {
    v101 = BYTE6(v82);
  }

  if (v86 != v101)
  {
    goto LABEL_216;
  }

  if (v86 < 1)
  {
    goto LABEL_123;
  }

  if (v84 > 1)
  {
    if (v84 != 2)
    {
      memset(v265, 0, 14);
      outlined copy of Data._Representation(v83, v82);
      v124 = v223;
      closure #1 in static Data.== infix(_:_:)(v265, v83, v82, &v264);
      v223 = v124;
      outlined consume of Data._Representation(v83, v82);
      v125 = v264;
      goto LABEL_122;
    }

    v105 = *(v80 + 16);
    v209 = *(v80 + 24);
    outlined copy of Data._Representation(v83, v82);
    v106 = __DataStorage._bytes.getter();
    if (v106)
    {
      v107 = v106;
      v108 = __DataStorage._offset.getter();
      if (__OFSUB__(v105, v108))
      {
        goto LABEL_257;
      }

      v109 = v105 - v108 + v107;
    }

    else
    {
      v109 = 0;
    }

    if (__OFSUB__(v209, v105))
    {
      goto LABEL_254;
    }

    MEMORY[0x22AA5F1C0]();
    v132 = v109;
  }

  else
  {
    if (!v84)
    {
      v265[0] = *v78;
      LOWORD(v265[1]) = v81;
      BYTE2(v265[1]) = BYTE2(v81);
      BYTE3(v265[1]) = BYTE3(v81);
      BYTE4(v265[1]) = BYTE4(v81);
      BYTE5(v265[1]) = BYTE5(v81);
      outlined copy of Data._Representation(v83, v82);
      v104 = v223;
      closure #1 in static Data.== infix(_:_:)(v265, v83, v82, &v264);
      v223 = v104;
      outlined consume of Data._Representation(v83, v82);
      v78 = v248;
      if ((v264 & 1) == 0)
      {
        goto LABEL_216;
      }

      goto LABEL_123;
    }

    v119 = v80;
    if (v80 >> 32 < v80)
    {
      goto LABEL_252;
    }

    outlined copy of Data._Representation(v83, v82);
    v120 = __DataStorage._bytes.getter();
    if (v120)
    {
      v121 = v120;
      v122 = __DataStorage._offset.getter();
      if (__OFSUB__(v119, v122))
      {
        goto LABEL_260;
      }

      v123 = v119 - v122 + v121;
    }

    else
    {
      v123 = 0;
    }

    MEMORY[0x22AA5F1C0]();
    v132 = v123;
  }

  v134 = v223;
  closure #1 in static Data.== infix(_:_:)(v132, v83, v82, v265);
  v223 = v134;
  outlined consume of Data._Representation(v83, v82);
  v125 = v265[0];
  v46 = v259;
LABEL_122:
  v78 = v248;
  if ((v125 & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_123:
  v135 = v78[2];
  v136 = v260[2];
  v137 = *(v135 + 16);
  if (v137 != *(v136 + 16))
  {
    goto LABEL_216;
  }

  if (!v137 || v135 == v136)
  {
LABEL_129:
    if (v78[3] != v260[3])
    {
      goto LABEL_216;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v140 = dispatch thunk of static Equatable.== infix(_:_:)();
    v78 = v248;
    if ((v140 & 1) == 0)
    {
      goto LABEL_216;
    }

    v68 = v46;
    v60 = v261;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v260, type metadata accessor for AspireHeSerializedFullCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v78, type metadata accessor for AspireHeSerializedFullCiphertext);
    v61 = v229;
LABEL_187:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v255, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v256, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v257, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v71 = v233;
    goto LABEL_188;
  }

  v138 = (v135 + 32);
  v139 = (v136 + 32);
  while (*v138 == *v139)
  {
    ++v138;
    ++v139;
    if (!--v137)
    {
      goto LABEL_129;
    }
  }

LABEL_216:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v260, type metadata accessor for AspireHeSerializedFullCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v78, type metadata accessor for AspireHeSerializedFullCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v255, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_223:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v256, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v257, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v71, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v262, type metadata accessor for AspireHeSerializedCiphertext);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AspireHeSerializedCiphertext);
LABEL_224:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v263, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v46, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  v48 = v253;
  v47 = v254;
LABEL_225:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v47, type metadata accessor for AspireApiPECShardResponse);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v48, type metadata accessor for AspireApiPECShardResponse);
LABEL_226:
  v200 = 0;
  return v200 & 1;
}