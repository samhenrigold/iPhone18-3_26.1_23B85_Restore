void AspireApiPECRequest.evaluationKey.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireApiEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireApiEvaluationKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiEvaluationKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireApiEvaluationKey);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspireApiPECRequest.hasEvaluationKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 36), v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v5 = type metadata accessor for AspireApiEvaluationKey(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireApiPECRequest.clearEvaluationKey()()
{
  v1 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v2 = type metadata accessor for AspireApiEvaluationKey(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireApiStashOfEntries.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  a2[2] = v3;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t AspireApiOPRFRequest.queryElement.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspireApiOPRFRequest.queryElement.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AspireApiError.configVersionNotFound.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v11 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v8 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  return (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
}

uint64_t key path getter for AspireApiError.configVersionNotFound : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v11 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v8 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  return (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
}

uint64_t key path setter for AspireApiError.configVersionNotFound : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiError.configVersionNotFound.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspireApiError.ConfigVersionNotFound.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

void (*AspireApiError.configVersionNotFound.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      return AspireApiError.configVersionNotFound.modify;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  UnknownStorage.init()();
  v15 = *(v9 + 20);
  v16 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  return AspireApiError.configVersionNotFound.modify;
}

void AspireApiError.configVersionNotFound.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiError.evaluationKeyNotFound.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.evaluationKeyNotFound : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.evaluationKeyNotFound : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiError.evaluationKeyNotFound.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.evaluationKeyNotFound.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.EvaluationKeyNotFound(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.evaluationKeyNotFound.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  return AspireApiError.evaluationKeyNotFound.modify;
}

void AspireApiError.evaluationKeyNotFound.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiError.invalidRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiError.InvalidRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.invalidRequest : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.InvalidRequest);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.invalidRequest : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.InvalidRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiError.InvalidRequest);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.InvalidRequest);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiError.invalidRequest.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.InvalidRequest);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.invalidRequest.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.InvalidRequest(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.invalidRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.InvalidRequest);
  return AspireApiError.invalidRequest.modify;
}

void AspireApiError.invalidRequest.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiError.InvalidRequest);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.InvalidRequest);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspireApiError.internalError.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a1, type metadata accessor for AspireApiError.InternalError);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireApiError.internalError : AspireApiError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.InternalError);
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiError.OneOf_ErrorType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireApiError.internalError : AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.InternalError(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v6, type metadata accessor for AspireApiError.InternalError);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiError.InternalError);
  v7 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspireApiError.internalError.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1, type metadata accessor for AspireApiError.InternalError);
  v3 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspireApiError.internalError.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireApiError.InternalError(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireApiError.internalError.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
    goto LABEL_15;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v11, type metadata accessor for AspireApiError.InternalError);
  return AspireApiError.internalError.modify;
}

void AspireApiError.internalError.modify(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[3], v6, type metadata accessor for AspireApiError.InternalError);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v9, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.InternalError);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v9, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t key path getter for AspireApiError.ConfigVersionNotFound.configResponse : AspireApiError.ConfigVersionNotFound@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 20), v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8 = type metadata accessor for AspireApiConfigResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspireApiEvaluationKeyMetadata(v6, a2, type metadata accessor for AspireApiConfigResponse);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a2[1] = v10;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireApiError.ConfigVersionNotFound.configResponse : AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, v7, type metadata accessor for AspireApiConfigResponse);
  v8 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(v7, a2 + v8, type metadata accessor for AspireApiConfigResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireApiError.ConfigVersionNotFound.configResponse.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with take of AspireApiEvaluationKeyMetadata(a1, v1 + v3, type metadata accessor for AspireApiConfigResponse);
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireApiError.ConfigVersionNotFound.configResponse.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireApiConfigResponse(0);
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
  v15 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v14[1] = v17;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v14, type metadata accessor for AspireApiConfigResponse);
  }

  return AspireApiError.ConfigVersionNotFound.configResponse.modify;
}

void AspireApiError.ConfigVersionNotFound.configResponse.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEvaluationKeyConfig((*a1)[5], v5, type metadata accessor for AspireApiConfigResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v5, v10 + v4, type metadata accessor for AspireApiConfigResponse);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiConfigResponse);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v6, v10 + v4, type metadata accessor for AspireApiConfigResponse);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t AspireApiEvaluationKey.clearMetadata()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireApiEmpty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static AspireApiError.EvaluationKeyNotFound.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEmpty(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty, &protocol conformance descriptor for AspireApiEmpty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEmpty(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty, &protocol conformance descriptor for AspireApiEmpty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEmpty(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEmpty and conformance AspireApiEmpty, type metadata accessor for AspireApiEmpty, &protocol conformance descriptor for AspireApiEmpty);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t AspireApiEvaluationKeyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireApiEvaluationKeyMetadata.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKeyMetadata(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiEvaluationKeyMetadata(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || !specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiKeyStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireApiKeyStatus.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiKeyStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiKeyStatus(0);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiKeyStatus.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AspireApiKeyStatus(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireHeEvaluationKeyConfig);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiKeyStatus(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeys.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireApiEvaluationKey(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireApiEvaluationKeys(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKeys(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys, &protocol conformance descriptor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiEvaluationKey(0);
  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiEvaluationKey(0);
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireApiEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiEvaluationKeyMetadata);
}

uint64_t closure #2 in AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireHeSerializedEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey, &protocol conformance descriptor for AspireHeSerializedEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireHeSerializedEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfigRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspireApiConfigRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AspireApiConfigRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static AspireApiConfigResponse.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  a5(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfigRequest@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfigRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest, &protocol conformance descriptor for AspireApiConfigRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfigRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest, &protocol conformance descriptor for AspireApiConfigRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfigRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest, &protocol conformance descriptor for AspireApiConfigRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for AspireApiConfig(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for AspireApiConfig(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireApiConfig.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireApiConfig.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiPIRConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiConfig.OneOf_Config);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiPIRConfig);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiPIRConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig, &protocol conformance descriptor for AspireApiPIRConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiPIRConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiPECConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiConfig.OneOf_Config);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiPECConfig);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiPECConfig);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiConfig.OneOf_Config);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig, &protocol conformance descriptor for AspireApiPECConfig);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiPECConfig);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6, &v21 - v11, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    v15 = type metadata accessor for AspireApiConfig(0);
    v16 = (v6 + *(v15 + 20));
    v17 = *v16;
    v18 = v16[1];
    v19 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = v5;
        if (*(v17 + 16) == *(v17 + 24))
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v20 = v5;
    }

    else
    {
      v20 = v5;
      if (!v19)
      {
        if ((v18 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_15:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v20)
        {
          return result;
        }

        goto LABEL_18;
      }

      if (v17 != v17 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    if (*(v6 + *(v15 + 24)) != 1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (!v20)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspireApiConfig.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireApiConfig.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiConfig.OneOf_Config);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  return result;
}

uint64_t closure #1 in AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPIRConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig, &protocol conformance descriptor for AspireApiPIRConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPIRConfig);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPECConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig, &protocol conformance descriptor for AspireApiPECConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPECConfig);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_225022910;
  *(a2 + v5) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfigResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in AspireApiConfigResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for AspireApiKeyStatus(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiConfigResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for AspireApiConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t AspireApiConfigResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for AspireApiConfig(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig), v4 = v6, result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v6))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for AspireApiKeyStatus(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AspireApiConfigResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfigResponse@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfigResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiConfigRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiRequests.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireApiRequest(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireApiRequests(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiRequests(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests, &protocol conformance descriptor for AspireApiRequests);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiRequests(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests, &protocol conformance descriptor for AspireApiRequests);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiRequests(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests, &protocol conformance descriptor for AspireApiRequests);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiResponses.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireApiResponse(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspireApiResponses(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireApiPECResponse.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiResponses(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiResponses(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiResponses(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AspireApiPIRRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
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
  v29 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiRequest.OneOf_Request);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiRequest.OneOf_Request);
      v32 = v50;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
      v33 = v16;
      v34 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v33, v45, type metadata accessor for AspireApiPIRRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v34, v25, type metadata accessor for AspireApiPIRRequest);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  }

  else
  {
    v38 = v46;
    outlined init with take of AspireApiEvaluationKeyMetadata(v35, v46, type metadata accessor for AspireApiPIRRequest);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v38, v39 + v40, type metadata accessor for AspireApiPIRRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #3 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AspireApiPECRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
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
  v29 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiRequest.OneOf_Request);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v46, type metadata accessor for AspireApiPECRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v33, v25, type metadata accessor for AspireApiPECRequest);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AspireApiEvaluationKeyMetadata(v35, v45, type metadata accessor for AspireApiPECRequest);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v38, v39 + v40, type metadata accessor for AspireApiPECRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #4 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for AspireApiOPRFRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
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
  v29 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiRequest.OneOf_Request);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v46, type metadata accessor for AspireApiOPRFRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v33, v25, type metadata accessor for AspireApiOPRFRequest);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v35, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of AspireApiEvaluationKeyMetadata(v35, v45, type metadata accessor for AspireApiOPRFRequest);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44 + v42, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v38, v39 + v40, type metadata accessor for AspireApiOPRFRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
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

  v16 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + *(v16 + 20), v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v17 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v19 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v19 = v5;
    closure #1 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiRequest.OneOf_Request);
  if (!v19)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 20), v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPIRRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPIRRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiPECRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 20), v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPECRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPECRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiOPRFRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v11 + 20), v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiOPRFRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiOPRFRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiRequest@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3, v11);
        break;
      case 1:
        closure #1 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiPIRResponse(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiResponse.OneOf_Response);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiResponse.OneOf_Response);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
      v32 = v40;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v40, type metadata accessor for AspireApiPIRResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiPIRResponse);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  }

  else
  {
    v36 = v41;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v41, type metadata accessor for AspireApiPIRResponse);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v49 = a4;
  v47 = a2;
  v48 = a3;
  v6 = type metadata accessor for AspireApiPECResponse(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v44 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v39 - v25;
  v43 = v7;
  v27 = *(v7 + 56);
  v46 = v6;
  v28 = v6;
  v29 = v27;
  (v27)(&v39 - v25, 1, 1, v28, v24);
  v40 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v39 = v15;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v31 = v46;
    v32 = v14;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v20, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v20, v17, type metadata accessor for AspireApiResponse.OneOf_Response);
    v32 = v14;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
      v33 = v42;
      outlined init with take of AspireApiEvaluationKeyMetadata(v17, v42, type metadata accessor for AspireApiPECResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v33, v26, type metadata accessor for AspireApiPECResponse);
      v31 = v46;
      v29(v26, 0, 1, v46);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiResponse.OneOf_Response);
      v31 = v46;
    }
  }

  v34 = v44;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);
  v35 = v45;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v35)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v34, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  if ((*(v43 + 48))(v34, 1, v31) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  }

  else
  {
    v37 = v41;
    outlined init with take of AspireApiEvaluationKeyMetadata(v34, v41, type metadata accessor for AspireApiPECResponse);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
    v38 = v40;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v38, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v38, 0, 1, v32);
  }
}

