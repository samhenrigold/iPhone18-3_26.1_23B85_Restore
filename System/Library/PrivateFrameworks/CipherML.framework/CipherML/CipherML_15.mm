uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 880) = a1;
  *(v4 + 888) = v1;

  v5 = *(v3 + 256);
  if (v1)
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v8[10] = swift_task_alloc();
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for Data.Iterator();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), 0, 0);
}

uint64_t fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v2[2];
  v0[21] = v3;
  if (v3)
  {
    v0[22] = MEMORY[0x277D84F90];
    v0[23] = 0;
    v4 = v2[4];
    v0[24] = v4;
    v5 = v2[5];
    v0[25] = v5;
    v0[26] = *(*(v1 + 112) + 16);

    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v7 = v0[20];

    return specialized DatabaseTable<>.get(_:)(v7, v4, v5);
  }

  else
  {
    v0[29] = MEMORY[0x277D84F90];

    return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v1, 0);
  }
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v2 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[20];
  v2 = type metadata accessor for AspireApiConfig(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v3 = 0;
    v4 = 0xC000000000000000;
LABEL_14:
    outlined consume of Data._Representation(v3, v4);
    v13 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v5 = (v1 + *(v2 + 20));
  v3 = *v5;
  v4 = v5[1];
  outlined copy of Data._Representation(*v5, v4);
  v6 = _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiConfig);
  v9 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v10 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      goto LABEL_29;
    }

    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9)
  {
    v15 = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_30:
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    v10 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = BYTE6(v4);
    if (!BYTE6(v4))
    {
      goto LABEL_14;
    }
  }

  if (v10 < 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v10;
    v13[3] = 2 * v14 - 64;
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  v19 = Data._copyContents(initializing:)();
  outlined consume of Data._Representation(v3, v4);
  v6 = (*(v17 + 8))(v16, v18);
  if (v19 != v10)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_17:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[22];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v0[22]);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[23];
  v27 = v0[21];

  v21[2] = v23 + 1;
  v28 = &v21[3 * v23];
  v28[4] = v25;
  v28[5] = v24;
  v28[6] = v13;
  if (v26 + 1 == v27)
  {
    v0[29] = v21;
    v7 = v0[5];
    v6 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v8 = 0;

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  v29 = v0[23] + 1;
  v0[22] = v21;
  v0[23] = v29;
  v30 = v0[5];
  v31 = v0[4] + 16 * v29;
  v32 = *(v31 + 32);
  v0[24] = v32;
  v33 = *(v31 + 40);
  v0[25] = v33;
  v0[26] = *(*(v30 + 112) + 16);

  v34 = swift_task_alloc();
  v0[27] = v34;
  *v34 = v0;
  v34[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v35 = v0[20];

  return specialized DatabaseTable<>.get(_:)(v35, v32, v33);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v37 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[3], v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    v5 = v0[7];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[10], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    v8 = *(type metadata accessor for UserIdentifier(0) + 20);
    v34 = (*(v7 + 16) + **(v7 + 16));
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v10 = v0[29];
    v11 = v0[16];

    return v34(v11, v10, v5 + v8, v6, v7);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[10];

    _s8CipherML12UseCaseGroupVWObTm_3(v15, v13, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWObTm_3(v13, v14, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWObTm_3(v0[16], v0[2], type metadata accessor for AspireApiConfigResponse);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[2];
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.daemon);
    _s8CipherML12UseCaseGroupVWOcTm_3(v18, v17, type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWOcTm_3(v18, v16, type metadata accessor for AspireApiConfigResponse);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[13];
    v24 = v0[14];
    if (v22)
    {
      v25 = v0[8];
      v35 = v0[9];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 134349570;
      v28 = *(*v24 + 16);
      _s8CipherML12UseCaseGroupVWOhTm_1(v24, type metadata accessor for AspireApiConfigResponse);
      *(v26 + 4) = v28;
      *(v26 + 12) = 2050;
      v29 = *(*(v23 + 8) + 16);
      _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for AspireApiConfigResponse);
      *(v26 + 14) = v29;
      *(v26 + 22) = 2082;
      *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v35, &v36);
      _os_log_impl(&dword_224E26000, v20, v21, "Received configurations: %{public}ld usecase(s), %{public}ld key(s) for group '%{public}s'", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA61F40](v27, -1, -1);
      MEMORY[0x22AA61F40](v26, -1, -1);
    }

    else
    {
      _s8CipherML12UseCaseGroupVWOhTm_1(v0[13], type metadata accessor for AspireApiConfigResponse);
      _s8CipherML12UseCaseGroupVWOhTm_1(v24, type metadata accessor for AspireApiConfigResponse);
    }

    v30 = v0[2];
    v0[32] = *(*(v0[5] + 112) + 16);
    v31 = *v30;

    v32 = swift_task_alloc();
    v0[33] = v32;
    *v32 = v0;
    v32[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v33 = v0[4];

    return specialized DatabaseTable<>.update(keys:with:)(v33, v31);
  }
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v4 = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v22 = v0;
  _s8CipherML12UseCaseGroupVWObTm_3(v0[16], v0[2], type metadata accessor for AspireApiConfigResponse);
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.daemon);
  _s8CipherML12UseCaseGroupVWOcTm_3(v3, v2, type metadata accessor for AspireApiConfigResponse);
  _s8CipherML12UseCaseGroupVWOcTm_3(v3, v1, type metadata accessor for AspireApiConfigResponse);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  v9 = v0[14];
  if (v7)
  {
    v10 = v0[8];
    v20 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 134349570;
    v13 = *(*v9 + 16);
    _s8CipherML12UseCaseGroupVWOhTm_1(v9, type metadata accessor for AspireApiConfigResponse);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    v14 = *(*(v8 + 8) + 16);
    _s8CipherML12UseCaseGroupVWOhTm_1(v8, type metadata accessor for AspireApiConfigResponse);
    *(v11 + 14) = v14;
    *(v11 + 22) = 2082;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v20, &v21);
    _os_log_impl(&dword_224E26000, v5, v6, "Received configurations: %{public}ld usecase(s), %{public}ld key(s) for group '%{public}s'", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA61F40](v12, -1, -1);
    MEMORY[0x22AA61F40](v11, -1, -1);
  }

  else
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[13], type metadata accessor for AspireApiConfigResponse);
    _s8CipherML12UseCaseGroupVWOhTm_1(v9, type metadata accessor for AspireApiConfigResponse);
  }

  v15 = v0[2];
  v0[32] = *(*(v0[5] + 112) + 16);
  v16 = *v15;

  v17 = swift_task_alloc();
  v0[33] = v17;
  *v17 = v0;
  v17[1] = fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v18 = v0[4];

  return specialized DatabaseTable<>.update(keys:with:)(v18, v16);
}

{
  v2 = *v1;
  v2[34] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 16), type metadata accessor for AspireApiConfigResponse);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized DatabaseTable<>.update(keys:with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMR);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for EvaluationKeyConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.update(keys:with:), v7, v6);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for AspireApiConfig(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMR);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMR);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ConfigTable();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.update(keys:with:), v7, v6);
}

uint64_t specialized DatabaseTable<>.update(keys:with:)()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = v0[8];
    v34 = (v0[14] + 8);
    v35 = v0[5];
    v3 = (v1 + 40);
    do
    {
      v36 = v3;
      v37 = v2;
      v4 = v0[12];
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = swift_task_alloc();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      outlined copy of Data._Representation(v5, v6);
      v0[2] = type metadata accessor for StoredEvaluationKeyConfig(0);
      Predicate.init(_:)();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMR);
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
      FetchDescriptor.init(predicate:sortBy:)();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
      ModelActor.modelContext.getter();
      v9 = dispatch thunk of ModelContext.fetch<A>(_:)();

      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x22AA610B0](v12);
        if (!result)
        {
LABEL_15:

          v11 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA60F70](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 32);
      }

