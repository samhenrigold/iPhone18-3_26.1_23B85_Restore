BOOL AspirePirPirParameters.hasEncryptionParameters.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, a1, a2);
  return v15;
}

uint64_t AspirePirPirParameters.clearEncryptionParameters()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v15 = AspirePirPirParameters._StorageClass.init(copying:)(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

void (*AspirePirPirParameters.algorithm.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspirePirPirParameters.algorithm.modify;
}

void (*AspirePirPirParameters.batchSize.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.batchSize.modify;
}

uint64_t AspirePirPirParameters.evaluationKeyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirPirParameters.evaluationKeyConfig : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v11 = *(v9 + 28);
  v12 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.evaluationKeyConfig : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v10, type metadata accessor for AspireHeEvaluationKeyConfig);
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

  outlined init with take of AspirePirPIRShardingFunction(v10, v6, type metadata accessor for AspireHeEvaluationKeyConfig);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.evaluationKeyConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
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

  outlined init with take of AspirePirPIRShardingFunction(a1, v6, type metadata accessor for AspireHeEvaluationKeyConfig);
  v10 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.evaluationKeyConfig.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
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
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v19 = *(v9 + 28);
    v20 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return AspirePirPirParameters.evaluationKeyConfig.modify;
}

void AspirePirPirParameters.evaluationKeyConfig.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v3 + 120), *(v3 + 112), type metadata accessor for AspireHeEvaluationKeyConfig);
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
    outlined init with take of AspirePirPIRShardingFunction(v11, v15, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspireHeEvaluationKeyConfig);
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
    outlined init with take of AspirePirPIRShardingFunction(v10, v15, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t AspirePirPirParameters.algorithm.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path getter for AspirePirPirParameters.algorithm : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t key path setter for AspirePirPirParameters.algorithm : AspirePirPirParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(a2 + v9) = v11;
  }

  v12 = v11 + *a5;
  result = swift_beginAccess();
  *v12 = v7;
  *(v12 + 8) = v8;
  return result;
}

uint64_t AspirePirPirParameters.algorithm.setter(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v9 = AspirePirPirParameters._StorageClass.init(copying:)(v9);
    *(v4 + v7) = v9;
  }

  v10 = v9 + *a2;
  result = swift_beginAccess();
  *v10 = v5;
  *(v10 + 8) = v6;
  return result;
}

void (*AspirePirPirParameters.keyCompressionStrategy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspirePirPirParameters.keyCompressionStrategy.modify;
}

void AspirePirPirParameters.algorithm.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 88);
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v10 = AspirePirPirParameters._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v13 = v10 + *a3;
  swift_beginAccess();
  *v13 = v5;
  *(v13 + 8) = v8;

  free(v4);
}

uint64_t AspirePirPirParameters.compressVectorizedPirResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t key path setter for AspirePirPirParameters.compressVectorizedPirResponse : AspirePirPirParameters(char *a1, uint64_t a2)
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

  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  *(v6 + v7) = v3;
  return result;
}

uint64_t AspirePirPirParameters.compressVectorizedPirResponse.setter(char a1)
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

  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  *(v6 + v7) = a1 & 1;
  return result;
}

void (*AspirePirPirParameters.compressVectorizedPirResponse.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return AspirePirPirParameters.compressVectorizedPirResponse.modify;
}

void AspirePirPirParameters.compressVectorizedPirResponse.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v7 + v10) = v5;

  free(v2);
}

BOOL AspirePirPirParameters.hasCompressVectorizedPirResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall AspirePirPirParameters.clearCompressVectorizedPirResponse()()
{
  v1 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirParameters._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  v4 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v3 + v4) = 2;
}

uint64_t AspirePirPirParameters.vectorizedPirInternalBatchingSize.getter()
{
  v1 = (*(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  swift_beginAccess();
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for AspirePirPirParameters.vectorizedPirInternalBatchingSize : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for AspirePirPirParameters.vectorizedPirInternalBatchingSize : AspirePirPirParameters(uint64_t *a1, uint64_t a2)
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

  v7 = v6 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = 0;
  return result;
}

uint64_t AspirePirPirParameters.vectorizedPirInternalBatchingSize.setter(uint64_t a1)
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

  v7 = v6 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = 0;
  return result;
}

void (*AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify;
}

void AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify(uint64_t *a1, char a2)
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
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = v7 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  *v10 = v3;
  *(v10 + 8) = 0;

  free(v2);
}

BOOL AspirePirPirParameters.hasVectorizedPirInternalBatchingSize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  return (*(v1 + 8) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirParameters.clearVectorizedPirInternalBatchingSize()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirParameters._StorageClass(0);
    swift_allocObject();
    v4 = AspirePirPirParameters._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = v4 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 8) = 1;
}

uint64_t AspirePirPirParameters.batchPirParams.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirBatchPirParameters);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.batchPirParams : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspirePirBatchPirParameters(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v10, type metadata accessor for AspirePirBatchPirParameters);
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

  outlined init with take of AspirePirPIRShardingFunction(v10, v6, type metadata accessor for AspirePirBatchPirParameters);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.batchPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
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

  outlined init with take of AspirePirPIRShardingFunction(a1, v6, type metadata accessor for AspirePirBatchPirParameters);
  v10 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.batchPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirBatchPirParameters(0);
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
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x277D84F90];
    v14[3] = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirBatchPirParameters);
  }

  return AspirePirPirParameters.batchPirParams.modify;
}

void AspirePirPirParameters.batchPirParams.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v3 + 120), *(v3 + 112), type metadata accessor for AspirePirBatchPirParameters);
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
    outlined init with take of AspirePirPIRShardingFunction(v11, v15, type metadata accessor for AspirePirBatchPirParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirBatchPirParameters);
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
    outlined init with take of AspirePirPIRShardingFunction(v10, v15, type metadata accessor for AspirePirBatchPirParameters);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t AspirePirCuckooTableConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirCuckooTableConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspirePirCuckooTableConfig.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for AspirePirCuckooTableConfig(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 26) = 0u;
  return UnknownStorage.init()();
}

uint64_t AspirePirBatchKeywordPirConfig.cuckooConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v7 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirCuckooTableConfig);
  }

  *(a1 + 26) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirBatchKeywordPirConfig.cuckooConfig : AspirePirBatchKeywordPirConfig@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 40), v6, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirCuckooTableConfig);
  }

  *(a2 + 26) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirBatchKeywordPirConfig.cuckooConfig : AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirCuckooTableConfig);
  v8 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2 + v8, type metadata accessor for AspirePirCuckooTableConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.cuckooConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirCuckooTableConfig);
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspirePirBatchKeywordPirConfig.cuckooConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
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
  v15 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 26) = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirCuckooTableConfig);
  }

  return AspirePirBatchKeywordPirConfig.cuckooConfig.modify;
}

void AspirePirBatchKeywordPirConfig.cuckooConfig.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v5, type metadata accessor for AspirePirCuckooTableConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v10 + v4, type metadata accessor for AspirePirCuckooTableConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirCuckooTableConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v10 + v4, type metadata accessor for AspirePirCuckooTableConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL AspirePirBatchKeywordPirConfig.hasCuckooConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 40), v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v5 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  return v6;
}