uint64_t closure #3 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiOPRFResponse(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiResponse.OneOf_Response);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiOPRFResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiOPRFResponse);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiResponse.OneOf_Response);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse, &protocol conformance descriptor for AspireApiOPRFResponse);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiOPRFResponse);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v14 - v9, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiResponse.OneOf_Response);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for AspireApiResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPIRResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPIRResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiPECResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPECResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPECResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiOPRFResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v11 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiOPRFResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse, &protocol conformance descriptor for AspireApiOPRFResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiOPRFResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRShardConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          type metadata accessor for AspireApiPIRShardConfig(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 5:
          type metadata accessor for AspireApiPIRShardConfig(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          type metadata accessor for AspireApiPIRShardConfig(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
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
  }

  return result;
}

uint64_t AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v3);
        if (!v4)
        {
          closure #2 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
          closure #3 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
          type metadata accessor for AspireApiPIRShardConfig(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRShardConfig@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[9];
  v6 = (a2 + a1[8]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  v7 = a2 + a1[10];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRShardConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for defaultInstance()
{
  type metadata accessor for AspireApiPIRConfig._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize) = 0;
  *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash) = xmmword_225022910;
  v6 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v7 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  result = (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  static AspireApiPIRConfig._StorageClass.defaultInstance = v0;
  return result;
}

uint64_t AspireApiPIRConfig._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v13 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v47 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v16 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  *v17 = 0;
  *(v17 + 8) = 1;
  v48 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize) = 0;
  v18 = (v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash) = xmmword_225022910;
  v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v50 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v20 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v51 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v22 = type metadata accessor for AspireApiPIRShardConfigs(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v23, v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v11, v1 + v12, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v25 = *(a1 + v24);
  swift_beginAccess();
  *(v1 + v14) = v25;

  v26 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v27 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v26, v49, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v28 = v47;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v27, v1 + v28, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v17 = v30;
  *(v17 + 8) = v29;
  v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v48;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = *v18;
  v38 = v18[1];
  *v18 = v36;
  v18[1] = v35;
  outlined copy of Data._Representation(v36, v35);
  outlined consume of Data._Representation(v37, v38);
  v39 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v40 = v52;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v39, v52, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v41 = v50;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v40, v1 + v41, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  v43 = v53;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v42, v53, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);

  v44 = v51;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v43, v1 + v44, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t AspireApiPIRConfig._StorageClass.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash), *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash + 8));
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);

  return swift_deallocClassInstance();
}