LABEL_16:
      if (*(v35 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6), (v14 & 1) != 0))
      {
        v15 = v0[10];
        v16 = v0[11];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v35 + 56) + *(v33 + 72) * v13, v15, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWObTm_3(v15, v16, type metadata accessor for AspireHeEvaluationKeyConfig);
        if (v11)
        {
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
          v17 = Message.serializedData(partial:)();
          v18 = v0[13];
          v19 = v0[11];
          v20 = v17;
          v22 = v21;
          v30 = v0[15];
          v0[3] = v11;
          swift_getKeyPath();
          v23 = swift_task_alloc();
          v23[2] = v11;
          v23[3] = v20;
          v23[4] = v22;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data._Representation(v20, v22);

          outlined consume of Data._Representation(v5, v6);

          _s8CipherML12UseCaseGroupVWOhTm_1(v19, type metadata accessor for AspireHeEvaluationKeyConfig);
          (*v34)(v30, v18);
        }

        else
        {
          v31 = v0[11];
          v26 = v0[9];
          ModelActor.modelContext.getter();
          _s8CipherML12UseCaseGroupVWOcTm_3(v31, v26, type metadata accessor for AspireHeEvaluationKeyConfig);
          swift_allocObject();
          outlined copy of Data._Representation(v5, v6);
          StoredEvaluationKeyConfig.init(key:value:)(v5, v6, v26);
          v32 = v0[13];
          v27 = v0[11];
          v28 = v0[15];
          dispatch thunk of ModelContext.insert<A>(_:)();

          outlined consume of Data._Representation(v5, v6);
          _s8CipherML12UseCaseGroupVWOhTm_1(v27, type metadata accessor for AspireHeEvaluationKeyConfig);
          (*v34)(v28, v32);
        }
      }

      else if (v11)
      {
        v24 = v0[15];
        v25 = v0[13];
        ModelActor.modelContext.getter();
        dispatch thunk of ModelContext.delete<A>(_:)();

        outlined consume of Data._Representation(v5, v6);
        (*v34)(v24, v25);
      }

      else
      {
        (*v34)(v0[15], v0[13]);
        outlined consume of Data._Representation(v5, v6);
      }

      v3 = v36 + 2;

      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v29 = v0[1];

  return v29();
}

{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = v0[6];
    v26 = v0[7];
    v27 = (v0[13] + 8);
    v28 = v0[4];
    v3 = (v1 + 40);
    do
    {
      v29 = v2;
      v4 = v0[11];
      v6 = *(v3 - 1);
      v5 = *v3;
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;

      v0[2] = type metadata accessor for StoredConfig(0);
      Predicate.init(_:)();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMR);
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
      FetchDescriptor.init(predicate:sortBy:)();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
      ModelActor.modelContext.getter();
      v9 = dispatch thunk of ModelContext.fetch<A>(_:)();

      if (v9 >> 62)
      {
        if (v9 < 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x22AA610B0](v12);
        if (!result)
        {
LABEL_15:

          v11 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_15;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA60F70](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 32);
      }

LABEL_16:
      if (*(v28 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5), (v14 & 1) != 0))
      {
        v15 = v0[9];
        v16 = v0[10];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v28 + 56) + *(v26 + 72) * v13, v15, type metadata accessor for AspireApiConfig);
        _s8CipherML12UseCaseGroupVWObTm_3(v15, v16, type metadata accessor for AspireApiConfig);
        if (v11)
        {
          if ((*(v0[10] + *(v25 + 24)) & 1) == 0)
          {
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
            v17 = Message.serializedData(partial:)();
            (*(*v11 + 192))(v17);
          }
        }

        else
        {
          v20 = v0[10];
          v21 = v0[8];
          ModelActor.modelContext.getter();
          _s8CipherML12UseCaseGroupVWOcTm_3(v20, v21, type metadata accessor for AspireApiConfig);
          swift_allocObject();

          StoredConfig.init(key:value:)(v6, v5, v21);
          dispatch thunk of ModelContext.insert<A>(_:)();
        }

        v22 = v0[14];
        v23 = v0[12];
        _s8CipherML12UseCaseGroupVWOhTm_1(v0[10], type metadata accessor for AspireApiConfig);
        (*v27)(v22, v23);
      }

      else if (v11)
      {
        v18 = v0[14];
        v19 = v0[12];
        ModelActor.modelContext.getter();
        dispatch thunk of ModelContext.delete<A>(_:)();

        (*v27)(v18, v19);
      }

      else
      {
        (*v27)(v0[14], v0[12]);
      }

      v3 += 2;
      v2 = v29 - 1;
    }

    while (v29 != 1);
  }

  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, 255, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v24 = v0[1];

  return v24();
}

uint64_t KeyRotation.run()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.run(), v0, 0);
}

{
  v1 = *(*(v0 + 40) + 144);
  *(v0 + 80) = v1;
  return MEMORY[0x2822009F8](KeyRotation.run(), v1, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  (*(v2 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v7 = *(v4 + 8);
  v7(v3, v6);
  v8 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;

  specialized _NativeDictionary.filter(_:)(partial apply for closure #1 in ActiveUseCaseTracker.activeUseCases.getter, v10, v9);

  v0[11] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5();
  v7(v1, v6);

  return MEMORY[0x2822009F8](KeyRotation.run(), v5, 0);
}

{
  v1 = v0[11];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type KeyRotation and conformance KeyRotation, v4, type metadata accessor for KeyRotation, &protocol conformance descriptor for KeyRotation);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = KeyRotation.run();

  return MEMORY[0x282200830]();
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = KeyRotation.run();
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = KeyRotation.run();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in KeyRotation.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v3[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in KeyRotation.run(), a2, 0);
}

uint64_t closure #1 in KeyRotation.run()()
{
  v1 = v0[4];
  v2 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = closure #1 in KeyRotation.run();
  v5 = v0[3];
  v4 = v0[4];

  return KeyRotation.run(activeUseCases:configResponse:)(v5, v4);
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[6] = v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](closure #1 in KeyRotation.run(), v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in KeyRotation.run()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in KeyRotation.run(), v6);
}

uint64_t closure #1 in closure #2 in KeyRotation.run()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return KeyRotation.cancel()();
}

uint64_t KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.runWithCoordinator(useCase:configResponse:), v3, 0);
}

uint64_t KeyRotation.runWithCoordinator(useCase:configResponse:)()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[4], v1, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v4;
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v1, v7 + v6, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = KeyRotation.runWithCoordinator(useCase:configResponse:);
  v9 = v0[2];
  v10 = v0[3];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v9, v10, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v7);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = KeyRotation.runWithCoordinator(useCase:configResponse:);
  }

  else
  {
    v4 = KeyRotation.runWithCoordinator(useCase:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  return MEMORY[0x2822009F8](closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), 0, 0);
}

uint64_t closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:)()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225022960;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  v0[12] = v4;
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:);
  v6 = v0[11];

  return KeyRotation.run(activeUseCases:configResponse:)(v4, v6);
}

{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](KeyRotation.run(activeUseCases:configResponse:), v2, 0);
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)()
{
  v12 = v0;
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
    v11 = v5;
    *v4 = 136446210;
    v6 = Set.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_224E26000, v2, v3, "Running rotation task for %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AA61F40](v5, -1, -1);
    MEMORY[0x22AA61F40](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = KeyRotation.run(activeUseCases:configResponse:);

  return specialized KeyRotation.activeGroups(activeUseCases:)();
}

{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  *(v0 + 104) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 56);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 56) = 0;
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 80) = v12;

    static Task<>.checkCancellation()();
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = KeyRotation.run(activeUseCases:configResponse:);
    v14 = *(v0 + 24);
    v15 = *(v0 + 16);

    return KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v11, v12, v15, v14);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = KeyRotation.run(activeUseCases:configResponse:);
  }

  else
  {
    v4 = KeyRotation.run(activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](KeyRotation.run(activeUseCases:configResponse:), v2, 0);
}

void KeyRotation.run(activeUseCases:configResponse:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (!v3)
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 48);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v14 = *(v0 + 56);

    if (v14)
    {
      swift_willThrow();
      goto LABEL_9;
    }

    v10 = *(v0 + 8);
    goto LABEL_10;
  }

  v4 = *(v0 + 48);
LABEL_7:
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  v6 = (*(v4 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
  v7 = *v6;
  v8 = v6[1];
  *(v0 + 80) = v8;

  static Task<>.checkCancellation()();
  if (v1)
  {
    v9 = *(v0 + 56);

LABEL_9:
    v10 = *(v0 + 8);
LABEL_10:

    v10();
    return;
  }

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = KeyRotation.run(activeUseCases:configResponse:);
  v12 = *(v0 + 24);
  v13 = *(v0 + 16);

  KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v7, v8, v13, v12);
}