Swift::Void __swiftcall AspirePirBatchKeywordPirConfig.clearCuckooConfig()()
{
  v1 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v2 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.getter()
{
  v1 = (v0 + *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.setter(uint64_t a1)
{
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*AspirePirBatchKeywordPirConfig.targetVpirInternalBatchSize.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return AspireApiPIRShardConfig.vectorizedPirInternalBatchingSize.modify;
}

Swift::Void __swiftcall AspirePirBatchKeywordPirConfig.clearTargetVpirInternalBatchSize()()
{
  v1 = v0 + *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t AspirePirBatchKeywordPirConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchKeywordPirConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  UnknownStorage.init()();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + *(v2 + 44);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t AspirePirBatchPirParameters.batchPirTableSize.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AspirePirBatchPirParameters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspirePirBatchPirParameters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t key path getter for AspirePirKeywordPirParameters.symmetricPirClientConfig : AspirePirKeywordPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v8 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  *a2 = xmmword_225022910;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirKeywordPirParameters.symmetricPirClientConfig : AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v8 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2 + v8, type metadata accessor for AspirePirSymmetricPirClientConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspirePirKeywordPirParameters.symmetricPirClientConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v4 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspirePirSymmetricPirClientConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_225022910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  return UnknownStorage.init()();
}

void (*AspirePirKeywordPirParameters.symmetricPirClientConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
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
  v15 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_225022910;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  return AspirePirKeywordPirParameters.symmetricPirClientConfig.modify;
}

void AspirePirKeywordPirParameters.symmetricPirClientConfig.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v5, type metadata accessor for AspirePirSymmetricPirClientConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v10 + v4, type metadata accessor for AspirePirSymmetricPirClientConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v10 + v4, type metadata accessor for AspirePirSymmetricPirClientConfig);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

Swift::Void __swiftcall AspirePirKeywordPirParameters.clearSymmetricPirClientConfig()()
{
  v1 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v2 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for AspirePirKeywordPirParameters.shardingFunction : AspirePirKeywordPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 32), v6, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v10 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirKeywordPirParameters.shardingFunction : AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v7, type metadata accessor for AspirePirPIRShardingFunction);
  v8 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v7, a2 + v8, type metadata accessor for AspirePirPIRShardingFunction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspirePirKeywordPirParameters.shardingFunction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1 + v3, type metadata accessor for AspirePirPIRShardingFunction);
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*AspirePirKeywordPirParameters.shardingFunction.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPIRShardingFunction(0);
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
  v15 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirPIRShardingFunction);
  }

  return AspirePirKeywordPirParameters.shardingFunction.modify;
}

void AspirePirKeywordPirParameters.shardingFunction.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[5], v5, type metadata accessor for AspirePirPIRShardingFunction);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v5, v10 + v4, type metadata accessor for AspirePirPIRShardingFunction);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunction);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10 + v4, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v10 + v4, type metadata accessor for AspirePirPIRShardingFunction);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

Swift::Void __swiftcall AspirePirKeywordPirParameters.clearShardingFunction()()
{
  v1 = *(type metadata accessor for AspirePirKeywordPirParameters(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v2 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspirePirPIRShardingFunction.sha256.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    return UnknownStorage.init()();
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
}

uint64_t key path getter for AspirePirPIRShardingFunction.sha256 : AspirePirPIRShardingFunction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    return UnknownStorage.init()();
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
}

uint64_t key path setter for AspirePirPIRShardingFunction.sha256 : AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPIRShardingFunction.sha256.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  v3 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPIRShardingFunction.sha256.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspirePirPIRShardingFunctionSHA256(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v8, v11, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      return AspirePirPIRShardingFunction.sha256.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  UnknownStorage.init()();
  return AspirePirPIRShardingFunction.sha256.modify;
}

void AspirePirPIRShardingFunction.sha256.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspirePirPIRShardingFunction.doubleMod.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  *a1 = 0;
  type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspirePirPIRShardingFunction.doubleMod : AspirePirPIRShardingFunction@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  }

  *a2 = 0;
  type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspirePirPIRShardingFunction.doubleMod : AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v7 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPIRShardingFunction.doubleMod.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  v3 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  return UnknownStorage.init()();
}

void (*AspirePirPIRShardingFunction.doubleMod.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v12 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = 0;
    UnknownStorage.init()();
    return AspirePirPIRShardingFunction.doubleMod.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v11, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  return AspirePirPIRShardingFunction.doubleMod.modify;
}

void AspirePirPIRShardingFunction.doubleMod.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t static AspirePirPIRShardingFunctionSHA256.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static AspirePirPIRShardingFunctionDoubleMod.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPIRShardingFunction.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspirePirPIRShardingFunction.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspirePirEncryptedIndices.ciphertexts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AspirePirKeywordPirParameters.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspirePirKeywordPirParameters.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspirePirSerializedKeywordDbRow.value.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspirePirSerializedKeywordDbRow.value.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*AspirePirSerializedKeywordDbRow.shardID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirSerializedKeywordDbRow(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRShardConfig.shardID.modify;
}

uint64_t AspirePirSerializedKeywordDbRow.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  v2 = type metadata accessor for AspirePirSerializedKeywordDbRow(0);
  result = UnknownStorage.init()();
  v4 = (a1 + *(v2 + 28));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t AspirePirSerializedKeywordDb.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AspirePirSerializedKeywordDb(0);
  return UnknownStorage.init()();
}

uint64_t AspirePirPirPreprocessDbArgs.inputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.inputDatabase : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.inputDatabase : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.inputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

void (*AspirePirPirPreprocessDbArgs.inputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.inputDatabase.modify;
}

void AspirePirPirPreprocessDbArgs.inputDatabase.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 16) = v3;
    *(v12 + 24) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasInputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearInputDatabase()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.valuesProtoPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.valuesProtoPath : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.valuesProtoPath : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.valuesProtoPath.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

void (*AspirePirPirPreprocessDbArgs.valuesProtoPath.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.valuesProtoPath.modify;
}

void AspirePirPirPreprocessDbArgs.valuesProtoPath.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 32) = v3;
    *(v12 + 40) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasValuesProtoPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearValuesProtoPath()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 57))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 48);
    v6 = *(v3 + 56);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.algorithm : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 57);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.algorithm : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 57) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.algorithm.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 57) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.algorithm.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 57))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.algorithm.modify;
}

void AspirePirPirPreprocessDbArgs.algorithm.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 48) = v3;
  *(v8 + 56) = v6;
  *(v8 + 57) = 0;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasAlgorithm.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 57) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearAlgorithm()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 56) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v3 + 80);
  *(a1 + 16) = v6;

  return outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v4, v5, v6);
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.sharding : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v3, v4, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(a2 + v6) = v8;
  }

  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  *(v8 + 64) = v3;
  *(v8 + 72) = v4;
  v11 = *(v8 + 80);
  *(v8 + 80) = v5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v2 + v6) = v8;
  }

  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  *(v8 + 64) = v3;
  *(v8 + 72) = v4;
  v11 = *(v8 + 80);
  *(v8 + 80) = v5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
}