uint64_t AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    swift_allocObject();
    v10 = AspireApiPIRConfig._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 8)
      {
        if (result == 9)
        {
          closure #7 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }

        else if (result == 10)
        {
          closure #8 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }
      }

      else if (result == 5)
      {
        closure #5 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else if (result == 6)
      {
        closure #6 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else
      {
        closure #4 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }
    }

    else if (result == 1)
    {
      closure #1 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      closure #2 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireApiPIRShardConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspirePirKeywordPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspirePirBatchPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireApiPIRShardConfigs(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs, &protocol conformance descriptor for AspireApiPIRShardConfigs);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  result = closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AspireApiPIRShardConfig(0);
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #2 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
    v11 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm);
    swift_beginAccess();
    if (*v11)
    {
      lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
    swift_beginAccess();
    if (*(a1 + v12))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v13 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_17;
      }

      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
    }

    else
    {
      if (!v16)
      {
        if ((v15 & 0xFF000000000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v17 = v14;
      v18 = v14 >> 32;
    }

    if (v17 != v18)
    {
LABEL_16:
      outlined copy of Data._Representation(v14, v15);
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      outlined consume of Data._Representation(v14, v15);
    }

LABEL_17:
    closure #3 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #4 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspirePirKeywordPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspirePirKeywordPirParameters);
}

uint64_t closure #3 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspirePirBatchPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspirePirBatchPirParameters);
}

uint64_t closure #4 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiPIRShardConfigs);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs, &protocol conformance descriptor for AspireApiPIRShardConfigs);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfigs);
}

BOOL closure #1 in static AspireApiPIRConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v116 = *(v3 - 8);
  v117 = v3;
  MEMORY[0x28223BE20](v3);
  v112 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMd, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMR);
  MEMORY[0x28223BE20](v115);
  v118 = &v111 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v111 - v9;
  v10 = type metadata accessor for AspirePirBatchPirParameters(0);
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x28223BE20](v10);
  v114 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v119);
  v122 = &v111 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v131 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v111 - v16;
  v17 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v128 = *(v17 - 8);
  v129 = v17;
  MEMORY[0x28223BE20](v17);
  v125 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v127);
  v130 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v126 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v133 = &v111 - v23;
  v134 = type metadata accessor for AspireHeEncryptionParameters(0);
  v24 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v135 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v111 - v33;
  v35 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v136 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v35, v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v36 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v37 = v137;
  swift_beginAccess();
  v38 = *(v27 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34, v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37 + v36, &v29[v38], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v39 = *(v24 + 48);
  v40 = v134;
  if ((v39)(v29, 1) == 1)
  {
    v41 = v136;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v42 = v39(&v29[v38], 1, v40);
    v43 = v37;
    v44 = v41;
    if (v42 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v46 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v47 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v48 = v29;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, v46, v47);
LABEL_39:

    return 0;
  }

  v45 = v136;
  v43 = v37;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v135, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v39(&v29[v38], 1, v40) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v135, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  v49 = v132;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v29[v38], v132, type metadata accessor for AspireHeEncryptionParameters);
  v44 = v45;

  v50 = v135;
  v51 = static AspireHeEncryptionParameters.== infix(_:_:)(v135, v49);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v49, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v50, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  v52 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v53 = *(v44 + v52);
  v54 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v55 = *(v43 + v54);

  v56 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML23AspireApiPIRShardConfigV_Tt1g5(v53, v55);

  if ((v56 & 1) == 0)
  {
    goto LABEL_39;
  }

  v57 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v58 = v133;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44 + v57, v133, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v59 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v60 = *(v127 + 48);
  v61 = v130;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58, v130, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v59, v61 + v60, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v62 = v129;
  v63 = *(v128 + 48);
  if (v63(v61, 1, v129) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v58, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v64 = v63(v61 + v60, 1, v62);
    v65 = v131;
    if (v64 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v61, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v66 = v126;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v61, v126, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v67 = v63(v61 + v60, 1, v62);
  v65 = v131;
  if (v67 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v133, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v66, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_15:
    v46 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v47 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    v48 = v61;
    goto LABEL_7;
  }

  v68 = v61 + v60;
  v69 = v125;
  outlined init with take of AspireApiEvaluationKeyMetadata(v68, v125, type metadata accessor for AspirePirKeywordPirParameters);
  v70 = static AspirePirKeywordPirParameters.== infix(_:_:)(v66, v69);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v69, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v133, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v66, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v61, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v70 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v71 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  v72 = *(v44 + v71);
  v73 = (v43 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm);
  swift_beginAccess();
  v74 = *v73;
  if (*(v73 + 8) == 1)
  {
    if (v74)
    {
      if (v74 == 1)
      {
        if (v72 != 1)
        {
          goto LABEL_39;
        }
      }

      else if (v72 != 2)
      {
        goto LABEL_39;
      }
    }

    else if (v72)
    {
      goto LABEL_39;
    }
  }

  else if (v72 != v74)
  {
    goto LABEL_39;
  }

  v75 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  v76 = *(v44 + v75);
  v77 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  if (v76 != *(v43 + v77))
  {
    goto LABEL_39;
  }

  v78 = (v44 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = (v43 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  outlined copy of Data._Representation(v80, v79);
  outlined copy of Data._Representation(v83, v82);
  v84 = specialized static Data.== infix(_:_:)(v80, v79, v83, v82);
  outlined consume of Data._Representation(v83, v82);
  outlined consume of Data._Representation(v80, v79);
  if (!v84)
  {
    goto LABEL_39;
  }

  v85 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v86 = v124;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44 + v85, v124, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v87 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v88 = *(v119 + 48);
  v89 = v122;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v86, v122, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v90 = v89;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v87, v89 + v88, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v91 = v121;
  v92 = *(v120 + 48);
  if (v92(v89, 1, v121) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v86, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v93 = v92(v89 + v88, 1, v91);
    v94 = v123;
    if (v93 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v90, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v89, v65, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v95 = v92(v89 + v88, 1, v91);
  v94 = v123;
  if (v95 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v124, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v65, type metadata accessor for AspirePirBatchPirParameters);
LABEL_34:
    v46 = &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd;
    v47 = &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR;
    v48 = v90;
    goto LABEL_7;
  }

  v96 = v114;
  outlined init with take of AspireApiEvaluationKeyMetadata(v90 + v88, v114, type metadata accessor for AspirePirBatchPirParameters);
  v97 = static AspirePirBatchPirParameters.== infix(_:_:)(v65, v96);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v96, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v124, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v65, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v90, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((v97 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v98 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44 + v98, v94, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v99 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  v100 = *(v115 + 48);
  v101 = v94;
  v102 = v94;
  v103 = v118;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v101, v118, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v99, v103 + v100, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v104 = v117;
  v105 = *(v116 + 48);
  if (v105(v103, 1, v117) != 1)
  {
    v107 = v113;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v103, v113, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    if (v105(v103 + v100, 1, v104) == 1)
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v123, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v107, type metadata accessor for AspireApiPIRShardConfigs);
      goto LABEL_43;
    }

    v108 = v103 + v100;
    v109 = v112;
    outlined init with take of AspireApiEvaluationKeyMetadata(v108, v112, type metadata accessor for AspireApiPIRShardConfigs);
    v110 = specialized static AspireApiPIRShardConfigs.== infix(_:_:)(v107, v109);

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v109, type metadata accessor for AspireApiPIRShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v123, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v107, type metadata accessor for AspireApiPIRShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    return (v110 & 1) != 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v102, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  if (v105(v103 + v100, 1, v104) != 1)
  {
LABEL_43:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMd, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMR);
    return 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return 1;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig, &protocol conformance descriptor for AspireApiPIRConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig, &protocol conformance descriptor for AspireApiPIRConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig, &protocol conformance descriptor for AspireApiPIRConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a1;
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v34 - v23;
  v38 = v5;
  v25 = *(v5 + 56);
  v41 = v4;
  v25(&v34 - v23, 1, 1, v4, v22);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v11, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v35 = v13;
  v36 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v27 = v41;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v11, v18, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    outlined init with take of AspireApiEvaluationKeyMetadata(v18, v15, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    v28 = v39;
    outlined init with take of AspireApiEvaluationKeyMetadata(v15, v39, type metadata accessor for AspireApiPIRFixedShardConfig);
    outlined init with take of AspireApiEvaluationKeyMetadata(v28, v24, type metadata accessor for AspireApiPIRFixedShardConfig);
    v27 = v41;
    (v25)(v24, 0, 1, v41);
  }

  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig, &protocol conformance descriptor for AspireApiPIRFixedShardConfig);
  v29 = v42;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v30 = v40;
  if (v29)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v40, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  if ((*(v38 + 48))(v30, 1, v27) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  }

  else
  {
    v32 = v37;
    outlined init with take of AspireApiEvaluationKeyMetadata(v30, v37, type metadata accessor for AspireApiPIRFixedShardConfig);
    if (v26 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    v33 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v32, v33, type metadata accessor for AspireApiPIRFixedShardConfig);
    return (*(v35 + 56))(v33, 0, 1, v36);
  }
}

uint64_t AspireApiPIRShardConfigs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPIRShardConfigs.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for AspireApiPIRShardConfigs(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfigs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v11 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig, &protocol conformance descriptor for AspireApiPIRFixedShardConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiPIRFixedShardConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireApiResponse@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs, &protocol conformance descriptor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRShardConfigs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs, &protocol conformance descriptor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs, &protocol conformance descriptor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPIRFixedShardConfig(0);
  type metadata accessor for AspireApiPIRShardConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for AspireApiPIRFixedShardConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiPIRShardConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiPIRShardConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig, &protocol conformance descriptor for AspireApiPIRShardConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRFixedShardConfig@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for AspireApiPIRShardConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig, &protocol conformance descriptor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRFixedShardConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig, &protocol conformance descriptor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig, &protocol conformance descriptor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 5:
          type metadata accessor for AspireApiPIRRequest(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 6:
          closure #6 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          closure #2 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 3:
          closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireApiPIRRequest);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPIRRequest(0);
  type metadata accessor for AspirePirEncryptedIndices(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #6 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPIRRequest(0);
  type metadata accessor for AspireApiEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireApiPIRRequest);
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
      closure #3 in AspireApiPIRRequest.traverse<A>(visitor:)(v3);
      closure #4 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for AspireApiPIRRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspirePirEncryptedIndices);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspirePirEncryptedIndices);
}

uint64_t closure #3 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRRequest(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRRequest@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_225022910;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = a1[10];
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = type metadata accessor for AspireApiEvaluationKey(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v9, 1, 1, v11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertextVec(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AspireApiPIRResponse.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPIRResponse(0);
  type metadata accessor for AspireApiStashOfEntries(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries, &protocol conformance descriptor for AspireApiStashOfEntries);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireHeSerializedCiphertextVec(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec, &protocol conformance descriptor for AspireHeSerializedCiphertextVec), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiPIRResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for AspireApiPIRResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiStashOfEntries(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 24), v7, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiStashOfEntries);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries, &protocol conformance descriptor for AspireApiStashOfEntries);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiStashOfEntries);
}

uint64_t protocol witness for Message.init() in conformance AspireApiKeyStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  *a4 = a2;
  UnknownStorage.init()();
  v7 = *(a1 + 24);
  v8 = a3(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a4[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            closure #1 in AspireApiPECConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 3:
            closure #3 in AspireApiPECConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
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
        lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPECConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPECConfig(0);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AspireApiPECConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPECConfig(0);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPECConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*v3)
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  closure #2 in AspireApiPECConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (*(v3 + 8))
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + 24) & 1) == 0 && *(v3 + 16))
  {
    lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
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
  if (*(*(v3 + 48) + 16))
  {
    dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
  }

  type metadata accessor for AspireApiPECConfig(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 44), v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_225022910;
  *(a2 + 48) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspireApiPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig, &protocol conformance descriptor for AspireApiPECConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig, &protocol conformance descriptor for AspireApiPECConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig, &protocol conformance descriptor for AspireApiPECConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireApiPECRequest);
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBytesField(value:)();
            break;
          case 5:
            closure #5 in AspireApiPECRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in AspireApiPECRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiPECRequest(0);
  type metadata accessor for AspireApiEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPECRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireApiPECRequest);
      if (!v4)
      {
        v9 = v3[2];
        v10 = v3[3];
        v11 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v11 != 2)
          {
            goto LABEL_15;
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
              goto LABEL_15;
            }

            goto LABEL_14;
          }

          v12 = v9;
          v13 = v9 >> 32;
        }

        if (v12 != v13)
        {
LABEL_14:
          dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        }

