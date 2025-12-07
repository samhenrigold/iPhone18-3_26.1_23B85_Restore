uint64_t ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)()
{
  *(*v1 + 504) = v0;

  if (v0)
  {

    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v49 = v0;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 328), v0 + 200, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  if (*(v0 + 224))
  {
    outlined init with take of RandomNumberGenerator((v0 + 200), v0 + 160);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.device);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_220940000, v2, v3, "Loading ODIELanguageModel with base model already loaded", v4, 2u);
      MEMORY[0x223D90A10](v4, -1, -1);
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 160, v0 + 240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference9BaseModel_pMd, &_s24TokenGenerationInference9BaseModel_pMR);
    type metadata accessor for ODIEBaseModel();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
      v5 = *(v0 + 296);
      v6 = *(v5 + 32);
      v7 = *(v5 + 40);

      *(v0 + 568) = v6;
      *(v0 + 560) = v7;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 456);
      v9 = *(v0 + 320);
      __swift_project_value_buffer(v1, static Log.device);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 456);
      if (v12)
      {
        v14 = *(v0 + 448);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v48 = v16;
        *v15 = 136315138;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v13, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v17 = String.init<A>(describing:)();
        v19 = v18;
        outlined destroy of [Int](v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v48);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_220940000, v10, v11, "ODIELanguageModel using adapter from URL: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x223D90A10](v16, -1, -1);
        MEMORY[0x223D90A10](v15, -1, -1);
      }

      else
      {

        outlined destroy of [Int](v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      v28 = *(v0 + 440);
      v29 = *(v0 + 400);
      v30 = *(v0 + 408);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 320), v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v31 = (*(v30 + 48))(v28, 1, v29);
      v32 = *(v0 + 440);
      if (v31 == 1)
      {

        outlined destroy of [Int](v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v33 = *(v0 + 568);
        (*(*(v0 + 472) + 56))(*(v0 + 424), 1, 1, *(v0 + 464));
        KernelRegistry.init()();
        if (v33)
        {
          v34 = *(v0 + 568);

          v35 = swift_task_alloc();
          *(v0 + 592) = v35;
          *v35 = v0;
          v35[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
          v36 = *(v0 + 488);
          v37 = *(v0 + 424);
          v38 = *(v0 + 392);

          return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v38, v36, v37, v34);
        }

        else
        {
          v44 = swift_task_alloc();
          *(v0 + 608) = v44;
          *v44 = v0;
          v44[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
          v45 = *(v0 + 488);
          v46 = *(v0 + 424);
          v47 = *(v0 + 392);

          return loadDecodingFunctions(from:using:adaptedBy:)(v45, v47, v46);
        }
      }

      else
      {
        (*(*(v0 + 408) + 32))(*(v0 + 416), *(v0 + 440), *(v0 + 400));
        v39 = swift_task_alloc();
        *(v0 + 576) = v39;
        *v39 = v0;
        v39[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
        v41 = *(v0 + 416);
        v40 = *(v0 + 424);
        v42 = *(v0 + 336);
        v43 = *(v0 + 344);

        return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v40, v41, v42, v43, 7169633, 0xE300000000000000);
      }
    }

    else
    {
      _StringGuts.grow(_:)(127);
      *(v0 + 280) = 0;
      *(v0 + 288) = 0xE000000000000000;
      MEMORY[0x223D8E780](0xD00000000000007DLL, 0x8000000220AFE7E0);
      _print_unlocked<A, B>(_:_:)();
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of [Int](v0 + 200, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.device);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_220940000, v22, v23, "Loading ODIELanguageModel with no base model loaded yet.", v24, 2u);
      MEMORY[0x223D90A10](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 512) = v25;
    *v25 = v0;
    v25[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v26 = *(v0 + 488);

    return specialized static ODIEUtils.loadStreamingDelegate(from:)(v26);
  }
}

{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[40];
  v7 = v0[39];
  outlined destroy of [Int](v0[41], &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 8))(v7, v4);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

{
  v38 = v0;
  v1 = v0[69];
  v0[71] = v0[65];
  v0[70] = v1;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[57];
  v3 = v0[40];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.device);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v3, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[57];
  if (v7)
  {
    v9 = v0[56];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    outlined destroy of [Int](v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v37);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_220940000, v5, v6, "ODIELanguageModel using adapter from URL: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223D90A10](v11, -1, -1);
    MEMORY[0x223D90A10](v10, -1, -1);
  }

  else
  {

    outlined destroy of [Int](v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v16 = v0[55];
  v17 = v0[50];
  v18 = v0[51];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0[40], v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = v0[55];
  if (v19 == 1)
  {

    outlined destroy of [Int](v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v21 = v0[71];
    (*(v0[59] + 56))(v0[53], 1, 1, v0[58]);
    KernelRegistry.init()();
    if (v21)
    {
      v22 = v0[71];

      v23 = swift_task_alloc();
      v0[74] = v23;
      *v23 = v0;
      v23[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
      v24 = v0[61];
      v25 = v0[53];
      v26 = v0[49];

      return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v26, v24, v25, v22);
    }

    else
    {
      v33 = swift_task_alloc();
      v0[76] = v33;
      *v33 = v0;
      v33[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
      v34 = v0[61];
      v35 = v0[53];
      v36 = v0[49];

      return loadDecodingFunctions(from:using:adaptedBy:)(v34, v36, v35);
    }
  }

  else
  {
    (*(v0[51] + 32))(v0[52], v0[55], v0[50]);
    v28 = swift_task_alloc();
    v0[72] = v28;
    *v28 = v0;
    v28[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v30 = v0[52];
    v29 = v0[53];
    v31 = v0[42];
    v32 = v0[43];

    return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v29, v30, v31, v32, 7169633, 0xE300000000000000);
  }
}

{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[50];
  v5 = v0[51];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 8))(v8, v4);
  (*(v3 + 8))(v1, v2);

  v9 = v0[1];

  return v9();
}

{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  (*(v0[51] + 8))(v0[52], v0[50]);
  v1 = v0[71];
  (*(v0[59] + 56))(v0[53], 0, 1, v0[58]);
  KernelRegistry.init()();
  if (v1)
  {
    v2 = v0[71];

    v3 = swift_task_alloc();
    v0[74] = v3;
    *v3 = v0;
    v3[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v4 = v0[61];
    v5 = v0[53];
    v6 = v0[49];

    return specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(v6, v4, v5, v2);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[76] = v8;
    *v8 = v0;
    v8[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v9 = v0[61];
    v10 = v0[53];
    v11 = v0[49];

    return loadDecodingFunctions(from:using:adaptedBy:)(v9, v11, v10);
  }
}

{
  v1 = v0[59];
  v9 = v0[58];
  v10 = v0[61];
  v2 = v0[50];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = *(v0[51] + 8);
  v6(v0[52], v2);

  outlined destroy of [Int](v3, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6(v5, v2);
  (*(v1 + 8))(v10, v9);

  v7 = v0[1];

  return v7();
}

{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v2 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = swift_task_alloc();
  v0[76] = v1;
  *v1 = v0;
  v1[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  v2 = v0[61];
  v3 = v0[53];
  v4 = v0[49];

  return loadDecodingFunctions(from:using:adaptedBy:)(v2, v4, v3);
}

{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[39];
  outlined destroy of [Int](v0[41], &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[59];
  v13 = v0[58];
  v14 = v0[61];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[48];
  v11 = v0[47];
  v12 = v0[49];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v4 + 8))(v8, v3);
  outlined destroy of [Int](v2, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  (*(v5 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[59];
  v13 = v0[58];
  v14 = v0[61];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[48];
  v11 = v0[47];
  v12 = v0[49];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  outlined destroy of [Int](v6, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v4 + 8))(v8, v3);
  outlined destroy of [Int](v2, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  (*(v5 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[65] = a1;
  v4[66] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:), 0, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v4[67] = v6;
    *v6 = v5;
    v6[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
    v7 = v4[61];

    return specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v7, a1);
  }
}

{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {

    v5 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {

    *(v4 + 552) = a1;
    v5 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {
    v4 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  else
  {
    v4 = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v85 = v1;
  v2 = v1[78];
  v3 = v1[61];
  v4 = v1[49];
  v5 = ProgramDescriptor.functionNames.getter();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in loadGatherFunctions(from:using:), v6, v5);
  v8 = v1[77];
  if (v2)
  {
    v9 = v1[59];
    v78 = v1[58];
    v81 = v1[61];
    v10 = v1[51];
    v69 = v1[50];
    v72 = v1[53];
    v11 = v1[48];
    v74 = v1[47];
    v76 = v1[49];
    v13 = v1[40];
    v12 = v1[41];
    v66 = v1[39];

    outlined destroy of [Int](v12, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    outlined destroy of [Int](v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v10 + 8))(v66, v69);
    outlined destroy of [Int](v72, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
    (*(v11 + 8))(v76, v74);
    (*(v9 + 8))(v81, v78);
  }

  else
  {
    v14 = v7;

    if (!*(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = v1[77];
    if ((*(v16 + 32) & 1) == 0 || *(v14 + 2))
    {
      v17 = v1[71];
      v19 = v1[60];
      v18 = v1[61];
      v21 = v1[58];
      v20 = v1[59];
      v82 = v1[77];
      outlined init with copy of AFMDecodeFunction(v16 + 32, (v1 + 2));
      v22 = v1[6];
      v23 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v22);
      v24 = (*(v23 + 32))(v22, v23);
      LOBYTE(v22) = v25;
      __swift_destroy_boxed_opaque_existential_1(v1 + 3);
      v26 = *(v20 + 16);
      v26(v19, v18, v21);
      if (v22)
      {
        v24 = -1;
      }

      type metadata accessor for ODIEImageFeatureProjector();
      swift_allocObject();

      v27 = ODIEImageFeatureProjector.init(programDescriptor:streamingDelegate:decoderBytesPerEmbedding:)(v19, v17, v24);
      v28 = v1[77];
      v79 = v27;
      v29 = v1[71];
      v30 = v1[70];
      v31 = v1[46];
      v32 = v1[38];
      v26(v32, v1[61], v1[58]);
      v33 = type metadata accessor for ODIELanguageModel(0);
      *(v32 + v33[5]) = v29;
      *(v32 + v33[6]) = v28;
      *(v32 + v33[7]) = v14;
      *(v32 + v33[8]) = v30;
      outlined init with copy of AFMDecodeFunction(v82 + 32, (v1 + 8));
      v34 = v1[12];
      v35 = v1[13];
      __swift_project_boxed_opaque_existential_1(v1 + 9, v34);
      v36 = *(v35 + 48);

      v37 = v36(v34, v35);
      __swift_destroy_boxed_opaque_existential_1(v1 + 9);
      outlined init with copy of AFMDecodeFunction(v82 + 32, (v1 + 14));

      v38 = v1[18];
      v39 = v1[19];
      __swift_project_boxed_opaque_existential_1(v1 + 15, v38);
      (*(v39 + 16))(v38, v39);
      outlined destroy of AFMDecodeFunction((v1 + 14));
      Function.descriptor.getter();

      v40 = swift_task_alloc();
      *(v40 + 16) = v31;
      v41 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVts5NeverOTg5(partial apply for closure #2 in ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:), v40, v37);

      if (*(v41 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMR);
        v42 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v42 = MEMORY[0x277D84F98];
      }

      v84 = v42;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v50, 1, &v84);
      v71 = v1[61];
      v51 = v1[59];
      v68 = v1[58];
      v60 = v1[53];
      v52 = v1[51];
      v59 = v1[50];
      v53 = v1[48];
      v61 = v1[47];
      v62 = v1[49];
      v54 = v1[45];
      v64 = v1[44];
      v65 = v1[46];
      v55 = v1[40];
      v56 = v1[41];
      v57 = v1[39];
      v63 = v1[38];

      outlined destroy of [Int](v56, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
      outlined destroy of [Int](v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v52 + 8))(v57, v59);
      outlined destroy of [Int](v60, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
      v58 = v84;
      (*(v53 + 8))(v62, v61);
      (*(v51 + 8))(v71, v68);
      *(v63 + v33[9]) = v58;
      *(v63 + v33[10]) = v79;
      (*(v54 + 8))(v65, v64);

      v49 = v1[1];
      goto LABEL_12;
    }

    v43 = v1[59];
    v80 = v1[58];
    v83 = v1[61];
    v44 = v1[51];
    v70 = v1[50];
    v73 = v1[53];
    v45 = v1[48];
    v75 = v1[47];
    v77 = v1[49];
    v47 = v1[40];
    v46 = v1[41];
    v67 = v1[39];

    lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
    swift_allocError();
    *v48 = 0xD000000000000019;
    *(v48 + 8) = 0x8000000220AFE7C0;
    *(v48 + 16) = 1;
    swift_willThrow();

    outlined destroy of [Int](v46, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
    outlined destroy of [Int](v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v44 + 8))(v67, v70);
    outlined destroy of [Int](v73, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
    (*(v45 + 8))(v77, v75);
    (*(v43 + 8))(v83, v80);
  }

  v49 = v1[1];
LABEL_12:

  return v49();
}

uint64_t specialized registerDelegateKernels<A>(into:program:adapter:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[5] = a3;
  v4[6] = v6;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for DelegateFunctionArguments();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for FunctionDescriptor();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for ProgramDescriptor();
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  v4[18] = swift_task_alloc();
  v4[2] = a4;

  return MEMORY[0x2822009F8](specialized registerDelegateKernels<A>(into:program:adapter:delegate:), 0, 0);
}

uint64_t specialized registerDelegateKernels<A>(into:program:adapter:delegate:)()
{
  v63 = v0;
  if (one-time initialization token for device != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.device);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220940000, v2, v3, "Found streaming delegate usage", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[5];

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8, v5, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v9 = v0[17];
    v10 = v0[15];
    v11 = v0[16];
    v12 = *(v11 + 32);
    v12(v9, v0[18], v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE17ProgramDescriptorVGMd, &_ss23_ContiguousArrayStorageCy4ODIE17ProgramDescriptorVGMR);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220AE8A30;
    v12(v14 + v13, v9, v10);
  }

  v15 = ProgramDescriptor.functionNames.getter();
  v16 = v15;
  v61 = *(v15 + 16);
  if (v61)
  {
    v17 = 0;
    v18 = v0[13];
    v19 = v0[9];
    v58 = (v18 + 32);
    v57 = (v19 + 48);
    v55 = (v19 + 32);
    v56 = (v19 + 8);
    v59 = (v18 + 8);
    v60 = (v18 + 48);
    v20 = (v15 + 40);
    v52 = v15;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v26 = v0[11];
      v25 = v0[12];
      v28 = *(v20 - 1);
      v27 = *v20;

      ProgramDescriptor.functionDescriptor(for:)();
      result = (*v60)(v26, 1, v25);
      if (result == 1)
      {
        break;
      }

      v31 = v0[7];
      v30 = v0[8];
      (*v58)(v0[14], v0[11], v0[12]);
      MEMORY[0x223D8E2E0](0x687061724753504DLL, 0xE800000000000000);
      if ((*v57)(v31, 1, v30) == 1)
      {
        outlined destroy of [Int](v0[7], &_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v0[14];
        v36 = v0[12];
        if (v34)
        {
          v53 = v0[12];
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v62[0] = v22;
          *v21 = 136315138;
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v62);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_220940000, v32, v33, "Did not find MPSGraph args for function: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          v24 = v22;
          v16 = v52;
          MEMORY[0x223D90A10](v24, -1, -1);
          MEMORY[0x223D90A10](v21, -1, -1);

          (*v59)(v35, v53);
        }

        else
        {

          (*v59)(v35, v36);
        }
      }

      else
      {
        (*v55)(v0[10], v0[7], v0[8]);
        v37 = *(DelegateFunctionArguments.groups.getter() + 16);

        if (v37)
        {

          lazy protocol witness table accessor for type MPSGraphDelegate and conformance MPSGraphDelegate();
          dispatch thunk of Delegate.registerKernels(for:with:into:)();
          v38 = v0[14];
          v39 = v0[12];
          (*v56)(v0[10], v0[8]);
          (*v59)(v38, v39);
        }

        else
        {

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();

          v42 = os_log_type_enabled(v40, v41);
          v43 = v0[14];
          v44 = v0[12];
          v54 = v0[10];
          v45 = v0[8];
          if (v42)
          {
            v51 = v0[12];
            v46 = swift_slowAlloc();
            v50 = v43;
            v47 = swift_slowAlloc();
            v62[0] = v47;
            *v46 = 136315138;
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v62);

            *(v46 + 4) = v48;
            _os_log_impl(&dword_220940000, v40, v41, "Function %s had delegate args but no groups??", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x223D90A10](v47, -1, -1);
            MEMORY[0x223D90A10](v46, -1, -1);

            (*v56)(v54, v45);
            (*v59)(v50, v51);
          }

          else
          {

            (*v56)(v54, v45);
            (*v59)(v43, v44);
          }

          v16 = v52;
        }
      }

      ++v17;
      v20 += 2;
      if (v61 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v49 = v0[1];

    return v49();
  }

  return result;
}

uint64_t loadDecodingFunctions(from:using:adaptedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](loadDecodingFunctions(from:using:adaptedBy:), 0, 0);
}

Swift::Int loadDecodingFunctions(from:using:adaptedBy:)(uint64_t a1)
{
  v46 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v44 = *(v1 + 208);
  v4 = ProgramDescriptor.functionNames.getter();
  v5 = swift_task_alloc();
  *(v5 + 16) = v44;
  v6 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in loadDecodingFunctions(from:using:adaptedBy:), v5, v4);

  type metadata accessor for MPSGraphDelegate();
  v7 = static MPSGraphDelegate.name.getter();
  MEMORY[0x223D8E270](v7);

  v8 = type metadata accessor for DelegateProgramArguments();
  v9 = (*(*(v8 - 8) + 48))(v2, 1, v8);
  outlined destroy of [Int](v2, &_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);
  v10 = *(v6 + 16);
  v11 = 5;
  if (v10 < 5)
  {
    v11 = *(v6 + 16);
  }

  if (v9 == 1)
  {
    v10 = v11;
  }

  v12 = (2 * v10) | 1;
  v13 = swift_task_alloc();
  *(v13 + 16) = v44;
  *(v13 + 32) = v3;

  v14 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in loadDecodingFunctions(from:using:adaptedBy:), v13, v6 + 32, 0, v12);
  v15 = 0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v19 = *(v14 + 16);
    v45[0] = v14 + 32;
    v45[1] = v19;
    result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v45);
    if (v15)
    {
      return result;
    }

    v20 = *(v14 + 16);
    if (!v20)
    {

      v27 = 0x8000000220AFE8C0;
      lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
      swift_allocError();
      v29 = 0xD00000000000001BLL;
LABEL_18:
      *v28 = v29;
      *(v28 + 8) = v27;
      *(v28 + 16) = 1;
      swift_willThrow();

      v16 = *(v1 + 8);

      return v16();
    }

    v21 = 0;
    v22 = v14 + 32;
    while (v21 < *(v14 + 16))
    {
      outlined init with copy of AFMDecodeFunction(v22, v1 + 64);
      v24 = *(v1 + 96);
      v23 = *(v1 + 104);
      v25 = __swift_project_boxed_opaque_existential_1((v1 + 72), v24);
      v26 = *(*(v23 + 8) + 32);
      v15 = v25;
      if (v26(v24))
      {
        v30 = *(v1 + 80);
        *(v1 + 16) = *(v1 + 64);
        *(v1 + 32) = v30;
        *(v1 + 48) = *(v1 + 96);
        outlined destroy of [Int](v1 + 16, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMd, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMR);
        v15 = -*(v14 + 16);
        v31 = -1;
        v32 = v14 + 32;
        while ((v15 + v31) != -1)
        {
          if (++v31 >= *(v14 + 16))
          {
            goto LABEL_38;
          }

          v24 = v32 + 48;
          outlined init with copy of AFMDecodeFunction(v32, v1 + 112);
          v33 = *(v1 + 112);
          outlined init with copy of AFMDecodeFunction(v14 + 32, v1 + 160);
          outlined destroy of AFMDecodeFunction(v1 + 112);
          v34 = *(v1 + 160);
          outlined destroy of AFMDecodeFunction(v1 + 160);
          v32 = v24;
          if (v33 != v34)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        if (*(v14 + 16))
        {
          LODWORD(v24) = *(v14 + 32);
          if (one-time initialization token for device == -1)
          {
LABEL_26:
            v35 = type metadata accessor for Logger();
            __swift_project_value_buffer(v35, static Log.device);
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v45[0] = v39;
              *v38 = 136315138;
              if (v24)
              {
                v40 = 0xD000000000000021;
              }

              else
              {
                v40 = 0xD000000000000023;
              }

              if (v24)
              {
                v41 = "Unrecognized decode function.";
              }

              else
              {
                v41 = "mask + positions)";
              }

              v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41 | 0x8000000000000000, v45);

              *(v38 + 4) = v42;
              _os_log_impl(&dword_220940000, v36, v37, "Loaded decoding functions with %s iospec", v38, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v39);
              MEMORY[0x223D90A10](v39, -1, -1);
              MEMORY[0x223D90A10](v38, -1, -1);
            }

            v43 = *(v1 + 8);

            return v43(v14);
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_26;
      }

      ++v21;
      outlined destroy of AFMDecodeFunction(v1 + 64);
      v22 += 48;
      if (v20 == v21)
      {

        *(v1 + 32) = 0u;
        *(v1 + 48) = 0u;
        *(v1 + 16) = 0u;
        outlined destroy of [Int](v1 + 16, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMd, &_s24TokenGenerationInference17AFMDecodeFunctionVSgMR);
        v27 = 0x8000000220AFE910;
        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        swift_allocError();
        v29 = 0xD00000000000002FLL;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
  }
}

uint64_t closure #2 in ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = a1[1];
  *a2 = v8;
  a2[1] = v9;

  FunctionDescriptor.findArrayDescriptor(of:)(v8, v9, v7);
  v10 = type metadata accessor for ArrayDescriptor();
  result = (*(*(v10 - 8) + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = specialized ODIELanguageModel.KeyValueCacheDescriptor.init(_:)(v7);
    a2[2] = result;
    a2[3] = v12;
    a2[4] = v13;
    a2[5] = v14;
  }

  return result;
}

uint64_t $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v11, static ODIELanguageModel.signposter);
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v13 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v12, v13, v16, "ODIELoadEmbeddings", v14, v15, 2u);
    MEMORY[0x223D90A10](v15, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in loadGatherFunctions(from:using:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a4;
  v8 = type metadata accessor for KernelRegistry();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProgramDescriptor();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  (*(v19 + 16))(v16, a2);
  (*(v9 + 16))(v12, a3, v8);

  result = specialized AFMGatherFunction.init(programDescriptor:functionName:kernelRegistry:)(v16, v18, v17, v12);
  if (!v4)
  {
    v22 = v24;
    *v24 = result;
    v22[1] = v21;
  }

  return result;
}

uint64_t closure #1 in loadDecodingFunctions(from:using:adaptedBy:)(void *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v11 - v3;
  ProgramDescriptor.functionDescriptor(for:)();
  v5 = type metadata accessor for FunctionDescriptor();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = FunctionDescriptor.inputNames.getter();
    v11[0] = 0x706574735F6E69;
    v11[1] = 0xE700000000000000;
    MEMORY[0x28223BE20](v8, v9);
    v11[-2] = v11;
    v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v11[-4], v8);

    (*(v6 + 8))(v4, v5);
    return v10 & 1;
  }

  return result;
}

uint64_t closure #2 in loadDecodingFunctions(from:using:adaptedBy:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for KernelRegistry();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProgramDescriptor();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  (*(v23 + 16))(v20, a2);
  (*(v13 + 16))(v16, a3, v12);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v25, v11, &_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);

  return AFMDecodeFunction.init(programDescriptor:functionName:kernelRegistry:adaptedBy:)(v20, v21, v22, v16, v11, v26);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v52 = *a4;
    v4 = (v52 + 48 * a3);
    v5 = result - a3;
LABEL_6:
    v42 = v4;
    v43 = a3;
    v41 = v5;
    while (1)
    {
      outlined init with copy of AFMDecodeFunction(v4, v48);
      v6 = v4 - 3;
      outlined init with copy of AFMDecodeFunction((v4 - 3), v44);
      v8 = v50;
      v7 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v9 = (*(*(v7 + 8) + 24))(v8);
      v11 = v46;
      v10 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v12 = (*(*(v10 + 8) + 24))(v11);
      v13 = v50;
      v14 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v15 = *(v14 + 8);
      if (v9 != v12)
      {
        break;
      }

      v16 = (*(v15 + 16))(v13);
      v18 = v46;
      v17 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v19 = (*(*(v17 + 8) + 16))(v18);
      v20 = v50;
      v21 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v22 = *(v21 + 8);
      if (v16 != v19)
      {
        v28 = (*(v22 + 16))(v20);
        v33 = v46;
        v32 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v31 = (*(*(v32 + 8) + 16))(v33);
LABEL_14:
        v34 = v31;
        outlined destroy of AFMDecodeFunction(v44);
        result = outlined destroy of AFMDecodeFunction(v48);
        if (v28 >= v34)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }

      v23 = (*(v22 + 32))(v20);
      v25 = v46;
      v24 = v47;
      __swift_project_boxed_opaque_existential_1(v45, v46);
      if (((v23 ^ (*(*(v24 + 8) + 32))(v25)) & 1) == 0)
      {
        outlined destroy of AFMDecodeFunction(v44);
        result = outlined destroy of AFMDecodeFunction(v48);
LABEL_5:
        a3 = v43 + 1;
        v4 = v42 + 3;
        v5 = v41 - 1;
        if (v43 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v27 = v50;
      v26 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      LOBYTE(v26) = (*(*(v26 + 8) + 32))(v27);
      outlined destroy of AFMDecodeFunction(v44);
      result = outlined destroy of AFMDecodeFunction(v48);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_15:
      if (!v52)
      {
        __break(1u);
        return result;
      }

      v36 = v4[1];
      v35 = v4[2];
      v37 = *v4;
      v38 = *(v4 - 2);
      *v4 = *v6;
      v4[1] = v38;
      v4[2] = *(v4 - 1);
      *v6 = v37;
      *(v4 - 2) = v36;
      v4 -= 3;
      v6[2] = v35;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    v28 = (*(v15 + 24))(v13);
    v30 = v46;
    v29 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v31 = (*(*(v29 + 8) + 24))(v30);
    goto LABEL_14;
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[48 * v11] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v94 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
LABEL_49:
      v45 = v6;
      goto LABEL_50;
    }

    v83 = v4;
    while (1)
    {
      v45 = v6 - 48;
      v46 = v94 - 48;
      v5 -= 48;
      v84 = v6 - 48;
      v85 = v6;
      while (1)
      {
        outlined init with copy of AFMDecodeFunction(v46, v90);
        outlined init with copy of AFMDecodeFunction(v45, v86);
        v50 = v92;
        v49 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v51 = (*(*(v49 + 8) + 24))(v50);
        v53 = v88;
        v52 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v54 = (*(*(v52 + 8) + 24))(v53);
        v56 = v92;
        v55 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v57 = *(v55 + 8);
        if (v51 != v54)
        {
          v70 = (*(v57 + 24))(v56);
          v72 = v88;
          v71 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          v73 = (*(*(v71 + 8) + 24))(v72);
          goto LABEL_40;
        }

        v58 = (*(v57 + 16))(v56);
        v60 = v88;
        v59 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v61 = (*(*(v59 + 8) + 16))(v60);
        v63 = v92;
        v62 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v64 = *(v62 + 8);
        if (v58 != v61)
        {
          break;
        }

        v65 = (*(v64 + 32))(v63);
        v67 = v88;
        v66 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        if ((v65 ^ (*(*(v66 + 8) + 32))(v67)))
        {
          v68 = v92;
          v69 = v93;
          __swift_project_boxed_opaque_existential_1(v91, v92);
          LOBYTE(v68) = (*(*(v69 + 8) + 32))(v68);
          outlined destroy of AFMDecodeFunction(v86);
          outlined destroy of AFMDecodeFunction(v90);
          v4 = v83;
          v45 = v84;
          if (v68)
          {
            goto LABEL_44;
          }
        }

        else
        {
          outlined destroy of AFMDecodeFunction(v86);
          outlined destroy of AFMDecodeFunction(v90);
          v4 = v83;
          v45 = v84;
        }

LABEL_41:
        v6 = v85;
        if (v5 + 48 != v46 + 48)
        {
          v77 = *v46;
          v78 = *(v46 + 2);
          *(v5 + 1) = *(v46 + 1);
          *(v5 + 2) = v78;
          *v5 = v77;
        }

        v47 = v46 - 48;
        v5 -= 48;
        v48 = v46 > v4;
        v46 -= 48;
        if (!v48)
        {
          v94 = v47 + 48;
          goto LABEL_49;
        }
      }

      v70 = (*(v64 + 16))(v63);
      v75 = v88;
      v74 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v73 = (*(*(v74 + 8) + 16))(v75);
LABEL_40:
      v76 = v73;
      outlined destroy of AFMDecodeFunction(v86);
      outlined destroy of AFMDecodeFunction(v90);
      v48 = v70 < v76;
      v4 = v83;
      v45 = v84;
      if (!v48)
      {
        goto LABEL_41;
      }

LABEL_44:
      if (v5 + 48 != v85)
      {
        v79 = *v45;
        v80 = *(v45 + 2);
        *(v5 + 1) = *(v45 + 1);
        *(v5 + 2) = v80;
        *v5 = v79;
      }

      v94 = v46 + 48;
      if (v46 + 48 > v4)
      {
        v6 = v45;
        if (v45 > v7)
        {
          continue;
        }
      }

      v94 = v46 + 48;
      goto LABEL_50;
    }
  }

  if (a4 != __dst || &__dst[48 * v9] <= a4)
  {
    memmove(a4, __dst, 48 * v9);
  }

  v94 = &v4[48 * v9];
  if (v8 >= 48 && v6 < v5)
  {
    while (1)
    {
      outlined init with copy of AFMDecodeFunction(v6, v90);
      outlined init with copy of AFMDecodeFunction(v4, v86);
      v13 = v92;
      v12 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v14 = (*(*(v12 + 8) + 24))(v13);
      v16 = v88;
      v15 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v17 = (*(*(v15 + 8) + 24))(v16);
      v19 = v92;
      v18 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v20 = *(v18 + 8);
      if (v14 != v17)
      {
        break;
      }

      v21 = (*(v20 + 16))(v19);
      v23 = v88;
      v22 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v24 = (*(*(v22 + 8) + 16))(v23);
      v26 = v92;
      v25 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v27 = *(v25 + 8);
      if (v21 != v24)
      {
        v34 = (*(v27 + 16))(v26);
        v39 = v88;
        v38 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v37 = (*(*(v38 + 8) + 16))(v39);
LABEL_14:
        v40 = v37;
        outlined destroy of AFMDecodeFunction(v86);
        outlined destroy of AFMDecodeFunction(v90);
        if (v34 >= v40)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v28 = (*(v27 + 32))(v26);
      v30 = v88;
      v29 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      if (((v28 ^ (*(*(v29 + 8) + 32))(v30)) & 1) == 0)
      {
        outlined destroy of AFMDecodeFunction(v86);
        outlined destroy of AFMDecodeFunction(v90);
LABEL_19:
        v41 = v4;
        v42 = v7 == v4;
        v4 += 48;
        if (v42)
        {
          goto LABEL_21;
        }

LABEL_20:
        v43 = *v41;
        v44 = *(v41 + 2);
        *(v7 + 1) = *(v41 + 1);
        *(v7 + 2) = v44;
        *v7 = v43;
        goto LABEL_21;
      }

      v32 = v92;
      v31 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v33 = (*(*(v31 + 8) + 32))(v32);
      outlined destroy of AFMDecodeFunction(v86);
      outlined destroy of AFMDecodeFunction(v90);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_15:
      v41 = v6;
      v42 = v7 == v6;
      v6 += 48;
      if (!v42)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 48;
      if (v4 >= v94 || v6 >= v5)
      {
        goto LABEL_23;
      }
    }

    v34 = (*(v20 + 24))(v19);
    v36 = v88;
    v35 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v37 = (*(*(v35 + 8) + 24))(v36);
    goto LABEL_14;
  }

LABEL_23:
  v45 = v7;
LABEL_50:
  v81 = (v94 - v4) / 48;
  if (v45 != v4 || v45 >= &v4[48 * v81])
  {
    memmove(v45, v4, 48 * v81);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v39 = *(a1 + 64);
  v40 = *(a1 + 48);
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v6 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  *v23 = v40;
  v23[1] = v39;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFB7D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 96);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v39 = v6[1];
      v40 = *v6;
      v27 = *a3;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v8;
      v35[1] = v7;
      v36 = (v34[7] + 32 * v28);
      *v36 = v40;
      v36[1] = v39;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v34[2] = v38;
      v6 += 3;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = type metadata accessor for Intent();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for SymbolDescriptor();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for FunctionDescriptor();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for ArrayDescriptor();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for DelegateFunctionArguments();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v8 = type metadata accessor for KernelRegistry();
  v2[38] = v8;
  v2[39] = *(v8 - 8);
  v2[40] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v2[41] = v9;
  v2[42] = *(v9 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:), 0, 0);
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)()
{
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static ODIELanguageModel.signposter);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v2, v3, v5, "ODIELoadEmbeddings", "", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v6 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];

  (*(v8 + 16))(v6, v7, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[45] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v7, v9);
  v10 = ProgramDescriptor.functionNames.getter();
  v0[14] = 0x626D655F64616F6CLL;
  v0[15] = 0xEF73676E69646465;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 14;
  LOBYTE(v9) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, v10);

  if (v9)
  {
    v12 = v0[17];
    KernelRegistry.init()();
    if (v12)
    {
      v13 = v0[35];
      v15 = v0[25];
      v14 = v0[26];

      ProgramDescriptor.functionDescriptor(for:)();
      result = (*(v14 + 48))(v13, 1, v15);
      if (result == 1)
      {
        __break(1u);
        goto LABEL_32;
      }

      v18 = v0[36];
      v17 = v0[37];
      v19 = v0[35];
      v20 = v0[32];
      v21 = v0[33];
      v22 = v0[25];
      v23 = v0[26];
      type metadata accessor for MPSGraphDelegate();
      v24 = static MPSGraphDelegate.name.getter();
      MEMORY[0x223D8E2E0](v24);

      (*(v23 + 8))(v19, v22);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v17, v18, &_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
      if ((*(v21 + 48))(v18, 1, v20) == 1)
      {
        v25 = v0 + 36;
        outlined destroy of [Int](v0[37], &_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
      }

      else
      {
        (*(v0[33] + 32))(v0[34], v0[36], v0[32]);
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Log.device);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_220940000, v28, v29, "load_embeddings was delegated to streaming delegate", v30, 2u);
          MEMORY[0x223D90A10](v30, -1, -1);
        }

        MPSGraphDelegate.registerKernels(for:with:into:)();
        v32 = v0[33];
        v31 = v0[34];
        v33 = v0[32];

        (*(v32 + 8))(v31, v33);
        v25 = v0 + 37;
      }

      outlined destroy of [Int](*v25, &_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
    }

    v34 = type metadata accessor for EmptyProfiler();
    v35 = MEMORY[0x277D36AD0];
    v0[12] = v34;
    v0[13] = v35;
    __swift_allocate_boxed_opaque_existential_1(v0 + 9);
    EmptyProfiler.init()();
    v36 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
    v0[46] = v36;
    v38 = v36;
    result = __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    if (v38)
    {
      v39 = v0[31];
      v40 = v0[26];
      v41 = v0[27];
      v43 = v0[24];
      v42 = v0[25];
      v44 = v0[23];
      v66 = v0[22];
      Function.descriptor.getter();
      FunctionDescriptor.arrayDescriptor(of:)(0x6E69646465626D65, 0xEA00000000007367, v39);
      v45 = *(v40 + 8);
      v45(v41, v42);
      Function.descriptor.getter();
      FunctionDescriptor.symbol.getter();
      v45(v41, v42);
      v46 = SymbolDescriptor.outputIntents.getter();
      v0[47] = v46;
      (*(v44 + 8))(v43, v66);
      if (*(v46 + 16) != 1)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v48 = v0[20];
      v47 = v0[21];
      v50 = v0[18];
      v49 = v0[19];
      (*(v49 + 16))(v47, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v50);
      (*(v49 + 104))(v48, *MEMORY[0x277D36AE8], v50);
      v51 = MEMORY[0x223D8E370](v47, v48);
      v52 = *(v49 + 8);
      v52(v48, v50);
      v52(v47, v50);
      if (v51)
      {
        v53 = swift_task_alloc();
        v0[48] = v53;
        *v53 = v0;
        v53[1] = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
        v54 = MEMORY[0x277D84F98];

        return Function._run(inputs:)(v54);
      }

      else
      {
        v56 = v0[30];
        v55 = v0[31];
        v58 = v0[28];
        v57 = v0[29];

        (*(v57 + 16))(v56, v55, v58);
        type metadata accessor for NDArray();
        swift_allocObject();
        v59 = NDArray.init(descriptor:)();
        v0[51] = v59;
        v60 = v59;

        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v0[52] = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMd, &_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_220AE8A30;
        *(inited + 32) = 0x6E69646465626D65;
        v63 = inited + 32;
        *(inited + 40) = 0xEA00000000007367;
        *(inited + 48) = v60;
        v64 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(inited);
        v0[53] = v64;
        swift_setDeallocating();
        outlined destroy of [Int](v63, &_sSS_4ODIE7NDArrayCtMd, &_sSS_4ODIE7NDArrayCtMR);
        v65 = swift_task_alloc();
        v0[54] = v65;
        *v65 = v0;
        v65[1] = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);

        return Function._run(inputs:outputs:)(v61, v64);
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

  lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
  swift_allocError();
  *v26 = xmmword_220AEEFB0;
  *(v26 + 16) = 1;
  swift_willThrow();
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v0[45]);

  v37 = v0[1];

  return v37();
}

{
  if (!*(v0[49] + 16))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E69646465626D65, 0xEA00000000007367);
  if ((v2 & 1) == 0)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = v1;
  v4 = v0[49];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];

  v13 = *(*(v4 + 56) + 8 * v3);

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);

  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v0[45]);

  v11 = v0[1];

  return v11(v13);
}