{
  v1 = *(v0 + 96);

  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 56) = v1;
  v4 = (v3 - 1) & v3;
  if (v4)
  {
    v5 = *(v0 + 48);
LABEL_7:
    *(v0 + 64) = v4;
    *(v0 + 72) = v2;
    v7 = (*(v5 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v4)))));
    v8 = *v7;
    v9 = v7[1];
    *(v0 + 80) = v9;

    static Task<>.checkCancellation()();
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = KeyRotation.run(activeUseCases:configResponse:);
    v12 = *(v0 + 24);
    v13 = *(v0 + 16);

    KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v8, v9, v13, v12);
  }

  else
  {
    while (1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v0 + 48);
      if (v6 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v2;
      if (v4)
      {
        v2 = v6;
        goto LABEL_7;
      }
    }

    if (v1)
    {
      swift_willThrow();
    }

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t KeyRotation.cancel()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](KeyRotation.cancel(), v0, 0);
}

{
  v1 = *(v0 + 184);
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + 192, v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  if (*(v0 + 80))
  {
    outlined init with take of LocalizedError((v0 + 56), v0 + 16);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.daemon);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224E26000, v3, v4, "Canceling key upload", v5, 2u);
      MEMORY[0x22AA61F40](v5, -1, -1);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v11 = (*(v7 + 40) + **(v7 + 40));
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = KeyRotation.cancel();

    return v11(v6, v7);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](KeyRotation.cancel(), v1, 0);
}

{
  v1 = *(v0 + 184);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v0 + 96, v1 + 192);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

void *KeyRotation.deinit()
{

  swift_unknownObjectRelease();

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 192, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t KeyRotation.__deallocating_deinit()
{
  KeyRotation.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x22AA5F1C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x22AA5F1C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML12UseCaseGroupVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML12klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i33ML11KeyRotationC12activeGroups0E8k32CasesShySSGAF_tYaFSbSS3key_AA0G9lM15V5valuet_tXEfU_Tf1nnc_n(v7, v4, v2);
      MEMORY[0x22AA61F40](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v37 = a1;
  v47 = type metadata accessor for NetworkManagerType(0);
  MEMORY[0x28223BE20](v47);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = (&v35 - v7);
  v8 = type metadata accessor for UseCaseGroup(0);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v10 = 0;
  v48 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v50 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v48[7];
    v23 = (v48[6] + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = v40;
    v27 = *(v41 + 72);
    v39 = v21;
    _s8CipherML12UseCaseGroupVWOcTm_3(v22 + v27 * v21, v40, type metadata accessor for UseCaseGroup);
    v28 = v43;
    *v43 = v24;
    *(v28 + 8) = v25;
    v29 = v45;
    _s8CipherML12UseCaseGroupVWOcTm_3(v26, v28 + *(v45 + 48), type metadata accessor for UseCaseGroup);
    v30 = v44;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28, v44, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    swift_bridgeObjectRetain_n();

    v31 = v30 + *(v29 + 48);
    v32 = *(v42 + 36);
    v33 = v46;
    swift_storeEnumTagMultiPayload();
    v49 = specialized static NetworkManagerType.== infix(_:_:)((v31 + v32), v33);
    _s8CipherML12UseCaseGroupVWOhTm_1(v33, type metadata accessor for NetworkManagerType);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v31, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v26, type metadata accessor for UseCaseGroup);

    v16 = v50;
    if (v49)
    {
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(v37, v36, v38, v48);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS8CipherML12UseCaseGroupVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_SS_8i4ML12klM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n03_s8i33ML11KeyRotationC12activeGroups0E8k32CasesShySSGAF_tYaFSbSS3key_AA0G9lM15V5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = type metadata accessor for Date();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    Hasher.init(_seed:)();

    v52 = v27;
    String.hash(into:)();
    result = Hasher._finalize()();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for AspireApiConfig(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22 + v43 * v21, v40, type metadata accessor for AspireApiConfig);
    _s8CipherML12UseCaseGroupVWObTm_3(v26, v17, type metadata accessor for AspireApiConfig);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = _s8CipherML12UseCaseGroupVWObTm_3(v17, *(v13 + 56) + v30 * v43, type metadata accessor for AspireApiConfig);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for UseCaseGroup(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22 + v43 * v21, v40, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWObTm_3(v26, v17, type metadata accessor for UseCaseGroup);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = _s8CipherML12UseCaseGroupVWObTm_3(v17, *(v13 + 56) + v30 * v43, type metadata accessor for UseCaseGroup);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  return v10;
}

{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AA61F40](v14, -1, -1);
  }

  return v10;
}

Swift::Int specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return specialized _NativeSet.extractSubset(using:count:)(v25, a2, v24, a4);
}

Swift::Int specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized KeyRotation.activeGroups(activeUseCases:)()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v0, 0);
}

{
  v57 = v0;
  v1 = v0;
  v0[14] = *(v0[5] + 136);

  specialized _NativeDictionary.filter(_:)(v2);
  v4 = v3;
  v0[15] = 0;

  v5 = *(v4 + 16);
  if (v5)
  {
    v51 = v0[11];
    v52 = v0[12];
    v50 = v0[10];
    v56 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v56;
    v7 = v4 + 64;
    v8 = _HashTable.startBucket.getter();
    v9 = 0;
    v45 = v4 + 72;
    v46 = v5;
    v47 = v0;
    v48 = v4 + 64;
    v49 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v53 = v9;
      v13 = *(v1 + 96);
      v12 = *(v1 + 104);
      v54 = *(v4 + 36);
      v14 = *(v50 + 48);
      v15 = *(v1 + 88);
      v55 = v6;
      v16 = *(v4 + 56);
      v17 = (*(v4 + 48) + 16 * v8);
      v18 = *v17;
      v19 = v17[1];
      v20 = type metadata accessor for UseCaseGroup(0);
      _s8CipherML12UseCaseGroupVWOcTm_3(v16 + *(*(v20 - 8) + 72) * v8, v12 + v14, type metadata accessor for UseCaseGroup);
      *v13 = v18;
      *(v52 + 8) = v19;
      _s8CipherML12UseCaseGroupVWObTm_3(v12 + v14, v13 + *(v50 + 48), type metadata accessor for UseCaseGroup);
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v13, v15, &_sSS3key_8CipherML12UseCaseGroupV5valuetMd, &_sSS3key_8CipherML12UseCaseGroupV5valuetMR);
      v21 = *v15;
      v22 = *(v51 + 8);
      v23 = *(v50 + 48);

      v24 = v15 + v23;
      v6 = v55;
      _s8CipherML12UseCaseGroupVWOhTm_1(v24, type metadata accessor for UseCaseGroup);
      v56 = v55;
      v1 = *(v55 + 16);
      v25 = *(v55 + 24);
      if (v1 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v1 + 1, 1);
        v6 = v56;
      }

      *(v6 + 16) = v1 + 1;
      v26 = v6 + 16 * v1;
      *(v26 + 32) = v21;
      *(v26 + 40) = v22;
      v4 = v49;
      v10 = 1 << *(v49 + 32);
      if (v8 >= v10)
      {
        goto LABEL_29;
      }

      v7 = v48;
      v27 = *(v48 + 8 * v11);
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_30;
      }

      if (v54 != *(v49 + 36))
      {
        goto LABEL_31;
      }

      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v10 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v1 = v47;
      }

      else
      {
        v29 = v11 << 6;
        v30 = (v45 + 8 * v11);
        v31 = v11 + 1;
        v1 = v47;
        while (v31 < (v10 + 63) >> 6)
        {
          v33 = *v30++;
          v32 = v33;
          v29 += 64;
          ++v31;
          if (v33)
          {
            outlined consume of [String : UseCaseGroup].Index._Variant(v8, v54, 0);
            v10 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        outlined consume of [String : UseCaseGroup].Index._Variant(v8, v54, 0);
      }

LABEL_4:
      v9 = v53 + 1;
      v8 = v10;
      if (v53 + 1 == v46)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:
  *(v1 + 128) = v6;
  if (one-time initialization token for daemon != -1)
  {
LABEL_32:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.daemon);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v6;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x22AA60B60](v37, MEMORY[0x277D837D0]);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v56);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_224E26000, v35, v36, "Skipping groups that manage their own networking: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AA61F40](v39, -1, -1);
    MEMORY[0x22AA61F40](v38, -1, -1);
  }

  v43 = *(*(v1 + 40) + 144);
  *(v1 + 136) = v43;

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v43, 0);
}