LABEL_15:
        closure #2 in AspireApiPECRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
        type metadata accessor for AspireApiPECRequest(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v15 + 32), v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v9, v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
}

uint64_t closure #2 in AspireApiPECRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 36), v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey, &protocol conformance descriptor for AspireApiEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v4;
  *(a2 + 16) = xmmword_225022910;
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 36);
  v8 = type metadata accessor for AspireApiEvaluationKey(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECShardResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          break;
        case 1:
          type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireApiPECShardResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for AspireApiPECShardResponse(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECShardResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECShardResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECShardResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeys.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
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
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a5, a6, a7);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t AspireApiPECResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (type metadata accessor for AspireApiPECShardResponse(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    type metadata accessor for AspireApiPECResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiEvaluationKeys(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiOPRFRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return AspireApiOPRFRequest.decodeMessage<A>(decoder:)(a1, a2, a3);
}

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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiOPRFRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest, &protocol conformance descriptor for AspireApiOPRFRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiOPRFRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_18;
  }

LABEL_19:
  a4(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiOPRFResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse, &protocol conformance descriptor for AspireApiOPRFResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiOPRFResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse, &protocol conformance descriptor for AspireApiOPRFResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiOPRFResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse, &protocol conformance descriptor for AspireApiOPRFResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiStashOfEntries.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        break;
    }
  }
}

uint64_t AspireApiStashOfEntries.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(*v4 + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v5))
      {
        type metadata accessor for AspireApiStashOfEntries(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECShardResponse@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  a2[2] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiStashOfEntries(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries, &protocol conformance descriptor for AspireApiStashOfEntries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiStashOfEntries(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries, &protocol conformance descriptor for AspireApiStashOfEntries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiStashOfEntries(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries, &protocol conformance descriptor for AspireApiStashOfEntries);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
      v32 = v40;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v40, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound, &protocol conformance descriptor for AspireApiError.ConfigVersionNotFound);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  }

  else
  {
    v36 = v41;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v41, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound, &protocol conformance descriptor for AspireApiError.EvaluationKeyNotFound);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #3 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiError.InvalidRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiError.InvalidRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiError.InvalidRequest);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest, &protocol conformance descriptor for AspireApiError.InvalidRequest);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiError.InvalidRequest);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #4 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireApiError.InternalError(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v12, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v19, v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(v16, v41, type metadata accessor for AspireApiError.InternalError);
      outlined init with take of AspireApiEvaluationKeyMetadata(v32, v25, type metadata accessor for AspireApiError.InternalError);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError, &protocol conformance descriptor for AspireApiError.InternalError);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(v33, v40, type metadata accessor for AspireApiError.InternalError);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v14 - v9, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v11 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.OneOf_ErrorType);
  if (!v4)
  {
LABEL_10:
    type metadata accessor for AspireApiError(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v11 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound, &protocol conformance descriptor for AspireApiError.ConfigVersionNotFound);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v11 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound, &protocol conformance descriptor for AspireApiError.EvaluationKeyNotFound);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiError.InvalidRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v11 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiError.InvalidRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest, &protocol conformance descriptor for AspireApiError.InvalidRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.InvalidRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #4 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireApiError.InternalError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v11 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v7, v10, type metadata accessor for AspireApiError.InternalError);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError, &protocol conformance descriptor for AspireApiError.InternalError);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.InternalError);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError, &protocol conformance descriptor for AspireApiError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError, &protocol conformance descriptor for AspireApiError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError, &protocol conformance descriptor for AspireApiError);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x22AA60A80](0xD000000000000016, 0x8000000225038BC0);
  static AspireApiError.ConfigVersionNotFound.protoMessageName = 0xD000000000000010;
  *algn_27D700058 = 0x8000000225038750;
  return result;
}

{
  result = MEMORY[0x22AA60A80](0xD000000000000016, 0x8000000225038BE0);
  static AspireApiError.EvaluationKeyNotFound.protoMessageName = 0xD000000000000010;
  unk_27D700080 = 0x8000000225038750;
  return result;
}

uint64_t AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  type metadata accessor for AspireApiConfigResponse(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireApiConfigResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 20), v7, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v7, v11, type metadata accessor for AspireApiConfigResponse);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiConfigResponse);
}

uint64_t protocol witness for Message.init() in conformance AspireApiError.ConfigVersionNotFound@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireApiConfigResponse(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound, &protocol conformance descriptor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound, &protocol conformance descriptor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound, &protocol conformance descriptor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound, &protocol conformance descriptor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound, &protocol conformance descriptor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound, &protocol conformance descriptor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x64696C61766E492ELL, 0xEF74736575716552, &static AspireApiError.InvalidRequest.protoMessageName, algn_27D7000A8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x616E7265746E492ELL, 0xEE00726F7272456CLL, &static AspireApiError.InternalError.protoMessageName, &qword_27D7000D0);
}

{
  return one-time initialization function for protoMessageName(a1, 0x7865646E492ELL, 0xE600000000000000, &static AspirePirPirPreprocessDbCommand.Index.protoMessageName, &qword_27D700748);
}

{
  return one-time initialization function for protoMessageName(a1, 0x64726F7779654B2ELL, 0xE800000000000000, &static AspirePirPirPreprocessDbCommand.Keyword.protoMessageName, &qword_27D700770);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.InvalidRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest, &protocol conformance descriptor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.InvalidRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest, &protocol conformance descriptor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.InvalidRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest, &protocol conformance descriptor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AA60A80](a2, a3);
  *a4 = 0xD000000000000010;
  *a5 = 0x8000000225038750;
  return result;
}