{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  else
  {
    v2 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[51];
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v0[45]);

  v7 = v0[1];

  return v7(v9);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v0[45]);

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  $defer #1 () in static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v0[45]);

  v7 = v0[1];

  return v7();
}

uint64_t specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {

    v4 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  else
  {
    v4 = specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t lazy protocol witness table accessor for type MPSGraphDelegate and conformance MPSGraphDelegate()
{
  result = lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate;
  if (!lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate)
  {
    type metadata accessor for MPSGraphDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPSGraphDelegate and conformance MPSGraphDelegate);
  }

  return result;
}

uint64_t specialized ODIELanguageModel.KeyValueCacheDescriptor.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ScalarType();
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Dimension();
  v82 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v74 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v73 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v72 = &v67 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v83 = &v67 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v79 = &v67 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v67 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v67 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v67 - v33;
  v85 = a1;
  v81 = ArrayDescriptor.interleave.getter();
  if (*(v81 + 16) != 5)
  {
    goto LABEL_39;
  }

  v35 = v82;
  v71 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v36 = v81 + v71;
  v87 = *(v82 + 16);
  v87(v34, (v81 + v71), v5);
  v84 = *(v35 + 88);
  v37 = v84(v34, v5);
  if (v37 != *MEMORY[0x277D36B40])
  {
    goto LABEL_35;
  }

  v38 = v37;
  v86 = *(v35 + 96);
  v86(v34, v5);
  v39 = v84;
  if (*v34 != 1)
  {
    goto LABEL_39;
  }

  v40 = *(v82 + 72);
  v87(v31, (v36 + v40), v5);
  if (v39(v31, v5) != v38)
  {
    goto LABEL_32;
  }

  v86(v31, v5);
  if (*v31 != 1)
  {
    goto LABEL_39;
  }

  v70 = 2 * v40;
  v41 = v40;
  v87(v27, (v36 + 2 * v40), v5);
  if (v39(v27, v5) != v38)
  {
    v34 = v27;
    goto LABEL_35;
  }

  v42 = v86;
  v86(v27, v5);
  v43 = *v27;
  v80 = v41;
  v68 = v43;
  v69 = 3 * v41;
  v44 = v36 + 3 * v41;
  v31 = v79;
  v87(v79, v44, v5);
  if (v39(v31, v5) != v38)
  {
LABEL_32:
    v34 = v31;
    goto LABEL_35;
  }

  v42(v31, v5);
  if (*v31 != 1)
  {
    goto LABEL_39;
  }

  v34 = v83;
  v87(v83, (v36 + 4 * v80), v5);
  if (v39(v34, v5) != v38)
  {
LABEL_35:
    (*(v82 + 8))(v34, v5);
    goto LABEL_39;
  }

  v86(v34, v5);
  if (*v34 != 1)
  {
    goto LABEL_39;
  }

  LODWORD(v83) = v38;
  v79 = ArrayDescriptor.shape.getter();
  if (*(v79 + 2) != 5)
  {
    goto LABEL_39;
  }

  v45 = v72;
  v46 = &v79[v71];
  v47 = v87;
  v87(v72, &v79[v71], v5);
  v48 = v84;
  v49 = v84(v45, v5);
  v50 = v73;
  if (v49 != v83)
  {
    goto LABEL_38;
  }

  v51 = v86;
  v86(v45, v5);
  v52 = *v45;
  v71 = v46;
  v72 = v52;
  v47(v50, &v46[v80], v5);
  v53 = v48(v50, v5);
  if (v53 != v83)
  {
    v72 = v50;
LABEL_38:
    (*(v82 + 8))(v72, v5);
    goto LABEL_39;
  }

  v51(v50, v5);
  v54 = v74;
  if (*v50 == 1)
  {
    v55 = v71;
    v56 = v87;
    v87(v74, (v71 + v70), v5);
    v57 = v84;
    v58 = v84(v54, v5);
    v59 = v83;
    v60 = v86;
    if (v58 == v83)
    {
      v86(v54, v5);
      v80 = *v54;
      v54 = v75;
      v56(v75, v55 + v69, v5);
      if (v57(v54, v5) == v59)
      {
        v60(v54, v5);
        if (*v54 != 1)
        {
          goto LABEL_39;
        }

        v61 = ArrayDescriptor.strides.getter();
        if (!v61)
        {
          goto LABEL_39;
        }

        if (v61[2] != 6 || v61[5] != v61[6] || v61[7] != v61[8])
        {
          goto LABEL_30;
        }

        v62 = v76;
        v63 = v85;
        ArrayDescriptor.scalarType.getter();
        v64 = ScalarType.byteCount.getter();
        v65 = type metadata accessor for ArrayDescriptor();
        (*(*(v65 - 8) + 8))(v63, v65);
        (*(v77 + 8))(v62, v78);
        if ((v72 * v80) >> 64 == (v72 * v80) >> 63)
        {
          if (v68)
          {
            if (v72 * v80 != 0x8000000000000000 || v68 != -1)
            {
              return v64;
            }

            goto LABEL_29;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:

        goto LABEL_39;
      }
    }

    v72 = v54;
    goto LABEL_38;
  }

LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1, specialized Dictionary.Keys.subscript.getter);
}

{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x223D8ED50](v3, v5, v6, v7);
    outlined consume of [String : String].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [String : String].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [String : String].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t specialized Collection.first.getter(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t))
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2(v4, *(a1 + 36), 0, a1);
  }
}