uint64_t (*AspirePirPirPreprocessDbArgs.sharding.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 20) = v3;
  v4 = *(v1 + v3);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v7 = *(v4 + 80);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v5, v6, v7);
  return AspirePirPirPreprocessDbArgs.sharding.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.sharding.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 5);
  v6 = a1[3];
  if (a2)
  {
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(*a1, v2, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v6 + v5) = v8;
    }

    v9 = *(v8 + 64);
    v10 = *(v8 + 72);
    *(v8 + 64) = v3;
    *(v8 + 72) = v2;
    v11 = *(v8 + 80);
    *(v8 + 80) = v4;
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
    v12 = v3;
    v13 = v2;
    v14 = v4;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + v5);
    if ((v15 & 1) == 0)
    {
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v16 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v16);
      *(v6 + v5) = v16;
    }

    v12 = *(v16 + 64);
    v13 = *(v16 + 72);
    *(v16 + 64) = v3;
    *(v16 + 72) = v2;
    v14 = *(v16 + 80);
    *(v16 + 80) = v4;
  }

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v12, v13, v14);
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80))
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 0);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.numShards : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80))
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *(v5 + 64);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, *(v5 + 72), 0);
  }

  *a2 = v6;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbArgs.numShards.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = *(v4 + 64);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, *(v4 + 72), 0);
  }

  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.numShards.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.numEntriesPerShard.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 1);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.numEntriesPerShard : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80) == 1)
  {
    v6 = *(v5 + 64);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, *(v5 + 72), 1);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.numShards : AspirePirPirPreprocessDbArgs(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v10 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *(v10 + 64);
  v12 = *(v10 + 72);
  *(v10 + 64) = v7;
  *(v10 + 72) = 0;
  v13 = *(v10 + 80);
  *(v10 + 80) = a5;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v11, v12, v13);
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.setter(unsigned int a1, char a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  *(v8 + 64) = a1;
  *(v8 + 72) = 0;
  v11 = *(v8 + 80);
  *(v8 + 80) = a2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
}

uint64_t (*AspirePirPirPreprocessDbArgs.numEntriesPerShard.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80) == 1)
  {
    v5 = *(v4 + 64);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, *(v4 + 72), 1);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.numEntriesPerShard.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.numShards.modify(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 3);
  v5 = *a1;
  v6 = *(a1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v5 + v4) = v8;
  }

  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  *(v8 + 64) = v6;
  *(v8 + 72) = 0;
  v11 = *(v8 + 80);
  *(v8 + 80) = a3;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  if (*(v1 + 80) != 2)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, *(v1 + 72), 2);
  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.shardID : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for AspirePirPirPreprocessDbArgs(0);
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 80) == 2)
  {
    v7 = *(v5 + 64);
    v6 = *(v5 + 72);
    result = outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v7, v6, 2);
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.shardID : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  v10 = *(v7 + 80);
  *(v7 + 80) = 2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v8, v9, v10);
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = *(v8 + 64);
  v10 = *(v8 + 72);
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v11 = *(v8 + 80);
  *(v8 + 80) = 2;

  return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v9, v10, v11);
}

uint64_t (*AspirePirPirPreprocessDbArgs.shardID.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 80) == 2)
  {
    v6 = *(v4 + 64);
    v5 = *(v4 + 72);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v6, v5, 2);
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  return AspirePirPirPreprocessDbArgs.shardID.modify;
}

uint64_t AspirePirPirPreprocessDbArgs.shardID.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 6);
  v5 = a1[2];
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
      *(v5 + v4) = v7;
    }

    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
    v10 = *(v7 + 80);
    *(v7 + 80) = 2;
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v8, v9, v10);
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v13 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v13);
      *(v5 + v4) = v13;
    }

    v14 = *(v13 + 64);
    v15 = *(v13 + 72);
    *(v13 + 64) = v3;
    *(v13 + 72) = v2;
    v16 = *(v13 + 80);
    *(v13 + 80) = 2;

    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v14, v15, v16);
  }
}

uint64_t AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 96))
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 96))
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 88) = v4;
  *(v7 + 96) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
}

void (*AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 96))
  {
    v7 = *(v6 + 88);
    v8 = *(v6 + 96);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify;
}

void AspirePirPirPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 88) = v3;
    *(v8 + 96) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 88) = v3;
    *(v12 + 96) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasPredefinedEncryptionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 96) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearPredefinedEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.heScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 113))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 104);
    v6 = *(v3 + 112);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.heScheme : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 113);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.heScheme : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = v4;
  *(v7 + 113) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.heScheme.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = v4;
  *(v7 + 113) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.heScheme.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 113))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 104);
    v8 = *(v6 + 112);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.heScheme.modify;
}

void AspirePirPirPreprocessDbArgs.heScheme.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 104) = v3;
  *(v8 + 112) = v6;
  *(v8 + 113) = 0;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasHeScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 113) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearHeScheme()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 104) = 0;
  *(v3 + 112) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.outputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputDatabase : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 128))
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputDatabase : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 120) = v4;
  *(v7 + 128) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 128))
  {
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspirePirPirPreprocessDbArgs.outputDatabase.modify;
}

void AspirePirPirPreprocessDbArgs.outputDatabase.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 120) = v3;
    *(v8 + 128) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 120) = v3;
    *(v12 + 128) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 128) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputDatabase()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.outputPirParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputPirParameters : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 144))
  {
    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputPirParameters : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 136) = v4;
  *(v7 + 144) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputPirParameters.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputPirParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
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

  return AspirePirPirPreprocessDbArgs.outputPirParameters.modify;
}

void AspirePirPirPreprocessDbArgs.outputPirParameters.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 136) = v3;
    *(v8 + 144) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 136) = v3;
    *(v12 + 144) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputPirParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 144) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputPirParameters()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.outputKeyConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
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

uint64_t key path getter for AspirePirPirPreprocessDbArgs.outputKeyConfig : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 160))
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.outputKeyConfig : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 152) = v4;
  *(v7 + 160) = v3;
}

uint64_t AspirePirPirPreprocessDbArgs.outputKeyConfig.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
}

void (*AspirePirPirPreprocessDbArgs.outputKeyConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
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

  return AspirePirPirPreprocessDbArgs.outputKeyConfig.modify;
}

void AspirePirPirPreprocessDbArgs.outputKeyConfig.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 152) = v3;
    *(v8 + 160) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v12 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 152) = v3;
    *(v12 + 160) = v5;
  }

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasOutputKeyConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 160) != 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearOutputKeyConfig()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
}

uint64_t AspirePirPirPreprocessDbArgs.keyCompressionStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  if (*(v3 + 177))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *(v3 + 168);
    v6 = *(v3 + 176);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.keyCompressionStrategy : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 168);
  v6 = *(v3 + 176);
  v7 = *(v3 + 177);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.keyCompressionStrategy : AspirePirPirPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 168) = v3;
  *(v7 + 176) = v4;
  *(v7 + 177) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.keyCompressionStrategy.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 168) = v3;
  *(v7 + 176) = v4;
  *(v7 + 177) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 177))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *(v6 + 168);
    v8 = *(v6 + 176);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify;
}

void AspirePirPirPreprocessDbArgs.keyCompressionStrategy.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 168) = v3;
  *(v8 + 176) = v6;
  *(v8 + 177) = 0;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasKeyCompressionStrategy.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 177) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearKeyCompressionStrategy()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 168) = 0;
  *(v3 + 176) = 256;
}

uint64_t AspirePirPirPreprocessDbArgs.splitLargeEntry.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 178) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.splitLargeEntry : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 178) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.splitLargeEntry.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 178) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.splitLargeEntry.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 178) & 1;
  return AspirePirPirPreprocessDbArgs.splitLargeEntry.modify;
}

void AspirePirPirPreprocessDbArgs.splitLargeEntry.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 178) = v5;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasSplitLargeEntry.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 178) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearSplitLargeEntry()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 178) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.skipLargeEntrySize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 184))
  {
    return 0;
  }

  else
  {
    return *(v1 + 180);
  }
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.skipLargeEntrySize : AspirePirPirPreprocessDbArgs(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 180) = v3;
  *(v6 + 184) = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.skipLargeEntrySize.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 180) = a1;
  *(v6 + 184) = 0;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 180);
  if (*(v6 + 184))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify;
}