{
  result = MEMORY[0x22AA60A80](a2, a3);
  *a4 = 0xD000000000000021;
  *a5 = 0x8000000225038DC0;
  return result;
}

uint64_t static AspireApiError.ConfigVersionNotFound.protoMessageName.getter(void *a1, void *a2, void *a3, uint64_t a4)
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

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

Swift::Int AspireApiEmpty.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.InternalError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError, &protocol conformance descriptor for AspireApiError.InternalError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.InternalError(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError, &protocol conformance descriptor for AspireApiError.InternalError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.InternalError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError, &protocol conformance descriptor for AspireApiError.InternalError);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AspireApiPECShardResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML42AspireSimilaritySerializedCiphertextMatrixV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AspireApiPECShardResponse(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiPIRShardConfigs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  MEMORY[0x28223BE20](v24);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v16 = *(v15 + 56);
  v26 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v13, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v27 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v14[v16], &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v17 = *(v7 + 48);
  if (v17(v14, 1, v6) == 1)
  {
    if (v17(&v14[v16], 1, v6) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
LABEL_9:
      type metadata accessor for AspireApiPIRShardConfigs(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v11, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  if (v17(&v14[v16], 1, v6) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMR);
    goto LABEL_7;
  }

  v19 = &v14[v16];
  v20 = v25;
  outlined init with take of AspireApiEvaluationKeyMetadata(v19, v25, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  v21 = *(v24 + 48);
  outlined init with copy of AspireHeEvaluationKeyConfig(v11, v5, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(v20, v5 + v21, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  v22 = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v5, (v5 + v21));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5 + v21, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v5, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSg_ADtMd, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiPIRShardConfig);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMd, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMR);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v23, type metadata accessor for AspireApiPIRShardConfig);
  v18 = specialized static AspireApiPIRShardConfig.== infix(_:_:)(v9, v17);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiPIRShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiPIRShardConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static AspireApiPIRShardConfig.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = v4[8];
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
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
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

  v13 = v4[9];
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

  v16 = v4[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for AspireApiEvaluationKey(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, &v18[v20], &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
LABEL_9:
    v29 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v30 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
LABEL_15:
    v33 = v18;
LABEL_16:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, v29, v30);
    goto LABEL_17;
  }

  v31 = v43;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v18[v20], v43, type metadata accessor for AspireApiEvaluationKeyMetadata);
  if (*v14 != *v31 || !specialized static Data.== infix(_:_:)(v14[1], v14[2], v31[1], v31[2]))
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiEvaluationKeyMetadata);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v29 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
    v30 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
    goto LABEL_15;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v24, v48, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v24, v26 + v25, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v34 & 1;
    }

    goto LABEL_21;
  }

  v36 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v42, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v36, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_21:
    v29 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd;
    v30 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR;
    v33 = v26;
    goto LABEL_16;
  }

  v37 = v26 + v25;
  v38 = v41;
  outlined init with take of AspireApiEvaluationKeyMetadata(v37, v41, type metadata accessor for AspireHeSerializedEvaluationKey);
  v39 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v36, v38);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v38, type metadata accessor for AspireHeSerializedEvaluationKey);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v36, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v39)
  {
    goto LABEL_23;
  }

LABEL_17:
  v34 = 0;
  return v34 & 1;
}

void specialized static AspireApiPECRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd, &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = *a1;
  v22 = *a2;
  v23 = *(*a1 + 16);
  if (v23 != *(*a2 + 16))
  {
    return;
  }

  if (!v23 || v21 == v22)
  {
LABEL_7:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML42AspireSimilaritySerializedCiphertextMatrixV_Tt1g5(a1[1], a2[1]) & 1) == 0)
    {
      return;
    }

    v46 = v6;
    v26 = type metadata accessor for AspireApiPECRequest(0);
    v49 = a2;
    v27 = *(v26 + 32);
    v28 = *(v18 + 48);
    v47 = v26;
    v48 = a1;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v27, v20, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v29 = v49 + v27;
    v30 = v49;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, &v20[v28], &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v31 = *(v12 + 48);
    if (v31(v20, 1, v11) == 1)
    {
      if (v31(&v20[v28], 1, v11) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
LABEL_11:
        v32 = v48;
        if (!specialized static Data.== infix(_:_:)(v48[2], v48[3], v30[2], v30[3]))
        {
          return;
        }

        v33 = *(v47 + 36);
        v34 = *(v9 + 48);
        v35 = v53;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32 + v33, v53, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v33, v35 + v34, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        v36 = v52;
        v37 = *(v51 + 48);
        if (v37(v35, 1, v52) == 1)
        {
          if (v37(v35 + v34, 1, v36) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
            goto LABEL_30;
          }
        }

        else
        {
          v42 = v50;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v35, v50, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
          if (v37(v35 + v34, 1, v36) != 1)
          {
            v43 = v35 + v34;
            v44 = v46;
            outlined init with take of AspireApiEvaluationKeyMetadata(v43, v46, type metadata accessor for AspireApiEvaluationKey);
            v45 = specialized static AspireApiEvaluationKey.== infix(_:_:)(v42, v44);
            _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v44, type metadata accessor for AspireApiEvaluationKey);
            _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v42, type metadata accessor for AspireApiEvaluationKey);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
            if ((v45 & 1) == 0)
            {
              return;
            }

LABEL_30:
            type metadata accessor for UnknownStorage();
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            dispatch thunk of static Equatable.== infix(_:_:)();
            return;
          }

          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v42, type metadata accessor for AspireApiEvaluationKey);
        }

        v38 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd;
        v39 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR;
        v41 = v35;
LABEL_24:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, v38, v39);
        return;
      }
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20, v17, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      if (v31(&v20[v28], 1, v11) != 1)
      {
        outlined init with take of AspireApiEvaluationKeyMetadata(&v20[v28], v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
        if (*v17 == *v14 && specialized static Data.== infix(_:_:)(v17[1], v17[2], v14[1], v14[2]))
        {
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiEvaluationKeyMetadata);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
          if ((v40 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiEvaluationKeyMetadata);
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiEvaluationKeyMetadata);
        v38 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
        v39 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
LABEL_23:
        v41 = v20;
        goto LABEL_24;
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiEvaluationKeyMetadata);
    }

    v38 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v39 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
    goto LABEL_23;
  }

  v24 = (v21 + 32);
  v25 = (v22 + 32);
  while (*v24 == *v25)
  {
    ++v24;
    ++v25;
    if (!--v23)
    {
      goto LABEL_7;
    }
  }
}

uint64_t specialized static AspireApiPIRConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiPECConfig.== infix(_:_:)(void *a1, uint64_t a2)
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
  v44 = type metadata accessor for AspireApiPECConfig(0);
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
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v18[v20], v11, type metadata accessor for AspireHeEncryptionParameters);
  v26 = static AspireHeEncryptionParameters.== infix(_:_:)(v14, v11);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireHeEncryptionParameters);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireHeEncryptionParameters);
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
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v23 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v24 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v25 = v30;
    goto LABEL_7;
  }

  v34 = v30 + v29;
  v35 = v41;
  outlined init with take of AspireApiEvaluationKeyMetadata(v34, v41, type metadata accessor for AspireSimilarityPlaintextPacking);
  v36 = static AspireSimilarityPlaintextPacking.== infix(_:_:)(v33, v35);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v35, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (*(v27 + 2) != *(v21 + 8))
  {
    goto LABEL_28;
  }

  if ((v27[3] & 1) == 0)
  {
    v37 = v27[2];
    if (*(v21 + 24))
    {
      if (!v37)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

LABEL_24:
    if (v37 == *(v21 + 16))
    {
      goto LABEL_25;
    }

LABEL_28:
    v38 = 0;
    return v38 & 1;
  }

  if ((*(v21 + 24) & 1) == 0)
  {
    v37 = 0;
    goto LABEL_24;
  }

LABEL_25:
  if (!specialized static Data.== infix(_:_:)(v27[4], v27[5], *(v21 + 32), *(v21 + 40)) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v27[6], *(v21 + 48)) & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v38 & 1;
}