{
  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  (*(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v8 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;

  specialized _NativeDictionary.filter(_:)(closure #1 in ActiveUseCaseTracker.activeUseCases.getterpartial apply, v10, v9);

  v0[18] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5();
  v7(v2, v4);

  return MEMORY[0x2822009F8](specialized KeyRotation.activeGroups(activeUseCases:), v6, 0);
}

{
  v1 = v0[18];
  v2 = v0[14];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v26 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
LABEL_11:
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
      v11 = *v10;
      v12 = v10[1];

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v5 &= v5 - 1;
      v13 = *(v2 + 48);
      if (!*(v13 + 16))
      {
        goto LABEL_6;
      }

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v17 = v16[1];
        v25 = *v16;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
          v26 = result;
        }

        v19 = *(v26 + 16);
        v18 = *(v26 + 24);
        if (v19 >= v18 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v26);
          v26 = result;
        }

        *(v26 + 16) = v19 + 1;
        v20 = v26 + 16 * v19;
        *(v20 + 32) = v25;
        *(v20 + 40) = v17;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:

        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v21 = v0[16];

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v26);

  v23 = specialized _NativeSet.subtracting<A>(_:)(v21, v22);

  v24 = v0[1];

  return v24(v23);
}

uint64_t outlined init with copy of NetworkManager(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in KeyRotation.run()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return closure #1 in KeyRotation.run()(a1, v5, v4);
}

uint64_t dispatch thunk of KeyRotation.activeGroups(activeUseCases:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = KeyRotation.activeGroups(activeUseCases:);

  return v6(a1);
}

uint64_t dispatch thunk of KeyRotation.areKeysExpired(groupName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KeyRotation.rotateUserId(groupName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 216) + **(*v6 + 216));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 232) + **(*v6 + 232));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of KeyRotation.run()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v4();
}

uint64_t dispatch thunk of KeyRotation.runWithCoordinator(useCase:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of KeyRotation.run(activeUseCases:configResponse:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v8(a1, a2);
}

uint64_t dispatch thunk of KeyRotation.cancel()()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v4();
}

uint64_t partial apply for closure #1 in closure #2 in KeyRotation.run()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #2 in KeyRotation.run()();
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

uint64_t _s8CipherML12UseCaseGroupVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8CipherML12UseCaseGroupVWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s8CipherML12UseCaseGroupVWObTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t ScheduledActivity.__allocating_init(handler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

Swift::Void __swiftcall ScheduledActivity.register()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v2 + 88);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = implicit closure #1 in ScheduledActivity.register()(v1 + *(*v1 + 96), v3, v4);
  v10 = v9;
  v11 = [objc_opt_self() sharedScheduler];
  v12 = MEMORY[0x22AA609C0](v5, v7);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v10;
  v15[4] = partial apply for closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v15[3] = &block_descriptor_6;
  v14 = _Block_copy(v15);

  [v11 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v14];
  _Block_release(v14);
}

uint64_t SendableBGSystemTask.__allocating_init(task:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t SendableBGSystemTask.init(task:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *(v1 + 16) = v3;
  return v1;
}

Swift::Void __swiftcall SendableBGSystemTask.setTaskCompleted()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) setTaskCompleted];

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)(Swift::Double a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

id closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)(void **a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v4[0] = 0;
  if ([v1 setTaskExpiredWithRetryAfter:v4 error:?])
  {
    return v4[0];
  }

  v3 = v4[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void SendableBGSystemTask.setExpirationHandler(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in SendableBGSystemTask.setExpirationHandler(_:)((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void closure #1 in SendableBGSystemTask.setExpirationHandler(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_7_0;
  v4 = _Block_copy(v5);

  [v3 setExpirationHandler_];
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t SendableBGSystemTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *implicit closure #1 in ScheduledActivity.register()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
}

uint64_t implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v8(a2, a3);
}

uint64_t closure #1 in ScheduledActivity.registerTask(identifier:handler:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - v11;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.daemon);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v28);
    _os_log_impl(&dword_224E26000, v14, v15, "ScheduledActivity(%{public}s) run", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA61F40](v17, -1, -1);
    MEMORY[0x22AA61F40](v16, -1, -1);
  }

  type metadata accessor for SendableBGSystemTask();
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo12BGSystemTaskCSo16os_unfair_lock_sVGMR);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = a1;
  *(v18 + 16) = v19;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = v18;
  v21[7] = a4;
  v21[8] = a5;

  v22 = a1;

  v23 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v21);
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v23;
  v25 = *(v18 + 16);
  MEMORY[0x28223BE20](v24);
  v28[-2] = partial apply for closure #2 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v28[-1] = v26;

  os_unfair_lock_lock((v25 + 24));
  closure #1 in SendableBGSystemTask.setExpirationHandler(_:)partial apply((v25 + 16));
  os_unfair_lock_unlock((v25 + 24));
}

uint64_t closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  v9 = type metadata accessor for CancellationError();
  *(v7 + 48) = v9;
  *(v7 + 56) = *(v9 - 8);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 104) = 0;
  v12 = (a7 + *a7);
  v10 = swift_task_alloc();
  *(v7 + 72) = v10;
  *v10 = v7;
  v10[1] = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);

  return v12();
}

uint64_t closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  }

  else
  {
    v2 = closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 88) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), 0, 0);
}

{
  $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)((v0 + 104), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkAroundForIdleMemory.shared;
  *(v0 + 96) = static WorkAroundForIdleMemory.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), v1, 0);
}

{
  WorkAroundForIdleMemory.trigger()();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:), 0, 0);
}

uint64_t closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 80);
  swift_willThrow();
  *(v1 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
    v6 = *(v1 + 48);

    *(v1 + 104) = 1;
    (*(v5 + 8))(v4, v6);
    v7 = *(v1 + 16);
  }

  else
  {

    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 80);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.daemon);
    v10 = v8;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 80);
    if (v13)
    {
      v16 = *(v1 + 24);
      v15 = *(v1 + 32);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 136446466;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v24);
      *(v17 + 12) = 2114;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_224E26000, v11, v12, "ScheduledActivity(%{public}s) threw error: %{public}@", v17, 0x16u);
      outlined destroy of NSObject?(v18);
      MEMORY[0x22AA61F40](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA61F40](v19, -1, -1);
      MEMORY[0x22AA61F40](v17, -1, -1);

      goto LABEL_9;
    }

    v7 = v14;
  }

LABEL_9:
  $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)((v1 + 104), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  v22 = *(v1 + 8);

  return v22();
}

void $defer #1 <A>() in closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.daemon);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_224E26000, v8, v9, "ScheduledActivity(%{public}s) expired", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA61F40](v11, -1, -1);
      MEMORY[0x22AA61F40](v10, -1, -1);
    }

    v12 = *(a4 + 16);
    os_unfair_lock_lock((v12 + 24));
    closure #1 in SendableBGSystemTask.setTaskExpiredWithRetryAfter(_:)((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
  }

  else
  {
    v13 = *(a4 + 16);
    os_unfair_lock_lock((v13 + 24));
    [*(v13 + 16) setTaskCompleted];
    os_unfair_lock_unlock((v13 + 24));
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.daemon);

    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_224E26000, oslog, v15, "ScheduledActivity(%{public}s) completed", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA61F40](v17, -1, -1);
      MEMORY[0x22AA61F40](v16, -1, -1);
    }

    else
    {
    }
  }
}

void closure #2 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.daemon);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v9);
    _os_log_impl(&dword_224E26000, v5, v6, "ScheduledActivity(%{public}s) deferred", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA61F40](v8, -1, -1);
    MEMORY[0x22AA61F40](v7, -1, -1);
  }

  JUMPOUT(0x22AA60CB0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t ScheduledActivity.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

void specialized ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedScheduler];
  v9 = MEMORY[0x22AA609C0](a1, a2);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v12[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_23;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of ScheduledActivityHandler.run@Sendable ()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v7(a1, a2);
}

uint64_t type metadata completion function for ScheduledActivity(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in closure #1 in ScheduledActivity.registerTask(identifier:handler:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(v0 + v4, v2, v3);
}