_OWORD *specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    result = specialized Dictionary.subscript.getter(v9, v4, *(a1 + 36), 0, a1);
    v7 = v9[0];
    v8 = v9[1];
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

_DWORD *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMDecodeFunctionV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v138 = a2;
  v7 = type metadata accessor for NDArray.Buffer();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v133 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OperandType();
  v174 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v164 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v130 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v163 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v170 = &v130 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v172 = &v130 - v25;
  v162 = type metadata accessor for FunctionDescriptor();
  v173 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v26);
  v165 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v151 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v161 = &v130 - v33;
  v34 = type metadata accessor for ArrayDescriptor();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v134 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v135 = &v130 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v152 = &v130 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v154 = &v130 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v139 = &v130 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v160 = &v130 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v150 = &v130 - v55;
  v182 = MEMORY[0x277D84F98];
  v56 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS4ODIE7NDArrayC6BufferVGMd, &_sSDySS4ODIE7NDArrayC6BufferVGMR);
  Dictionary.reserveCapacity(_:)(v56);
  v141 = v56;
  if (!v56)
  {
    return v182;
  }

  v149 = v16;
  v60 = 0;
  v61 = a1 + 32;
  v132 = v138 + 32;
  v175 = v174 + 6;
  v159 = &v174[4];
  v148 = v174 + 7;
  v147 = v174 + 2;
  v146 = v174 + 11;
  v145 = *MEMORY[0x277D36AC8];
  v144 = v174 + 1;
  v143 = v174 + 12;
  v167 = (v35 + 16);
  v158 = (v35 + 56);
  v157 = (v173 + 8);
  v156 = (v35 + 48);
  v171 = (v35 + 32);
  v166 = v35;
  v153 = (v35 + 8);
  *&v59 = 136315138;
  v130 = v59;
  *&v59 = 136315394;
  v131 = v59;
  v137 = a3;
  v136 = a1 + 32;
  v155 = v34;
  while (1)
  {
    v62 = (v61 + 16 * v60);
    v63 = v62[1];
    v169 = *v62;
    v178 = v169;
    v179 = v63;
    MEMORY[0x28223BE20](v57, v58);
    v128 = &v178;

    if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v130 - 2), a3) & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (++v60 == v141)
    {
      return v182;
    }
  }

  v168 = v63;
  v140 = v60;
  v142 = v4;
  v64 = *(v138 + 16);
  if (v64)
  {
    v65 = v132;
    v66 = MEMORY[0x277D84F90];
    do
    {
      v173 = v64;
      v174 = v66;
      outlined init with copy of AFMDecodeFunction(v65, &v178);
      v67 = v180;
      v68 = v181;
      __swift_project_boxed_opaque_existential_1(&v179, v180);
      (*(v68 + 16))(v67, v68);
      Function.descriptor.getter();

      v69 = v170;
      FunctionDescriptor.operandType(ofInput:)();
      isa = v175->isa;
      if ((v175->isa)(v69, 1, v10) == 1)
      {
        v71 = v172;
        FunctionDescriptor.operandType(ofOutput:)();
        v72 = isa(v69, 1, v10);
        v74 = v163;
        v73 = v164;
        v34 = v155;
        if (v72 != 1)
        {
          outlined destroy of [Int](v170, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        }
      }

      else
      {
        v71 = v172;
        (*v159)(v172, v69, v10);
        (v148->isa)(v71, 0, 1, v10);
        v74 = v163;
        v73 = v164;
        v34 = v155;
      }

      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v71, v74, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
      if (isa(v74, 1, v10) == 1)
      {
        outlined destroy of [Int](v71, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        outlined destroy of [Int](v74, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        v75 = v161;
        (*v158)(v161, 1, 1, v34);
      }

      else
      {
        v76 = v149;
        (*v159)(v149, v74, v10);
        (v147->isa)(v73, v76, v10);
        v77 = (v146->isa)(v73, v10);
        if (v77 != v145)
        {
          goto LABEL_53;
        }

        (v144->isa)(v76, v10);
        outlined destroy of [Int](v172, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        (v143->isa)(v73, v10);
        v78 = swift_projectBox();
        v79 = v151;
        (*v167)(v151, v78, v34);
        (*v158)(v79, 0, 1, v34);

        v75 = v161;
        outlined init with take of Asset?(v79, v161, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
      }

      (*v157)(v165, v162);
      outlined destroy of AFMDecodeFunction(&v178);
      if ((*v156)(v75, 1, v34) == 1)
      {
        outlined destroy of [Int](v75, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
        v66 = v174;
      }

      else
      {
        v80 = *v171;
        v81 = v150;
        (*v171)(v150, v75, v34);
        v80(v160, v81, v34);
        v66 = v174;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2].isa + 1, 1, v66);
        }

        v83 = v66[2].isa;
        v82 = v66[3].isa;
        v84 = v166;
        if (v83 >= v82 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v66);
          v84 = v166;
          v66 = v85;
        }

        v66[2].isa = (v83 + 1);
        v80(v66 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v83, v160, v34);
      }

      v65 += 48;
      v64 = v173 - 1;
    }

    while (v173 != 1);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v86 = v66[2].isa;
  if (!v86)
  {

    v103 = v169;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Log.device);
    v105 = v168;

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();

    v174 = v106;
    v108 = os_log_type_enabled(v106, v107);
    v4 = v142;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v178 = v110;
      *v109 = v130;
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v178);

      *(v109 + 4) = v111;
      v112 = v174;
      _os_log_impl(&dword_220940000, v174, v107, "Did not allocate buffer for operand named %s because no functions were found to use it.", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x223D90A10](v110, -1, -1);
      MEMORY[0x223D90A10](v109, -1, -1);
    }

    else
    {
    }

LABEL_48:
    a3 = v137;
    v60 = v140;
    v61 = v136;
    goto LABEL_4;
  }

  v87 = *(v166 + 16);
  v173 = v66 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
  v174 = v87;
  (v87)(v154);
  v88 = v152;
  if (v86 != 1)
  {
    v113 = 1;
    while (1)
    {
      if (v113 >= v66[2].isa)
      {
        __break(1u);
        goto LABEL_52;
      }

      (v174)(v88, &v173[*(v166 + 72) * v113]);
      v114 = ArrayDescriptor.byteCount.getter();
      if (v115)
      {
        v178 = 0;
        v179 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        v178 = 0xD000000000000030;
        v179 = 0x8000000220AFEBA0;
        MEMORY[0x223D8E780](v169, v168);
        v129 = 0;
        v127 = 112;
        goto LABEL_56;
      }

      v116 = v114;
      v117 = ArrayDescriptor.byteCount.getter();
      if (v118)
      {
        break;
      }

      v119 = *v153;
      if (v116 >= v117)
      {
        v88 = v152;
        v119(v152, v34);
      }

      else
      {
        v120 = v154;
        v119(v154, v34);
        v121 = v120;
        v88 = v152;
        (*v171)(v121, v152, v34);
      }

      if (v86 == ++v113)
      {
        goto LABEL_27;
      }
    }

    v178 = 0;
    v179 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v178 = 0xD000000000000030;
    v179 = 0x8000000220AFEBA0;
    MEMORY[0x223D8E780](v169, v168);
    v129 = 0;
    v127 = 116;
LABEL_56:
    v128 = v127;
    goto LABEL_57;
  }

LABEL_27:

  v89 = v139;
  (*v171)(v139, v154, v34);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Log.device);
  v91 = v135;
  (v174)(v135, v89, v34);
  v92 = v168;

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.info.getter();

  v95 = os_log_type_enabled(v93, v94);
  v4 = v142;
  if (!v95)
  {
    v102 = *v153;
    (*v153)(v91, v34);

    goto LABEL_45;
  }

  LODWORD(v173) = v94;
  v96 = v93;
  v97 = swift_slowAlloc();
  v98 = swift_slowAlloc();
  v178 = v98;
  *v97 = v131;
  *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v92, &v178);
  *(v97 + 12) = 2048;
  v99 = ArrayDescriptor.byteCount.getter();
  if ((v100 & 1) == 0)
  {
    v101 = v99;
    v102 = *v153;
    (*v153)(v91, v34);
    *(v97 + 14) = v101;
    _os_log_impl(&dword_220940000, v96, v173, "Allocating buffer for operand %s of size %ld", v97, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x223D90A10](v98, -1, -1);
    MEMORY[0x223D90A10](v97, -1, -1);

    v4 = v142;
LABEL_45:
    v122 = v139;
    (v174)(v134, v139, v34);
    type metadata accessor for NDArray();
    swift_allocObject();
    NDArray.init(descriptor:)();
    if (v4)
    {
      v102(v122, v34);
    }

    v123 = v133;
    NDArray.buffer.getter();
    v124 = v182;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v178 = v124;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, v169, v168, isUniquelyReferenced_nonNull_native);

    v57 = (v102)(v122, v34);
    v182 = v178;
    goto LABEL_48;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v176 = 0;
  v177 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x223D8E780](0xD000000000000019, 0x8000000220AFE210);
  MEMORY[0x223D8E780](v169, v168);
  MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE230);
  _print_unlocked<A, B>(_:_:)();
  v129 = 0;
  v128 = 25;
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMGatherFunctionV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v149 = a2;
  v7 = type metadata accessor for NDArray.Buffer();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v144 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OperandType();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v173 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v162 = &v140 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v172 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v176 = &v140 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v180 = &v140 - v25;
  v171 = type metadata accessor for FunctionDescriptor();
  v185 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v26);
  v28 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v161 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v170 = &v140 - v34;
  v186 = type metadata accessor for ArrayDescriptor();
  v35 = *(v186 - 8);
  v37 = MEMORY[0x28223BE20](v186, v36);
  v145 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v146 = &v140 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v163 = &v140 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v164 = &v140 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v148 = &v140 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v169 = &v140 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v160 = &v140 - v55;
  v189 = MEMORY[0x277D84F98];
  v56 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS4ODIE7NDArrayC6BufferVGMd, &_sSDySS4ODIE7NDArrayC6BufferVGMR);
  Dictionary.reserveCapacity(_:)(v56);
  v152 = v56;
  if (!v56)
  {
    return v189;
  }

  v60 = 0;
  v151 = a1 + 32;
  v143 = v149 + 32;
  v184 = (v11 + 48);
  v168 = (v11 + 32);
  v159 = (v11 + 56);
  v158 = (v11 + 16);
  v157 = (v11 + 88);
  v156 = *MEMORY[0x277D36AC8];
  v155 = (v11 + 8);
  v154 = (v11 + 96);
  v177 = (v35 + 16);
  v167 = (v35 + 56);
  v166 = (v185 + 8);
  v165 = (v35 + 48);
  v179 = (v35 + 32);
  v174 = v35;
  v142 = (v35 + 8);
  *&v59 = 136315138;
  v140 = v59;
  *&v59 = 136315394;
  v141 = v59;
  v175 = v28;
  v61 = v186;
  v147 = a3;
  while (1)
  {
    v62 = (v151 + 16 * v60);
    v63 = v62[1];
    v181 = *v62;
    v187 = v181;
    v188 = v63;
    MEMORY[0x28223BE20](v57, v58);
    v138 = &v187;

    if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v140 - 2), a3) & 1) == 0)
    {
      break;
    }

LABEL_4:
    if (++v60 == v152)
    {
      return v189;
    }
  }

  v178 = v63;
  v150 = v60;
  v153 = v4;
  v64 = *(v149 + 16);
  if (v64)
  {
    v65 = v143;
    v185 = MEMORY[0x277D84F90];
    v66 = v184;
    v67 = v176;
    do
    {
      v183 = v64;

      Function.descriptor.getter();
      FunctionDescriptor.operandType(ofInput:)();
      v68 = *v66;
      v69 = (*v66)(v67, 1, v10);
      v70 = v10;
      if (v69 == 1)
      {
        v71 = v180;
        FunctionDescriptor.operandType(ofOutput:)();
        v72 = v68(v67, 1, v70);
        v73 = v173;
        if (v72 != 1)
        {
          outlined destroy of [Int](v67, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        }
      }

      else
      {
        v71 = v180;
        (*v168)(v180, v67, v70);
        (*v159)(v71, 0, 1, v70);
        v73 = v173;
      }

      v74 = v172;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v71, v172, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
      if (v68(v74, 1, v70) == 1)
      {
        outlined destroy of [Int](v71, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        outlined destroy of [Int](v74, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        v75 = v170;
        v61 = v186;
        (*v167)(v170, 1, 1, v186);
        v67 = v176;
        v10 = v70;
      }

      else
      {
        v76 = v162;
        (*v168)(v162, v74, v70);
        (*v158)(v73, v76, v70);
        v77 = (*v157)(v73, v70);
        v10 = v70;
        if (v77 != v156)
        {
          goto LABEL_55;
        }

        (*v155)(v76, v70);
        outlined destroy of [Int](v180, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
        (*v154)(v73, v70);
        v78 = swift_projectBox();
        v79 = v161;
        v80 = v186;
        (*v177)(v161, v78, v186);
        (*v167)(v79, 0, 1, v80);

        v81 = v79;
        v61 = v80;
        v75 = v170;
        outlined init with take of Asset?(v81, v170, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
        v67 = v176;
      }

      v82 = v181;
      (*v166)(v175, v171);

      if ((*v165)(v75, 1, v61) == 1)
      {
        outlined destroy of [Int](v75, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
        v66 = v184;
      }

      else
      {
        v83 = v10;
        v84 = *v179;
        v85 = v160;
        (*v179)(v160, v75, v61);
        v84(v169, v85, v61);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = v185;
        }

        else
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v185 + 2) + 1, 1, v185);
        }

        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        v10 = v83;
        if (v88 >= v87 >> 1)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v86);
        }

        v66 = v184;
        *(v86 + 2) = v88 + 1;
        v89 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        v185 = v86;
        v90 = v86 + v89 + *(v174 + 72) * v88;
        v61 = v186;
        v84(v90, v169, v186);
        v82 = v181;
      }

      v65 += 16;
      v64 = (v183 - 1);
    }

    while (v183 != 1);
  }

  else
  {
    v185 = MEMORY[0x277D84F90];
    v82 = v181;
  }

  v91 = *(v185 + 2);
  if (!v91)
  {
    v113 = v82;

    v4 = v153;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Log.device);
    v115 = v178;

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();

    v118 = v116;
    if (os_log_type_enabled(v116, v117))
    {
      v119 = v113;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v187 = v121;
      *v120 = v140;
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v115, &v187);

      *(v120 + 4) = v122;
      _os_log_impl(&dword_220940000, v118, v117, "Did not allocate buffer for operand named %s because no functions were found to use it.", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x223D90A10](v121, -1, -1);
      MEMORY[0x223D90A10](v120, -1, -1);
    }

    else
    {
    }

    a3 = v147;
    v61 = v186;