uint64_t specialized static AspireApiKeyStatus.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for AspireApiKeyStatus(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v15 + v17, v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, &v13[v18], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v18], v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  v22 = static AspireHeEvaluationKeyConfig.== infix(_:_:)(v10, v7);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireApiResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_9:
      type metadata accessor for AspireApiResponse(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  v18 = specialized static AspireApiResponse.OneOf_Response.== infix(_:_:)(v10, v7);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiResponse.OneOf_Response);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiResponse.OneOf_Response);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t *specialized static AspireApiStashOfEntries.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(result[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v6[2], a2[2]))
    {
      type metadata accessor for AspireApiStashOfEntries(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return (dispatch thunk of static Equatable.== infix(_:_:)() & 1);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static AspireApiPIRResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v5 = type metadata accessor for AspireApiStashOfEntries(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSg_ADtMd, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMR);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = type metadata accessor for AspireApiPIRResponse(0);
  v16 = a1;
  v17 = a2;
  v24[0] = v15;
  v24[1] = v16;
  v18 = *(v15 + 24);
  v19 = *(v12 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v18, v14, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17 + v18, &v14[v19], &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v20 = *(v6 + 48);
  if (v20(v14, 1, v5) == 1)
  {
    if (v20(&v14[v19], 1, v5) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v11, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v20(&v14[v19], 1, v5) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiStashOfEntries);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMd, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v14[v19], v8, type metadata accessor for AspireApiStashOfEntries);
  v23 = specialized static AspireApiStashOfEntries.== infix(_:_:)(v11, v8);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiStashOfEntries);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiStashOfEntries);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AspireApiResponse.OneOf_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for AspireApiOPRFResponse(0);
  MEMORY[0x28223BE20](v37);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AspireApiPECResponse(0);
  MEMORY[0x28223BE20](v38);
  v39 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspireApiPIRResponse(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v37 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v37 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v37 - v19;
  v22 = *(v21 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v37 - v19, type metadata accessor for AspireApiResponse.OneOf_Response);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, &v20[v22], type metadata accessor for AspireApiResponse.OneOf_Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v20, v17, type metadata accessor for AspireApiResponse.OneOf_Response);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v20[v22], v8, type metadata accessor for AspireApiPIRResponse);
      v32 = specialized static AspireApiPIRResponse.== infix(_:_:)(v17, v8, v36);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiPIRResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiPIRResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiResponse.OneOf_Response);
      return v32 & 1;
    }

    v28 = type metadata accessor for AspireApiPIRResponse;
    v29 = v17;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v20, v11, type metadata accessor for AspireApiResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = &v20[v22];
      v31 = v40;
      outlined init with take of AspireApiEvaluationKeyMetadata(v30, v40, type metadata accessor for AspireApiOPRFResponse);
      if (specialized static Data.== infix(_:_:)(*v11, *(v11 + 1), *v31, *(v31 + 8)) && specialized static Data.== infix(_:_:)(*(v11 + 2), *(v11 + 3), *(v31 + 16), *(v31 + 24)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v26 = type metadata accessor for AspireApiOPRFResponse;
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiOPRFResponse);
          v27 = v11;
          goto LABEL_14;
        }
      }

      v33 = type metadata accessor for AspireApiOPRFResponse;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiOPRFResponse);
      v34 = v11;
      goto LABEL_20;
    }

    v28 = type metadata accessor for AspireApiOPRFResponse;
    v29 = v11;
LABEL_17:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v29, v28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMR);
LABEL_21:
    v32 = 0;
    return v32 & 1;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v20, v14, type metadata accessor for AspireApiResponse.OneOf_Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for AspireApiPECResponse;
    v29 = v14;
    goto LABEL_17;
  }

  v24 = &v20[v22];
  v25 = v39;
  outlined init with take of AspireApiEvaluationKeyMetadata(v24, v39, type metadata accessor for AspireApiPECResponse);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML25AspireApiPECShardResponseV_Tt1g5(*v14, *v25) & 1) == 0 || (type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    v33 = type metadata accessor for AspireApiPECResponse;
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v25, type metadata accessor for AspireApiPECResponse);
    v34 = v14;
LABEL_20:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v34, v33);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_21;
  }

  v26 = type metadata accessor for AspireApiPECResponse;
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v25, type metadata accessor for AspireApiPECResponse);
  v27 = v14;
LABEL_14:
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v27, v26);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiResponse.OneOf_Response);
  v32 = 1;
  return v32 & 1;
}

uint64_t specialized static AspireApiRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for AspireApiRequest(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiRequest.OneOf_Request);
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v21, type metadata accessor for AspireApiRequest.OneOf_Request);
  v19 = specialized static AspireApiRequest.OneOf_Request.== infix(_:_:)(v10, v18);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v18, type metadata accessor for AspireApiRequest.OneOf_Request);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiRequest.OneOf_Request);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireApiPIRRequest.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v64 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd, &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v69);
  v10 = &v64 - v9;
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v72 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = (&v64 - v14);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  MEMORY[0x28223BE20](v74);
  v77 = &v64 - v15;
  v16 = type metadata accessor for AspirePirEncryptedIndices(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v64 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd, &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v64 = v6;
  v65 = v10;
  v26 = type metadata accessor for AspireApiPIRRequest(0);
  v27 = *(v26 + 28);
  v28 = a1;
  v29 = *(v23 + 48);
  v66 = v26;
  v67 = v28;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v27, v25, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v30 = a2 + v27;
  v31 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, &v25[v29], &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v32 = *(v17 + 48);
  if (v32(v25, 1, v16) == 1)
  {
    if (v32(&v25[v29], 1, v16) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v22, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (v32(&v25[v29], 1, v16) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspirePirEncryptedIndices);
LABEL_17:
    v45 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd;
    v46 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR;
LABEL_23:
    v48 = v25;
LABEL_24:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48, v45, v46);
    goto LABEL_25;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v25[v29], v19, type metadata accessor for AspirePirEncryptedIndices);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v22, *v19) & 1) == 0 || v22[1] != v19[1])
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspirePirEncryptedIndices);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspirePirEncryptedIndices);
    v45 = &_s8CipherML25AspirePirEncryptedIndicesVSgMd;
    v46 = &_s8CipherML25AspirePirEncryptedIndicesVSgMR;
    goto LABEL_23;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspirePirEncryptedIndices);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((v47 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_5:
  v34 = v66;
  v33 = v67;
  v35 = *(v66 + 32);
  v36 = *(v74 + 48);
  v37 = v77;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v67 + v35, v77, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v35, v37 + v36, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v38 = v76;
  v39 = *(v75 + 48);
  if (v39(v37, 1, v76) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v51 = v73;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v73, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v51, type metadata accessor for AspireApiEvaluationKeyMetadata);
LABEL_29:
    v45 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v46 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
    v48 = v37;
    goto LABEL_24;
  }

  v52 = v37 + v36;
  v53 = v72;
  outlined init with take of AspireApiEvaluationKeyMetadata(v52, v72, type metadata accessor for AspireApiEvaluationKeyMetadata);
  if (*v51 != *v53 || !specialized static Data.== infix(_:_:)(v51[1], v51[2], v53[1], v53[2]))
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v53, type metadata accessor for AspireApiEvaluationKeyMetadata);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v51, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v45 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
    v46 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
    v48 = v37;
    goto LABEL_24;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v53, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v51, type metadata accessor for AspireApiEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((v54 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (specialized static Data.== infix(_:_:)(*(v33 + 1), *(v33 + 2), *(v31 + 1), *(v31 + 2)))
  {
    v40 = *(v34 + 36);
    v41 = (v33 + v40);
    v42 = *(v33 + v40 + 8);
    v43 = (v31 + v40);
    v44 = v43[1];
    if (v42)
    {
      if (!v44 || (*v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v44)
    {
      goto LABEL_25;
    }

    v55 = *(v34 + 40);
    v56 = *(v69 + 48);
    v57 = v65;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33 + v55, v65, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v55, v57 + v56, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    v58 = v71;
    v59 = *(v70 + 48);
    if (v59(v57, 1, v71) == 1)
    {
      if (v59(v57 + v56, 1, v58) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
LABEL_43:
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v49 & 1;
      }

      goto LABEL_41;
    }

    v60 = v68;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v57, v68, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    if (v59(v57 + v56, 1, v58) == 1)
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v60, type metadata accessor for AspireApiEvaluationKey);
LABEL_41:
      v45 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd;
      v46 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR;
      v48 = v57;
      goto LABEL_24;
    }

    v61 = v57 + v56;
    v62 = v64;
    outlined init with take of AspireApiEvaluationKeyMetadata(v61, v64, type metadata accessor for AspireApiEvaluationKey);
    v63 = specialized static AspireApiEvaluationKey.== infix(_:_:)(v60, v62);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v62, type metadata accessor for AspireApiEvaluationKey);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v60, type metadata accessor for AspireApiEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    if (v63)
    {
      goto LABEL_43;
    }
  }

LABEL_25:
  v49 = 0;
  return v49 & 1;
}