uint64_t TokenIssuerDirectory.findTokenKey(tokenKey:currentTime:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TokenIssuerDirectory(0);
  v16 = *(v5 + *(result + 20));
  v17 = *(v16 + 16);
  v72 = v17;
  if (!v17)
  {
    v44 = 0;
    v45 = 0;
LABEL_65:
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
LABEL_67:
    *a5 = v44;
    *(a5 + 8) = v45;
    *(a5 + 16) = v17;
    *(a5 + 24) = v46;
    *(a5 + 32) = v47;
    *(a5 + 40) = v48;
    *(a5 + 48) = v49;
    return result;
  }

  v54 = v14;
  v55 = v12;
  v56 = a4;
  v57 = a3;
  v58 = v11;
  v59 = a5;
  v18 = 0;
  if (a1)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2 == 0xC000000000000000;
  }

  v20 = !v19;
  v63 = v20;
  v64 = a2 >> 62;
  v21 = __OFSUB__(HIDWORD(a1), a1);
  v61 = v21;
  v60 = HIDWORD(a1) - a1;
  v62 = BYTE6(a2);
  v22 = (v16 + 80);
  v71 = v16;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v70 = *(v22 - 24);
    v23 = *(v22 - 5);
    v24 = *(v22 - 4);
    v25 = *(v22 - 3);
    v67 = *(v22 - 16);
    v68 = v25;
    v66 = *(v22 - 1);
    v65 = *v22;
    v69 = v23;
    v78 = v23;
    v79 = v24;
    v76 = 45;
    v77 = 0xE100000000000000;
    v74 = 43;
    v75 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v73 = v24;

    v78 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v79 = v26;
    v76 = 95;
    v77 = 0xE100000000000000;
    v74 = 47;
    v75 = 0xE100000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v27 = Data.init(base64Encoded:options:)();
    v29 = v28;
    outlined copy of Data?(v27, v28);

    if (v29 >> 60 == 15)
    {
      break;
    }

    result = outlined consume of Data?(v27, v29);
    if (a2 >> 60 != 15)
    {
      v30 = v29 >> 62;
      if (v29 >> 62 == 3)
      {
        if (v27)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29 == 0xC000000000000000;
        }

        v33 = !v31 || v64 < 3;
        if (((v33 | v63) & 1) == 0)
        {
          outlined copy of Data._Representation(0, 0xC000000000000000);
          outlined consume of Data?(0, 0xC000000000000000);
          v27 = 0;
          goto LABEL_57;
        }

        v34 = 0;
LABEL_43:
        v35 = v64;
        if (v64 <= 1)
        {
          goto LABEL_44;
        }

LABEL_36:
        if (v35 == 2)
        {
          v37 = *(a1 + 16);
          v36 = *(a1 + 24);
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v38)
          {
            goto LABEL_70;
          }

          goto LABEL_46;
        }

        if (!v34)
        {
          goto LABEL_55;
        }

LABEL_50:
        outlined copy of Data._Representation(a1, a2);
        outlined consume of Data?(a1, a2);
        outlined consume of Data?(v27, v29);
      }

      else
      {
        v35 = v64;
        if (!v30)
        {
          v34 = BYTE6(v29);
          if (v64 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_36;
        }

        if (v30 != 1)
        {
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          v38 = __OFSUB__(v40, v41);
          v34 = v40 - v41;
          if (v38)
          {
            goto LABEL_71;
          }

          goto LABEL_43;
        }

        LODWORD(v34) = HIDWORD(v27) - v27;
        if (__OFSUB__(HIDWORD(v27), v27))
        {
          goto LABEL_72;
        }

        v34 = v34;
        if (v64 > 1)
        {
          goto LABEL_36;
        }

LABEL_44:
        v42 = v35;
        v39 = v62;
        if (v42)
        {
          v39 = v60;
          if (v61)
          {
            goto LABEL_69;
          }
        }

LABEL_46:
        if (v34 != v39)
        {
          goto LABEL_50;
        }

        if (v34 < 1)
        {
LABEL_55:
          outlined copy of Data._Representation(a1, a2);
          outlined consume of Data?(a1, a2);
          goto LABEL_57;
        }

        outlined copy of Data?(v27, v29);
        outlined copy of Data._Representation(a1, a2);
        outlined copy of Data?(a1, a2);
        v43 = specialized Data.withUnsafeBytes<A>(_:)(v27, v29, a1, a2);
        outlined consume of Data?(v27, v29);
        outlined consume of Data?(a1, a2);
        result = outlined consume of Data?(v27, v29);
        if (v43)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_14;
    }

LABEL_13:
    outlined copy of Data._Representation(a1, a2);

    outlined consume of Data?(v27, v29);
    result = outlined consume of Data?(a1, a2);
LABEL_14:
    ++v18;
    v22 += 56;
    v16 = v71;
    if (v72 == v18)
    {
      v44 = 0;
      v45 = 0;
      v17 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      a5 = v59;
      goto LABEL_67;
    }
  }

  if (a2 >> 60 != 15)
  {
    goto LABEL_13;
  }

  outlined copy of Data._Representation(a1, a2);
LABEL_57:
  result = outlined consume of Data?(v27, v29);
LABEL_58:
  a5 = v59;
  v45 = v69;
  v44 = v70;
  v47 = v67;
  v46 = v68;
  v48 = v66;
  v49 = v65;
  if (v67)
  {
LABEL_66:
    v17 = v73;
    goto LABEL_67;
  }

  v50 = v54;
  v57(result);
  Date.timeIntervalSince1970.getter();
  v52 = v51;
  v53 = v51;
  result = (*(v55 + 8))(v50, v58);
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v52 < 9.22337204e18)
  {
    if (v52 < 0 || v46 > v52)
    {

      v44 = 0;
      v45 = 0;
      v17 = 0;
      goto LABEL_65;
    }

    goto LABEL_66;
  }

LABEL_75:
  __break(1u);
  return result;
}