LABEL_50:
    v60 = v150;
    goto LABEL_4;
  }

  v92 = v174;
  v93 = v185 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
  v94 = *(v174 + 16);
  v94(v164, v93, v61);
  v95 = v185;
  v96 = v163;
  v97 = v142;
  if (v91 != 1)
  {
    v123 = 1;
    while (1)
    {
      if (v123 >= *(v95 + 2))
      {
        __break(1u);
        goto LABEL_54;
      }

      v94(v96, &v93[*(v92 + 72) * v123], v186);
      v124 = ArrayDescriptor.byteCount.getter();
      if (v125)
      {
        v187 = 0;
        v188 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        v187 = 0xD000000000000030;
        v188 = 0x8000000220AFEBA0;
        MEMORY[0x223D8E780](v181, v178);
        v139 = 0;
        v137 = 112;
        goto LABEL_58;
      }

      v126 = v124;
      v127 = ArrayDescriptor.byteCount.getter();
      if (v128)
      {
        break;
      }

      v129 = *v97;
      if (v126 >= v127)
      {
        v96 = v163;
        v129(v163, v186);
      }

      else
      {
        v130 = v164;
        v131 = v186;
        v129(v164, v186);
        v132 = v130;
        v96 = v163;
        (*v179)(v132, v163, v131);
      }

      v92 = v174;
      ++v123;
      v95 = v185;
      if (v91 == v123)
      {
        goto LABEL_28;
      }
    }

    v187 = 0;
    v188 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v187 = 0xD000000000000030;
    v188 = 0x8000000220AFEBA0;
    MEMORY[0x223D8E780](v181, v178);
    v139 = 0;
    v137 = 116;
LABEL_58:
    v138 = v137;
    goto LABEL_59;
  }

LABEL_28:
  v185 = v94;

  v98 = v148;
  v99 = v186;
  (*v179)(v148, v164, v186);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static Log.device);
  v101 = v146;
  v185(v146, v98, v99);
  v102 = v178;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.info.getter();

  v105 = os_log_type_enabled(v103, v104);
  v4 = v153;
  if (!v105)
  {
    v111 = *v97;
    (*v97)(v101, v99);

    goto LABEL_46;
  }

  v183 = v103;
  v106 = swift_slowAlloc();
  v107 = swift_slowAlloc();
  v187 = v107;
  *v106 = v141;
  *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v102, &v187);
  *(v106 + 12) = 2048;
  v108 = ArrayDescriptor.byteCount.getter();
  if ((v109 & 1) == 0)
  {
    v110 = v108;
    v111 = *v97;
    v99 = v186;
    (*v97)(v101, v186);
    *(v106 + 14) = v110;
    v112 = v183;
    _os_log_impl(&dword_220940000, v183, v104, "Allocating buffer for operand %s of size %ld", v106, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x223D90A10](v107, -1, -1);
    MEMORY[0x223D90A10](v106, -1, -1);

    v98 = v148;
    v4 = v153;
LABEL_46:
    v185(v145, v98, v99);
    type metadata accessor for NDArray();
    swift_allocObject();
    NDArray.init(descriptor:)();
    if (v4)
    {
      v111(v98, v99);
    }

    v133 = v144;
    NDArray.buffer.getter();
    v134 = v189;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187 = v134;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v133, v181, v178, isUniquelyReferenced_nonNull_native);

    v57 = (v111)(v98, v99);
    v189 = v187;
    a3 = v147;
    v61 = v99;
    goto LABEL_50;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v187 = 0;
  v188 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x223D8E780](0xD000000000000019, 0x8000000220AFE210);
  MEMORY[0x223D8E780](v181, v178);
  MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE230);
  _print_unlocked<A, B>(_:_:)();
  v139 = 0;
  v138 = 25;
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_59:
    if (one-time initialization token for device == -1)
    {
LABEL_60:
      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Log.device);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134218496;
        *(v69 + 4) = a2;
        *(v69 + 12) = 2048;
        *(v69 + 14) = a3;
        *(v69 + 22) = 2048;
        *(v69 + 24) = a4;
        _os_log_impl(&dword_220940000, v67, v68, "Failed to find a decode function to run next inference for current context: %ld remainingTokens: %ld, tokensRequiringLogitsCount: %ld", v69, 0x20u);
        MEMORY[0x223D90A10](v69, -1, -1);
      }

      return 0;
    }

LABEL_79:
    swift_once();
    goto LABEL_60;
  }

  v6 = 0;
  v72 = 0;
  v7 = a1 + 32;
  v73 = -1;
  v70 = a1 + 32;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v76 = *(a1 + 16);
  while (2)
  {
    v8 = v7 + 48 * v6;
    while (1)
    {
      if (v6 >= v5)
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
LABEL_71:
        __break(1u);
LABEL_72:
        outlined destroy of AFMDecodeFunction(v79);
        return v75;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_64;
      }

      *v79 = v6;
      outlined init with copy of AFMDecodeFunction(v8, &v79[8]);
      v9 = v80;
      if (!v80)
      {
        goto LABEL_57;
      }

      v75 = *v79;
      v10 = v81;
      *v79 = *&v79[8];
      *&v79[16] = *&v79[24];
      *&v79[32] = v80;
      v80 = v81;
      __swift_project_boxed_opaque_existential_1(&v79[8], v9);
      v11 = (*(*(v10 + 8) + 24))(v9);
      if (!v11)
      {
        goto LABEL_65;
      }

      if (a2 == 0x8000000000000000 && v11 == -1)
      {
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
        goto LABEL_79;
      }

      v12 = v11 - a2 % v11;
      if (__OFSUB__(v11, a2 % v11))
      {
        goto LABEL_66;
      }

      if (v12 >= a3)
      {
        v12 = 0;
      }

      if (a2 % v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = a2 + v13;
      if (__OFADD__(a2, v13))
      {
        goto LABEL_67;
      }

      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_68;
      }

      v78 = v6 + 1;
      v16 = a2;
      a2 = *&v79[32];
      v17 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v18 = (*(*(v17 + 8) + 24))(a2);
      if (!v18)
      {
        goto LABEL_69;
      }

      if (v15 == 0x8000000000000000 && v18 == -1)
      {
        goto LABEL_74;
      }

      v20 = __OFSUB__(v15, v15 % v18);
      v21 = v15 - v15 % v18;
      if (v20)
      {
        goto LABEL_70;
      }

      v23 = *&v79[32];
      v22 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      a2 = (*(*(v22 + 8) + 24))(v23);
      v25 = *&v79[32];
      v24 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v26 = (*(*(v24 + 8) + 24))(v25);
      v20 = __OFADD__(v21, v26);
      v27 = v21 + v26;
      if (v20)
      {
        goto LABEL_71;
      }

      v29 = *&v79[32];
      v28 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      if ((*(*(v28 + 8) + 16))(v29) >= v27)
      {
        v31 = *&v79[32];
        v30 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v32 = (*(*(v30 + 8) + 24))(v31);
        if (!v32)
        {
          goto LABEL_75;
        }

        if (v14 == 0x8000000000000000 && v32 == -1)
        {
          goto LABEL_78;
        }

        v34 = v14 % v32;
        v36 = *&v79[32];
        v35 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v37 = (*(*(v35 + 8) + 24))(v36);
        v38 = v37 - v34;
        if (__OFSUB__(v37, v34))
        {
          goto LABEL_76;
        }

        v39 = a3 - v38;
        if (__OFSUB__(a3, v38))
        {
          goto LABEL_77;
        }

        v41 = *&v79[32];
        v40 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        if (((*(*(v40 + 8) + 32))(v41) & 1) != 0 || v39 >= a4)
        {
          break;
        }
      }

      outlined destroy of AFMDecodeFunction(v79);
      v5 = v76;
      ++v6;
      v8 += 48;
      a2 = v16;
      if (v78 == v76)
      {
        goto LABEL_57;
      }
    }

    if (a2 >= a3)
    {
      if (v39 < a4)
      {
        goto LABEL_72;
      }

      v43 = *&v79[32];
      v42 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      if (((*(*(v42 + 8) + 32))(v43) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v45 = *&v79[32];
    v44 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    v46 = (*(*(v44 + 8) + 24))(v45);
    v48 = *&v79[32];
    v47 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    v49 = v72;
    a2 = v16;
    if ((*(*(v47 + 8) + 24))(v48) == v72)
    {
      v51 = *&v79[32];
      v50 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v52 = (*(*(v50 + 8) + 16))(v51);
      v53 = v52 < v71;
      if (v39 < a4)
      {
        if (v72 < v46 || v52 < v71)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v39 < a4)
      {
        if (v72 < v46)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v53 = 0;
    }

    v55 = *&v79[32];
    v54 = v80;
    __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
    if ((*(*(v54 + 8) + 24))(v55) == v72 && (v57 = *&v79[32], v56 = v80, __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]), (*(*(v56 + 8) + 16))(v57) == v71))
    {
      v59 = *&v79[32];
      v58 = v80;
      __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
      v60 = (*(*(v58 + 8) + 32))(v59);
      if (v72 < v46 || v53 || (v60 & 1) == 0)
      {
LABEL_52:
        v62 = *&v79[32];
        v61 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v49 = (*(*(v61 + 8) + 24))(v62);
        v64 = *&v79[32];
        v63 = v80;
        __swift_project_boxed_opaque_existential_1(&v79[8], *&v79[32]);
        v71 = (*(*(v63 + 8) + 16))(v64);
        v73 = v75;
      }
    }

    else if (v72 < v46 || v53)
    {
      goto LABEL_52;
    }

LABEL_53:
    v72 = v49;
    outlined destroy of AFMDecodeFunction(v79);
    v5 = v76;
    v6 = v78;
    v7 = v70;
    if (v78 != v76)
    {
      continue;
    }

    break;
  }

LABEL_57:
  if (v73 == -1)
  {
    goto LABEL_59;
  }

  return v73;
}

uint64_t ODIELanguageModelRunner.description.getter()
{
  v12 = 0;
  v13[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x223D8E780](0xD000000000000014, 0x8000000220AFE9E0);
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  result = type metadata accessor for ODIELanguageModel(0);
  v3 = *(v1 + *(result + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of AFMDecodeFunction(v3 + 48 * v4 - 16, &v12);
    v6 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(*(v5 + 8) + 16))(v6);
    outlined destroy of AFMDecodeFunction(&v12);
    v12 = v7;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v8);

    MEMORY[0x223D8E780](0xD000000000000013, 0x8000000220AFEA00);
    result = NDArray.shape.getter();
    if (*(result + 16))
    {
      v9 = *(result + 32);

      v12 = v9;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v10);

      MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFEA20);
      v11 = MEMORY[0x223D8E8D0](v3, &type metadata for AFMDecodeFunction);
      MEMORY[0x223D8E780](v11);

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 368) = a6;
  *(v7 + 232) = a5;
  *(v7 + 240) = v6;
  *(v7 + 216) = a3;
  *(v7 + 224) = a4;
  *(v7 + 200) = a1;
  *(v7 + 208) = a2;
  *(v7 + 248) = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd, &_s4ODIE7NDArrayC6BufferVSgMR);
  *(v7 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v7 + 264) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v7 + 272) = v8;
  *(v7 + 280) = *(v8 - 8);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = type metadata accessor for ODIELanguageModel(0);
  *(v7 + 304) = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  *(v7 + 312) = v9;
  *(v7 + 320) = *(v9 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:), 0, 0);
}

uint64_t ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)()
{
  *(v0[30] + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_isInDynamicMode) = 0;
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static ODIELanguageModel.signposter);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v2, v3, v5, "ODIELanguageModelInit", "", v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }

  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[34];
  v22 = v0[33];
  v23 = v0[27];
  v21 = v0[26];
  v13 = v0[25];

  (*(v8 + 16))(v6, v7, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[43] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v7, v9);
  (*(v10 + 16))(v11, v13, v12);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v21, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v23, (v0 + 14), &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);

  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  v15 = v0[38];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[28];
  v19 = v0[29];

  return ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)(v15, v16, v17, (v0 + 14), v18, v19);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  }

  else
  {
    v2 = ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v65 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 240) + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  outlined init with take of ODIELanguageModel(*(v0 + 304), v2);
  v3 = *(v1 + 24);
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 360);
    outlined init with copy of AFMDecodeFunction(v4 + 32, v0 + 16);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 24), v6);
    v8 = (*(v7 + 24))(v6, v7);
    outlined destroy of AFMDecodeFunction(v0 + 16);
    v9 = *(v2 + v3);

    v10 = _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMDecodeFunctionV_Tt2g5(v8, v9, &outlined read-only object #0 of ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:));
    if (v5)
    {

      outlined destroy of String(aInEmbeddings_0);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v18 = *(v0 + 200);
      $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(*(v0 + 344), v18);

      outlined destroy of [Int](v16, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
      outlined destroy of [Int](v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v15 + 8))(v18, v14);
      v19 = type metadata accessor for ProgramDescriptor();
      (*(*(v19 - 8) + 8))(v2, v19);

      swift_deallocPartialClassInstance();

      v20 = *(v0 + 8);

      return v20();
    }

    v11 = v10;
    v12 = *(v0 + 296);

    outlined destroy of String(aInEmbeddings_0);
    v13 = *(v2 + *(v12 + 28));

    v22 = _s24TokenGenerationInference12AFMUtilitiesV23makeMaximumSizedBuffers3for9largestOf17excludingOperandsSDySS4ODIE7NDArrayC6BufferVGSaySSG_SayxGANtKAA23ArrayDescriptorProviderRzlFZAA17AFMGatherFunctionV_Tt2g5(&outlined read-only object #0 of one-time initialization function for allNames, v13, &outlined read-only object #1 of ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:));

    swift_arrayDestroy();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v11;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v64);
    v24 = *(v0 + 240);

    v25 = v64[0];
    *(v24 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers) = v64[0];
    v26 = *(v2 + v3);
    v27 = *(v26 + 16);
    if (v27)
    {
      if (*(v26 + 32))
      {
        if (*(v25 + 16))
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000220AFA610);
          v29 = *(v0 + 256);
          if (v30)
          {
            v62 = v28;
            v63 = *(v25 + 56);
            v31 = type metadata accessor for NDArray.Buffer();
            v32 = *(v31 - 8);
            (*(v32 + 16))(v29, v63 + *(v32 + 72) * v62, v31);
            (*(v32 + 56))(v29, 0, 1, v31);
          }

          else
          {
            v35 = type metadata accessor for NDArray.Buffer();
            (*(*(v35 - 8) + 56))(v29, 1, 1, v35);
          }
        }

        else
        {
          v33 = *(v0 + 256);
          v34 = type metadata accessor for NDArray.Buffer();
          (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        }

        v36 = *(v0 + 256);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v36, 0xD000000000000013, 0x8000000220AFA630);
        swift_endAccess();
        v26 = *(v2 + v3);
        v27 = *(v26 + 16);
        if (!v27)
        {
          __break(1u);
        }
      }

      v37 = *(v0 + 368);
      v38 = *(v0 + 240);
      outlined init with copy of AFMDecodeFunction(v26 + 48 * v27 - 16, v0 + 64);

      v39 = *(v0 + 96);
      v40 = *(v0 + 104);
      __swift_project_boxed_opaque_existential_1((v0 + 72), v39);
      v41 = (*(*(v40 + 8) + 16))(v39);
      outlined destroy of AFMDecodeFunction(v0 + 64);
      v42 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
      v43 = MEMORY[0x277D84F90];
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v38 + v42) = v43;
      v44 = v41 & ~(v41 >> 63);
      *(v38 + v42) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0, v43);
      v45 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) = v43;
      *(v38 + v45) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0, v43);
      *(v38 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_ignoreUnknownTokens) = v37;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_18:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.device);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136315138;

    v51 = ODIELanguageModelRunner.description.getter();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v64);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_220940000, v47, v48, "\nLoaded ODIELanguageModel:\n%s\n", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x223D90A10](v50, -1, -1);
    MEMORY[0x223D90A10](v49, -1, -1);
  }

  v55 = *(v0 + 280);
  v56 = *(v0 + 272);
  v57 = *(v0 + 208);
  v58 = *(v0 + 216);
  v59 = *(v0 + 200);
  $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(*(v0 + 344), v59);

  outlined destroy of [Int](v58, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v55 + 8))(v59, v56);

  v60 = *(v0 + 8);
  v61 = *(v0 + 240);

  return v60(v61);
}

{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(v0[43], v5);

  outlined destroy of [Int](v3, &_s24TokenGenerationInference9BaseModel_pSgMd, &_s24TokenGenerationInference9BaseModel_pSgMR);
  outlined destroy of [Int](v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v2 + 8))(v5, v1);
  swift_deallocPartialClassInstance();

  v6 = v0[1];

  return v6();
}

uint64_t $defer #1 () in ODIELanguageModelRunner.init(contentsOf:adapterURL:baseModel:delegate:ignoreUnknownTokens:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for OSSignpostID();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v16, static ODIELanguageModel.signposter);
  (*(v12 + 16))(v15, a2, v11);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v30 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v18 = v31;
    if ((*(v31 + 11))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 1))(v6, v3);
      v31 = "URL: %s";
      v20 = 2;
      v19 = 1;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = v20;
    *(v22 + 1) = v19;
    *(v22 + 2) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v33);

    *(v22 + 4) = v27;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v17, v30, v28, "ODIELanguageModelInit", v31, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223D90A10](v23, -1, -1);
    MEMORY[0x223D90A10](v22, -1, -1);

    return (*(v7 + 8))(v10, v32);
  }

  else
  {

    (*(v7 + 8))(v10, v32);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:), 0, 0);
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)()
{
  v1 = v0[7];
  if (!v1)
  {
    v2 = v0[9];
    v3 = *(v0[5] + 16);
    v4 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v1 = specialized static AFMUtilities.defaultMasks(tokenCount:startingContextCount:)(v3, *(*(v2 + v4) + 16) - *(*(v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16));
  }

  v5 = v0[5];
  v6 = *(v5 + 16);
  if (v6)
  {
    v32 = v1;
    v7 = v0[9];
    v37 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v37;
    v9 = v5 + 32;
    v10 = v7 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
    v33 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_ignoreUnknownTokens;
    v34 = v7;
    v11 = 0;
    v35 = type metadata accessor for ODIELanguageModel(0);
    v36 = v10;
    while (1)
    {
      v12 = *(v9 + 8 * v11);
      result = NDArray.shape.getter();
      if (!*(result + 16))
      {
        goto LABEL_37;
      }

      v14 = *(result + 32);

      if (v12 >= v14)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          goto LABEL_38;
        }

        if (v12 > 0x7FFFFFFF)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }

        v15 = *(*(v36 + *(v35 + 40)) + 16);
        if (v15)
        {
          result = [swift_unknownObjectRetain() imageCount];
          v16 = result;
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          if (result)
          {
            v17 = 0;
            do
            {
              result = [v15 tokenRangeAt_];
              if (v12 >= result)
              {
                if (__OFADD__(result, v18))
                {
                  __break(1u);
LABEL_37:
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                if (v12 < result + v18)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_25;
                }
              }

              v17 = (v17 + 1);
            }

            while (v16 != v17);
          }

          swift_unknownObjectRelease();
        }

        if (*(v34 + v33) != 1)
        {
          lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
          swift_allocError();
          *v30 = v12;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          swift_willThrow();

          v31 = v0[1];

          return v31();
        }

        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.device);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 134217984;
          *(v22 + 4) = v12;
          _os_log_impl(&dword_220940000, v20, v21, "Ignoring input token %ld", v22, 0xCu);
          MEMORY[0x223D90A10](v22, -1, -1);
        }

        v12 = 0;
      }