void AspirePirPirPreprocessDbArgs.skipLargeEntrySize.modify(uint64_t *a1, char a2)
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
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 180) = v3;
  *(v7 + 184) = 0;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasSkipLargeEntrySize.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return (*(v1 + 184) & 1) == 0;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearSkipLargeEntrySize()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 180) = 0;
  *(v3 + 184) = 1;
}

uint64_t AspirePirPirPreprocessDbArgs.unevenDimensions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 185) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.unevenDimensions : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 185) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.unevenDimensions.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 185) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.unevenDimensions.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 185) & 1;
  return AspirePirPirPreprocessDbArgs.unevenDimensions.modify;
}

void AspirePirPirPreprocessDbArgs.unevenDimensions.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 185) = v5;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasUnevenDimensions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 185) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearUnevenDimensions()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 185) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.noValidate.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 186) & 1;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.noValidate : AspirePirPirPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 186) = v3;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs.noValidate.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v6 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 186) = a1 & 1;
  return result;
}

void (*AspirePirPirPreprocessDbArgs.noValidate.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 186) & 1;
  return AspirePirPirPreprocessDbArgs.noValidate.modify;
}

void AspirePirPirPreprocessDbArgs.noValidate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 186) = v5;

  free(v2);
}

BOOL AspirePirPirPreprocessDbArgs.hasNoValidate.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 186) != 2;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearNoValidate()()
{
  v1 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v3 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 186) = 2;
}

uint64_t AspirePirPirPreprocessDbArgs.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirPirPreprocessDbArgs.command : AspirePirPirPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbArgs.command : AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v10, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v11 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v13 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v13);
    *(a2 + v11) = v13;
  }

  outlined init with take of AspirePirPIRShardingFunction(v10, v6, type metadata accessor for AspirePirPirPreprocessDbCommand);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirPreprocessDbArgs.command.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v9 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v9);
    *(v2 + v7) = v9;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v6, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v11, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPIRShardingFunction.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

void (*AspirePirPirPreprocessDbArgs.command.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
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
  v15 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirPirPreprocessDbCommand);
  }

  return AspirePirPirPreprocessDbArgs.command.modify;
}

void AspirePirPirPreprocessDbArgs.command.modify(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v3 + 120), *(v3 + 112), type metadata accessor for AspirePirPirPreprocessDbCommand);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v11, v15, type metadata accessor for AspirePirPirPreprocessDbCommand);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v7 + v16, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand);
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
      type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v19 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v10, v15, type metadata accessor for AspirePirPirPreprocessDbCommand);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v24, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL AspirePirPirPreprocessDbArgs.hasCommand.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v5 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + v5, v3, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v6 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return v7;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbArgs.clearCommand()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v4, v7 + v9, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  swift_endAccess();
}

uint64_t AspirePirPirParameters.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t AspirePirPirPreprocessDbCommand.keyword.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v13 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_5:
    v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v9 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
    result = UnknownStorage.init()();
    v11 = (a1 + *(v9 + 24));
    *v11 = 0;
    v11[1] = 0;
    v12 = (a1 + *(v9 + 28));
    *v12 = 0;
    v12[1] = 0;
    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_5;
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.keyword : AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPirPreprocessDbCommand.keyword.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  result = UnknownStorage.init()();
  v5 = (a1 + *(v3 + 24));
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + *(v3 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

void (*AspirePirPirPreprocessDbCommand.keyword.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR) - 8) + 64);
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
  v10 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v14 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v9, v13, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      return AspirePirPirPreprocessDbCommand.keyword.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  v16 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  UnknownStorage.init()();
  v17 = (v13 + *(v10 + 24));
  *v17 = 0;
  v17[1] = 0;
  v18 = (v13 + *(v10 + 28));
  *v18 = 0;
  v18[1] = 0;
  return AspirePirPirPreprocessDbCommand.keyword.modify;
}

void AspirePirPirPreprocessDbCommand.keyword.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspirePirPirPreprocessDbCommand.index.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  *a1 = 0;
  type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspirePirPirPreprocessDbCommand.index : AspirePirPirPreprocessDbCommand@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  }

  *a2 = 0;
  type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.index : AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPirPreprocessDbCommand.index.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AspirePirPirPreprocessDbCommand.Index.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  return UnknownStorage.init()();
}

void (*AspirePirPirPreprocessDbCommand.index.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_15:
    *v11 = 0;
    UnknownStorage.init()();
    return AspirePirPirPreprocessDbCommand.index.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v8, v11, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  return AspirePirPirPreprocessDbCommand.index.modify;
}

void AspirePirPirPreprocessDbCommand.index.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t static AspirePirPirPreprocessDbCommand.Index.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.keyword.getter()
{
  v1 = (v0 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspirePirPirPreprocessDbCommand.Keyword.keyword : AspirePirPirPreprocessDbCommand.Keyword@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.keyword : AspirePirPirPreprocessDbCommand.Keyword(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.keyword.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbCommand.Keyword.keyword.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRShardConfig.shardID.modify;
}

Swift::Void __swiftcall AspirePirPirPreprocessDbCommand.Keyword.clearKeyword()()
{
  v1 = (v0 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t AspirePirSerializedKeywordDbRow.shardID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t key path getter for AspirePirSerializedKeywordDbRow.shardID : AspirePirSerializedKeywordDbRow@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t key path setter for AspirePirSerializedKeywordDbRow.shardID : AspirePirSerializedKeywordDbRow(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AspirePirSerializedKeywordDbRow.shardID.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*AspirePirPirPreprocessDbCommand.Keyword.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return AspireApiPIRRequest.shardID.modify;
}

uint64_t AspirePirSerializedKeywordDbRow.clearShardID()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_5:
    type metadata accessor for AspirePirCuckooTableConfig(0);
    *a1 = 0u;
    a1[1] = 0u;
    *(a1 + 26) = 0u;
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    goto LABEL_5;
  }

  return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirCuckooTableConfig);
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig : AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirCuckooTableConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirCuckooTableConfig);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirCuckooTableConfig);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspirePirCuckooTableConfig(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(v8, v11, type metadata accessor for AspirePirCuckooTableConfig);
      return AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  }

  *(v11 + 26) = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  UnknownStorage.init()();
  return AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify;
}

void AspirePirPirPreprocessDbCommand.Keyword.cuckooConfig.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirCuckooTableConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirCuckooTableConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirCuckooTableConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v13 - v5, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirBatchKeywordPirConfig);
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  }

  v9 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  UnknownStorage.init()();
  v10 = *(v9 + 40);
  v11 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + *(v9 + 44);
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t key path setter for AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig : AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v6, type metadata accessor for AspirePirBatchKeywordPirConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(v6, a2, type metadata accessor for AspirePirBatchKeywordPirConfig);
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.setter(uint64_t a1)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  outlined init with take of AspirePirPIRShardingFunction(a1, v1, type metadata accessor for AspirePirBatchKeywordPirConfig);
  v3 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v14 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_15:
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    UnknownStorage.init()();
    v16 = *(v10 + 40);
    v17 = type metadata accessor for AspirePirCuckooTableConfig(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + *(v10 + 44);
    *v18 = 0;
    *(v18 + 8) = 1;
    return AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v9, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    goto LABEL_15;
  }

  outlined init with take of AspirePirPIRShardingFunction(v9, v13, type metadata accessor for AspirePirBatchKeywordPirConfig);
  return AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify;
}