CipherML::TokenKey::CodingKeys_optional __swiftcall TokenKey.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenKey.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t TokenKey.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x79742D6E656B6F74;
  v2 = 0x6F6665622D746F6ELL;
  if (a1 != 2)
  {
    v2 = 0x6D696C2D65746172;
  }

  if (a1)
  {
    v1 = 0x656B2D6E656B6F74;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenKey.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79742D6E656B6F74;
  v4 = *a1;
  v5 = 0x6F6665622D746F6ELL;
  v6 = 0xEA00000000006572;
  if (v4 == 2)
  {
    v7 = 0xEA00000000006572;
  }

  else
  {
    v5 = 0x6D696C2D65746172;
    v7 = 0xEA00000000007469;
  }

  v8 = 0x656B2D6E656B6F74;
  v9 = 0xE900000000000079;
  if (!*a1)
  {
    v8 = 0x79742D6E656B6F74;
    v9 = 0xEA00000000006570;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x6F6665622D746F6ELL;
  if (*a2 != 2)
  {
    v12 = 0x6D696C2D65746172;
    v6 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v3 = 0x656B2D6E656B6F74;
    v2 = 0xE900000000000079;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenKey.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenKey.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenKey.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenKey.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenKey.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TokenKey.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x79742D6E656B6F74;
  v3 = 0xEA00000000006572;
  v4 = 0x6F6665622D746F6ELL;
  if (*v1 != 2)
  {
    v4 = 0x6D696C2D65746172;
    v3 = 0xEA00000000007469;
  }

  v5 = 0xE900000000000079;
  if (*v1)
  {
    v2 = 0x656B2D6E656B6F74;
  }

  else
  {
    v5 = 0xEA00000000006570;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenKey.CodingKeys()
{
  v1 = 0x79742D6E656B6F74;
  v2 = 0x6F6665622D746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6D696C2D65746172;
  }

  if (*v0)
  {
    v1 = 0x656B2D6E656B6F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenKey.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TokenKey.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenKey.tokenKeyBase64Url.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TokenKey.tokenKey.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;
  outlined copy of Data?(v0, v1);

  if (v2 >> 60 != 15)
  {
    outlined consume of Data?(v0, v2);
  }

  return v0;
}

uint64_t type metadata accessor for TokenIssuerDirectory(uint64_t a1)
{
  result = type metadata singleton initialization cache for TokenIssuerDirectory;
  if (!type metadata singleton initialization cache for TokenIssuerDirectory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TokenKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double TokenKey.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized TokenKey.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t TokenKey.init(tokenType:tokenKeyBase64Url:notBefore:rateLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance TokenKey@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized TokenKey.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

CipherML::TokenIssuerDirectory::CodingKeys_optional __swiftcall TokenIssuerDirectory.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_tokenKeys;
  }

  else
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

CipherML::TokenIssuerDirectory::CodingKeys_optional __swiftcall TokenIssuerDirectory.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_tokenKeys;
  }

  else
  {
    v4.value = CipherML_TokenIssuerDirectory_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TokenIssuerDirectory.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x656B2D6E656B6F74;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenIssuerDirectory.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656B2D6E656B6F74;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x80000002250355E0;
  }

  else
  {
    v4 = 0xEA00000000007379;
  }

  if (*a2)
  {
    v5 = 0x656B2D6E656B6F74;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007379;
  }

  else
  {
    v6 = 0x80000002250355E0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenIssuerDirectory.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TokenIssuerDirectory.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TokenIssuerDirectory.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000002250355E0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x656B2D6E656B6F74;
    v2 = 0xEA00000000007379;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenIssuerDirectory.CodingKeys()
{
  if (*v0)
  {
    return 0x656B2D6E656B6F74;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenIssuerDirectory.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenIssuerDirectory.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenIssuerDirectory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenIssuerDirectory.issuerRequestUri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenIssuerDirectory.tokenKeys.getter()
{
  type metadata accessor for TokenIssuerDirectory(0);
}

uint64_t TokenIssuerDirectory.isValid(tokenKey:tokenType:currentTime:)(uint64_t a1, unint64_t a2, unsigned __int16 a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TokenIssuerDirectory(0);
  v16 = *(v5 + *(result + 20));
  v17 = *(v16 + 16);
  if (!v17)
  {
    return 0;
  }

  v49 = v14;
  v50 = v12;
  v51 = a5;
  v52 = a4;
  v53 = v11;
  v18 = 0;
  v19 = a3;
  v58 = a2 >> 62;
  v20 = __OFSUB__(HIDWORD(a1), a1);
  v55 = v20;
  v54 = HIDWORD(a1) - a1;
  v56 = BYTE6(a2);
  v64 = a1;
  if (a1)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2 == 0xC000000000000000;
  }

  v22 = v21;
  v57 = v22;
  v23 = (v16 + 64);
  v62 = v17;
  v63 = v16;
  v61 = a3;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
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
      goto LABEL_70;
    }

    if (*(v23 - 16) == v19)
    {
      break;
    }

LABEL_15:
    ++v18;
    v23 += 56;
    if (v17 == v18)
    {
      return 0;
    }
  }

  v25 = *(v23 - 2);
  v59 = *(v23 - 1);
  v60 = *v23;
  v69 = *(v23 - 3);
  v70 = v25;
  v67 = 45;
  v68 = 0xE100000000000000;
  v65 = 43;
  v66 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();

  v69 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v70 = v26;
  v67 = 95;
  v68 = 0xE100000000000000;
  v65 = 47;
  v66 = 0xE100000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v27 = Data.init(base64Encoded:options:)();
  v29 = v28;
  outlined copy of Data?(v27, v28);

  if (v29 >> 60 == 15)
  {
    if (a2 >> 60 == 15)
    {
      v42 = v64;
      outlined copy of Data._Representation(v64, a2);
      goto LABEL_52;
    }

    goto LABEL_13;
  }

  result = outlined consume of Data?(v27, v29);
  if (a2 >> 60 == 15)
  {
LABEL_13:
    v24 = v64;
    outlined copy of Data._Representation(v64, a2);

    outlined consume of Data?(v24, a2);
    result = outlined consume of Data?(v27, v29);
LABEL_14:
    v17 = v62;
    v16 = v63;
    v19 = v61;
    goto LABEL_15;
  }

  v30 = v29 >> 62;
  if (v58 != 3)
  {
    if (v58 > 1)
    {
      if (v58 != 2)
      {
        goto LABEL_37;
      }

      v34 = *(v64 + 16);
      v33 = *(v64 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v32 = v56;
      if (v58)
      {
        v32 = v54;
        if (v55)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_33:
    if (v30 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v31 = v57;
  if (v29 >> 62 != 3)
  {
    v31 = 0;
  }

  if (v31 != 1)
  {
LABEL_37:
    v32 = 0;
    if (v30 <= 1)
    {
LABEL_34:
      if (!v30)
      {
        if (v32 == BYTE6(v29))
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }

      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_65;
      }

      if (v32 == HIDWORD(v27) - v27)
      {
LABEL_44:
        if (v32 < 1)
        {
          goto LABEL_51;
        }

        outlined copy of Data?(v27, v29);
        v39 = v64;
        outlined copy of Data._Representation(v64, a2);
        outlined copy of Data?(v27, v29);
        v40 = specialized Data.withUnsafeBytes<A>(_:)(v39, a2, v27, v29);
        outlined consume of Data?(v27, v29);
        outlined consume of Data?(v27, v29);
        outlined consume of Data?(v39, a2);

        if (v40)
        {
          goto LABEL_53;
        }

        goto LABEL_14;
      }

LABEL_48:
      v41 = v64;
      outlined copy of Data._Representation(v64, a2);
      outlined consume of Data?(v27, v29);
      outlined consume of Data?(v41, a2);

      goto LABEL_14;
    }

LABEL_38:
    if (v30 == 2)
    {
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      v35 = __OFSUB__(v36, v37);
      v38 = v36 - v37;
      if (v35)
      {
        goto LABEL_66;
      }

      if (v32 == v38)
      {
        goto LABEL_44;
      }
    }

    else if (!v32)
    {
LABEL_51:
      v42 = v64;
      outlined copy of Data._Representation(v64, a2);
      outlined consume of Data?(v27, v29);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v32 = 0;
  if (v27 || v29 != 0xC000000000000000)
  {
    goto LABEL_33;
  }

  outlined copy of Data._Representation(0, 0xC000000000000000);
  outlined consume of Data?(0, 0xC000000000000000);
  v42 = v64;
LABEL_52:
  outlined consume of Data?(v42, a2);

LABEL_53:
  if (v60)
  {
    return 1;
  }

  v43 = v49;
  v52(result);
  Date.timeIntervalSince1970.getter();
  v45 = v44;
  v46 = v44;
  result = (*(v50 + 8))(v43, v53);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_69;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  return v45 >= 0 && v59 <= v45;
}

uint64_t TokenIssuerDirectory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for URL();
  _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9268]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TokenIssuerDirectory(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
    lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](&lazy protocol witness table cache variable for type [TokenKey] and conformance <A> [A], lazy protocol witness table accessor for type TokenKey and conformance TokenKey, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TokenIssuerDirectory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for URL();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML20TokenIssuerDirectoryV10CodingKeysOGMR);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TokenIssuerDirectory(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  _s10Foundation3URLVACSEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9280]);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
  v28 = 1;
  lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](&lazy protocol witness table cache variable for type [TokenKey] and conformance <A> [A], lazy protocol witness table accessor for type TokenKey and conformance TokenKey, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  outlined init with copy of TokenIssuerDirectory(v18, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of TokenIssuerDirectory(v18);
}

uint64_t TokenIssuerDirectory.init(issuerRequestUri:tokenKeys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TokenIssuerDirectory(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t specialized TokenKey.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TokenKey.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys);
  }

  return result;
}

uint64_t specialized TokenKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML8TokenKeyV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenKey.CodingKeys and conformance TokenKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v22 = v10;
  v25 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v21 = v13;
  v24 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  v20 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23 & 1;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenIssuerDirectory.CodingKeys and conformance TokenIssuerDirectory.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenKey and conformance TokenKey()
{
  result = lazy protocol witness table cache variable for type TokenKey and conformance TokenKey;
  if (!lazy protocol witness table cache variable for type TokenKey and conformance TokenKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey and conformance TokenKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenKey and conformance TokenKey;
  if (!lazy protocol witness table cache variable for type TokenKey and conformance TokenKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenKey and conformance TokenKey);
  }

  return result;
}

uint64_t _s10Foundation3URLVACSEAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TokenKey] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8CipherML8TokenKeyVGMd, &_sSay8CipherML8TokenKeyVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TokenIssuerDirectory(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenIssuerDirectory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TokenIssuerDirectory(uint64_t a1)
{
  v2 = type metadata accessor for TokenIssuerDirectory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for TokenIssuerDirectory(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [TokenKey]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [TokenKey]()
{
  if (!lazy cache variable for type metadata for [TokenKey])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TokenKey]);
    }
  }
}

uint64_t AspireSimilarityPlaintextPacking.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  return UnknownStorage.init()();
}

uint64_t AspireSimilaritySimilarityMetric.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireSimilaritySimilarityMetric.rawValue.getter()
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

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityMetric(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireSimilarityPlaintextPacking.denseRow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.denseRow : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

void (*AspireSimilarityPlaintextPacking.denseRow.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      return AspireSimilarityPlaintextPacking.denseRow.modify;
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  UnknownStorage.init()();
  return AspireSimilarityPlaintextPacking.denseRow.modify;
}

uint64_t outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspireSimilarityPlaintextPacking.diagonal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.diagonal : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

void (*AspireSimilarityPlaintextPacking.diagonal.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireSimilarityPlaintextPacking.diagonal.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    goto LABEL_15;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
  return AspireSimilarityPlaintextPacking.diagonal.modify;
}

uint64_t outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AspireSimilarityPlaintextPacking.denseColumn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a1, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for AspireSimilarityPlaintextPacking.denseColumn : AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v9 - v5, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v6, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for AspireSimilarityPlaintextPacking.denseRow : AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, &v17 - v13, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v14, a2, a7);
  v15 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t AspireSimilarityPlaintextPacking.denseRow.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v3, a2);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*AspireSimilarityPlaintextPacking.denseColumn.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0) - 8) + 64);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return AspireSimilarityPlaintextPacking.denseColumn.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    goto LABEL_15;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v11, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
  return AspireSimilarityPlaintextPacking.denseColumn.modify;
}