uint64_t specialized static AspireApiRequest.OneOf_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for AspireApiOPRFRequest(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspireApiPECRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v33 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v33 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v33 - v20, type metadata accessor for AspireApiRequest.OneOf_Request);
  outlined init with copy of AspireHeEvaluationKeyConfig(v36, &v21[v23], type metadata accessor for AspireApiRequest.OneOf_Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v21, v18, type metadata accessor for AspireApiRequest.OneOf_Request);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v21[v23], v9, type metadata accessor for AspireApiPIRRequest);
      v26 = specialized static AspireApiPIRRequest.== infix(_:_:)(v18, v9);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiPIRRequest);
      v27 = v18;
      v28 = type metadata accessor for AspireApiPIRRequest;
      goto LABEL_18;
    }

    v29 = type metadata accessor for AspireApiPIRRequest;
    v30 = v18;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v21, v15, type metadata accessor for AspireApiRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v21[v23], v6, type metadata accessor for AspireApiPECRequest);
      specialized static AspireApiPECRequest.== infix(_:_:)(v15, v6);
      v26 = v25;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPECRequest);
      v27 = v15;
      v28 = type metadata accessor for AspireApiPECRequest;
LABEL_18:
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v27, v28);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiRequest.OneOf_Request);
      return v26 & 1;
    }

    v29 = type metadata accessor for AspireApiPECRequest;
    v30 = v15;
    goto LABEL_14;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v21, v12, type metadata accessor for AspireApiRequest.OneOf_Request);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v29 = type metadata accessor for AspireApiOPRFRequest;
    v30 = v12;
LABEL_14:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, v29);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMR);
LABEL_16:
    v26 = 0;
    return v26 & 1;
  }

  v31 = v35;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v21[v23], v35, type metadata accessor for AspireApiOPRFRequest);
  if (!specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v31, *(v31 + 8)) || !specialized static Data.== infix(_:_:)(*(v12 + 2), *(v12 + 3), *(v31 + 16), *(v31 + 24)) || (type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiOPRFRequest);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiOPRFRequest);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_16;
  }

  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, type metadata accessor for AspireApiOPRFRequest);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiOPRFRequest);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiRequest.OneOf_Request);
  v26 = 1;
  return v26 & 1;
}

uint64_t specialized static AspireApiConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v21 - v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v7, type metadata accessor for AspireApiConfig.OneOf_Config);
      v18 = specialized static AspireApiConfig.OneOf_Config.== infix(_:_:)(v10, v7);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiConfig.OneOf_Config);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      if ((v18 & 1) == 0)
      {
LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

LABEL_8:
      v19 = type metadata accessor for AspireApiConfig(0);
      if (specialized static Data.== infix(_:_:)(*(a1 + *(v19 + 20)), *(a1 + *(v19 + 20) + 8), *(a2 + *(v19 + 20)), *(a2 + *(v19 + 20) + 8)) && *(a1 + *(v19 + 24)) == *(a2 + *(v19 + 24)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v17 & 1;
      }

      goto LABEL_10;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireApiConfig.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v30 - v16, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, &v17[v19], type metadata accessor for AspireApiConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v17, v14, type metadata accessor for AspireApiConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = &v17[v19];
      v24 = v31;
      outlined init with take of AspireApiEvaluationKeyMetadata(v23, v31, type metadata accessor for AspireApiPIRConfig);
      v25 = *(v7 + 20);
      v26 = *&v14[v25];
      v27 = *(v24 + v25);
      if (v26 == v27 || (, , v28 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v26, v27), , , v28))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v24, type metadata accessor for AspireApiPIRConfig);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiPIRConfig);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiConfig.OneOf_Config);
          v20 = 1;
          return v20 & 1;
        }
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v24, type metadata accessor for AspireApiPIRConfig);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiPIRConfig);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiConfig.OneOf_Config);
LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for AspireApiPIRConfig;
    v22 = v14;
LABEL_7:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, v21);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
    goto LABEL_13;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v17, v11, type metadata accessor for AspireApiConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for AspireApiPECConfig;
    v22 = v11;
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v17[v19], v6, type metadata accessor for AspireApiPECConfig);
  v20 = specialized static AspireApiPECConfig.== infix(_:_:)(v11, v6);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPECConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPECConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiConfig.OneOf_Config);
  return v20 & 1;
}

uint64_t specialized static AspireApiError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_9:
      type metadata accessor for AspireApiError(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.OneOf_ErrorType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  v18 = specialized static AspireApiError.OneOf_ErrorType.== infix(_:_:)(v10, v7);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiError.OneOf_ErrorType);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v10, type metadata accessor for AspireApiError.OneOf_ErrorType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AspireApiError.ConfigVersionNotFound.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSg_ADtMd, &_s8CipherML23AspireApiConfigResponseVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v15 = *(v11 + 56);
  v24[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v24[0];
      outlined init with take of AspireApiEvaluationKeyMetadata(&v13[v15], v24[0], type metadata accessor for AspireApiConfigResponse);
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(*v9, *v20);
      if (v21 & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(v9[1], v20[1]))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiConfigResponse);
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_14:
        v17 = 0;
        return v17 & 1;
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiConfigResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfigResponse);
      v18 = &_s8CipherML23AspireApiConfigResponseVSgMd;
      v19 = &_s8CipherML23AspireApiConfigResponseVSgMR;
LABEL_13:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, v18, v19);
      goto LABEL_14;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v9, type metadata accessor for AspireApiConfigResponse);
LABEL_7:
    v18 = &_s8CipherML23AspireApiConfigResponseVSg_ADtMd;
    v19 = &_s8CipherML23AspireApiConfigResponseVSg_ADtMR;
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static AspireApiError.OneOf_ErrorType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for AspireApiError.InternalError(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspireApiError.InvalidRequest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - v25;
  v28 = *(v27 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v40 - v25, type metadata accessor for AspireApiError.OneOf_ErrorType);
  outlined init with copy of AspireHeEvaluationKeyConfig(v43, &v26[v28], type metadata accessor for AspireApiError.OneOf_ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of AspireHeEvaluationKeyConfig(v26, v17, type metadata accessor for AspireApiError.OneOf_ErrorType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for AspireApiError.InvalidRequest;
        v31 = v17;
        goto LABEL_17;
      }

      v32 = v41;
      outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v41, type metadata accessor for AspireApiError.InvalidRequest);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = type metadata accessor for AspireApiError.InvalidRequest;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v32, type metadata accessor for AspireApiError.InvalidRequest);
      v35 = v17;
    }

    else
    {
      outlined init with copy of AspireHeEvaluationKeyConfig(v26, v14, type metadata accessor for AspireApiError.OneOf_ErrorType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = type metadata accessor for AspireApiError.InternalError;
        v31 = v14;
        goto LABEL_17;
      }

      v37 = v42;
      outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v42, type metadata accessor for AspireApiError.InternalError);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = type metadata accessor for AspireApiError.InternalError;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, type metadata accessor for AspireApiError.InternalError);
      v35 = v14;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v26, v20, type metadata accessor for AspireApiError.OneOf_ErrorType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for AspireApiError.EvaluationKeyNotFound;
      v31 = v20;
      goto LABEL_17;
    }

    v36 = v40;
    outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v40, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = type metadata accessor for AspireApiError.EvaluationKeyNotFound;
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v36, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    v35 = v20;
LABEL_12:
    v38 = v34;
    goto LABEL_13;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v26, v23, type metadata accessor for AspireApiError.OneOf_ErrorType);
  if (swift_getEnumCaseMultiPayload())
  {
    v30 = type metadata accessor for AspireApiError.ConfigVersionNotFound;
    v31 = v23;
LABEL_17:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v31, v30);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMR);
    v33 = 0;
    return v33 & 1;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v11, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v33 = specialized static AspireApiError.ConfigVersionNotFound.== infix(_:_:)(v23, v11);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v35 = v23;
  v38 = type metadata accessor for AspireApiError.ConfigVersionNotFound;