void AspirePirPirPreprocessDbCommand.Keyword.batchPirConfig.modify(uint64_t **a1, char a2, double a3)
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
    outlined init with copy of AspireHeEncryptionParameters((*a1)[3], v6, type metadata accessor for AspirePirBatchKeywordPirConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v6, v9, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirBatchKeywordPirConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v7, v9, type metadata accessor for AspirePirBatchKeywordPirConfig);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t AspirePirSymmetricPirClientConfig.serverPublicKey.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspirePirSymmetricPirClientConfig.serverPublicKey.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void AspirePirSymmetricPirClientConfig.configType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AspirePirSymmetricPirClientConfig.configType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1)
{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for AspirePirPirParameters._StorageClass, AspirePirPirParameters._StorageClass.init(), &static AspirePirPirParameters._StorageClass.defaultInstance);
}

{
  return one-time initialization function for defaultInstance(a1, type metadata accessor for AspirePirPirPreprocessDbArgs._StorageClass, AspirePirPirPreprocessDbArgs._StorageClass.init(), &static AspirePirPirPreprocessDbArgs._StorageClass.defaultInstance);
}

uint64_t AspirePirPirParameters._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries) = 0;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize) = 0;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize) = 0;
  v6 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse) = 2;
  v9 = v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v11 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t AspirePirPirParameters._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v13 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries) = 0;
  v58 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize) = 0;
  v15 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v59 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  v17 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  *v18 = 0;
  *(v18 + 8) = 1;
  v60 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize) = 0;
  v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v61 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  v20 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  v63 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  *(v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse) = 2;
  v23 = v1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  v64 = v22;
  v65 = v23;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v66 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  v25 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v26, v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v11, v1 + v12, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  v28 = *(a1 + v27);
  swift_beginAccess();
  *(v1 + v14) = v28;
  v29 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v58;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  *(v1 + v15) = v33;

  v34 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v35 = v62;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v34, v62, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v36 = v59;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v35, v1 + v36, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  swift_beginAccess();
  *v18 = v38;
  *(v18 + 8) = v37;
  v39 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v60;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  v43 = v67;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v42, v67, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v44 = v61;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v43, v1 + v44, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = v63;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  v48 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v64;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  v52 = v65;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v50;
  v53 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v54 = v68;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v53, v68, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);

  v55 = v66;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v54, v1 + v55, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with copy of AspireHeEncryptionParameters(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspirePirPirParameters._StorageClass.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              closure #10 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
              break;
            case 11:
              closure #11 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
              break;
            case 12:
              closure #12 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
              break;
          }
        }

        else
        {
          if (result == 7)
          {
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
LABEL_5:
            closure #2 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
            goto LABEL_6;
          }

          if (result != 8)
          {
            v17 = lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
            v18 = a2;
            v19 = a1;
            v20 = a3;
            v21 = a4;
            v22 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
            v23 = &type metadata for AspirePirKeyCompressionStrategy;
LABEL_21:
            closure #6 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(v18, v19, v20, v21, v22, v17, v23);
            goto LABEL_6;
          }

          closure #8 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          v11 = MEMORY[0x277D217B8];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
          goto LABEL_5;
        }

        if (result != 5)
        {
          v17 = lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
          v23 = &type metadata for AspirePirPirAlgorithm;
          goto LABEL_21;
        }

        closure #5 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 2:
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
            goto LABEL_5;
          case 3:
            v11 = MEMORY[0x277D217F8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
            goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspirePirKeywordPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspirePirBatchPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {

      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    closure #2 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    v13 = (a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm);
    swift_beginAccess();
    if (*v13)
    {
      lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #3 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    swift_beginAccess();
    lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    closure #4 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #5 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #6 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters, &protocol conformance descriptor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirKeywordPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirKeywordPirParameters);
}

uint64_t closure #3 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspireHeEvaluationKeyConfig);
}

uint64_t closure #4 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirBatchPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirBatchPirParameters);
}