void AspireSimilarityPlaintextPacking.denseRow.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[3], v10, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static AspireSimilarityPlaintextPackingDenseRow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*AspireSimilaritySerializedCiphertextMatrix.packing.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
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
  v15 = *(type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.packing.getter@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0, v6);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v9 + 32), v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v10 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySerializedCiphertextMatrix.packing : AspireSimilaritySerializedCiphertextMatrix@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0, v7);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v10 + 32), v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v9, a3, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySerializedCiphertextMatrix.packing : AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v11, type metadata accessor for AspireSimilarityPlaintextPacking);
  v12 = *(a5(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v12, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v11, a2 + v12, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.packing.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v2 + v4, type metadata accessor for AspireSimilarityPlaintextPacking);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
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
  v15 = *(type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

BOOL AspireSimilaritySerializedCiphertextMatrix.hasPacking.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.clearPacking()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.init()@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = MEMORY[0x277D84F90];
  v3 = a1(0);
  UnknownStorage.init()();
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t AspireSimilaritySimilarityClientConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
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

uint64_t key path setter for AspireSimilaritySimilarityClientConfig.encryptionParameters : AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v7, type metadata accessor for AspireHeEncryptionParameters);
  v8 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2 + v8, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.encryptionParameters.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v2 + v4, type metadata accessor for AspireHeEncryptionParameters);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*AspireSimilaritySimilarityClientConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
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
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireSimilaritySimilarityClientConfig.encryptionParameters.modify;
}

void AspireSimilaritySimilarityClientConfig.encryptionParameters.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityClientConfig.hasEncryptionParameters.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 40), v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireSimilaritySimilarityClientConfig.clearEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityClientConfig.plaintextPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 44), v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v9 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySimilarityClientConfig.plaintextPacking : AspireSimilaritySimilarityClientConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 44), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityClientConfig.plaintextPacking : AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v7, type metadata accessor for AspireSimilarityPlaintextPacking);
  v8 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2 + v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.plaintextPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AspireSimilaritySimilarityClientConfig.plaintextPacking.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
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
  v15 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySimilarityClientConfig.plaintextPacking.modify;
}

BOOL AspireSimilaritySimilarityClientConfig.hasPlaintextPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 44), v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireSimilaritySimilarityClientConfig.clearPlaintextPacking()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityClientConfig.galoisElts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void AspireSimilaritySimilarityClientConfig.similarityMetric.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AspireSimilaritySimilarityClientConfig.similarityMetric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AspireSimilaritySimilarityClientConfig.extraPlaintextModuli.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityClientConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  UnknownStorage.init()();
  v4 = *(v3 + 40);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t AspireSimilaritySimilarityServerConfig.clientConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 24), v5, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v7 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  *a1 = 0;
  v9 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v9;
  UnknownStorage.init()();
  v10 = *(v7 + 40);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v7 + 44);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityServerConfig.clientConfig : AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v7, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v8 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2 + v8, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.clientConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireSimilaritySimilarityServerConfig.clientConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
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
  v15 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 16) = v17;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = v17;
    UnknownStorage.init()();
    v18 = *(v9 + 40);
    v19 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    v20 = *(v9 + 44);
    v21 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  return AspireSimilaritySimilarityServerConfig.clientConfig.modify;
}

void AspireSimilaritySimilarityServerConfig.clientConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityServerConfig.hasClientConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 24), v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v5 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearClientConfig()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v2 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityServerConfig.dbPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v9 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySimilarityServerConfig.dbPacking : AspireSimilaritySimilarityServerConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySimilarityServerConfig.dbPacking : AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v7, type metadata accessor for AspireSimilarityPlaintextPacking);
  v8 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2 + v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.dbPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AspireSimilaritySimilarityServerConfig.dbPacking.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
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
  v15 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AspireSimilaritySerializedDcrtPlaintextMatrix.packing.modify;
}

void AspireSimilaritySerializedCiphertextMatrix.packing.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireSimilaritySimilarityServerConfig.hasDbPacking.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v4 + 28), v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v5 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  return v6;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearDbPacking()()
{
  v1 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.getter()
{
  v1 = (v0 + *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.setter(int a1)
{
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*AspireSimilaritySimilarityServerConfig.babyStep.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return AspireSimilaritySimilarityServerConfig.babyStep.modify;
}

uint64_t AspireSimilaritySimilarityServerConfig.babyStep.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall AspireSimilaritySimilarityServerConfig.clearBabyStep()()
{
  v1 = v0 + *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t AspireSimilarityPlaintextPacking.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireSimilarityPlaintextPacking.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireSimilaritySimilarityServerConfig.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[8]];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.entryIds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 32), v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a1 = 0;
  UnknownStorage.init()();
  v9 = v7[6];
  v10 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v7[7];
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = &a1[v7[8]];
  *v13 = 0;
  v13[4] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireSimilaritySerializedProcessedSimilarityDb.serverConfig : AspireSimilaritySerializedProcessedSimilarityDb@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 32), v6, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v6, a2, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a2 = 0;
  UnknownStorage.init()();
  v10 = v8[6];
  v11 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = v8[7];
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = &a2[v8[8]];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilaritySerializedProcessedSimilarityDb.serverConfig : AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v7, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v8 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, a2 + v8, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v2 + v4, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v5 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    v17 = v9[6];
    v18 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    v19 = v9[7];
    v20 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    v21 = &v14[v9[8]];
    *v21 = 0;
    v21[4] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  return AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify;
}

void AspireSimilaritySerializedProcessedSimilarityDb.serverConfig.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow((*a1)[5], v4, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v4, v9 + v3, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v5, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, v9 + v3, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.init()@<X0>(char *a1@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v3;
  *(a1 + 2) = v3;
  v4 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  UnknownStorage.init()();
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t AspireSimilaritySimilarityDbRow.entryMetadata.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AspireSimilaritySimilarityDbRow.entryMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.embedding.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v1 = MEMORY[0x277D84F90];
  a1[2] = 0xC000000000000000;
  a1[3] = v1;
  type metadata accessor for AspireSimilaritySimilarityDbRow(0);
  return UnknownStorage.init()();
}

uint64_t AspireSimilaritySimilarityDb.rows.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AspireSimilaritySimilarityDb.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AspireSimilaritySimilarityDb(0);
  return UnknownStorage.init()();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
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

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.inputDatabase : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
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

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.inputDatabase : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v7[2] = v4;
  v7[3] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
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

  return AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify;
}