LABEL_25:
      v24 = *(v37 + 16);
      v23 = *(v37 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v11;
      *(v37 + 16) = v24 + 1;
      *(v37 + 8 * v24 + 32) = v12;
      if (v11 == v6)
      {
        v1 = v32;
        goto LABEL_30;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_30:
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySiGSay24TokenGenerationInference0F4MaskVGG_AI0F6RecordVs5NeverOTg506_sSi24fg12Inference0A4i6VAA0A6j17VIgynr_Si_ACtAEs5k161OIegnrzr_TR04_s24ab137Inference23ODIELanguageModelRunnerC3run6tokens013computeLogitsA5Count10tokenMasks10presamplerSayAA15LogitCollection_pG6logits_Si04callK0tq4s44G_xq5AA0A4d4VGSgy27O10Presampler_pSgtYaKFAA0Q26E13VSi_AOtXEfU0_Tf3nnnpf_nTf1cn_n(v8, v1);
  v26 = v25;
  v0[10] = v25;

  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  v28 = v0[8];
  v29 = v0[6];

  return ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)(v26, v29, v28);
}

{

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySiGSay24TokenGenerationInference0F4MaskVGG_AI0F6RecordVs5NeverOTg506_sSi24fg12Inference0A4i6VAA0A6j17VIgynr_Si_ACtAEs5k161OIegnrzr_TR04_s24ab137Inference23ODIELanguageModelRunnerC3run6tokens013computeLogitsA5Count10tokenMasks10presamplerSayAA15LogitCollection_pG6logits_Si04callK0tq4s44G_xq5AA0A4d4VGSgy27O10Presampler_pSgtYaKFAA0Q26E13VSi_AOtXEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v30 = *(a1 + 16);
  if (*(a2 + 16) >= v30)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v4;
  v31 = a2;
  v28 = a1;
  if (v4)
  {
    v6 = (a1 + 32);
    v7 = (a2 + 48);
    v8 = v5;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v12 = *(v7 - 1);
      v11 = *v7;
      v13 = *(v7 - 2);

      if (!v11)
      {
        goto LABEL_33;
      }

      if (v9 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 > 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      v15 = *(v33 + 16);
      v14 = *(v33 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v16 = v15 + 1;
      }

      *(v33 + 16) = v16;
      v17 = v33 + 32 * v15;
      *(v17 + 32) = v9;
      *(v17 + 40) = v13;
      *(v17 + 48) = v12;
      *(v17 + 56) = v11;
      v7 += 3;
    }

    while (--v8);
  }

  v19 = v29;
  v18 = v30;
  if (v30 > v29)
  {
    v20 = (v31 + 24 * v5 + 48);
    while (v5 < v18)
    {
      v21 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_28;
      }

      if (v19 == v5)
      {
        return;
      }

      if (v5 >= v19)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      v22 = *(v28 + 32 + 8 * v5);
      if (v22 < 0xFFFFFFFF80000000)
      {
        goto LABEL_31;
      }

      if (v22 > 0x7FFFFFFF)
      {
        goto LABEL_32;
      }

      v23 = v5;
      v32 = *(v20 - 1);
      v24 = *v20;
      v26 = *(v33 + 16);
      v25 = *(v33 + 24);

      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      }

      *(v33 + 16) = v26 + 1;
      v27 = v33 + 32 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v32;
      *(v27 + 56) = v24;
      v5 = v23 + 1;
      v20 += 3;
      v19 = v29;
      v18 = v30;
      if (v21 == v30)
      {
        return;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:), 0, 0);
}

{
  v5 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {

    v6 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
  }

  else
  {
    v6 = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)()
{
  v1 = v0[16];
  v2 = *(v0[15] + 16);
  v0[19] = v2;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0, MEMORY[0x277D84F90]);
  v0[12] = v3;
  if (v2 < 1)
  {
    if (v3[2] == v0[16])
    {
      v9 = v0[1];

      return v9();
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    v0[20] = v2;
    v0[21] = 0;
    v4 = v0[19] - v2;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
    v7 = v0[15];
    v6 = v0[16];

    return ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v7, v4, v6);
  }
}

{
  return (*(v0 + 8))();
}

void ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:)()
{
  v1 = *(v0 + 168);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = *(v0 + 152);
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v0 + 128);
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v6 >= v10)
  {
    goto LABEL_8;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 136), v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  if (*(v0 + 80))
  {
    outlined init with take of LogitCollection((v0 + 56), v0 + 16);
  }

  else
  {
    *(v0 + 40) = type metadata accessor for BasicLogitPresampler(0);
    *(v0 + 48) = &protocol witness table for BasicLogitPresampler;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v17 = type metadata accessor for LogitIndexSet(0);
    (*(*(v17 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v17);
    if (*(v0 + 80))
    {
      outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    }
  }

  if (!*(v0 + 200))
  {
    goto LABEL_30;
  }

  v18 = *(v0 + 184);
  if (v18 >= *(v0 + 128))
  {
    v19 = *(v0 + 128);
  }

  else
  {
    v19 = *(v0 + 184);
  }

  v9 = __OFSUB__(v18, v19);
  v20 = v18 - v19;
  if (v9)
  {
    goto LABEL_35;
  }

  v21 = *(v0 + 192);
  v22 = v21 + v20;
  if (__OFADD__(v21, v20))
  {
LABEL_36:
    __break(1u);
    return;
  }

  v23 = *(v0 + 208);
  v24 = *(v0 + 144);
  v25 = swift_task_alloc();
  v25[2] = v0 + 16;
  v25[3] = v24;
  v25[4] = v22;
  v25[5] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pGMd, &_sSay24TokenGenerationInference15LogitCollection_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

  if (v23)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v26 = *(v0 + 8);

    v26();
    return;
  }

  v27 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  specialized Array.append<A>(contentsOf:)(v27);
LABEL_8:

  if (v5 > 0)
  {
    *(v0 + 160) = v5;
    *(v0 + 168) = v2;
    v11 = *(v0 + 152) - v5;
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:presampler:);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);

    ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v14, v11, v13);
    return;
  }

  if (*(*(v0 + 96) + 16) != *(v0 + 128))
  {
LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  v15 = *(v0 + 8);

  v15();
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v5 = type metadata accessor for OSSignpostID();
  v4[51] = v5;
  v4[52] = *(v5 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:), 0, 0);
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)()
{
  v96 = v1;
  v4 = v1[48];
  v5 = *(v1[47] + 16);
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v3 = v1;
  v7 = ODIELanguageModelRunner.findOptimalDecodeFunction(remainingTokens:computeLogitsTokenCount:)(v5 - v4, v1[49]);
  v0 = &unk_27CF76000;
  if ((v9 & 1) == 0)
  {
    v17 = v7;
    v18 = v8;
    v19 = v1[50];
    v0 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    v1[55] = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v20 = *(*(v0 + v19) + 16);
    v21 = v20 + v18;
    if (!__OFADD__(v20, v18))
    {
      if (v21 >= v20)
      {
        v92 = v19;
        v2 = v1[50];
        v22 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
        specialized Array.append<A>(contentsOf:)(v20, v21);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v23 = v1[50];
          v3[20] = v18;
          *(v3 + 42) = -1;
          v3[22] = 0;
          v3[23] = 0;
          v3[24] = MEMORY[0x277D84F90];
          swift_beginAccess();
          specialized Array.append<A>(contentsOf:)(v3 + 20);
          swift_endAccess();
          v24 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
          v25 = type metadata accessor for ODIELanguageModel(0);
          if ((v17 & 0x8000000000000000) == 0)
          {
            v26 = *(v23 + v24 + *(v25 + 24));
            if (v17 < *(v26 + 16))
            {
              v88 = v22;
              v90 = v5;
              v91 = v6;
              outlined init with copy of AFMDecodeFunction(v26 + 48 * v17 + 32, (v3 + 8));
              if (one-time initialization token for device == -1)
              {
                goto LABEL_12;
              }

              goto LABEL_51;
            }

LABEL_50:
            __break(1u);
LABEL_51:
            swift_once();
LABEL_12:
            v27 = type metadata accessor for Logger();
            __swift_project_value_buffer(v27, static Log.device);
            outlined init with copy of AFMDecodeFunction((v3 + 8), (v3 + 14));
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v86 = v2;
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              *&v93 = v31;
              *v30 = 136315650;
              v32 = AFMDecodeFunction.description.getter();
              v34 = v33;
              outlined destroy of AFMDecodeFunction((v3 + 14));
              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v93);

              *(v30 + 4) = v35;
              *(v30 + 12) = 2048;
              v36 = *(*(v0 + v92) + 16);

              *(v30 + 14) = v36;

              *(v30 + 22) = 2048;

              v37 = v91;
              *(v30 + 24) = v91;

              _os_log_impl(&dword_220940000, v28, v29, "Running next decode function %s at context: %ld and remaining token count: %ld", v30, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v31);
              MEMORY[0x223D90A10](v31, -1, -1);
              v38 = v30;
              v2 = v86;
              MEMORY[0x223D90A10](v38, -1, -1);
            }

            else
            {
              swift_bridgeObjectRelease_n();

              outlined destroy of AFMDecodeFunction((v3 + 14));
              v37 = v91;
            }

            if (one-time initialization token for signposter != -1)
            {
              swift_once();
            }

            v52 = type metadata accessor for OSSignposter();
            __swift_project_value_buffer(v52, static ODIELanguageModel.signposter);
            static OSSignpostID.exclusive.getter();
            v53 = OSSignposter.logHandle.getter();
            v54 = static os_signpost_type_t.begin.getter();
            if (OS_os_log.signpostsEnabled.getter())
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              v56 = OSSignpostID.rawValue.getter();
              _os_signpost_emit_with_name_impl(&dword_220940000, v53, v54, v56, "ODIESingleDecodeInference", "", v55, 2u);
              MEMORY[0x223D90A10](v55, -1, -1);
            }

            v57 = v3[53];
            v58 = v3[54];
            v60 = v3[51];
            v59 = v3[52];

            (*(v59 + 16))(v57, v58, v60);
            type metadata accessor for OSSignpostIntervalState();
            swift_allocObject();
            v3[56] = OSSignpostIntervalState.init(id:isOpen:)();
            (*(v59 + 8))(v58, v60);
            v61 = *(*(v0 + v92) + 16);
            v63 = v3[12];
            v62 = v3[13];
            __swift_project_boxed_opaque_existential_1(v3 + 9, v63);
            result = (*(*(v62 + 8) + 24))(v63);
            if (result)
            {
              v64 = v61 / result * result;
              v65 = *(*(v0 + v92) + 16);
              v66 = v65 - v64;
              v3[57] = v65 - v64;
              if (!__OFSUB__(v65, v64))
              {
                v68 = v3[12];
                v67 = v3[13];
                __swift_project_boxed_opaque_existential_1(v3 + 9, v68);
                result = (*(*(v67 + 8) + 24))(v68);
                if (!__OFSUB__(result, v66))
                {
                  if (result - v66 >= v37)
                  {
                    v69 = v37;
                  }

                  else
                  {
                    v69 = result - v66;
                  }

                  v3[58] = v69;
                  v70 = *(v0 + v92);
                  v3[59] = v70;
                  v71 = *(v70 + 16);
                  v72 = v71 - v66;
                  if (!__OFSUB__(v71, v66))
                  {
                    if (v71 >= v72)
                    {
                      if ((v72 & 0x8000000000000000) == 0)
                      {
                        v73 = v3[48];
                        v74 = __OFADD__(v73, v69);
                        v75 = v73 + v69;
                        v3[60] = v75;
                        if (!v74)
                        {
                          if (v75 >= v73)
                          {
                            if (v90 >= v73)
                            {
                              if ((v73 & 0x8000000000000000) == 0)
                              {
                                if (v90 >= v75)
                                {
                                  v76 = v3[50];
                                  v77 = v3[47];
                                  *&v93 = v70;
                                  *(&v93 + 1) = v70 + 32;
                                  v78 = (2 * v75) | 1;
                                  v94 = v72;
                                  v95 = (2 * v71) | 1;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  specialized ArraySlice.append<A>(contentsOf:)(v77, v77 + 32, v73, v78);
                                  v79 = v94;
                                  v80 = v95;
                                  v87 = v93;
                                  v3[61] = v93;
                                  v3[62] = *(v2 + v88);
                                  v81 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
                                  swift_beginAccess();
                                  v3[63] = *(v76 + v81);
                                  *(v3 + 25) = v87;
                                  v3[27] = v79;
                                  v3[28] = v80;

                                  v83 = v3[12];
                                  v82 = v3[13];
                                  __swift_project_boxed_opaque_existential_1(v3 + 9, v83);
                                  v89 = *(v82 + 40) + **(v82 + 40);
                                  v84 = swift_task_alloc();
                                  v3[64] = v84;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy24TokenGenerationInference0C6RecordVGMd, &_ss10ArraySliceVy24TokenGenerationInference0C6RecordVGMR);
                                  v85 = lazy protocol witness table accessor for type ArraySlice<TokenRecord> and conformance ArraySlice<A>();
                                  *v84 = v3;
                                  v84[1] = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
                                  v99 = v83;
                                  v100 = v82;
                                  v98 = v85;

                                  __asm { BRAA            X8, X16 }
                                }

                                goto LABEL_62;
                              }

LABEL_61:
                              __break(1u);
LABEL_62:
                              __break(1u);
                              return result;
                            }

LABEL_60:
                            __break(1u);
                            goto LABEL_61;
                          }

LABEL_59:
                          __break(1u);
                          goto LABEL_60;
                        }

LABEL_58:
                        __break(1u);
                        goto LABEL_59;
                      }

LABEL_57:
                      __break(1u);
                      goto LABEL_58;
                    }

LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

LABEL_54:
                __break(1u);
                goto LABEL_55;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (one-time initialization token for device != -1)
  {
    goto LABEL_43;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v3[50];
  if (v13)
  {
    v15 = v3[49];
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    v2 = v0[242];
    swift_beginAccess();
    *(v16 + 4) = *(*(v14 + v2) + 16);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v15;
    _os_log_impl(&dword_220940000, v11, v12, "Failed to find a decode function to run next inference for current context: %ld, remaining tokens: %ld, computeLogitsTokenCount: %ld", v16, 0x20u);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

  else
  {
  }

  v39 = v3[50];
  v40 = v0[242];
  swift_beginAccess();
  v41 = *(*(v39 + v40) + 16);
  v42 = v41 + v6;
  if (__OFADD__(v41, v6))
  {
    goto LABEL_45;
  }

  v43 = v3[50] + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v44 = *(v43 + *(type metadata accessor for ODIELanguageModel(0) + 24));
  v45 = *(v44 + 16);
  if (!v45)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  outlined init with copy of AFMDecodeFunction(v44 + 48 * v45 - 16, (v3 + 2));
  v47 = v3[6];
  v46 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  outlined destroy of AFMDecodeFunction((v3 + 2));
  lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
  swift_allocError();
  *v49 = v42;
  *(v49 + 8) = v48;
  *(v49 + 16) = 3;
  swift_willThrow();

  v50 = v3[1];

  return v50();
}

{
  v1 = v0[56];
  v3 = v0[47];
  v2 = v0[48];
  v4 = (2 * v0[60]) | 1;
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v3, v3 + 32, v2, v4);
  swift_endAccess();
  swift_unknownObjectRelease();

  $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v1, (v0 + 8));

  outlined destroy of AFMDecodeFunction((v0 + 8));

  v5 = v0[1];
  v6 = v0[66];
  v8 = v0[57];
  v7 = v0[58];

  return v5(v7, v8, v6);
}

{
  v1 = *(v0 + 448);

  swift_unknownObjectRelease();
  $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(v1, v0 + 64);

  outlined destroy of AFMDecodeFunction(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
  }

  else
  {
    *(v4 + 528) = a1;
    v5 = ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *ODIELanguageModelRunner.findOptimalDecodeFunction(remainingTokens:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v6 = *(*(v2 + v5) + 16);
  v7 = v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v8 = *(v7 + *(type metadata accessor for ODIELanguageModel(0) + 24));
  result = _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(v8, v6, a1, a2);
  v10 = result;
  v12 = v11;
  v13 = *(*(v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16);
  if (v13)
  {
    v14 = _s24TokenGenerationInference12AFMUtilitiesV25findOptimalDecodeFunction4from14currentContext15remainingTokens26tokensRequiringLogitsCountSi13functionIndex_Si10holesToAddtSgSayxG_S3itAA09AFMDecodeH10DescriptorRzlFZAA0wH0V_Tt3g5(v8, *(*(v2 + v5) + 16) - v13, a1, a2);
    if ((v15 & 1) != 0 || (v12 & 1) == 0 && v10 == v14)
    {
      return v10;
    }

    v16 = v14;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.device);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    result = swift_slowAlloc();
    v27 = result;
    *v20 = 136315138;
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v8 + 16))
    {
      v21 = result;
      outlined init with copy of AFMDecodeFunction(v8 + 48 * v16 + 32, v26);
      v22 = AFMDecodeFunction.description.getter();
      v24 = v23;
      outlined destroy of AFMDecodeFunction(v26);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_220940000, v18, v19, "Compacting cache holes so we can use %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223D90A10](v21, -1, -1);
      MEMORY[0x223D90A10](v20, -1, -1);

LABEL_14:
      ODIELanguageModelRunner.compactCacheHoles()();
      return v16;
    }

    __break(1u);
  }

  return result;
}

void ODIELanguageModelRunner.compactCacheHoles()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd, &_s4ODIE7NDArrayC6BufferVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v40 - v4;
  v6 = type metadata accessor for NDArray.Buffer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
  if (*(*(v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices) + 16))
  {
    v10 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    swift_beginAccess();
    v40[0] = v10;
    v44 = *(*(v0 + v10) + 16);
    v11 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
    v12 = *(v11 + *(type metadata accessor for ODIELanguageModel(0) + 36));
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v46 = (v7 + 56);
    v47 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
    v40[1] = v7 + 16;
    v45 = (v7 + 48);
    v41 = v7;
    v42 = (v7 + 8);
    v43 = (v7 + 32);
    v49 = v12;

    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v19 = v5;
        v20 = v18;
LABEL_10:
        v21 = __clz(__rbit64(v16)) | (v20 << 6);
        v22 = (*(v49 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v49 + 56) + 32 * v21);
        v26 = *v25;
        v54 = v25[1];
        v28 = v25[2];
        v27 = v25[3];
        v52 = v26;
        v53 = v28;
        v51 = v27;
        v29 = v47;
        swift_beginAccess();
        v30 = *(v1 + v29);
        if (*(v30 + 16))
        {

          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
          if (v32)
          {
            v33 = *(v30 + 56);
            v34 = v41;
            v5 = v19;
            (*(v41 + 16))(v19, v33 + *(v41 + 72) * v31, v6);
            (*(v34 + 56))(v19, 0, 1, v6);
          }

          else
          {
            v5 = v19;
            (*v46)(v19, 1, 1, v6);
          }
        }

        else
        {
          v5 = v19;
          (*v46)(v19, 1, 1, v6);
        }

        swift_endAccess();
        if ((*v45)(v5, 1, v6) == 1)
        {
          break;
        }

        v16 &= v16 - 1;

        v35 = v48;
        (*v43)(v48, v5, v6);
        v36 = *(v1 + v50);

        specialized static AFMUtilities.fillCacheHoles(cacheBuffer:bytesPerElement:currentCacheSize:holeIndices:stridePerSequence:sequentialElementsPerToken:numSequencesPerToken:)(v35, v52, v44, v36, v51, v53, v54);

        (*v42)(v35, v6);
        v18 = v20;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_6:
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        if (v20 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v19 = v5;
          goto LABEL_10;
        }
      }

      *(v1 + v50) = MEMORY[0x277D84F90];

      v37 = v40[0];
      v38 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v1 + v40[0]);
      v39 = *(*(v1 + v37) + 16);
      if (v39 >= v38)
      {
        specialized Array.replaceSubrange<A>(_:with:)(v38, v39);
        return;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t $defer #1 () in ODIELanguageModelRunner.singleDecodeInference(tokens:tokenOffset:computeLogitsTokenCount:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static ODIELanguageModel.signposter);
  outlined init with copy of AFMDecodeFunction(a2, v37);
  outlined init with copy of AFMDecodeFunction(a2, v33);
  outlined init with copy of AFMDecodeFunction(a2, v29);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v15 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v17 = "C: %ld, Q: %ld, CL: %{BOOL}d";
      v16 = 3;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    *(v18 + 1) = v16;
    *(v18 + 2) = 2048;
    v20 = v39;
    v19 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v21 = (*(*(v19 + 8) + 16))(v20);
    outlined destroy of AFMDecodeFunction(v37);
    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    v23 = v35;
    v22 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v24 = (*(*(v22 + 8) + 24))(v23);
    outlined destroy of AFMDecodeFunction(v33);
    *(v18 + 14) = v24;
    *(v18 + 22) = 1024;
    v26 = v31;
    v25 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    LODWORD(v25) = (*(*(v25 + 8) + 32))(v26) & 1;
    outlined destroy of AFMDecodeFunction(v29);
    *(v18 + 24) = v25;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v14, v15, v27, "ODIESingleDecodeInference", v17, v18, 0x1Cu);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  else
  {
    outlined destroy of AFMDecodeFunction(v29);
    outlined destroy of AFMDecodeFunction(v33);
    outlined destroy of AFMDecodeFunction(v37);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in ODIELanguageModelRunner.presampleLogits(from:with:computeLogitsTokenCount:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMR);
  v10 = *UnsafeMutableArrayPointer.contents.getter();
  v11 = ~v10 & 0x7C00;
  v12 = v10 & 0x3FF;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (!v13)
  {
    lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
    v18 = swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 4;
    result = swift_willThrow();
    *a4 = v18;
    return result;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = UnsafeMutableArrayPointer.contents.getter();
  if (!result)
  {
    goto LABEL_16;
  }

  v15 = result;
  type metadata accessor for ODIELanguageModel(0);
  result = NDArray.shape.getter();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(result + 32);

  result = NDArray.shape.getter();
  if (!*(result + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(result + 32);

  if (!__OFADD__(a2, a3))
  {
    if (a2 + a3 >= a2)
    {
      result = (*(v14 + 8))(v15, v16, v17, 1, a2);
      *a5 = result;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ODIELanguageModelRunner.reset(toStep:)(Swift::Int toStep)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
  v6 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = -1;
  do
  {
    if (v7 == v3)
    {
      goto LABEL_8;
    }

    v10 = *(v8 + 8 * v3);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = __OFSUB__(v12, 1);
    v13 = v12 - 1;
    if (v11)
    {
      goto LABEL_16;
    }

    v11 = __OFADD__(v4, v13);
    v4 += v13;
    if (v11)
    {
      goto LABEL_17;
    }

    ++v3;
    v9 = v10;
  }

  while (v4 < toStep);
  v7 = v3 - 1;
LABEL_8:
  v14 = toStep + v7;
  if (__OFADD__(toStep, v7))
  {
    goto LABEL_18;
  }

  v15 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v16 = *(*(v2 + v15) + 16);
  v11 = __OFSUB__(v16, v14);
  v17 = v16 - v14;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  swift_beginAccess();
  specialized RangeReplaceableCollection<>.removeLast(_:)(v17, specialized Array.replaceSubrange<A>(_:with:));
  v18 = *(v2 + v5);
  v19 = *(v18 + 16);
  if (v19 < v7)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v19 == v7)
  {
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v18, v18 + 32, 0, (2 * v7) | 1);
    v21 = v20;
  }

  *(v2 + v5) = v21;
}

Swift::Void __swiftcall ODIELanguageModelRunner.purge(steps:)(Swift::OpaquePointer steps)
{
  v2 = v1;
  rawValue = steps._rawValue;
  v54 = steps._rawValue;

  specialized MutableCollection<>.sort(by:)(&v54);
  v4 = v54;
  v5 = *(v54 + 2);
  if (v5)
  {
    v52 = rawValue;
    v6 = 0;
    v7 = (v54 + 32);
    v53 = *(v54 + 4);
    v8 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_holeIndices;
    v9 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if (v6 >= *(v4 + 2))
      {
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
LABEL_68:
        __break(1u);
LABEL_69:
        swift_once();
        goto LABEL_32;
      }

      v12 = *(v7 + 8 * v6);
      v13 = __OFSUB__(v12, v6);
      v14 = v12 - v6;
      if (v13)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_63;
      }

      v15 = 0;
      v16 = 0;
      ++v6;
      v17 = *(v2 + v8);
      v18 = *(v17 + 16);
      v19 = v17 + 32;
      v20 = -1;
      do
      {
        if (v18 == v15)
        {
          goto LABEL_15;
        }

        v21 = *(v19 + 8 * v15);
        v13 = __OFSUB__(v21, v20);
        v22 = v21 - v20;
        if (v13)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v13 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v13)
        {
          goto LABEL_52;
        }

        v13 = __OFADD__(v16, v23);
        v16 += v23;
        if (v13)
        {
          goto LABEL_53;
        }

        ++v15;
        v20 = v21;
      }

      while (v16 < v14 + 1);
      v18 = v15 - 1;
LABEL_15:
      v24 = v14 + v18;
      if (__OFADD__(v14, v18))
      {
        goto LABEL_64;
      }

      swift_beginAccess();
      v25 = *(v2 + v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v27, v25);
      *(v2 + v9) = v25;
      if (v24 < 0)
      {
        goto LABEL_25;
      }

LABEL_18:
      if (v24 >= *(v25 + 2))
      {
        goto LABEL_65;
      }

      v28 = &v25[32 * v24];
      *(v28 + 8) = -1;
      *(v28 + 5) = 0;
      *(v28 + 6) = 0;
      *(v28 + 7) = v10;
      *(v2 + v9) = v25;

      v29 = *(v2 + v8);
      v11 = *(v29 + 16);
      if (v11)
      {
        v30 = 0;
        v31 = v29 + 32;
        while (v24 >= *(v31 + 8 * v30))
        {
          if (v11 == ++v30)
          {
            goto LABEL_4;
          }
        }

        v11 = v30;
      }

LABEL_4:
      rawValue = (v2 + v8);
      specialized Array.replaceSubrange<A>(_:with:)(v11, v11, v24);
    }

    while (v6 != v5);
    v32 = *(v2 + v9);
    v33 = *(v32 + 2);
    v34 = v53;
    if (v33 < v53)
    {
      goto LABEL_66;
    }

    if (v53 != v33)
    {
      v7 = v53;
      v50 = *(v32 + 2);
      while (2)
      {
        if (v7 >= v33)
        {
          goto LABEL_67;
        }

        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v51 = (v7 + 1);
        v38 = v5;
        do
        {
          v39 = v38 - 1;
          if (v38 < 1)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (v39 >= *(v4 + 2))
          {
            goto LABEL_56;
          }

          if (v7 >= *(v32 + 2))
          {
            goto LABEL_57;
          }

          v40 = &v32[32 * v7];
          v42 = *(v40 + 5);
          v43 = *(v40 + 6);
          v41 = v40 + 40;
          v13 = __OFADD__(v42, v43);
          v44 = v42 + v43;
          if (v13)
          {
            goto LABEL_58;
          }

          v45 = *(*(v41 + 2) + 16);
          v13 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v13)
          {
            goto LABEL_59;
          }

          v47 = *&v4[8 * v38 + 24];
          if (v47 < v46)
          {
            v48 = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + v9) = v32;
            if ((v48 & 1) == 0)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v49, v32);
              *(v2 + v9) = v32;
            }

            if (v7 >= *(v32 + 2))
            {
              goto LABEL_60;
            }

            TokenMask.remove(at:)(v47);
            *(v2 + v9) = v32;
          }

          v38 = v39;
        }

        while (v39);
        v33 = v50;
        ++v7;
        v34 = v53;
        if (v51 != v50)
        {
          continue;
        }

        break;
      }
    }

    v7 = v52;
    if (one-time initialization token for device != -1)
    {
      goto LABEL_69;
    }

LABEL_32:
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.device);

    rawValue = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(rawValue, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134218496;
      *(v37 + 4) = *(v7 + 16);

      *(v37 + 12) = 2048;
      *(v37 + 14) = *(*(v2 + v9) + 16);
      *(v37 + 22) = 2048;
      *(v37 + 24) = *(*(v2 + v8) + 16);

      _os_log_impl(&dword_220940000, rawValue, v36, "purgeSteps called with %ld step(s), end of function call context token count is %ld and hole count is %ld", v37, 0x20u);
      MEMORY[0x223D90A10](v37, -1, -1);
    }

    else
    {
LABEL_54:
    }
  }

  else
  {
LABEL_26:
  }
}