LABEL_13:
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v35, v38);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspireApiError.OneOf_ErrorType);
  return v33 & 1;
}

uint64_t outlined init with take of AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for AspireHeEvaluationKeyConfig?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for AspireApiEvaluationKey(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeSerializedEvaluationKey?, type metadata accessor for AspireHeSerializedEvaluationKey, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiConfigRequest(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
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

void type metadata completion function for AspireApiConfig(uint64_t a1)
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiConfig.OneOf_Config?, type metadata accessor for AspireApiConfig.OneOf_Config, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiConfig.OneOf_Config(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPECConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for AspireApiConfigResponse(uint64_t a1)
{
  type metadata accessor for [String : AspireApiConfig](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireApiKeyStatus], type metadata accessor for AspireApiKeyStatus, MEMORY[0x277D83940]);
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

void type metadata completion function for AspireApiRequest(uint64_t a1)
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiRequest.OneOf_Request?, type metadata accessor for AspireApiRequest.OneOf_Request, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiRequest.OneOf_Request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for AspireApiPIRShardConfig(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for AspireApiPIRConfig(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPIRConfig._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_224E30540);
}

uint64_t storeEnumTagSinglePayload for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AspireApiPIRFixedShardConfig(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_224E30554);
}

uint64_t type metadata completion function for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRFixedShardConfig(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_96Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for AspireApiKeyStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspireApiPIRRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirEncryptedIndices?, type metadata accessor for AspirePirEncryptedIndices, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKey?, type metadata accessor for AspireApiEvaluationKey, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireApiPIRResponse(uint64_t a1)
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireHeSerializedCiphertextVec], type metadata accessor for AspireHeSerializedCiphertextVec, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiStashOfEntries?, type metadata accessor for AspireApiStashOfEntries, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiPECConfig(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AspireApiPECRequest(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedCiphertextMatrix], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKey?, type metadata accessor for AspireApiEvaluationKey, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for AspireApiPECShardResponse(uint64_t a1)
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedCiphertextMatrix], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
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

uint64_t __swift_get_extra_inhabitant_index_310Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_311Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_292Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_index_293Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for AspireApiStashOfEntries(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
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

void type metadata completion function for AspireApiEvaluationKeys(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiError.OneOf_ErrorType(uint64_t a1)
{
  result = type metadata accessor for AspireApiError.ConfigVersionNotFound(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireApiError.EvaluationKeyNotFound(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AspireApiError.InvalidRequest(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AspireApiError.InternalError(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void type metadata completion function for AspireApiError.ConfigVersionNotFound(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiConfigResponse?, type metadata accessor for AspireApiConfigResponse, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for AspireApiPIRConfig._StorageClass(uint64_t a1)
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirBatchPirParameters?, type metadata accessor for AspirePirBatchPirParameters, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiPIRShardConfigs?, type metadata accessor for AspireApiPIRShardConfigs, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t AspirePirKeywordPirParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for AspirePirKeywordPirParameters(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t AspirePirEncryptedIndices.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  type metadata accessor for AspirePirEncryptedIndices(0);
  return UnknownStorage.init()();
}

uint64_t AspirePirKeywordPirParameters.shardingFunction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 32), v5, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v7 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v9 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  return result;
}

BOOL AspirePirKeywordPirParameters.hasShardingFunction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 32), v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v5 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  return v6;
}

BOOL AspirePirKeywordPirParameters.hasSymmetricPirClientConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 28), v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v5 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  return v6;
}

uint64_t AspirePirKeywordPirParameters.symmetricPirClientConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v7 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  *a1 = xmmword_225022910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t AspirePirPirParameters.encryptionParameters.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v9 = AspirePirPirParameters._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v6, type metadata accessor for AspireHeEncryptionParameters);
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.numEntries.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirParameters._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  result = swift_beginAccess();
  *(v8 + v9) = a1;
  return result;
}

uint64_t AspirePirPirParameters.dimensions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirParameters._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *(v6 + v7) = a1;
}

uint64_t AspirePirBatchPirParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  type metadata accessor for AspirePirBatchPirParameters(0);
  return UnknownStorage.init()();
}

unint64_t AspirePirPirAlgorithm.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirAlgorithm(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirKeyCompressionStrategy(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t AspirePirSymmetricPirConfigType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspirePirSymmetricPirConfigType.rawValue.getter()
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance AspirePirSymmetricPirConfigType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AspirePirSymmetricPirConfigType()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AspirePirSymmetricPirConfigType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AspirePirSymmetricPirConfigType(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSymmetricPirConfigType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirSymmetricPirConfigType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t AspirePirPirParameters.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.encryptionParameters : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v10, type metadata accessor for AspireHeEncryptionParameters);
  v11 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v13 = AspirePirPirParameters._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspirePirPIRShardingFunction(v10, v6, type metadata accessor for AspireHeEncryptionParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.encryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
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
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspirePirPirParameters.encryptionParameters.modify;
}

void AspirePirPirParameters.encryptionParameters.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v3 + 120), *(v3 + 112), type metadata accessor for AspireHeEncryptionParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v11, v15, type metadata accessor for AspireHeEncryptionParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v19 = AspirePirPirParameters._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v10, v15, type metadata accessor for AspireHeEncryptionParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

void (*AspirePirPirParameters.numEntries.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.numEntries.modify;
}

uint64_t AspirePirPirParameters.numEntries.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t key path setter for AspirePirPirParameters.numEntries : AspirePirPirParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v10 = AspirePirPirParameters._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  result = swift_beginAccess();
  *(v10 + v11) = v7;
  return result;
}

void (*AspirePirPirParameters.entrySize.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.entrySize.modify;
}

void AspirePirPirParameters.numEntries.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v9 = AspirePirPirParameters._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v5;

  free(v4);
}

uint64_t AspirePirPirParameters.dimensions.getter()
{
  type metadata accessor for AspirePirPirParameters(0);
  swift_beginAccess();
}

uint64_t key path getter for AspirePirPirParameters.dimensions : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspirePirPirParameters.dimensions : AspirePirPirParameters(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirParameters._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *(v6 + v7) = v3;
}

void (*AspirePirPirParameters.dimensions.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspirePirPirParameters.dimensions.modify;
}

void AspirePirPirParameters.dimensions.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirParameters._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t AspirePirPirParameters.keywordPirParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 32);
  v13 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.keywordPirParams : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v10, type metadata accessor for AspirePirKeywordPirParameters);
  v11 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v13 = AspirePirPirParameters._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspirePirPIRShardingFunction(v10, v6, type metadata accessor for AspirePirKeywordPirParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.keywordPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v9 = AspirePirPirParameters._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v6, type metadata accessor for AspirePirKeywordPirParameters);
  v10 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.keywordPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v19 = *(v9 + 28);
    v20 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = *(v9 + 32);
    v22 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  return AspirePirPirParameters.keywordPirParams.modify;
}

void AspirePirPirParameters.keywordPirParams.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v3 + 120), *(v3 + 112), type metadata accessor for AspirePirKeywordPirParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v11, v15, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirKeywordPirParameters);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for AspirePirPirParameters._StorageClass(0);
      swift_allocObject();
      v19 = AspirePirPirParameters._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v10, v15, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}