void AspireSimilarityPecPreprocessDbArgs.inputDatabase.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    v8[2] = v3;
    v8[3] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    v13[2] = v3;
    v13[3] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasInputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearInputDatabase()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v4[2] = 0;
  v4[3] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
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

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.outputDatabase : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
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

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.outputDatabase : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v7[4] = v4;
  v7[5] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputDatabase.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v8[4] = a1;
  v8[5] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
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

  return AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify;
}

void AspireSimilarityPecPreprocessDbArgs.outputDatabase.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    v8[4] = v3;
    v8[5] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    v13[4] = v3;
    v13[5] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasOutputDatabase.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearOutputDatabase()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v4[4] = 0;
  v4[5] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputServerConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.outputServerConfig : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  if (*(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.outputServerConfig : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  v7[6] = v4;
  v7[7] = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.outputServerConfig.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v8[6] = a1;
  v8[7] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 56))
  {
    v7 = *(v6 + 48);
    v8 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify;
}

void AspireSimilarityPecPreprocessDbArgs.outputServerConfig.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    v8[6] = v3;
    v8[7] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    v13[6] = v3;
    v13[7] = v5;
  }

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasOutputServerConfig.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  swift_beginAccess();
  return *(v1 + 56) != 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearOutputServerConfig()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v4[6] = 0;
  v4[7] = 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputServerConfig.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v8 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v5, a1, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  *a1 = 0;
  UnknownStorage.init()();
  v10 = v8[6];
  v11 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v8[7];
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = &a1[v8[8]];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.inputServerConfig : AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, v10, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v11 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v14 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v10, v6, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v13 + v15, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return swift_endAccess();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.inputServerConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v10 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(a1, v6, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v11 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, v9 + v12, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return swift_endAccess();
}

void (*AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
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
  v15 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    v19 = v9[6];
    v20 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    v21 = v9[7];
    v22 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = &v14[v9[8]];
    *v23 = 0;
    v23[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    }
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  }

  return AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify;
}

void AspireSimilarityPecPreprocessDbArgs.inputServerConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireSimilaritySimilarityServerConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v9 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v11, v15, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v6 + v16, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    swift_endAccess();
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilaritySimilarityServerConfig);
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
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v22 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v10, v15, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v19 + v25, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasInputServerConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v5 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + v5, v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearInputServerConfig()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v4, v7 + v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  swift_endAccess();
}

void (*AspireSimilarityPecPreprocessDbArgs.entryID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.entryID.modify;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.entryID.getter(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a1);
  swift_beginAccess();
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

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.entryID : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.entryID : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v12 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v11);

    *(a2 + v9) = v12;
    v11 = v12;
  }

  v13 = (v11 + *a5);
  swift_beginAccess();
  *v13 = v8;
  v13[1] = v7;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.entryID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

    *(v5 + v8) = v11;
    v10 = v11;
  }

  v12 = (v10 + *a3);
  swift_beginAccess();
  *v12 = a1;
  v12[1] = a2;
}

void (*AspireSimilarityPecPreprocessDbArgs.entryMetadataID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.entryMetadataID.modify;
}

void AspireSimilarityPecPreprocessDbArgs.entryID.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v13 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v10);

      *(v12 + v11) = v13;
      v10 = v13;
    }

    v14 = (v10 + *a3);
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v7;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 96);
      v18 = *(v4 + 88);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v19 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v16);

      *(v18 + v17) = v19;
      v16 = v19;
    }

    v20 = (v16 + *a3);
    swift_beginAccess();
    *v20 = v5;
    v20[1] = v7;
  }

  free(v4);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasEntryID.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.clearEntryID()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(v3 + v4) = v7;
    v6 = v7;
  }

  v8 = (v6 + *a1);
  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;
}

void (*AspireSimilarityPecPreprocessDbArgs.embeddingID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.embeddingID.modify;
}

void (*AspireSimilarityPecPreprocessDbArgs.shardID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.shardID.modify;
}

void (*AspireSimilarityPecPreprocessDbArgs.predefinedEncryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return AspireSimilarityPecPreprocessDbArgs.predefinedEncryptionParameters.modify;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.heScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  if (*(v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.heScheme : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  if (v7)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = (v7 | v6) & 1;
  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.heScheme : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(a2 + v5) = v8;
    v7 = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  *v9 = v3;
  v9[8] = v4;
  v9[9] = 0;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.heScheme.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v8 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v2 + v5) = v8;
    v7 = v8;
  }

  v9 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  result = swift_beginAccess();
  *v9 = v3;
  v9[8] = v4;
  v9[9] = 0;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.heScheme.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  if (*(v6 + 9))
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v7 = *v6;
    v8 = *(v6 + 8);
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8 & 1;
  return AspireSimilarityPecPreprocessDbArgs.heScheme.modify;
}

void AspireSimilarityPecPreprocessDbArgs.heScheme.modify(uint64_t *a1, char a2)
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
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v11 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v8);

    *(v10 + v9) = v11;
    v8 = v11;
  }

  v12 = v8 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  *v12 = v3;
  v12[8] = v6;
  v12[9] = 0;

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasHeScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  return (*(v1 + 9) & 1) == 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearHeScheme()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = v4 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 4) = 256;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.getter()
{
  type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0);
  swift_beginAccess();
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli : AspireSimilarityPecPreprocessDbArgs(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *(v6 + v8) = v3;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

void (*AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify;
}

void AspireSimilarityPecPreprocessDbArgs.extraPlaintextModuli.modify(uint64_t *a1, char a2)
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
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v10 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v11 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
      swift_allocObject();
      v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

uint64_t AspireSimilarityPecPreprocessDbArgs.babyStep.getter()
{
  v1 = (*(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for AspireSimilarityPecPreprocessDbArgs.babyStep : AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.babyStep : AspireSimilarityPecPreprocessDbArgs(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  *v8 = v3;
  v8[4] = 0;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.babyStep.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = v6 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  result = swift_beginAccess();
  *v8 = a1;
  v8[4] = 0;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.babyStep.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return AspireSimilarityPecPreprocessDbArgs.babyStep.modify;
}

void AspireSimilarityPecPreprocessDbArgs.babyStep.modify(uint64_t *a1, char a2)
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
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v10 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = v7 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  *v11 = v3;
  v11[4] = 0;

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasBabyStep.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20)) + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearBabyStep()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = v4 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  *v6 = 0;
  v6[4] = 1;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.parallel.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t key path setter for AspireSimilarityPecPreprocessDbArgs.parallel : AspireSimilarityPecPreprocessDbArgs(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(a2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  *(v6 + v8) = v3;
  return result;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.parallel.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v7 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  *(v6 + v8) = a1 & 1;
  return result;
}

void (*AspireSimilarityPecPreprocessDbArgs.parallel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return AspireSimilarityPecPreprocessDbArgs.parallel.modify;
}

void AspireSimilarityPecPreprocessDbArgs.parallel.modify(uint64_t *a1, char a2)
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
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v10 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v7 + v11) = v5;

  free(v2);
}

BOOL AspireSimilarityPecPreprocessDbArgs.hasParallel.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall AspireSimilarityPecPreprocessDbArgs.clearParallel()()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    swift_allocObject();
    v5 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t AspireSimilarityPecPreprocessDbArgs.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance;
}

uint64_t AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v12, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v30 = v45;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
      v32 = v40;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v16, v40, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v32, v25, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseRow);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
  }

  else
  {
    v36 = v41;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v33, v41, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDenseRowVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v37, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v12, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
      v32 = v41;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v16, v41, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v32, v25, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDiagonal);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  }

  else
  {
    v36 = v40;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v33, v40, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v37, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #3 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v12, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
      v32 = v41;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v16, v41, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v32, v25, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v30 = v45;
    }
  }

  v33 = v43;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseColumn);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, v33, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  }

  else
  {
    v36 = v40;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v33, v40, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
    v37 = v39;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v37, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v14 - v9, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for AspireSimilarityPlaintextPacking(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseRow);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v10, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDiagonal);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v7, v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseColumn);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v10, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v7, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPacking(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking, &protocol conformance descriptor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilarityPlaintextPackingDenseRow.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn, &protocol conformance descriptor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for AspireHeSerializedCiphertext(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
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