uint64_t ODIELanguageModelRunner.makeKVCacheEntry(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v6 = type metadata accessor for ODIELanguageModel(0);
  result = specialized Collection.first.getter(*(v5 + *(v6 + 36)), v19);
  if (!v20)
  {
    goto LABEL_11;
  }

  v8 = v22;
  v9 = v23;
  v10 = v21;
  result = outlined destroy of [Int](v19, &_sSS3key_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorV5valuetSgMd, &_sSS3key_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorV5valuetSgMR);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = a2 - a1;
  if (!__OFSUB__(a2, a1))
  {
    result = v13 * v12;
    if ((v13 * v12) >> 64 == (v13 * v12) >> 63)
    {
      v17 = specialized Data._Representation.init(capacity:)(result);
      v18 = v14;
      specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(a1, a2, v2, &v17);
      v15 = v17;
      v16 = v18;
      outlined copy of Data._Representation(v17, v18);
      outlined consume of Data._Representation(v15, v16);
      return v15;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v96 = type metadata accessor for NDArray.Buffer.Allocation();
  v7 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v8);
  v10 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd, &_s4ODIE7NDArrayC6BufferVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v105 = &v86[-v13];
  v14 = a3 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v15 = *(v14 + *(type metadata accessor for ODIELanguageModel(0) + 36));
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v100 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
  v104 = (v17 + 63) >> 6;
  v95 = (v7 + 88);
  v94 = *MEMORY[0x277D36AF8];
  v89 = *MEMORY[0x277D36B00];
  v87 = *MEMORY[0x277D36AF0];
  v93 = (v7 + 96);
  v106 = a2;
  v92 = a2 - a1;
  v20 = __OFSUB__(a2, a1);
  v111 = v20;
  v103 = v15;

  v21 = 0;
  v101 = v10;
  v99 = v16;
  v91 = a3;
  v90 = a1;
LABEL_10:
  if (v19)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_68:
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
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v26 >= v104)
    {
    }

    v19 = *(v16 + 8 * v26);
    ++v21;
    if (v19)
    {
      v21 = v26;
LABEL_15:
      v107 = v19;
      v27 = __clz(__rbit64(v19)) | (v21 << 6);
      v28 = (*(v103 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v103 + 56) + 32 * v27);
      v32 = v31[1];
      v113 = *v31;
      v114 = v32;
      v34 = v31[2];
      v33 = v31[3];
      v102 = v34;
      v112 = v33;
      v35 = v100;
      swift_beginAccess();
      v36 = *(a3 + v35);
      if (*(v36 + 16))
      {

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
        if (v38)
        {
          v39 = v37;
          v40 = *(v36 + 56);
          v24 = type metadata accessor for NDArray.Buffer();
          v41 = *(v24 - 8);
          v42 = v41;
          v43 = v40 + *(v41 + 72) * v39;
          v22 = v105;
          (*(v41 + 16))(v105, v43, v24);
          (*(v42 + 56))(v22, 0, 1, v24);
        }

        else
        {
          v24 = type metadata accessor for NDArray.Buffer();
          v22 = v105;
          (*(*(v24 - 8) + 56))(v105, 1, 1, v24);
        }

        v10 = v101;
      }

      else
      {
        v24 = type metadata accessor for NDArray.Buffer();
        v22 = v105;
        (*(*(v24 - 8) + 56))(v105, 1, 1, v24);
      }

      swift_endAccess();
      type metadata accessor for NDArray.Buffer();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v22, 1, v24) == 1)
      {
        goto LABEL_89;
      }

      v23 = v107;
      if (v114 >= 1 && a1 != v106)
      {
        NDArray.Buffer.allocation.getter();
        v45 = v96;
        v46 = (*v95)(v10, v96);
        v98 = v24;
        v97 = v25;
        if (v46 == v94)
        {
          (*v93)(v10, v45);
          v88 = *v10;
          v47 = NDArray.Bytes.buffer.getter();
          if (v47)
          {
            v49 = v47;
            v50 = 0;
            AllocSize = (v48 - v47);
            v51 = a1 * v102;
            v52 = (a1 * v102) >> 64 != (a1 * v102) >> 63;
            v53 = v92 * v113;
            v54 = (v92 * v113) >> 64 != (v92 * v113) >> 63;
            v108 = v106 * v113;
            v55 = (v106 * v113) >> 64 != (v106 * v113) >> 63;
            do
            {
              v56 = v50 * v112;
              if ((v50 * v112) >> 64 != (v50 * v112) >> 63)
              {
                goto LABEL_68;
              }

              if (v52)
              {
                goto LABEL_69;
              }

              v57 = v56 + v51;
              if (__OFADD__(v56, v51))
              {
                goto LABEL_70;
              }

              v58 = v57 * v113;
              if ((v57 * v113) >> 64 != (v57 * v113) >> 63)
              {
                goto LABEL_71;
              }

              if (v111)
              {
                goto LABEL_72;
              }

              if (v54)
              {
                goto LABEL_73;
              }

              if (v55)
              {
                goto LABEL_74;
              }

              if (AllocSize < v108)
              {
                goto LABEL_92;
              }

              v116 = MEMORY[0x277D83EF0];
              v117 = MEMORY[0x277CC9EB0];
              v115[0] = v49 + v58;
              v115[1] = v49 + v58 + v53;
              __swift_project_boxed_opaque_existential_1(v115, MEMORY[0x277D83EF0]);
              ++v50;
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v115);
            }

            while (v114 != v50);

            goto LABEL_8;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v115[0] = 0;
          v115[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          strcpy(v115, "source offset ");
          HIBYTE(v115[1]) = -18;
          v118 = v108;
LABEL_94:
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v84);

          MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
          v118 = AllocSize;
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x223D8E780](v85);

          goto LABEL_95;
        }

        if (v46 != v89)
        {
          if (v46 == v87)
          {
            (*v93)(v10, v45);
            v70 = *v10;
            v108 = [swift_unknownObjectRetain() contents];
            v71 = v70;
            v88 = v70;
            AllocSize = [(__IOSurface *)v71 length];
            v72 = 0;
            v73 = a1 * v102;
            v74 = (a1 * v102) >> 64 != (a1 * v102) >> 63;
            v75 = v92 * v113;
            v76 = (v92 * v113) >> 64 != (v92 * v113) >> 63;
            v77 = v106 * v113;
            v78 = (v106 * v113) >> 64 != (v106 * v113) >> 63;
            while (1)
            {
              v79 = v72 * v112;
              if ((v72 * v112) >> 64 != (v72 * v112) >> 63)
              {
                goto LABEL_75;
              }

              if (v74)
              {
                goto LABEL_77;
              }

              v80 = v79 + v73;
              if (__OFADD__(v79, v73))
              {
                goto LABEL_79;
              }

              v81 = v80 * v113;
              if ((v80 * v113) >> 64 != (v80 * v113) >> 63)
              {
                goto LABEL_81;
              }

              if (v111)
              {
                goto LABEL_83;
              }

              if (v76)
              {
                goto LABEL_85;
              }

              if (v78)
              {
                goto LABEL_87;
              }

              if (AllocSize < v77)
              {
                break;
              }

              v116 = MEMORY[0x277D83EF0];
              v117 = MEMORY[0x277CC9EB0];
              v115[0] = v108 + v81;
              v115[1] = v108 + v81 + v75;
              __swift_project_boxed_opaque_existential_1(v115, MEMORY[0x277D83EF0]);
              ++v72;
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v115);
              if (v114 == v72)
              {
                swift_unknownObjectRelease();
                goto LABEL_8;
              }
            }

            v115[0] = 0;
            v115[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(33);

            strcpy(v115, "source offset ");
            HIBYTE(v115[1]) = -18;
            v118 = v77;
            goto LABEL_94;
          }

          while (1)
          {
LABEL_95:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        (*v93)(v10, v45);
        v59 = *v10;
        IOSurfaceLock(*v10, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(v59);
        AllocSize = IOSurfaceGetAllocSize(v59);
        v88 = v59;
        if (!BaseAddress)
        {
          goto LABEL_91;
        }

        v61 = 0;
        v62 = a1 * v102;
        v63 = (a1 * v102) >> 64 != (a1 * v102) >> 63;
        v64 = v92 * v113;
        v65 = (v92 * v113) >> 64 != (v92 * v113) >> 63;
        v108 = v106 * v113;
        v66 = (v106 * v113) >> 64 != (v106 * v113) >> 63;
        do
        {
          v67 = v61 * v112;
          if ((v61 * v112) >> 64 != (v61 * v112) >> 63)
          {
            goto LABEL_76;
          }

          if (v63)
          {
            goto LABEL_78;
          }

          v68 = v67 + v62;
          if (__OFADD__(v67, v62))
          {
            goto LABEL_80;
          }

          v69 = v68 * v113;
          if ((v68 * v113) >> 64 != (v68 * v113) >> 63)
          {
            goto LABEL_82;
          }

          if (v111)
          {
            goto LABEL_84;
          }

          if (v65)
          {
            goto LABEL_86;
          }

          if (v66)
          {
            goto LABEL_88;
          }

          if (AllocSize < v108)
          {
            goto LABEL_92;
          }

          v116 = MEMORY[0x277D83EF0];
          v117 = MEMORY[0x277CC9EB0];
          v115[0] = &BaseAddress[v69];
          v115[1] = &BaseAddress[v69 + v64];
          __swift_project_boxed_opaque_existential_1(v115, MEMORY[0x277D83EF0]);
          ++v61;
          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v115);
        }

        while (v114 != v61);
        v82 = v88;
        IOSurfaceUnlock(v88, 0, 0);

LABEL_8:
        a3 = v91;
        a1 = v90;
        v10 = v101;
        v22 = v105;
        v23 = v107;
        v24 = v98;
        v25 = v97;
      }

      v19 = (v23 - 1) & v23;
      (*(v25 + 8))(v22, v24);
      v16 = v99;
      goto LABEL_10;
    }
  }
}