BOOL closure #1 in static AspirePirPirParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v3 = type metadata accessor for AspirePirBatchPirParameters(0);
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v112 = (&v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v114);
  v117 = &v112 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = (&v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v118 = &v112 - v9;
  v10 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x28223BE20](v10);
  v119 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v120);
  v123 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v131 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v125 = &v112 - v16;
  v17 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v128 = *(v17 - 8);
  v129 = v17;
  MEMORY[0x28223BE20](v17);
  v124 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v127);
  v130 = &v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v126 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v132 = &v112 - v23;
  v135 = type metadata accessor for AspireHeEncryptionParameters(0);
  v24 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v134 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v112 - v33;
  v35 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v35, v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v36 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  v37 = v136;
  swift_beginAccess();
  v38 = *(v27 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34, v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v39 = v37 + v36;
  v40 = v37;
  v41 = v135;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39, &v29[v38], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v42 = *(v24 + 48);
  if (v42(v29, 1, v41) == 1)
  {
    v43 = a1;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    if (v42(&v29[v38], 1, v41) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    v45 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v46 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
LABEL_7:
    v47 = v29;
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v47, v45, v46);
    goto LABEL_61;
  }

  v43 = a1;
  v44 = v134;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v134, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v42(&v29[v38], 1, v41) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v44, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  v48 = v133;
  outlined init with take of AspirePirPIRShardingFunction(&v29[v38], v133, type metadata accessor for AspireHeEncryptionParameters);

  LODWORD(v135) = static AspireHeEncryptionParameters.== infix(_:_:)(v44, v48);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v48, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v44, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v135 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_10:
  v49 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  v50 = *(v43 + v49);
  v51 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  if (v50 != *(v40 + v51))
  {
    goto LABEL_61;
  }

  v52 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  v53 = *(v43 + v52);
  v54 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  if (v53 != *(v40 + v54))
  {
    goto LABEL_61;
  }

  v55 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v56 = *(v43 + v55);
  v57 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v56, *(v40 + v57)) & 1) == 0)
  {
    goto LABEL_61;
  }

  v58 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v59 = v132;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v58, v132, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v60 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  v61 = *(v127 + 48);
  v29 = v130;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v59, v130, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v60, &v29[v61], &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v62 = v129;
  v63 = *(v128 + 48);
  if (v63(v29, 1, v129) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v59, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v64 = v63(&v29[v61], 1, v62);
    v65 = v131;
    if (v64 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v66 = v126;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v126, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v67 = v63(&v29[v61], 1, v62);
  v65 = v131;
  if (v67 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v132, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v66, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_18:
    v45 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v46 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    goto LABEL_7;
  }

  v68 = &v29[v61];
  v69 = v124;
  outlined init with take of AspirePirPIRShardingFunction(v68, v124, type metadata accessor for AspirePirKeywordPirParameters);
  v70 = specialized static AspirePirKeywordPirParameters.== infix(_:_:)(v66, v69);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v69, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v132, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v66, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v70 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_20:
  v71 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  swift_beginAccess();
  v72 = *(v43 + v71);
  v73 = (v40 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm);
  swift_beginAccess();
  v74 = *v73;
  if (*(v73 + 8) == 1)
  {
    v75 = v125;
    if (v74)
    {
      if (v74 == 1)
      {
        if (v72 != 1)
        {
          goto LABEL_61;
        }
      }

      else if (v72 != 2)
      {
        goto LABEL_61;
      }
    }

    else if (v72)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v75 = v125;
    if (v72 != v74)
    {
      goto LABEL_61;
    }
  }

  v76 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  v77 = *(v43 + v76);
  v78 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  if (v77 != *(v40 + v78))
  {
    goto LABEL_61;
  }

  v79 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v79, v75, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v80 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  v81 = *(v120 + 48);
  v82 = v123;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v75, v123, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v80, v82 + v81, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v83 = v122;
  v84 = *(v121 + 48);
  if (v84(v82, 1, v122) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v75, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v84(v82 + v81, 1, v83) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v82, v65, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v84(v82 + v81, 1, v83) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v125, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v65, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_36:
    v45 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd;
    v46 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR;
    v47 = v82;
    goto LABEL_8;
  }

  v85 = v119;
  outlined init with take of AspirePirPIRShardingFunction(v82 + v81, v119, type metadata accessor for AspireHeEvaluationKeyConfig);
  v86 = specialized static AspireHeEvaluationKeyConfig.== infix(_:_:)(v65, v85);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v85, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v125, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v65, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_38:
  v87 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  swift_beginAccess();
  v88 = *(v43 + v87);
  v89 = (v40 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy);
  swift_beginAccess();
  v90 = *v89;
  if (*(v89 + 8) == 1)
  {
    if (v90)
    {
      if (v90 == 1)
      {
        if (v88 != 1)
        {
          goto LABEL_61;
        }
      }

      else if (v88 != 2)
      {
        goto LABEL_61;
      }
    }

    else if (v88)
    {
      goto LABEL_61;
    }
  }

  else if (v88 != v90)
  {
    goto LABEL_61;
  }

  v91 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  v92 = *(v43 + v91);
  v93 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  v94 = *(v40 + v93);
  if (v92 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_61;
    }
  }

  else if (v94 == 2 || ((v92 ^ v94) & 1) != 0)
  {
    goto LABEL_61;
  }

  v95 = v43 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 8);
  v98 = v40 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  if (v97)
  {
    if (*(v98 + 8))
    {
      goto LABEL_58;
    }

LABEL_61:

    return 0;
  }

  if ((*(v98 + 8) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_61;
  }

LABEL_58:
  v99 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v100 = v118;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v43 + v99, v118, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v101 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchPirParams;
  swift_beginAccess();
  v102 = *(v114 + 48);
  v103 = v100;
  v104 = v117;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v103, v117, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v101, v104 + v102, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v105 = v116;
  v106 = *(v115 + 48);
  if (v106(v104, 1, v116) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v118, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    if (v106(v104 + v102, 1, v105) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v104, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      return 1;
    }

LABEL_65:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v104, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
    return 0;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v104, v113, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v106(v104 + v102, 1, v105) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v118, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v113, type metadata accessor for AspirePirBatchPirParameters);
    v104 = v117;
    goto LABEL_65;
  }

  v108 = v117;
  v109 = v112;
  outlined init with take of AspirePirPIRShardingFunction(v117 + v102, v112, type metadata accessor for AspirePirBatchPirParameters);
  v110 = v113;
  v111 = specialized static AspirePirBatchPirParameters.== infix(_:_:)(v113, v109);

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v109, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v118, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v110, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  return (v111 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters, &protocol conformance descriptor for AspirePirPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters, &protocol conformance descriptor for AspirePirPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirParameters and conformance AspirePirPirParameters, type metadata accessor for AspirePirPirParameters, &protocol conformance descriptor for AspirePirPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirCuckooTableConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2 || result == 3)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result > 5)
    {
      if (result == 6 || result == 7)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_16:
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

uint64_t AspirePirCuckooTableConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3 + 24) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 32) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
          {
            if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              if (*(v3 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
              {
                type metadata accessor for AspirePirCuckooTableConfig(0);
                return UnknownStorage.traverse<A>(visitor:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirCuckooTableConfig@<X0>(_OWORD *a2@<X8>)
{
  *(a2 + 26) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspirePirCuckooTableConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirCuckooTableConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirCuckooTableConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          closure #1 in AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
LABEL_2:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      if (result == 7)
      {
        type metadata accessor for AspirePirBatchKeywordPirConfig(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }
  }
}

uint64_t closure #1 in AspirePirBatchKeywordPirConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  type metadata accessor for AspirePirCuckooTableConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[1])
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[3])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (v3[4])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #2 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for AspirePirBatchKeywordPirConfig(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 40), v7, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirCuckooTableConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig, &protocol conformance descriptor for AspirePirCuckooTableConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirCuckooTableConfig);
}

uint64_t closure #2 in AspirePirBatchKeywordPirConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirBatchKeywordPirConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  UnknownStorage.init()();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for AspirePirCuckooTableConfig(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 44);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig, &protocol conformance descriptor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirBatchKeywordPirConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig, &protocol conformance descriptor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirBatchKeywordPirConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig, &protocol conformance descriptor for AspirePirBatchKeywordPirConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirBatchPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }
}

uint64_t AspirePirBatchPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
      {
        if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for AspirePirBatchPirParameters(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirBatchPirParameters@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirBatchPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirBatchPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirBatchPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters, &protocol conformance descriptor for AspirePirBatchPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspirePirKeywordPirParameters(0);
  type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig, &protocol conformance descriptor for AspirePirSymmetricPirClientConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in AspirePirKeywordPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AspirePirKeywordPirParameters(0);
  type metadata accessor for AspirePirPIRShardingFunction(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        closure #2 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(v3, a1, a2, a3);
        type metadata accessor for AspirePirKeywordPirParameters(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 28), v7, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirSymmetricPirClientConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig, &protocol conformance descriptor for AspirePirSymmetricPirClientConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirSymmetricPirClientConfig);
}

uint64_t closure #2 in AspirePirKeywordPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v12 + 32), v7, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirPIRShardingFunction);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPIRShardingFunction);
}

uint64_t protocol witness for Message.init() in conformance AspirePirKeywordPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirKeywordPirParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirKeywordPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters, &protocol conformance descriptor for AspirePirKeywordPirParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256, &protocol conformance descriptor for AspirePirPIRShardingFunctionSHA256);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMd, &_s8CipherML34AspirePirPIRShardingFunctionSHA256VSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod, &protocol conformance descriptor for AspirePirPIRShardingFunctionDoubleMod);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMd, &_s8CipherML37AspirePirPIRShardingFunctionDoubleModVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v13 - v9, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v11 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AspirePirPIRShardingFunction(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v11 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256, &protocol conformance descriptor for AspirePirPIRShardingFunctionSHA256);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspirePirPIRShardingFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v11 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod, &protocol conformance descriptor for AspirePirPIRShardingFunctionDoubleMod);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunction(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunction and conformance AspirePirPIRShardingFunction, type metadata accessor for AspirePirPIRShardingFunction, &protocol conformance descriptor for AspirePirPIRShardingFunction);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPIRShardingFunctionSHA256.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256, &protocol conformance descriptor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256, &protocol conformance descriptor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionSHA256 and conformance AspirePirPIRShardingFunctionSHA256, type metadata accessor for AspirePirPIRShardingFunctionSHA256, &protocol conformance descriptor for AspirePirPIRShardingFunctionSHA256);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPIRShardingFunctionSHA256(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t AspirePirPIRShardingFunctionDoubleMod.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod, &protocol conformance descriptor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod, &protocol conformance descriptor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPIRShardingFunctionDoubleMod(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPIRShardingFunctionDoubleMod and conformance AspirePirPIRShardingFunctionDoubleMod, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod, &protocol conformance descriptor for AspirePirPIRShardingFunctionDoubleMod);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirPIRShardingFunctionDoubleMod(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirEncryptedIndices.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertext(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirEncryptedIndices.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AspirePirEncryptedIndices(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static AspirePirEncryptedIndices.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for AspirePirEncryptedIndices(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AspirePirEncryptedIndices@<X0>(void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirEncryptedIndices(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirEncryptedIndices(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirEncryptedIndices(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirEncryptedIndices(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspirePirSerializedKeywordDbRow.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for AspirePirSerializedKeywordDbRow(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
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
  v14 = v3[2];
  v15 = v3[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_19;
    }

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
LABEL_17:
    if (v17 == v18)
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

  if (v16)
  {
    v17 = v14;
    v18 = v14 >> 32;
    goto LABEL_17;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  result = closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspirePirSerializedKeywordDbRow);
  if (!v4)
  {
    type metadata accessor for AspirePirSerializedKeywordDbRow(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirSerializedKeywordDbRow@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  a2[1] = xmmword_225022910;
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSerializedKeywordDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow, &protocol conformance descriptor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSerializedKeywordDbRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow, &protocol conformance descriptor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSerializedKeywordDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow, &protocol conformance descriptor for AspirePirSerializedKeywordDbRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirSerializedKeywordDb.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspirePirSerializedKeywordDbRow(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow, &protocol conformance descriptor for AspirePirSerializedKeywordDbRow);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirSerializedKeywordDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspirePirSerializedKeywordDbRow(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDbRow and conformance AspirePirSerializedKeywordDbRow, type metadata accessor for AspirePirSerializedKeywordDbRow, &protocol conformance descriptor for AspirePirSerializedKeywordDbRow), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for AspirePirSerializedKeywordDb(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspirePirSerializedKeywordDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspirePirSerializedKeywordDbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AspirePirSerializedKeywordDb(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSerializedKeywordDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb, &protocol conformance descriptor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSerializedKeywordDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb, &protocol conformance descriptor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSerializedKeywordDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSerializedKeywordDb and conformance AspirePirSerializedKeywordDb, type metadata accessor for AspirePirSerializedKeywordDb, &protocol conformance descriptor for AspirePirSerializedKeywordDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirSerializedKeywordDb(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspirePirSerializedKeywordDbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.init()()
{
  *(v0 + 41) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 57) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = -1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  *(v0 + 112) = 256;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 161) = 0u;
  *(v0 + 177) = 513;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  *(v0 + 185) = 514;
  v1 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v2 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v40 - v4;
  *(v1 + 41) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 57) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  *(v1 + 96) = 0;
  *(v1 + 112) = 256;
  *(v1 + 104) = 0;
  v43 = (v1 + 104);
  *(v1 + 88) = 0;
  v42 = (v1 + 88);
  *(v1 + 161) = 0u;
  *(v1 + 152) = 0u;
  v46 = (v1 + 152);
  *(v1 + 136) = 0u;
  v45 = (v1 + 136);
  *(v1 + 120) = 0u;
  v44 = (v1 + 120);
  *(v1 + 177) = 513;
  *(v1 + 180) = 0;
  v47 = (v1 + 180);
  *(v1 + 184) = 1;
  *(v1 + 185) = 514;
  v5 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v48 = (v1 + 185);
  v49 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  v6 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  swift_beginAccess();
  v7 = *(a1 + 16);
  v41 = *(a1 + 24);
  v8 = v41;
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v9;
  *(v1 + 40) = v10;
  swift_beginAccess();
  v11 = *(a1 + 48);
  LOBYTE(v8) = *(a1 + 56);
  v12 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 48) = v11;
  *(v1 + 56) = v8;
  *(v1 + 57) = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = *(a1 + 80);
  *(v1 + 64) = v13;
  *(v1 + 72) = v14;
  v18 = *(v1 + 80);
  *(v1 + 80) = v17;

  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v13, v14, v17);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v15, v16, v18);
  swift_beginAccess();
  v20 = *(a1 + 88);
  v19 = *(a1 + 96);
  v21 = v42;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 96) = v19;

  swift_beginAccess();
  v22 = *(a1 + 104);
  LOBYTE(v16) = *(a1 + 112);
  LOBYTE(v20) = *(a1 + 113);
  v23 = v43;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 112) = v16;
  *(v1 + 113) = v20;
  swift_beginAccess();
  v25 = *(a1 + 120);
  v24 = *(a1 + 128);
  v26 = v44;
  swift_beginAccess();
  *v26 = v25;
  *(v1 + 128) = v24;

  swift_beginAccess();
  v28 = *(a1 + 136);
  v27 = *(a1 + 144);
  v29 = v45;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 144) = v27;

  swift_beginAccess();
  v31 = *(a1 + 152);
  v30 = *(a1 + 160);
  v32 = v46;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 160) = v30;

  swift_beginAccess();
  v33 = *(a1 + 168);
  LOBYTE(v16) = *(a1 + 176);
  LOBYTE(v31) = *(a1 + 177);
  swift_beginAccess();
  *(v1 + 168) = v33;
  *(v1 + 176) = v16;
  *(v1 + 177) = v31;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + 178);
  swift_beginAccess();
  *(v1 + 178) = v33;
  swift_beginAccess();
  LODWORD(v33) = *(a1 + 180);
  LOBYTE(v16) = *(a1 + 184);
  v34 = v47;
  swift_beginAccess();
  *v34 = v33;
  *(v1 + 184) = v16;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + 185);
  v35 = v48;
  swift_beginAccess();
  *v35 = v33;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + 186);
  swift_beginAccess();
  *(v1 + 186) = v33;
  v36 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  v37 = v50;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v36, v50, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);

  v38 = v49;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v37, v1 + v38, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.deinit()
{

  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return v0;
}

uint64_t AspirePirPirPreprocessDbArgs._StorageClass.__deallocating_deinit()
{
  AspirePirPirPreprocessDbArgs._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t AspirePirPirParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 2:
        closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 3:
        closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = 0;
        goto LABEL_15;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = 1;
LABEL_15:
        closure #4 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
        break;
      case 6:
        closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 7:
        closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 8:
        closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 9:
        closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 10:
        closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 11:
        closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 12:
        closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 13:
        closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 14:
        closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 15:
        closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 16:
        closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 17:
        closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v4)
  {
  }

  return result;
}

uint64_t closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    if (*(a1 + 80) > 1u)
    {
      if (*(a1 + 80) == 2)
      {
        closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
      }
    }

    else
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 57) & 1) == 0)
  {
    lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t result)
{
  if (*(result + 80) == 2)
  {
    v2 = *(result + 64);
    v1 = *(result + 72);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v1, 2);
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v2, v1, 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #7 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 113) & 1) == 0)
  {
    lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 128))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 144))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 177) & 1) == 0)
  {
    lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 178) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 185) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 186) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v12, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  }

  outlined init with take of AspirePirPIRShardingFunction(v7, v11, type metadata accessor for AspirePirPirPreprocessDbCommand);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand);
}