uint64_t ODIELanguageModelRunner.setKVCacheEntry(_:tokens:tokenMasks:start:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  v45 = v12;
  if (*(*(v5 + v12) + 16) != a5)
  {
    if (one-time initialization token for device == -1)
    {
LABEL_9:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.device);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v20))
      {
LABEL_12:

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        swift_allocError();
        *v23 = xmmword_220AEF080;
        *(v23 + 16) = 4;
        return swift_willThrow();
      }

      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a5;
      _os_log_impl(&dword_220940000, v19, v20, "Cannot insert KV cache entry at %ld", v21, 0xCu);
      v22 = v21;
LABEL_11:
      MEMORY[0x223D90A10](v22, -1, -1);
      goto LABEL_12;
    }

LABEL_43:
    swift_once();
    goto LABEL_9;
  }

  v46 = 0;
  v44 = *(a3 + 16);
  v13 = a5 + v44;
  if (__OFADD__(a5, v44))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v13 < a5)
  {
    __break(1u);
    goto LABEL_45;
  }

  outlined copy of Data._Representation(a1, a2);
  specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(a5, v13, v5, &v46, a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (v6)
  {
    return result;
  }

  v43 = v5;
  v15 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v16 = v5;
    if (!v15)
    {
      v17 = BYTE6(a2);
      goto LABEL_33;
    }

    LODWORD(v17) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v17 = v17;
LABEL_33:
      v28 = v45;
      if (v46 != v17)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v16 = v5;
  if (v15 == 2)
  {
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    v28 = v45;
    if (!v26)
    {
      if (v46 != v27)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_47;
  }

  v28 = v45;
  if (v46)
  {
LABEL_34:
    if (one-time initialization token for device == -1)
    {
LABEL_35:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.device);
      v19 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v39))
      {
        goto LABEL_12;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_220940000, v19, v39, "Did not use all bytes in cache entry", v40, 2u);
      v22 = v40;
      goto LABEL_11;
    }

LABEL_45:
    swift_once();
    goto LABEL_35;
  }

LABEL_17:
  if (v44)
  {
    v29 = 0;
    v41 = a4;
    v42 = a3 + 32;
    for (i = (a4 + 48); ; i += 3)
    {
      a5 = *(v42 + 8 * v29);
      if (a4)
      {
        if (v29 >= *(a4 + 16))
        {
          goto LABEL_41;
        }

        v32 = *(i - 2);
        v31 = *(i - 1);
        v33 = *i;
      }

      else
      {
        v32 = 0;
        v31 = *(*(v16 + v28) + 16);
        v33 = MEMORY[0x277D84F90];
      }

      if (a5 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (a5 > 0x7FFFFFFF)
      {
        goto LABEL_40;
      }

      v34 = *(v16 + v28);
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v43;
      *(v43 + v28) = v34;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
        v16 = v43;
        v34 = result;
        *(v43 + v28) = result;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
        v16 = v43;
        v34 = result;
      }

      *(v34 + 16) = v36 + 1;
      v37 = v34 + 32 * v36;
      *(v37 + 32) = a5;
      ++v29;
      *(v37 + 40) = v32;
      *(v37 + 48) = v31;
      *(v37 + 56) = v33;
      v28 = v45;
      *(v16 + v45) = v34;
      a4 = v41;
      if (v44 == v29)
      {
        return result;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t ODIELanguageModelRunner.embeddings(forToken:)(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = type metadata accessor for Data.Deallocator();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIELanguageModelRunner.embeddings(forToken:), 0, 0);
}

uint64_t ODIELanguageModelRunner.embeddings(forToken:)()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v2 = *(v1 + *(type metadata accessor for ODIELanguageModel(0) + 40));
  v3 = *(v2 + 16);
  if (v3 && (v4 = *(v0 + 72), swift_unknownObjectRetain(), findEmbeddingLocation(forToken:in:)(v4, v3), LOBYTE(v4) = v5, swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    v8 = *(v2 + 56);
    *(v0 + 48) = v8;
    v9 = swift_slowAlloc();
    *(v0 + 56) = v9;
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = ODIELanguageModelRunner.embeddings(forToken:);
    v11 = *(v0 + 72);

    return ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(v11, v9, v9 + v8);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0, 0xC000000000000000);
  }
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](ODIELanguageModelRunner.embeddings(forToken:), 0, 0);
  }
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  *v4 = closure #1 in ODIELanguageModelRunner.embeddings(forToken:);
  v4[1] = 0;
  (*(v3 + 104))(v4, *MEMORY[0x277CC92B8], v5);
  v6 = specialized Data.init(bytesNoCopy:count:deallocator:)(v2, v1, v4);
  v8 = v7;

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t ODIELanguageModelRunner.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v2 = type metadata accessor for ProgramDescriptor();
  (*(*(v2 - 8) + 8))(v1, v2);
  type metadata accessor for ODIELanguageModel(0);

  return v0;
}

uint64_t ODIELanguageModelRunner.__deallocating_deinit()
{
  ODIELanguageModelRunner.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODIELanguageModelRunner(uint64_t a1)
{
  result = type metadata singleton initialization cache for ODIELanguageModelRunner;
  if (!type metadata singleton initialization cache for ODIELanguageModelRunner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ODIELanguageModelRunner(uint64_t a1)
{
  result = type metadata accessor for ODIELanguageModel(319);
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

uint64_t getEnumTagSinglePayload for TokenRecord(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance ODIELanguageModelRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance ODIELanguageModelRunner;

  return ODIELanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(a1, a2, a3, a4);
}

uint64_t protocol witness for LanguageModelRunner.currentContextSize.getter in conformance ODIELanguageModelRunner()
{
  v1 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_contextTokens;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t protocol witness for LanguageModelRunner.maxContextLength.getter in conformance ODIELanguageModelRunner()
{
  v1 = v0 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  result = type metadata accessor for ODIELanguageModel(0);
  v3 = *(v1 + *(result + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of AFMDecodeFunction(v3 + 48 * v4 - 16, &v8);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = (*(*(v6 + 8) + 16))(v5);
    outlined destroy of AFMDecodeFunction(&v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for LanguageModelRunner.vocabularyCount.getter in conformance ODIELanguageModelRunner()
{
  type metadata accessor for ODIELanguageModel(0);
  result = NDArray.shape.getter();
  if (*(result + 16))
  {
    v1 = *(result + 32);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.getter in conformance ODIELanguageModelRunner()
{
  type metadata accessor for ODIELanguageModel(0);

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.setter in conformance ODIELanguageModelRunner(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v4 = *(v3 + *(type metadata accessor for ODIELanguageModel(0) + 40));
  if (v4[3])
  {
    v4[6] = -1;
  }

  v4[2] = a1;

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner(void *a1))(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v4 = *(v3 + *(type metadata accessor for ODIELanguageModel(0) + 40));
  a1[1] = v4;
  *a1 = *(v4 + 16);
  swift_unknownObjectRetain();
  return protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner;
}

uint64_t protocol witness for LanguageModelRunner.encodedImages.modify in conformance ODIELanguageModelRunner(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1[3])
  {
    v1[6] = -1;
  }

  v1[2] = v2;
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for LanguageModelRunner.embeddings(forToken:) in conformance ODIELanguageModelRunner(int a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for InferenceProvider.requestOneShot(clientData:configuration:) in conformance OnDeviceInferenceProvider;

  return ODIELanguageModelRunner.embeddings(forToken:)(a1);
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMR) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd, &_sSS_4ODIE7NDArrayC6BufferVtMR) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = type metadata accessor for NDArray.Buffer();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (*(v2 + v4 + 32) != -1)
  {
    ++v5;
    v4 += 32;
    if (v3 == v5)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v5;
  }

  v6 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v6 == v3)
    {
      return v5;
    }

    v16 = result;
    while (v6 < v3)
    {
      v7 = *(v2 + v4 + 64);
      if (v7 != -1)
      {
        if (v6 != v5)
        {
          if (v5 >= v3)
          {
            goto LABEL_24;
          }

          v8 = v2 + 32 + 32 * v5;
          v19 = *v8;
          v17 = *(v8 + 16);
          v18 = *(v8 + 8);
          v9 = *(v8 + 24);
          v10 = *(v2 + v4 + 72);
          v11 = *(v2 + v4 + 80);
          v12 = *(v2 + v4 + 88);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v13, v2);
            v2 = result;
          }

          if (v5 >= *(v2 + 16))
          {
            goto LABEL_25;
          }

          v14 = v2 + 32 * v5;
          *(v14 + 32) = v7;
          *(v14 + 40) = v10;
          *(v14 + 48) = v11;
          *(v14 + 56) = v12;

          if (v6 >= *(v2 + 16))
          {
            goto LABEL_26;
          }

          v15 = v2 + v4;
          *(v15 + 64) = v19;
          *(v15 + 72) = v18;
          *(v15 + 80) = v17;
          *(v15 + 88) = v9;

          result = v16;
          *v16 = v2;
        }

        ++v5;
      }

      ++v6;
      v3 = *(v2 + 16);
      v4 += 32;
      if (v6 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223D8EDA0](a1, a2, v7);
      type metadata accessor for TGIE5AdapterConfigurationObjC();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for TGIE5AdapterConfigurationObjC();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

_OWORD *specialized Dictionary.subscript.getter(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 32 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *specialized Dictionary.subscript.getter(_DWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 4 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMR);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v46 - v5;
  v49 = type metadata accessor for NDArray.Buffer();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v15);
  v18 = &v46 - v17;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v46 = v6;
  v52 = v22;
  if (v23)
  {
    v48 = a1;
    v24 = v21;
LABEL_11:
    v47 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    v29 = (*(v19 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = v49;
    (*(v7 + 16))(v10, *(v19 + 56) + *(v7 + 72) * v28, v49);
    v33 = v51;
    v34 = *(v51 + 48);
    *v18 = v30;
    *(v18 + 1) = v31;
    v35 = v10;
    v36 = v33;
    (*(v7 + 32))(&v18[v34], v35, v32);
    v37 = v50;
    (*(v50 + 56))(v18, 0, 1, v36);

    v38 = v47;
    a1 = v48;
    v27 = v24;
    v39 = v37;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v40 = v53;
    v1[2] = v52;
    v1[3] = v27;
    v1[4] = v38;
    v41 = v1[5];
    outlined init with take of Asset?(v18, v40, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetSgMR);
    v42 = 1;
    if ((*(v39 + 48))(v40, 1, v36) != 1)
    {
      v43 = v40;
      v44 = v46;
      outlined init with take of Asset?(v43, v46, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMR);
      v41(v44);
      outlined destroy of [Int](v44, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMd, &_sSS3key_4ODIE7NDArrayC6BufferV5valuetMR);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd, &_sSS_4ODIE7NDArrayC6BufferVtMR);
    return (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v39 = v50;
        v36 = v51;
        (*(v50 + 56))(&v46 - v17, 1, 1, v51);
        v38 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.reserveCapacity(_:)(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 32 * v6 + 32 * v7 != v9 + 32 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC24TokenGenerationInference0H6RecordV_Tt1g5(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 32 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized ArraySlice.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + 32 * v8 + 32 * v9 != v13 + 32 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:
  v19 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 < v19)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v20 = 2 * v15;
    if (v20 > v19)
    {
      v19 = v20;
    }
  }

  specialized ArraySlice.reserveCapacity(_:)(v19);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_39;
  }

  v24 = v4[1] + 32 * v22 + 32 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v27 = v23;
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);
  if (v24 != v25 + 32 * v26 + 32)
  {

    goto LABEL_21;
  }

  v28 = *(v25 + 24);

  v29 = (v28 >> 1) - v26;
  v18 = __OFADD__(v23, v29);
  v27 = v23 + v29;
  if (v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v30 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v30 < v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    if (__OFADD__(v23, v6))
    {
LABEL_46:
      __break(1u);
      return;
    }

    specialized _SliceBuffer.count.setter(v23 + v6);
  }

LABEL_31:
  if (v6 == v30)
  {
    v33[0] = result;
    v33[1] = a2;
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = v5;
    specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(v33);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t *specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = v14;
  v32 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 32 * a2;
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 32 * a3);
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 32 * v20);
    v22 = &v21[32 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 32 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[32 * v32];
    if (__dst != v23 || __dst >= &v23[32 * v31])
    {
      memmove(__dst, v23, 32 * v31);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = a4(v34 + 32 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 32 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

uint64_t specialized _SliceBuffer.count.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void specialized _ArrayBufferProtocol._arrayAppendSequence<A>(_:)(void *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v5 = a1[4];
  v41 = a1[3] >> 1;
  if (v5 != v41)
  {
    v39 = a1[2];
    if (v5 < v39 || v5 >= v41)
    {
      goto LABEL_52;
    }

    v33 = a1[1];
    v7 = (v33 + 32 * v5);
    v8 = *(v7 + 2);
    v9 = *(v7 + 3);
    v10 = *v7;
    v11 = *(v7 + 1);

    if (v9)
    {
      v40 = v5 + 1;
      v32 = v1;
      while (1)
      {
        if (__OFADD__(v4, 1))
        {
          goto LABEL_44;
        }

        v42 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(v4, v4 + 1, *v1, v1[1], v3, v2);
        v12 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
        specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v42, v4, 0, v12);

        v3 = v1[2];
        v2 = v1[3];
        if (__OFSUB__(v2 >> 1, v3))
        {
          break;
        }

        v34 = v2 >> 1;
        v37 = (v2 >> 1) - v3;
        v38 = v1[1];
        v36 = v1[3];
        if (v2)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            swift_unknownObjectRelease();
            v13 = MEMORY[0x277D84F90];
          }

          v14 = *(v13 + 16);
          v15 = v37;
          if (v38 + 32 * v3 + 32 * v37 == v13 + 32 * v14 + 32)
          {
            v17 = *(v13 + 24);

            v18 = (v17 >> 1) - v14;
            v16 = v37 + v18;
            if (__OFADD__(v37, v18))
            {
              goto LABEL_50;
            }
          }

          else
          {

            v16 = v37;
          }

          v2 = v36;
          v35 = v3;
        }

        else
        {
          v15 = (v2 >> 1) - v3;
          v16 = v15;
          v35 = v1[2];
        }

        if (v4 < v16)
        {
          v19 = 0;
          v20 = v33 + 32 * v40;
          v21 = v4 + 1;
          v22 = v38 + 32 * v4 + 32 * v3;
          v23 = v40;
          while (1)
          {
            v24 = v22 + v19;
            *v24 = v10;
            v4 = v21;
            *(v24 + 8) = v11;
            *(v24 + 16) = v8;
            *(v24 + 24) = v9;
            if (v41 == v23)
            {
              break;
            }

            if (v40 < v39 || v23 >= v41)
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            ++v23;
            v8 = *(v20 + v19 + 16);
            v9 = *(v20 + v19 + 24);
            v10 = *(v20 + v19);
            v11 = *(v20 + v19 + 8);

            if (v9)
            {
              v19 += 32;
              v21 = v4 + 1;
              if (v4 < v16)
              {
                continue;
              }
            }

            v40 = v23;
LABEL_30:
            v1 = v32;
            v3 = v35;
            v2 = v36;
            v15 = v37;
            goto LABEL_31;
          }

          v9 = 0;
          v8 = 0;
          v11 = 0;
          v10 = 0;
          v40 = v41;
          goto LABEL_30;
        }

LABEL_31:
        v25 = __OFSUB__(v4, v15);
        v26 = v4 - v15;
        if (v25)
        {
          goto LABEL_46;
        }

        if (v26)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {
            swift_unknownObjectRelease();
            v27 = MEMORY[0x277D84F90];
          }

          v28 = *(v27 + 16);
          v25 = __OFADD__(v28, v26);
          v29 = v28 + v26;
          if (v25)
          {
            goto LABEL_47;
          }

          *(v27 + 16) = v29;

          v30 = v34 + v26;
          if (__OFADD__(v34, v26))
          {
            goto LABEL_48;
          }

          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          v2 = v2 & 1 | (2 * v30);
          v1[3] = v2;
          v3 = v35;
        }

        if (!v9)
        {
          goto LABEL_40;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

LABEL_40:
  outlined destroy of [Int](a1, &_ss16IteratorSequenceVys08IndexingA0Vys10ArraySliceVy24TokenGenerationInference0F6RecordVGGGMd, &_ss16IteratorSequenceVys08IndexingA0Vys10ArraySliceVy24TokenGenerationInference0F6RecordVGGGMR);
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 32 * a5 + 32 * v8;
  if (v13 == v11 + 32 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 32 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 32 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC24TokenGenerationInference0H6RecordV_Tt1g5(v6, v25);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 32 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 32 * v7 != v9 + 32 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v15 = v8 - result - 1;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 5);
  v5 = v7 + (v15 >> 5);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v58 = a5;
  v9 = type metadata accessor for NDArray.Buffer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtSgMd, &_sSS_4ODIE7NDArrayC6BufferVtSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = (&v47 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v51 = a1;
  v52 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v53 = v19;
  v54 = 0;
  v55 = v22 & v20;
  v56 = a2;
  v57 = a3;
  v49 = v10;
  v50 = (v10 + 32);

  v47 = a3;

  for (i = v17; ; v17 = i)
  {
    specialized LazyMapSequence.Iterator.next()(v17);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_4ODIE7NDArrayC6BufferVtMd, &_sSS_4ODIE7NDArrayC6BufferVtMR);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      goto LABEL_17;
    }

    v24 = *(v23 + 48);
    v25 = *v17;
    v26 = v17[1];
    v27 = *v50;
    v28 = v17 + v24;
    v29 = v13;
    v30 = v9;
    (*v50)(v13, v28, v9);
    v31 = *v58;
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v37)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, a4 & 1);
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_20;
      }

      v33 = v38;
      if (v37)
      {
LABEL_16:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v51);
      }
    }

    v40 = *v58;
    *(*v58 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v41 = (v40[6] + 16 * v33);
    *v41 = v25;
    v41[1] = v26;
    v42 = v40[7] + *(v49 + 72) * v33;
    v13 = v29;
    v9 = v30;
    v27(v42, v29, v30);
    v43 = v40[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_19;
    }

    v40[2] = v45;
    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized ODIELanguageModelRunner.enumerateCacheSequences(range:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  v203 = a4;
  v206 = *MEMORY[0x277D85DE8];
  v171 = type metadata accessor for NDArray.Buffer.Allocation();
  v11 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v12);
  v177 = (&v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd, &_s4ODIE7NDArrayC6BufferVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v185 = &v162 - v16;
  v174 = a3;
  v17 = a3 + OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_model;
  v18 = *(v17 + *(type metadata accessor for ODIELanguageModel(0) + 36));
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v173 = OBJC_IVAR____TtC24TokenGenerationInference23ODIELanguageModelRunner_buffers;
  v176 = (v20 + 63) >> 6;
  v168 = (v11 + 88);
  v167 = *MEMORY[0x277D36AF8];
  v163 = *MEMORY[0x277D36B00];
  v162 = *MEMORY[0x277D36AF0];
  v166 = (v11 + 96);
  v181 = a2;
  v180 = a1;
  v165 = a2 - a1;
  v23 = __OFSUB__(a2, a1);
  v198 = v23;
  v197 = a6 >> 62;
  v202 = a5;
  v24 = __OFSUB__(HIDWORD(a5), a5);
  v184 = v24;
  v183 = HIDWORD(a5) - a5;
  v195 = BYTE6(a6);
  v196 = a6;

  v26 = 0;
  v170 = v19;
  v172 = v25;
  while (1)
  {
    v186 = v22;
    if (v22)
    {
      goto LABEL_17;
    }

    do
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        swift_once();
LABEL_168:
        v141 = type metadata accessor for Logger();
        __swift_project_value_buffer(v141, static Log.device);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_220940000, v142, v143, "Ran out of bytes in cache entry", v144, 2u);
          MEMORY[0x223D90A10](v144, -1, -1);
        }

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        v145 = swift_allocError();
        *v146 = xmmword_220AEF080;
        *(v146 + 16) = 4;
        v169 = v145;
        swift_willThrow();

LABEL_181:

        return (*(v178 + 8))(v185, v179);
      }

      if (v27 >= v176)
      {
      }

      ++v26;
    }

    while (!*(v19 + 8 * v27));
    v186 = *(v19 + 8 * v27);
    v26 = v27;
LABEL_17:
    v175 = v26;
    v28 = __clz(__rbit64(v186)) | (v26 << 6);
    v29 = (*(v25 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = (*(v25 + 56) + 32 * v28);
    v33 = v32[1];
    v200 = *v32;
    v201 = v33;
    v34 = v32[2];
    v199 = v32[3];
    v35 = v174;
    v36 = v173;
    swift_beginAccess();
    v37 = *(v35 + v36);
    if (*(v37 + 16))
    {

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
      if (v39)
      {
        v40 = v38;
        v41 = *(v37 + 56);
        v42 = type metadata accessor for NDArray.Buffer();
        v43 = *(v42 - 8);
        v44 = v43;
        v45 = v41 + *(v43 + 72) * v40;
        v46 = v185;
        (*(v43 + 16))(v185, v45, v42);
        (*(v44 + 56))(v46, 0, 1, v42);
      }

      else
      {
        v42 = type metadata accessor for NDArray.Buffer();
        v46 = v185;
        (*(*(v42 - 8) + 56))(v185, 1, 1, v42);
      }
    }

    else
    {
      v42 = type metadata accessor for NDArray.Buffer();
      v46 = v185;
      (*(*(v42 - 8) + 56))(v185, 1, 1, v42);
    }

    swift_endAccess();
    type metadata accessor for NDArray.Buffer();
    v178 = *(v42 - 8);
    v47 = *(v178 + 48);
    v179 = v42;
    if (v47(v46, 1, v42) == 1)
    {
      __break(1u);
    }

    if (v201 >= 1 && v180 != v181)
    {
      break;
    }

LABEL_11:
    v22 = (v186 - 1) & v186;
    (*(v178 + 8))(v185, v179);
    v25 = v172;
    v19 = v170;
    v26 = v175;
  }

  NDArray.Buffer.allocation.getter();
  v49 = v177;
  v50 = v171;
  v51 = (*v168)(v177, v171);
  if (v51 != v167)
  {
    if (v51 == v163)
    {
      v82 = v177;
      (*v166)(v177, v171);
      v83 = *v82;
      IOSurfaceLock(v83, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v83);
      v187 = v83;
      result = IOSurfaceGetAllocSize(v83);
      v189 = result;
      if (!BaseAddress)
      {
        goto LABEL_234;
      }

      v85 = 0;
      v193 = v180 * v34;
      v194 = (v180 * v34) >> 64 != (v180 * v34) >> 63;
      v188 = v165 * v200;
      v192 = (v165 * v200) >> 64 != (v165 * v200) >> 63;
      v190 = v181 * v200;
      v191 = (v181 * v200) >> 64 != (v181 * v200) >> 63;
      while (1)
      {
        v87 = v85 * v199;
        if ((v85 * v199) >> 64 != (v85 * v199) >> 63)
        {
          goto LABEL_193;
        }

        if (v194)
        {
          goto LABEL_195;
        }

        v56 = __OFADD__(v87, v193);
        v88 = v87 + v193;
        if (v56)
        {
          goto LABEL_197;
        }

        v89 = v88 * v200;
        if ((v88 * v200) >> 64 != (v88 * v200) >> 63)
        {
          goto LABEL_198;
        }

        if (v198)
        {
          goto LABEL_200;
        }

        if (v192)
        {
          goto LABEL_203;
        }

        if (v191)
        {
          goto LABEL_204;
        }

        if (v189 < v190)
        {
          goto LABEL_229;
        }

        v90 = *v203 + v188;
        if (__OFADD__(*v203, v188))
        {
          goto LABEL_207;
        }

        if (v197 <= 1)
        {
          break;
        }

        if (v197 == 2)
        {
          v93 = *(v202 + 16);
          v92 = *(v202 + 24);
          v56 = __OFSUB__(v92, v93);
          v91 = v92 - v93;
          if (v56)
          {
            goto LABEL_216;
          }

LABEL_93:
          if (v91 < v90)
          {
            goto LABEL_171;
          }

          goto LABEL_96;
        }

        if (v90 >= 1)
        {
LABEL_171:
          if (one-time initialization token for device != -1)
          {
            swift_once();
          }

          v147 = type metadata accessor for Logger();
          __swift_project_value_buffer(v147, static Log.device);
          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            *v150 = 0;
            _os_log_impl(&dword_220940000, v148, v149, "Ran out of bytes in cache entry", v150, 2u);
            MEMORY[0x223D90A10](v150, -1, -1);
          }

          lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
          v151 = swift_allocError();
          *v152 = xmmword_220AEF080;
          *(v152 + 16) = 4;
          v169 = v151;
          swift_willThrow();
          v153 = v187;
          IOSurfaceUnlock(v187, 0, 0);

          goto LABEL_181;
        }

LABEL_96:
        if (v90 < *v203)
        {
          goto LABEL_208;
        }

        v94 = Data._Representation.subscript.getter();
        v96 = v94;
        v97 = v95;
        v98 = v95 >> 62;
        if ((v95 >> 62) > 1)
        {
          if (v98 != 2)
          {
            goto LABEL_77;
          }

          v107 = *(v94 + 16);
          v164 = *(v94 + 24);
          v108 = __DataStorage._bytes.getter();
          if (v108)
          {
            v109 = __DataStorage._offset.getter();
            if (__OFSUB__(v107, v109))
            {
              goto LABEL_225;
            }

            v108 += v107 - v109;
          }

          v56 = __OFSUB__(v164, v107);
          v110 = &v164[-v107];
          if (v56)
          {
            goto LABEL_223;
          }

          v111 = MEMORY[0x223D8BBA0]();
          if (!v108)
          {
            goto LABEL_77;
          }

          if (v111 >= v110)
          {
            v105 = v110;
          }

          else
          {
            v105 = v111;
          }

          v106 = BaseAddress + v89;
          v104 = v108;
LABEL_117:
          memmove(v106, v104, v105);
          goto LABEL_77;
        }

        if (v98)
        {
          v164 = &v162;
          v99 = (v94 >> 32) - v94;
          if (v94 >> 32 < v94)
          {
            goto LABEL_221;
          }

          v100 = __DataStorage._bytes.getter();
          if (!v100)
          {
            MEMORY[0x223D8BBA0]();
            goto LABEL_77;
          }

          v101 = __DataStorage._offset.getter();
          v102 = v96 - v101;
          if (__OFSUB__(v96, v101))
          {
            goto LABEL_227;
          }

          v103 = MEMORY[0x223D8BBA0]();
          v104 = (v102 + v100);
          if (!(v102 + v100))
          {
            goto LABEL_77;
          }

          if (v103 >= v99)
          {
            v105 = (v96 >> 32) - v96;
          }

          else
          {
            v105 = v103;
          }

          v106 = BaseAddress + v89;
          goto LABEL_117;
        }

        *&__src = v94;
        WORD4(__src) = v95;
        BYTE10(__src) = BYTE2(v95);
        BYTE11(__src) = BYTE3(v95);
        BYTE12(__src) = BYTE4(v95);
        BYTE13(__src) = BYTE5(v95);
        memcpy(BaseAddress + v89, &__src, BYTE6(v95));
LABEL_77:
        ++v85;
        outlined consume of Data._Representation(v96, v97);
        *v203 = v90;
        v86 = v187;
        if (v201 == v85)
        {
          IOSurfaceUnlock(v187, 0, 0);

          goto LABEL_11;
        }
      }

      v91 = v195;
      if (v197)
      {
        v91 = v183;
        if (v184)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_93;
    }

    if (v51 != v162)
    {
      goto LABEL_232;
    }

    v112 = v177;
    (*v166)();
    v113 = *v112;
    v187 = [swift_unknownObjectRetain() contents];
    v164 = v113;
    v114 = v113;
    v189 = [v164 length];
    v115 = 0;
    v193 = v180 * v34;
    v194 = (v180 * v34) >> 64 != (v180 * v34) >> 63;
    v188 = v165 * v200;
    v192 = (v165 * v200) >> 64 != (v165 * v200) >> 63;
    v190 = v181 * v200;
    v191 = (v181 * v200) >> 64 != (v181 * v200) >> 63;
    while (1)
    {
      v116 = v115 * v199;
      if ((v115 * v199) >> 64 != (v115 * v199) >> 63)
      {
        goto LABEL_192;
      }

      if (v194)
      {
        goto LABEL_194;
      }

      v56 = __OFADD__(v116, v193);
      v117 = v116 + v193;
      if (v56)
      {
        goto LABEL_196;
      }

      v118 = v117 * v200;
      if ((v117 * v200) >> 64 != (v117 * v200) >> 63)
      {
        goto LABEL_199;
      }

      if (v198)
      {
        goto LABEL_201;
      }

      if (v192)
      {
        goto LABEL_202;
      }

      if (v191)
      {
        goto LABEL_205;
      }

      if (v189 < v190)
      {
LABEL_229:
        *&__src = 0;
        *(&__src + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        strcpy(&__src, "source offset ");
        HIBYTE(__src) = -18;
        v204 = v190;
        v160 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v160);

        MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
        v204 = v189;
        v161 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v161);

        outlined consume of Data._Representation(v202, v196);
        result = _assertionFailure(_:_:file:line:flags:)();
        goto LABEL_233;
      }

      v119 = *v203 + v188;
      if (__OFADD__(*v203, v188))
      {
        goto LABEL_206;
      }

      if (v197 <= 1)
      {
        break;
      }

      if (v197 == 2)
      {
        v122 = *(v202 + 16);
        v121 = *(v202 + 24);
        v56 = __OFSUB__(v121, v122);
        v120 = v121 - v122;
        if (v56)
        {
          goto LABEL_217;
        }

LABEL_138:
        if (v120 < v119)
        {
          goto LABEL_176;
        }

        goto LABEL_141;
      }

      if (v119 >= 1)
      {
LABEL_176:
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        __swift_project_value_buffer(v154, static Log.device);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&dword_220940000, v155, v156, "Ran out of bytes in cache entry", v157, 2u);
          MEMORY[0x223D90A10](v157, -1, -1);
        }

        lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
        v158 = swift_allocError();
        *v159 = xmmword_220AEF080;
        *(v159 + 16) = 4;
        v169 = v158;
        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_181;
      }

LABEL_141:
      if (v119 < *v203)
      {
        goto LABEL_209;
      }

      v123 = Data._Representation.subscript.getter();
      v125 = v123;
      v126 = v124;
      v127 = v124 >> 62;
      if ((v124 >> 62) > 1)
      {
        if (v127 != 2)
        {
          goto LABEL_122;
        }

        v136 = *(v123 + 16);
        BaseAddress = *(v123 + 24);
        v137 = __DataStorage._bytes.getter();
        if (v137)
        {
          v138 = __DataStorage._offset.getter();
          if (__OFSUB__(v136, v138))
          {
            goto LABEL_224;
          }

          v137 += v136 - v138;
        }

        v56 = __OFSUB__(BaseAddress, v136);
        v139 = BaseAddress - v136;
        if (v56)
        {
          goto LABEL_222;
        }

        v140 = MEMORY[0x223D8BBA0]();
        if (!v137)
        {
          goto LABEL_122;
        }

        if (v140 >= v139)
        {
          v134 = v139;
        }

        else
        {
          v134 = v140;
        }

        v135 = v187 + v118;
        v133 = v137;
LABEL_162:
        memmove(v135, v133, v134);
        goto LABEL_122;
      }

      if (v127)
      {
        BaseAddress = &v162;
        v128 = (v123 >> 32) - v123;
        if (v123 >> 32 < v123)
        {
          goto LABEL_220;
        }

        v129 = __DataStorage._bytes.getter();
        if (!v129)
        {
          MEMORY[0x223D8BBA0]();
          goto LABEL_122;
        }

        v130 = __DataStorage._offset.getter();
        v131 = v125 - v130;
        if (__OFSUB__(v125, v130))
        {
          goto LABEL_226;
        }

        v132 = MEMORY[0x223D8BBA0]();
        v133 = (v131 + v129);
        if (!(v131 + v129))
        {
          goto LABEL_122;
        }

        if (v132 >= v128)
        {
          v134 = (v125 >> 32) - v125;
        }

        else
        {
          v134 = v132;
        }

        v135 = v187 + v118;
        goto LABEL_162;
      }

      *&__src = v123;
      WORD4(__src) = v124;
      BYTE10(__src) = BYTE2(v124);
      BYTE11(__src) = BYTE3(v124);
      BYTE12(__src) = BYTE4(v124);
      BYTE13(__src) = BYTE5(v124);
      memcpy(v187 + v118, &__src, BYTE6(v124));
LABEL_122:
      ++v115;
      outlined consume of Data._Representation(v125, v126);
      *v203 = v119;
      if (v201 == v115)
      {
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    v120 = v195;
    if (v197)
    {
      v120 = v183;
      if (v184)
      {
        goto LABEL_219;
      }
    }

    goto LABEL_138;
  }

  (*v166)(v49, v50);
  v164 = *v49;
  v52 = NDArray.Bytes.buffer.getter();
  BaseAddress = v52;
  if (v52)
  {
    v54 = 0;
    v189 = (v53 - v52);
    v193 = v180 * v34;
    v194 = (v180 * v34) >> 64 != (v180 * v34) >> 63;
    v188 = v165 * v200;
    v192 = (v165 * v200) >> 64 != (v165 * v200) >> 63;
    v190 = v181 * v200;
    v191 = (v181 * v200) >> 64 != (v181 * v200) >> 63;
    while (1)
    {
      v55 = v54 * v199;
      if ((v54 * v199) >> 64 != (v54 * v199) >> 63)
      {
        goto LABEL_183;
      }

      if (v194)
      {
        goto LABEL_184;
      }

      v56 = __OFADD__(v55, v193);
      v57 = v55 + v193;
      if (v56)
      {
        goto LABEL_185;
      }

      v58 = v57 * v200;
      if ((v57 * v200) >> 64 != (v57 * v200) >> 63)
      {
        goto LABEL_186;
      }

      if (v198)
      {
        goto LABEL_187;
      }

      if (v192)
      {
        goto LABEL_188;
      }

      if (v191)
      {
        goto LABEL_189;
      }

      if (v189 < v190)
      {
        goto LABEL_229;
      }

      v59 = *v203 + v188;
      if (__OFADD__(*v203, v188))
      {
        goto LABEL_190;
      }

      if (v197 <= 1)
      {
        break;
      }

      if (v197 == 2)
      {
        v62 = *(v202 + 16);
        v61 = *(v202 + 24);
        v56 = __OFSUB__(v61, v62);
        v60 = v61 - v62;
        if (v56)
        {
          goto LABEL_210;
        }

        goto LABEL_47;
      }

      if (v59 >= 1)
      {
LABEL_167:
        if (one-time initialization token for device != -1)
        {
          goto LABEL_228;
        }

        goto LABEL_168;
      }

LABEL_50:
      if (v59 < *v203)
      {
        goto LABEL_191;
      }

      v63 = Data._Representation.subscript.getter();
      v65 = v63;
      v66 = v64;
      v67 = v64 >> 62;
      if ((v64 >> 62) > 1)
      {
        if (v67 != 2)
        {
          goto LABEL_31;
        }

        v187 = &v162;
        v76 = *(v63 + 16);
        v77 = *(v63 + 24);
        v78 = __DataStorage._bytes.getter();
        if (v78)
        {
          v79 = __DataStorage._offset.getter();
          if (__OFSUB__(v76, v79))
          {
            goto LABEL_214;
          }

          v78 += v76 - v79;
        }

        v56 = __OFSUB__(v77, v76);
        v80 = v77 - v76;
        if (v56)
        {
          goto LABEL_213;
        }

        v81 = MEMORY[0x223D8BBA0]();
        if (!v78)
        {
          goto LABEL_31;
        }

        if (v81 >= v80)
        {
          v74 = v80;
        }

        else
        {
          v74 = v81;
        }

        v75 = BaseAddress + v58;
        v73 = v78;
LABEL_71:
        memmove(v75, v73, v74);
        goto LABEL_31;
      }

      if (v67)
      {
        v187 = &v162;
        v68 = (v63 >> 32) - v63;
        if (v63 >> 32 < v63)
        {
          goto LABEL_212;
        }

        v69 = __DataStorage._bytes.getter();
        if (!v69)
        {
          MEMORY[0x223D8BBA0]();
          goto LABEL_31;
        }

        v70 = __DataStorage._offset.getter();
        v71 = v65 - v70;
        if (__OFSUB__(v65, v70))
        {
          goto LABEL_215;
        }

        v72 = MEMORY[0x223D8BBA0]();
        v73 = (v71 + v69);
        if (!(v71 + v69))
        {
          goto LABEL_31;
        }

        if (v72 >= v68)
        {
          v74 = (v65 >> 32) - v65;
        }

        else
        {
          v74 = v72;
        }

        v75 = BaseAddress + v58;
        goto LABEL_71;
      }

      *&__src = v63;
      WORD4(__src) = v64;
      BYTE10(__src) = BYTE2(v64);
      BYTE11(__src) = BYTE3(v64);
      BYTE12(__src) = BYTE4(v64);
      BYTE13(__src) = BYTE5(v64);
      memcpy(BaseAddress + v58, &__src, BYTE6(v64));
LABEL_31:
      ++v54;
      outlined consume of Data._Representation(v65, v66);
      *v203 = v59;
      if (v201 == v54)
      {

        goto LABEL_11;
      }
    }

    v60 = v195;
    if (v197)
    {
      v60 = v183;
      if (v184)
      {
        goto LABEL_211;
      }
    }

LABEL_47:
    if (v60 < v59)
    {
      goto LABEL_167;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_232:
  outlined consume of Data._Representation(v202, v196);
  result = _assertionFailure(_:_:file:line:flags:)();
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
  return result;
}