BOOL closure #1 in static AspirePirPirPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand(0);
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMR);
  MEMORY[0x28223BE20](v7);
  v80 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v16)
  {
    if (!v17 || (v15 != *(a2 + 16) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (v18 != *(a2 + 32) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 48);
  v22 = *(a1 + 57);
  swift_beginAccess();
  if (v22)
  {
    if (*(a2 + 57))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (*(a2 + 57))
  {
    return 0;
  }

  v32 = *(a2 + 48);
  if (*(a2 + 56))
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v21 != 1)
        {
          return 0;
        }
      }

      else if (v21 != 2)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }
  }

  else if (v21 != v32)
  {
    return 0;
  }

LABEL_17:
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a2 + 72);
  v77 = *(a2 + 64);
  v78 = v26;
  v27 = *(a2 + 80);
  if (v25 == 255)
  {
    if (v27 == 255)
    {
      v74 = v4;
      v37 = v24;
      v38 = v23;

      outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v37, v38, 255);
      outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v77, v78, 255);
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v37, v38, 255);
      goto LABEL_34;
    }

    v33 = v24;
    v34 = v23;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v24, v23, 255);
    v36 = v77;
    v35 = v78;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v77, v78, v27);
    goto LABEL_32;
  }

  v84 = v24;
  v85 = v23;
  v86 = v25;
  if (v27 == 255)
  {
    v33 = v24;
    v34 = v23;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v24, v23, v25);
    v36 = v77;
    v35 = v78;
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v77, v78, 255);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v33, v34, v25);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v33, v34, v25);
LABEL_32:
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v33, v34, v25);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v36, v35, v27);
    return 0;
  }

  v74 = v4;
  v75 = v24;
  v81 = v77;
  v82 = v78;
  v83 = v27;
  v28 = v24;
  v76 = v23;

  v29 = v28;
  v30 = v76;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v29, v76, v25);
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v77, v78, v27);
  v31 = v75;
  outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v75, v30, v25);
  LOBYTE(v30) = specialized static AspirePirPirPreprocessDbArgs.OneOf_Sharding.== infix(_:_:)(&v84, &v81);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v81, v82, v83);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v84, v85, v86);
  outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v31, v76, v25);
  if ((v30 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_34:
  swift_beginAccess();
  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  swift_beginAccess();
  v41 = *(a2 + 96);
  if (v40)
  {
    if (!v41 || (v39 != *(a2 + 88) || v40 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v41)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v42 = *(a1 + 104);
  v43 = *(a1 + 113);
  swift_beginAccess();
  if (v43)
  {
    if ((*(a2 + 113) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if (*(a2 + 113))
    {
      goto LABEL_114;
    }

    v47 = *(a2 + 104);
    if (*(a2 + 112))
    {
      if (v47)
      {
        if (v47 == 1)
        {
          if (v42 != 1)
          {
            goto LABEL_114;
          }
        }

        else if (v42 != 2)
        {
          goto LABEL_114;
        }
      }

      else if (v42)
      {
        goto LABEL_114;
      }
    }

    else if (v42 != v47)
    {
      goto LABEL_114;
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 120);
  v45 = *(a1 + 128);
  swift_beginAccess();
  v46 = *(a2 + 128);
  if (v45)
  {
    if (!v46 || (v44 != *(a2 + 120) || v45 != v46) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v46)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v48 = *(a1 + 136);
  v49 = *(a1 + 144);
  swift_beginAccess();
  v50 = *(a2 + 144);
  if (v49)
  {
    if (!v50 || (v48 != *(a2 + 136) || v49 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v50)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v51 = *(a1 + 152);
  v52 = *(a1 + 160);
  swift_beginAccess();
  v53 = *(a2 + 160);
  if (v52)
  {
    if (!v53 || (v51 != *(a2 + 152) || v52 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if (v53)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v54 = *(a1 + 168);
  v55 = *(a1 + 177);
  swift_beginAccess();
  if (v55)
  {
    if ((*(a2 + 177) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if (*(a2 + 177))
    {
      goto LABEL_114;
    }

    v58 = *(a2 + 168);
    if (*(a2 + 176))
    {
      if (v58)
      {
        if (v58 == 1)
        {
          if (v54 != 1)
          {
            goto LABEL_114;
          }
        }

        else if (v54 != 2)
        {
          goto LABEL_114;
        }
      }

      else if (v54)
      {
        goto LABEL_114;
      }
    }

    else if (v54 != v58)
    {
      goto LABEL_114;
    }
  }

  swift_beginAccess();
  v56 = *(a1 + 178);
  swift_beginAccess();
  v57 = *(a2 + 178);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_114;
    }
  }

  else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v59 = *(a1 + 180);
  v60 = *(a1 + 184);
  swift_beginAccess();
  if (v60)
  {
    if ((*(a2 + 184) & 1) == 0)
    {
      goto LABEL_114;
    }
  }

  else if ((*(a2 + 184) & 1) != 0 || v59 != *(a2 + 180))
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v61 = *(a1 + 185);
  swift_beginAccess();
  v62 = *(a2 + 185);
  if (v61 == 2)
  {
    if (v62 != 2)
    {
      goto LABEL_114;
    }
  }

  else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
  {
    goto LABEL_114;
  }

  swift_beginAccess();
  v63 = *(a1 + 186);
  swift_beginAccess();
  v64 = *(a2 + 186);
  if (v63 == 2)
  {
    if (v64 == 2)
    {
      goto LABEL_116;
    }

LABEL_114:

    return 0;
  }

  if (v64 == 2 || ((v63 ^ v64) & 1) != 0)
  {
    goto LABEL_114;
  }

LABEL_116:
  v66 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v66, v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v67 = OBJC_IVAR____TtCV8CipherML28AspirePirPirPreprocessDbArgsP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__command;
  swift_beginAccess();
  v68 = *(v7 + 48);
  v69 = v80;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v14, v80, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v78 = v68;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v67, v69 + v68, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  v70 = *(v79 + 48);
  if (v70(v69, 1, v74) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    if (v70(v80 + v78, 1, v74) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v80, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
      return 1;
    }

LABEL_121:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v80, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSg_ADtMR);
    return 0;
  }

  v71 = v80;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v80, v11, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  if (v70(v71 + v78, 1, v74) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand);
    goto LABEL_121;
  }

  v72 = v80;
  outlined init with take of AspirePirPIRShardingFunction(v80 + v78, v6, type metadata accessor for AspirePirPirPreprocessDbCommand);
  v73 = specialized static AspirePirPirPreprocessDbCommand.== infix(_:_:)(v11, v6);

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandVSgMR);
  return (v73 & 1) != 0;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs, &protocol conformance descriptor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbArgs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs, &protocol conformance descriptor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbArgs and conformance AspirePirPirPreprocessDbArgs, type metadata accessor for AspirePirPirPreprocessDbArgs, &protocol conformance descriptor for AspirePirPirPreprocessDbArgs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPIRShardingFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Keyword);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspirePirPirPreprocessDbCommand.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v12, v19, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    outlined init with take of AspirePirPIRShardingFunction(v19, v16, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
      v32 = v41;
      outlined init with take of AspirePirPIRShardingFunction(v16, v41, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
      outlined init with take of AspirePirPIRShardingFunction(v32, v25, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v16, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Index);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of AspirePirPIRShardingFunction(v33, v40, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV5IndexVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    outlined init with take of AspirePirPIRShardingFunction(v36, v37, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v13 - v9, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for AspirePirPirPreprocessDbCommand(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Keyword);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspirePirPirPreprocessDbCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v7, v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Index);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPIRShardingFunction@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand and conformance AspirePirPirPreprocessDbCommand, type metadata accessor for AspirePirPirPreprocessDbCommand, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirPirPreprocessDbCommand.Index.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t AspirePirPirPreprocessDbCommand.Index.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand.Index(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Index and conformance AspirePirPirPreprocessDbCommand.Index, type metadata accessor for AspirePirPirPreprocessDbCommand.Index, &protocol conformance descriptor for AspirePirPirPreprocessDbCommand.Index);

  return MEMORY[0x28217E440](a1, a2, v4);
}