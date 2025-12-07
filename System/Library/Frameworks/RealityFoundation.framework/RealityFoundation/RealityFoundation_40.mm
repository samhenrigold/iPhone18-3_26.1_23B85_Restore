uint64_t specialized static VFXResource.loadAsync(contentsOf:withName:)(void *a1)
{
  v27 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();
  v10 = *(v9 + 32);

  v11 = v10;

  *v7 = v11;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v11)
  {
    type metadata accessor for LoadRequestDependencies();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v14 + 24) = v16;
    swift_beginAccess();
    *(v14 + 16) = v15;
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v2 + 16))(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v1);
    v18 = *(v2 + 80);
    v27 = v12;
    v19 = (v18 + 24) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v8;
    (*(v2 + 32))(v20 + v19, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    *(v20 + ((v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMR);
    v21 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMR);
    v22 = swift_allocObject();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v22 + 16) = v23;
    *(v22 + 24) = 0;
    *(v22 + 32) = -1;
    *(v21 + 16) = v22;
    v24 = swift_allocObject();
    v24[2] = partial apply for closure #1 in static VFXResource.loadAsync(contentsOf:withName:);
    v24[3] = v20;
    v24[4] = v22;
    v24[5] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMR);
    swift_allocObject();

    v25 = Future.init(_:)();

    *(v21 + 24) = v25;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static VFXResource.loadAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a2;
  v56 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = [objc_opt_self() mainBundle];
  }

  v17 = a3;
  v57 = v16;
  v18 = [v16 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = URL.pathExtension.getter();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v15, v7);
  if (v19 == 0x617262696C786676 && v21 == 0xEA00000000007972)
  {

    v25 = v55;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v25 = v55;
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v26 = MEMORY[0x1C68F3280](v56, v25);
  v27 = MEMORY[0x1C68F3280](7890550, 0xE300000000000000);
  v28 = [v57 URLForResource:v26 withExtension:v27];

  if (v28)
  {
    v29 = v52;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 32))(v12, v29, v7);
    v30 = specialized static VFXResource.loadAsync(contentsOf:withName:)(v12);

    v22(v12, v7);
    return v30;
  }

LABEL_13:
  v32 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v33 = *(v32 + 24);
  swift_unownedRetainStrong();
  v34 = *(v33 + 32);

  v35 = v34;

  *v6 = v35;
  v37 = v53;
  v36 = v54;
  (*(v53 + 104))(v6, *MEMORY[0x1E69E8020], v54);
  v38 = v35;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = (*(v37 + 8))(v6, v36);
  if (v33)
  {
    type metadata accessor for LoadRequestDependencies();
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E7CC0];
    *(v39 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v39 + 24) = v41;
    swift_beginAccess();
    *(v39 + 16) = v40;
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v44 = v56;
    v45 = v57;
    v43[2] = v32;
    v43[3] = v45;
    v43[4] = v44;
    v43[5] = v25;
    v43[6] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMd, &_s10RealityKit11LoadRequestCy0A10Foundation11VFXResourceCGMR);
    v46 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA11VFXResourceCs5Error_pGSgGMR);
    v47 = swift_allocObject();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v47 + 16) = v48;
    *(v47 + 24) = 0;
    *(v47 + 32) = -1;
    *(v46 + 16) = v47;
    v49 = swift_allocObject();
    v49[2] = partial apply for closure #1 in static VFXResource.loadAsync(named:in:);
    v49[3] = v43;
    v49[4] = v47;
    v49[5] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation11VFXResourceCs5Error_pGMR);
    swift_allocObject();

    v50 = v45;

    v51 = Future.init(_:)();

    result = v46;
    *(v46 + 24) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with copy of VFXParameter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXParameter_pSgMd, &_s17RealityFoundation12VFXParameter_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VFXParameterSemantic and conformance VFXParameterSemantic()
{
  result = lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic;
  if (!lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXParameterSemantic, &type metadata for VFXParameterSemantic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic;
  if (!lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXParameterSemantic, &type metadata for VFXParameterSemantic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterSemantic and conformance VFXParameterSemantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VFXParameterType and conformance VFXParameterType()
{
  result = lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType;
  if (!lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXParameterType, &type metadata for VFXParameterType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType;
  if (!lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXParameterType, &type metadata for VFXParameterType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXParameterType and conformance VFXParameterType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXParameterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXParameterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined assign with take of VFXParameter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXParameter_pSgMd, &_s17RealityFoundation12VFXParameter_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(a1, a2, v8, v2 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type VFXResource.LoadError and conformance VFXResource.LoadError()
{
  result = lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError;
  if (!lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXResource.LoadError, &unk_1F410F5D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VFXResource.LoadError and conformance VFXResource.LoadError);
  }

  return result;
}

void partial apply for specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  specialized finishVFXResourceLoad #1 (_:) in closure #1 in static VFXResource.loadAsync(contentsOf:withName:)(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t getEnumTagSinglePayload for VFXResource.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for VFXResource.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFXResource.VFXParameterImpl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXResource.VFXParameterImpl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGImageSourceRef.monoImage(index:)(Swift::Int index)
{
  v5 = CGImageSourceRef.monoImageInternal(index:)(index);
  if (!v3)
  {
    v1 = v5;
    if (specialized CGImageSourceRef.maybeRAW(image:)(v5))
    {
      v7 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v1);

      return v7;
    }

    else if (CGImageSourceRef.isISO22028Part5HDRImage(cgImage:eyeIndex:)(v1, index))
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      v9 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImageSource:v2 index:index options:0];
      v10 = CIImage.tonemapToHeadroom(_:)(1.0);

      if (v10)
      {
        [v10 extent];
        v11 = [v8 createCGImage:v10 fromRect:?];
        if (v11)
        {
          v12 = v11;

          return v12;
        }

        if (one-time initialization token for ImageLogger != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, ImageLogger);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1C1358000, v19, v20, "unable to render back to CGImage for ISO 22028-5 image", v21, 2u);
          MEMORY[0x1C6902A30](v21, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
        swift_allocError();
        *v22 = 0;
        swift_willThrow();

        v1 = v8;
        v8 = v10;
      }

      else
      {
        if (one-time initialization token for ImageLogger != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        __swift_project_value_buffer(v13, ImageLogger);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1C1358000, v14, v15, "unable to make CIImage for ISO 22028-5 image", v16, 2u);
          MEMORY[0x1C6902A30](v16, -1, -1);
        }

        lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
        swift_allocError();
        *v17 = 0;
        swift_willThrow();
      }
    }
  }

  return v1;
}

void one-time initialization function for itur2100PQSpace(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

CIImage_optional __swiftcall CIImage.tonemapToHeadroom(_:)(Swift::Float a1)
{
  v2 = v1;
  [v1 contentHeadroom];
  if (vabds_f32(v4, a1) <= 0.00000011921)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, ImageLogger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
      *(v34 + 12) = 2048;
      *(v34 + 14) = a1;
      _os_log_impl(&dword_1C1358000, v32, v33, "%s CIImage already has headroom %f, no need to convert.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1C6902A30](v35, -1, -1);
      MEMORY[0x1C6902A30](v34, -1, -1);
    }

    v36 = v2;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, ImageLogger);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v42 = v10;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
      *(v9 + 12) = 2048;
      [v6 contentHeadroom];
      *(v9 + 14) = v11;
      *(v9 + 22) = 2048;
      *(v9 + 24) = a1;
      _os_log_impl(&dword_1C1358000, v7, v8, "%s tonemapping %f to %f.", v9, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C6902A30](v10, -1, -1);
      MEMORY[0x1C6902A30](v9, -1, -1);
    }

    v12 = [objc_opt_self() toneMapHeadroomFilter];
    [v12 setInputImage_];
    *&v13 = a1;
    [v12 setTargetHeadroom_];
    [v6 contentHeadroom];
    [v12 setSourceHeadroom_];
    v14 = [v12 outputImage];
    if (v14)
    {
      v2 = v14;
      [v12 setInputImage_];
      v15 = v6;
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42 = v21;
        *v19 = 136315650;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
        *(v19 + 12) = 2112;
        v22 = [v15 colorSpace];
        if (!v22 || (v23 = v22, v24 = CGColorSpaceCopyName(v22), v23, (v25 = v24) == 0))
        {
          v25 = MEMORY[0x1C68F3280](1701736270, 0xE400000000000000);
        }

        *(v19 + 14) = v25;
        *v20 = v25;
        *(v19 + 22) = 2112;
        v26 = [v16 colorSpace];
        if (!v26 || (v27 = v26, v28 = CGColorSpaceCopyName(v26), v27, !v28))
        {
          v28 = MEMORY[0x1C68F3280](1701736270, 0xE400000000000000);
        }

        *(v19 + 24) = v28;
        v20[1] = v28;
        _os_log_impl(&dword_1C1358000, v17, v18, "%s tonemap source colorspace: %@ target colorspace: %@", v19, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1C6902A30](v21, -1, -1);
        MEMORY[0x1C6902A30](v19, -1, -1);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001C18E9CB0, &v42);
        *(v39 + 12) = 2048;
        *(v39 + 14) = a1;
        _os_log_impl(&dword_1C1358000, v37, v38, "%s %f returned nil image", v39, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1C6902A30](v40, -1, -1);
        MEMORY[0x1C6902A30](v39, -1, -1);
      }

      v2 = 0;
    }
  }

  v41 = v2;
  result.value._priv = v29;
  result.value.super.isa = v41;
  result.is_nil = v30;
  return result;
}

Swift::Bool __swiftcall CGImageSourceRef.isISO22028Part5HDRImage(cgImage:eyeIndex:)(CGImageRef cgImage, Swift::Int eyeIndex)
{
  v4 = CGImageGetColorSpace(cgImage);
  if (v4)
  {
    v5 = v4;
    if (!MEMORY[0x1C68F4F90]())
    {
      goto LABEL_9;
    }

    v6 = one-time initialization token for itur2100PQSpace;
    v5 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = CFEqual(v5, static ColorSpaceHelper.itur2100PQSpace);

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D278]);
    if (v8)
    {
      v9 = v8;

      v5 = v9;
LABEL_9:

      LOBYTE(v4) = 0;
      return v4;
    }

    v10 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D268]);

    v5 = v10;
    if (v10)
    {
      goto LABEL_9;
    }

    LOBYTE(v4) = 1;
  }

  return v4;
}

CGImageRef __swiftcall CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(Swift::Int eyeIndex, CGImageRef cgImage)
{
  v38 = cgImage;
  v4 = CGImageGetColorSpace(cgImage);
  if (v4)
  {
    v5 = v4;
    if (!MEMORY[0x1C68F4F90]())
    {
      goto LABEL_9;
    }

    v6 = one-time initialization token for itur2100PQSpace;
    v5 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = CFEqual(v5, static ColorSpaceHelper.itur2100PQSpace);

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D278]);
    if (v8)
    {
      v9 = v8;

      v5 = v9;
LABEL_9:

      goto LABEL_10;
    }

    v10 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v2, eyeIndex, *MEMORY[0x1E696D268]);

    v5 = v10;
    if (v10)
    {
      goto LABEL_9;
    }

    v12 = v2;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, ImageLogger);
    v38 = v38;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218496;
      *(v16 + 4) = eyeIndex;
      *(v16 + 12) = 2048;
      *(v16 + 14) = CGImageGetWidth(v38);
      *(v16 + 22) = 2048;
      *(v16 + 24) = CGImageGetHeight(v38);

      _os_log_impl(&dword_1C1358000, v14, v15, "CGImage tonemappedImage(eyeIndex:%ld): w=%ld h=%ld", v16, 0x20u);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }

    else
    {

      v14 = v38;
    }

    v17 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMd, &_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v19 = *MEMORY[0x1E695F838];
    *(inited + 32) = *MEMORY[0x1E695F838];
    v20 = one-time initialization token for displayP3Space;
    v21 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = static ColorSpaceHelper.displayP3Space;
    type metadata accessor for CGColorSpaceRef(0);
    *(inited + 64) = v23;
    *(inited + 40) = v22;
    v24 = v22;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo15CIContextOptiona_yptMd, &_sSo15CIContextOptiona_yptMR);
    v25 = objc_allocWithZone(MEMORY[0x1E695F620]);
    type metadata accessor for CIContextOption(0);
    lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption, protocol conformance descriptor for CIContextOption);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v25 initWithOptions_];

    v28 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImageSource:v17 index:eyeIndex options:0];
    v29 = CIImage.tonemapToHeadroom(_:)(1.0);

    if (v29)
    {
      [v29 extent];
      v30 = [v27 createCGImage:v29 fromRect:?];
      if (v30)
      {
        v31 = v30;

        return v31;
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = eyeIndex;
        _os_log_impl(&dword_1C1358000, v35, v36, "CGImage tonemappedImage(eyeIndex:%ld) to render back to CGImage failed, returning HDR image", v37, 0xCu);
        MEMORY[0x1C6902A30](v37, -1, -1);
      }
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = eyeIndex;
        _os_log_impl(&dword_1C1358000, v32, v33, "CGImage tonemappedImage(eyeIndex:%ld) failed to make CIImage, returning HDR image", v34, 0xCu);
        MEMORY[0x1C6902A30](v34, -1, -1);
      }
    }
  }

LABEL_10:

  return v38;
}

void CGImageSourceRef.spatialImages(metadata:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 336);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, v2, 0);
  if (ImageAtIndex)
  {
    v5 = ImageAtIndex;
    v6 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v2, ImageAtIndex);

    v7 = CGImageSourceCreateImageAtIndex(v1, v3, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v3, v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C18BB5B0;
      *(v10 + 32) = v6;
      *(v10 + 40) = v9;
    }

    else
    {
      lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 170) = *a2;
  return MEMORY[0x1EEE6DFA0](CGImageSourceRef.spatialTextures(metadata:options:), 0, 0);
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  v3 = *(v1 + 336);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(*(v0 + 72), v2, 0);
  *(v0 + 80) = ImageAtIndex;
  if (ImageAtIndex)
  {
    v5 = ImageAtIndex;
    v6 = *(v0 + 170);
    v7 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v2, ImageAtIndex);
    *(v0 + 88) = v7;
    type metadata accessor for CGImageRef(0);
    lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, type metadata accessor for CGImageRef, protocol conformance descriptor for CGImageRef);
    if (static _CFObject.== infix(_:_:)())
    {
      v8 = *(v0 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
      v9 = swift_allocObject();
      *(v0 + 96) = v9;
      *(v9 + 16) = xmmword_1C1897FC0;
      *(v9 + 32) = v8;
      *(v9 + 40) = v2;
      *(v9 + 48) = v8;
      *(v9 + 56) = v3;
      type metadata accessor for TextureResource();
      *(v0 + 165) = 83886594;
      *(v0 + 169) = v6;
      v10 = v8;
      v11 = swift_task_alloc();
      *(v0 + 104) = v11;
      *v11 = v0;
      v11[1] = CGImageSourceRef.spatialTextures(metadata:options:);

      return static TextureResource.texture2DArray(slices:named:options:)(v9, 1, 0, 0, v0 + 165);
    }

    v14 = CGImageSourceCreateImageAtIndex(*(v0 + 72), v3, 0);
    *(v0 + 120) = v14;
    if (v14)
    {
      v15 = CGImageSourceRef.tonemappedImage(eyeIndex:cgImage:)(v3, v14);
      *(v0 + 128) = v15;
      type metadata accessor for TextureResource();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v16 = swift_allocObject();
      *(v0 + 136) = v16;
      *(v16 + 16) = xmmword_1C18BB5B0;
      *(v16 + 32) = v7;
      *(v16 + 40) = v15;
      *(v0 + 160) = 83886594;
      *(v0 + 164) = v6;
      v17 = v7;
      v18 = v15;
      v19 = swift_task_alloc();
      *(v0 + 144) = v19;
      *v19 = v0;
      v19[1] = CGImageSourceRef.spatialTextures(metadata:options:);

      return static TextureResource.texture2DArray(slices:named:options:)(v16, 0, 0, v0 + 160);
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4(v2);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[14] = v1;

  if (v1)
  {
    v4 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v4 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[19] = v1;

  if (v1)
  {
    v4 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v4 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t CGImageSourceRef.spatialTextures(metadata:options:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  CGImageSourceRef.spatialImages(metadata:)(a1);
  v8 = 83886594;
  v9 = v2;
  v5 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v3, 0, 0, 0, &v8, 3, v4) + 2);
  type metadata accessor for TextureResource();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  return v6;
}

CGImageRef CGImageSourceRef.monoImageInternal(index:)(size_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 32) = MEMORY[0x1C68F3280](0xD000000000000029, 0x80000001C18E9CD0);
  v5 = *MEMORY[0x1E695E4D0];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
  *(inited + 40) = v5;
  v6 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, a1, v7.super.isa);
  if (!ImageAtIndex)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, ImageLogger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C1358000, v10, v11, "unable to load monoscopic image", v12, 2u);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return ImageAtIndex;
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 154) = *a2;
  return MEMORY[0x1EEE6DFA0](CGImageSourceRef.monoTexture(index:options:), 0, 0);
}

uint64_t CGImageSourceRef.monoTexture(index:options:)()
{
  v1 = *(v0 + 154);
  v2 = CGImageSourceRef.monoImageInternal(index:)(*(v0 + 64));
  *(v0 + 80) = v2;
  v3 = v2;
  if (specialized CGImageSourceRef.maybeRAW(image:)(v2))
  {
    v4 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v3);
    *(v0 + 88) = v4;
    v11 = v4;
    type metadata accessor for TextureResource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v0 + 96) = v12;
    *(v12 + 16) = xmmword_1C1898160;
    *(v12 + 32) = v11;
    *(v0 + 149) = 83886594;
    *(v0 + 153) = v1;
    v13 = v11;
    v14 = swift_task_alloc();
    *(v0 + 104) = v14;
    *v14 = v0;
    v14[1] = CGImageSourceRef.monoTexture(index:options:);

    return static TextureResource.texture2DArray(slices:named:options:)(v12, 0, 0, v0 + 149);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    type metadata accessor for TextureResource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
    v7 = swift_allocObject();
    *(v0 + 120) = v7;
    *(v7 + 16) = xmmword_1C1887600;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v0 + 144) = 83886594;
    *(v0 + 148) = v1;
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = CGImageSourceRef.monoTexture(index:options:);

    return static TextureResource.texture2DArray(slices:named:options:)(v7, 1, 0, 0, v0 + 144);
  }
}

{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[14] = v1;

  if (v1)
  {
    v4 = CGImageSourceRef.spatialTextures(metadata:options:);
  }

  else
  {
    v4 = CGImageSourceRef.monoTexture(index:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = CGImageSourceRef.monoTexture(index:options:);
  }

  else
  {
    v4 = CGImageSourceRef.monoTexture(index:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t CGImageSourceRef.monoTexture(index:options:)(size_t a1, char *a2)
{
  v4 = *a2;
  v5 = CGImageSourceRef.monoImageInternal(index:)(a1);
  if (specialized CGImageSourceRef.maybeRAW(image:)(v5))
  {
    v9 = specialized CGImageSourceRef.drawBGRA8Image(image:index:)(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1898160;
    *(v10 + 32) = v9;
    v18 = 83886594;
    v19 = v4;
    v11 = v9;
    v15 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v10, 0, 0, 0, &v18, 3, v12) + 2);
    type metadata accessor for TextureResource();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    return v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo16CGImageSourceRefa_SitGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1887600;
    *(v6 + 32) = v2;
    *(v6 + 40) = a1;
    v18 = 83886594;
    v19 = v4;
    v7 = v2;
    v13 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v6, 1, 0, 0, &v18, 3, v8) + 2);
    type metadata accessor for TextureResource();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    return v14;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageSourceSpatialImagesError(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = *a1;
  v4 = "onoscopic image.";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "onoscopic image.";
  }

  else
  {
    v6 = "Unable to load left eye image.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.RealityComposerPro";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "Unable to load left eye image.";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.RealityComposerPro";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CGImageSourceSpatialImagesError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance CGImageSourceSpatialImagesError(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGImageSourceSpatialImagesError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CGImageSourceSpatialImagesError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CGImageSourceSpatialImagesError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CGImageSourceSpatialImagesError(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = "onoscopic image.";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "Unable to load left eye image.";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000020;
    v4 = "com.apple.RealityComposerPro";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError()
{
  result = lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError;
  if (!lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CGImageSourceSpatialImagesError, &type metadata for CGImageSourceSpatialImagesError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError;
  if (!lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CGImageSourceSpatialImagesError, &type metadata for CGImageSourceSpatialImagesError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError);
  }

  return result;
}

uint64_t specialized CGImageSourceRef.maybeRAW(image:)(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = CGImageGetBitsPerPixel(a1) >= 33 && (CGImageGetBitmapInfo(a1) & 0xF0000) == 0 && (CGImageGetBitmapInfo(a1) & 0xF00) == 0;
  v13 = CGImageGetUTType(a1);
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UTType.init(_:)();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      outlined destroy of BodyTrackingComponent?(v4, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      static UTType.rawImage.getter();
      v15 = UTType.conforms(to:)();

      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v11, v5);
      v12 &= v15;
    }
  }

  return v12 & 1;
}

uint64_t specialized CGImageSourceRef.drawBGRA8Image(image:index:)(CGImage *a1)
{
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, ImageLogger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_1C1358000, v4, v5, "monoImage() using workaround for RAW image", v1, 2u);
    MEMORY[0x1C6902A30](v1, -1, -1);
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((Width - 0x2000000000000000) >> 62 == 3)
  {
    v1 = Height;
    v8 = 4 * Width;
    if (one-time initialization token for displayP3Space == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v21 = v8;
  swift_once();
  v8 = v21;
LABEL_7:
  v9 = CGBitmapContextCreate(0, Width, v1, 8uLL, v8, static ColorSpaceHelper.displayP3Space, 0x2002u);
  if (v9)
  {
    v10 = v9;
    if (CGContextRef.draw(_:in:by:options:)())
    {
      Image = CGBitmapContextCreateImage(v10);
      if (Image)
      {
        v12 = Image;

        return v12;
      }

      v16 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v12))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "monoImage() CGBitmapContext.makeImage() failed";
        goto LABEL_18;
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v12))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "monoImage() bitmap draw failed";
LABEL_18:
        _os_log_impl(&dword_1C1358000, v16, v12, v18, v17, 2u);
        MEMORY[0x1C6902A30](v17, -1, -1);
      }
    }

    lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    return v12;
  }

  v13 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C1358000, v13, v12, "monoImage() CGContext creation failed", v14, 2u);
    MEMORY[0x1C6902A30](v14, -1, -1);
  }

  lazy protocol witness table accessor for type CGImageSourceSpatialImagesError and conformance CGImageSourceSpatialImagesError();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
  return v12;
}

uint64_t lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized CGImageSourceSpatialImagesError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CGImageSourceSpatialImagesError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t StateMachineCommandParameter.init(name:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v9 = type metadata accessor for StateMachineCommandParameter(0, a4, a5, a4);
  v10 = *(*(a4 - 8) + 32);
  v11 = a6 + *(v9 + 36);

  return v10(v11, a3, a4);
}

uint64_t StateMachineCommandParameter.id.getter()
{
  v0 = sub_1C136CB78();

  return v0;
}

uint64_t protocol witness for StateMachineCommandParameterProtocol.name.getter in conformance StateMachineCommandParameter<A>()
{
  v0 = sub_1C136CB78();

  return v0;
}

double protocol witness for Identifiable.id.getter in conformance StateMachineCommandParameter<A>@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C136CB78();
  a1[1] = v2;

  return result;
}

uint64_t type metadata completion function for StateMachineCommandParameter(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineCommandParameter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for StateMachineCommandParameter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t SetEntityEnabledAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of ActionEntityResolution(v2, v3, v4);
}

void SetEntityEnabledAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of ActionEntityResolution(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t (*SetEntityEnabledAction.enabled.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 17);
  return SetEntityEnabledAction.enabled.modify;
}

__n128 SetEntityEnabledAction.init(targetEntity:isEnabled:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

__n128 SetEntityEnabledAction.init(targetEntity:enabled:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SetEntityEnabledAction.CodingKeys()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x6E45746567726174;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance SetEntityEnabledAction.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SetEntityEnabledAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SetEntityEnabledAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetEntityEnabledAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMR);
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v17 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of ActionEntityResolution(v6, v7, v8);
  lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v18 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v9 = v12[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10.n128_f64[0] = outlined consume of ActionEntityResolution(v14, v15, v16);
  if (!v9)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v13 + 8))(v5, v3, v10);
}

unint64_t lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction.CodingKeys, &unk_1F410F900, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction.CodingKeys, &unk_1F410F900, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction.CodingKeys, &unk_1F410F900, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetEntityEnabledAction.CodingKeys, &unk_1F410F900, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys);
  }

  return result;
}

void SetEntityEnabledAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation22SetEntityEnabledActionV10CodingKeys33_9D02AD2934BA5247DCA5A5B34D0821EBLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SetEntityEnabledAction.CodingKeys and conformance SetEntityEnabledAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v15;
    v10 = v16;
    v18 = v17;
    LOBYTE(v15) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v11 & 1;
    *a2 = v9;
    *(a2 + 8) = v10;
    v13 = v18;
    *(a2 + 16) = v18;
    *(a2 + 17) = v12;
    outlined copy of ActionEntityResolution(v9, v10, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of ActionEntityResolution(v9, v10, v13);
  }
}

uint64_t getEnumTagSinglePayload for SetEntityEnabledAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for SetEntityEnabledAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void specialized SetEntityEnabledActionHandler.setEntityEnabled(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || (v1 = *(a1 + 8), v2 = *(a1 + 16), v3 = *(a1 + 24), v4 = *(a1 + 25), (Strong = swift_weakLoadStrong()) == 0))
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v18 = &type metadata for SetEntityEnabledAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SetEntityEnabledActionVmMd, &_s17RealityFoundation22SetEntityEnabledActionVmMR);
    v9 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v9);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v15);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    v6 = Strong;
    v15 = v1;
    v16 = v2;
    v17 = v3;
    outlined copy of ActionEntityResolution(v1, v2, v3);
    v7 = ActionEntityResolution.resolve(from:)(v6);
    v8 = outlined consume of ActionEntityResolution(v15, v2, v3);
    if (v7)
    {
      MEMORY[0x1C68F9730](*(v7 + 16), v4, v8);
      RENetworkMarkEntityMetadataDirty();
    }
  }
}

uint64_t InputTargetComponent.init(allowedInputTypes:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = &outlined read-only object #0 of InputTargetComponent.init(allowedInputTypes:);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(v4);
  *a2 = 1;
  *(a2 + 4) = v3;
  *(a2 + 8) = result;
  return result;
}

double InputTargetComponent.allowedDirectInputTypes.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

void InputTargetComponent.allowedDirectInputTypes.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

Swift::Int InputTargetComponent.DirectInputType.DirectInputOption.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void InputTargetComponent.DirectInputType.init(arrayLiteral:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(a1);

  *a2 = v3;
}

uint64_t static InputTargetComponent.DirectInputType.directTouch.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.directTouch.getter);
  *a1 = result;
  return result;
}

uint64_t static InputTargetComponent.DirectInputType.directPinch.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.directPinch.getter);
  *a1 = result;
  return result;
}

uint64_t static InputTargetComponent.DirectInputType.all.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static InputTargetComponent.DirectInputType.all.getter);
  *a1 = result;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation19_Proto_MeshScope_v1O_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v3 = 0;
  v4 = *(a1 + 56);
  v83 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v86 = v8;
  v87 = a1;
  v90 = a2 + 56;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = *(a1 + 48) + 32 * (v10 | (v3 << 6));
    v15 = *(v14 + 8);
    v96 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    Hasher.init(_seed:)();
    v98 = v17;
    v88 = v11;
    v89 = v3;
    if (v17)
    {
      if (v17 != 1)
      {
        MEMORY[0x1C68F4C10](0);
        goto LABEL_19;
      }

      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    MEMORY[0x1C68F4C10](v18);

    String.hash(into:)();
    specialized Set.hash(into:)(v106, v16);
LABEL_19:
    v19 = Hasher._finalize()();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      v82 = v96;
LABEL_111:
      outlined consume of _Proto_MeshScope_v1(v82, v15, v16, v98);
      return;
    }

    v97 = ~v20;
    v22 = v17;
    v23 = v96;
    v99 = v16 + 56;
    v25 = v17 != 2 || (v15 | v96 | v16) != 0;
    v95 = v25;
    v94 = v15;
    while (1)
    {
      v26 = *(v2 + 48) + 32 * v21;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v100[0] = v28;
      v100[1] = v27;
      v100[2] = v29;
      v101 = v30;
      v102 = v23;
      v103 = v15;
      v104 = v16;
      v105 = v22;
      if (v30)
      {
        break;
      }

      if (v22)
      {
        v36 = v23;
        v37 = v15;
        v38 = v16;
      }

      else
      {
        v45 = v28 == v23 && v27 == v15;
        if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v29 == v16)
          {
            outlined copy of _Proto_MeshScope_v1(v23, v15, v16, 0);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v16, 0);
LABEL_102:
            outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v100);
            v78 = v23;
            v79 = v15;
            v80 = v16;
            v81 = 0;
            goto LABEL_103;
          }

          if (*(v29 + 16) == *(v16 + 16))
          {
            v46 = 1 << *(v29 + 32);
            if (v46 < 64)
            {
              v47 = ~(-1 << v46);
            }

            else
            {
              v47 = -1;
            }

            v48 = v47 & *(v29 + 56);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v29, 0);
            outlined copy of _Proto_MeshScope_v1(v23, v15, v16, 0);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v29, 0);
            v49 = 0;
            v85 = (v46 + 63) >> 6;
            while (v48)
            {
              v66 = __clz(__rbit64(v48));
              v93 = (v48 - 1) & v48;
LABEL_89:
              v69 = (*(v29 + 48) + 16 * (v66 | (v49 << 6)));
              v70 = *v69;
              v71 = v69[1];
              Hasher.init(_seed:)();

              String.hash(into:)();
              v72 = Hasher._finalize()();
              v73 = -1 << *(v16 + 32);
              v74 = v72 & ~v73;
              if (((*(v99 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
              {
LABEL_97:

                v62 = v28;
                v63 = v27;
                v64 = v29;
                v65 = 0;
LABEL_98:
                outlined consume of _Proto_MeshScope_v1(v62, v63, v64, v65);
                v9 = v90;
                v2 = a2;
                v15 = v94;
                v23 = v96;
                goto LABEL_62;
              }

              v75 = ~v73;
              while (1)
              {
                v76 = (*(v16 + 48) + 16 * v74);
                v77 = *v76 == v70 && v76[1] == v71;
                if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v74 = (v74 + 1) & v75;
                if (((*(v99 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
                {
                  goto LABEL_97;
                }
              }

              v23 = v96;
              v48 = v93;
            }

            v67 = v49;
            while (1)
            {
              v49 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_116;
              }

              if (v49 >= v85)
              {
                outlined consume of _Proto_MeshScope_v1(v28, v27, v29, 0);
                v9 = v90;
                v2 = a2;
                v15 = v94;
                goto LABEL_102;
              }

              v68 = *(v29 + 56 + 8 * v49);
              ++v67;
              if (v68)
              {
                v66 = __clz(__rbit64(v68));
                v93 = (v68 - 1) & v68;
                goto LABEL_89;
              }
            }
          }
        }

        v36 = v23;
        v37 = v15;
        v38 = v16;
        LOBYTE(v22) = 0;
      }

      outlined copy of _Proto_MeshScope_v1(v36, v37, v38, v22);
      v39 = v28;
      v40 = v27;
      v41 = v29;
      LOBYTE(v22) = 0;
LABEL_61:
      outlined copy of _Proto_MeshScope_v1(v39, v40, v41, v22);
LABEL_62:
      outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v100);
      v21 = (v21 + 1) & v97;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        v82 = v23;
        goto LABEL_111;
      }

      v22 = v98;
    }

    if (v30 == 1)
    {
      if (v22 == 1)
      {
        v31 = v28 == v23 && v27 == v15;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v29 == v16)
          {
            outlined copy of _Proto_MeshScope_v1(v23, v15, v16, 1u);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v16, 1u);
LABEL_100:
            outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v100);
            v78 = v23;
            v79 = v15;
            v80 = v16;
            v81 = 1;
LABEL_103:
            outlined consume of _Proto_MeshScope_v1(v78, v79, v80, v81);
            goto LABEL_104;
          }

          if (*(v29 + 16) == *(v16 + 16))
          {
            v32 = 1 << *(v29 + 32);
            if (v32 < 64)
            {
              v33 = ~(-1 << v32);
            }

            else
            {
              v33 = -1;
            }

            v34 = v33 & *(v29 + 56);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v29, 1u);
            outlined copy of _Proto_MeshScope_v1(v23, v15, v16, 1u);
            outlined copy of _Proto_MeshScope_v1(v28, v27, v29, 1u);
            v35 = 0;
            v84 = (v32 + 63) >> 6;
            while (v34)
            {
              v50 = __clz(__rbit64(v34));
              v92 = (v34 - 1) & v34;
LABEL_72:
              v53 = (*(v29 + 48) + 16 * (v50 | (v35 << 6)));
              v54 = *v53;
              v55 = v53[1];
              Hasher.init(_seed:)();

              String.hash(into:)();
              v56 = Hasher._finalize()();
              v57 = -1 << *(v16 + 32);
              v58 = v56 & ~v57;
              if (((*(v99 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
              {
LABEL_80:

                v62 = v28;
                v63 = v27;
                v64 = v29;
                v65 = 1;
                goto LABEL_98;
              }

              v59 = ~v57;
              while (1)
              {
                v60 = (*(v16 + 48) + 16 * v58);
                v61 = *v60 == v54 && v60[1] == v55;
                if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v58 = (v58 + 1) & v59;
                if (((*(v99 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                {
                  goto LABEL_80;
                }
              }

              v23 = v96;
              v34 = v92;
            }

            v51 = v35;
            while (1)
            {
              v35 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              if (v35 >= v84)
              {
                outlined consume of _Proto_MeshScope_v1(v28, v27, v29, 1u);
                v9 = v90;
                v2 = a2;
                v15 = v94;
                goto LABEL_100;
              }

              v52 = *(v29 + 56 + 8 * v35);
              ++v51;
              if (v52)
              {
                v50 = __clz(__rbit64(v52));
                v92 = (v52 - 1) & v52;
                goto LABEL_72;
              }
            }

            __break(1u);
            goto LABEL_115;
          }
        }

        v42 = v23;
        v43 = v15;
        v44 = v16;
        LOBYTE(v22) = 1;
      }

      else
      {
        v42 = v23;
        v43 = v15;
        v44 = v16;
      }

      outlined copy of _Proto_MeshScope_v1(v42, v43, v44, v22);
      v39 = v28;
      v40 = v27;
      v41 = v29;
      LOBYTE(v22) = 1;
      goto LABEL_61;
    }

    if (v95)
    {
      v39 = v23;
      v40 = v15;
      v41 = v16;
      goto LABEL_61;
    }

    outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(v100);
LABEL_104:
    v8 = v86;
    a1 = v87;
    v7 = v88;
    v3 = v89;
    if (v88)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return;
    }

    v13 = *(v83 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int InputTargetComponent.DirectInputType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance InputTargetComponent.DirectInputType(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(a1);

  *a2 = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputTargetComponent.DirectInputType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputTargetComponent.DirectInputType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t InputTargetComponent.init(_:)@<X0>(uint64_t a2@<X8>)
{
  AllowsDirectInput = REInputTargetComponentGetAllowsDirectInput();
  AllowsIndirectInput = REInputTargetComponentGetAllowsIndirectInput();
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (REInputTargetComponentGetAllowsDirectTouchInput())
  {
    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of InputTargetComponent.init(_:));
    specialized Set.formUnion<A>(_:)(v6);
  }

  if (REInputTargetComponentGetAllowsDirectPinchInput())
  {
    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #1 of InputTargetComponent.init(_:));
    specialized Set.formUnion<A>(_:)(v7);
  }

  if (AllowsIndirectInput)
  {
    AllowsDirectInput |= 2u;
  }

  result = REInputTargetComponentIsEnabled();
  *a2 = result;
  *(a2 + 4) = AllowsDirectInput;
  *(a2 + 8) = v5;
  return result;
}

uint64_t InputTargetComponent.__toCore(_:)(void *a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  REInputTargetComponentSetEnabled();
  if (v2)
  {
    specialized Set.contains(_:)(0, v3);
    REInputTargetComponentSetAllowsDirectTouchInput();
    specialized Set.contains(_:)(1, v3);
  }

  else
  {
    REInputTargetComponentSetAllowsDirectTouchInput();
  }

  REInputTargetComponentSetAllowsDirectPinchInput();
  REInputTargetComponentSetAllowsIndirectInput();

  return RENetworkMarkComponentDirty();
}

uint64_t static InputTargetComponent.__coreComponentType.getter@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for REComponentType(0);
  v6[3] = v2;
  LODWORD(v6[0]) = 4010;
  outlined init with copy of Any(v6, v5);
  swift_dynamicCast();
  *a1 = v4;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Int static InputTargetComponent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Component.__coreComponentType.getter in conformance InputTargetComponent@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for REComponentType(0);
  v6[3] = v2;
  LODWORD(v6[0]) = 4010;
  outlined init with copy of Any(v6, v5);
  swift_dynamicCast();
  *a1 = v4;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Int protocol witness for static Equatable.== infix(_:_:) in conformance InputTargetComponent(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return _sSh2eeoiySbShyxG_ABtFZ17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_Tt1g5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t InputTargetComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  v9 = *(v0 + 4);
  v10 = *(v0 + 8);
  v15[0] = *v0;
  v8 = v15[0];
  v16 = v9;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FC0;
  *(v11 + 32) = 0x656C62616E457369;
  *(v11 + 40) = 0xE900000000000064;
  v12 = MEMORY[0x1E69E6370];
  *(v11 + 48) = v8;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0xD000000000000011;
  *(v11 + 88) = 0x80000001C18E9D00;
  *(v11 + 120) = &type metadata for InputTargetComponent.InputType;
  *(v11 + 96) = v9;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1C68F4C10](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

Swift::Int specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  result = Hasher._finalize()();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v12);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1C68F4C10](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.InputType, &type metadata for InputTargetComponent.InputType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.InputType, &type metadata for InputTargetComponent.InputType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.InputType, &type metadata for InputTargetComponent.InputType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.InputType, &type metadata for InputTargetComponent.InputType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.InputType and conformance InputTargetComponent.InputType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InputTargetComponent.DirectInputType, &type metadata for InputTargetComponent.DirectInputType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType and conformance InputTargetComponent.DirectInputType);
  }

  return result;
}

uint64_t outlined destroy of (_Proto_MeshScope_v1, _Proto_MeshScope_v1)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19_Proto_MeshScope_v1O_ACtMd, &_s17RealityFoundation19_Proto_MeshScope_v1O_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __RKEntityAnimateAction.perform(with:)()
{
  v3[0] = StaticString.description.getter();
  v3[1] = v0;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v1 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v1, v3);

  return 1;
}

Swift::Void __swiftcall __RKEntityAnimateAction.stopAnimations()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v0 + 144) == 1)
    {

      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode() || (REEntityGetSelfEnabled() & 1) == 0) && (REEntityGetSelfEnabled())
      {
        MEMORY[0x1C68F9730](*(v1 + 16), 0);
        RENetworkMarkEntityMetadataDirty();
      }
    }

    else
    {
    }

    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (REAnimationComponentHasRunningAnimations())
      {
        if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v0 + 104) == 1) && *(v0 + 96) == 3)
        {
          REAnimationComponentStopAllAnimations();
          RENetworkMarkComponentDirty();
        }
      }
    }

    *(v0 + 168) = 0;
    *(v0 + 176) = 1;
  }
}

uint64_t __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(uint64_t a1, char a2, double a3)
{
  REAudioAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAudioAnimationComponentSetMute();
    REAudioAnimationComponentSetLinearGain();
  }

  if (REEntityGetChildCount() < 1)
  {
LABEL_17:
  }

  v5 = 0;
  while (1)
  {
    result = REEntityGetChildCount();
    if (v5 >= result)
    {
      break;
    }

    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_23;
    }

    v7 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v8 = swift_dynamicCastClassUnconditional();
LABEL_9:
      v9 = v8;
      goto LABEL_13;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_22;
    }

    specialized static Entity.entityInfoType(_:)(v7);
    if (!v10)
    {
      v8 = makeEntity(for:)(v7);
      goto LABEL_9;
    }

    v9 = (*(v10 + 232))();
    v11 = *(v9 + 16);

    MEMORY[0x1C68F9740](v11, 0);
    *(v9 + 16) = v7;
    MEMORY[0x1C68F9740](v7, v9);

LABEL_13:
    result = REEntityGetChildCount();
    if (v5 >= result)
    {
      goto LABEL_21;
    }

    ++v5;
    __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(v9, a2 & 1, a3);

    if (v5 >= REEntityGetChildCount())
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  DefaultAnimation = REAnimationLibraryComponentCreateDefaultAnimation();
  if (!DefaultAnimation)
  {
    return 0;
  }

  v8 = DefaultAnimation;
  type metadata accessor for AnimationResource();
  v9 = swift_allocObject();
  v9[2] = v8;
  if (REAssetHandleAssetType() == 11)
  {
    REAnimationSceneAssetGetRootTimeline();
  }

  Name = REAnimationAssetGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v9[3] = Name;
  v9[4] = v11;
  RERetain();
  REAssetSetSwiftObject();
  AnimationResource.definition.getter(v62);
  v13 = *(v3 + 128);
  if (v13 == 0.0)
  {
    v14 = v63;
    v15 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v13 = (*(v15 + 272))(v14, v15);
  }

  v16 = *(v3 + 112);
  if (v16)
  {
    v17 = v13;
    if (v16 >= 2)
    {
      v17 = v13 * v16;
    }
  }

  else
  {
    v17 = INFINITY;
  }

  outlined init with copy of __REAssetService(v62, v61);
  v18 = *(v3 + 136);
  if (v18 < 4)
  {
    if (one-time initialization token for forwards != -1)
    {
      swift_once();
    }

    v19 = static AnimationFillMode.forwards;
    v20 = *(v4 + 120);
    if (*(v4 + 137))
    {
      v21 = -*(v4 + 140);
    }

    else
    {
      v21 = *(v4 + 140);
    }

    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v40) = 0;
    LOBYTE(v37[0]) = 0;
    type metadata accessor for TimelineDefinition();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = v40;
    v24 = v37[0];
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    v38 = 0;
    *&v40 = v20;
    WORD4(v40) = 0;
    *&v41 = v13 + v20;
    WORD4(v41) = 0;
    *&v42 = v17;
    WORD4(v42) = 0;
    *&v43 = 0;
    BYTE8(v43) = 0;
    *&v44 = 0;
    BYTE8(v44) = 0;
    *(&v44 + 3) = v21;
    LOBYTE(v45) = 0;
    BYTE1(v45) = v18;
    *(&v45 + 1) = 0;
    *v46 = 0;
    *&v46[8] = xmmword_1C18BCD00;
    *&v46[24] = 0xE000000000000000;
    LOBYTE(v47) = 0;
    DWORD1(v47) = 0;
    BYTE8(v47) = v23;
    BYTE9(v47) = v19;
    WORD5(v47) = v24;
    v48 = v22;
    outlined init with copy of __REAssetService(v61, v37);
    AnimationView.source.setter(v37);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v55 = *v46;
    v56 = *&v46[16];
    v57 = v47;
    v51 = v42;
    v52 = v43;
    v58 = v48;
    v53 = v44;
    v54 = v45;
    v49 = v40;
    v50 = v41;
    v37[3] = &type metadata for AnimationView;
    v37[4] = &protocol witness table for AnimationView;
    v25 = swift_allocObject();
    v37[0] = v25;
    v26 = v56;
    *(v25 + 112) = v55;
    *(v25 + 128) = v26;
    *(v25 + 144) = v57;
    *(v25 + 160) = v58;
    v27 = v52;
    *(v25 + 48) = v51;
    *(v25 + 64) = v27;
    v28 = v54;
    *(v25 + 80) = v53;
    *(v25 + 96) = v28;
    v29 = v50;
    *(v25 + 16) = v49;
    *(v25 + 32) = v29;
    v30 = static AnimationFillMode.forwards;
    outlined init with copy of AnimationView(&v49, &v40);
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v40) = 0;
    v36[0] = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = v40;
    v33 = v36[0];
    v36[0] = 0;
    v39 = 0;
    v38 = 0;
    v36[48] = 0;
    *&v40 = 0;
    WORD4(v40) = 1;
    *&v41 = 0;
    WORD4(v41) = 1;
    *&v42 = v17;
    WORD4(v42) = 0;
    *&v43 = 0;
    BYTE8(v43) = 0;
    *&v44 = 0;
    BYTE8(v44) = 0;
    HIDWORD(v44) = 1065353216;
    LOWORD(v45) = 0;
    *(&v45 + 1) = 0;
    *v46 = 0;
    *&v46[8] = xmmword_1C18BCD00;
    *&v46[24] = 0xE000000000000000;
    LOBYTE(v47) = 0;
    DWORD1(v47) = 0;
    BYTE8(v47) = v32;
    BYTE9(v47) = v30;
    WORD5(v47) = v33;
    v48 = v31;
    outlined init with copy of __REAssetService(v37, v36);
    AnimationView.source.setter(v36);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v59[6] = *v46;
    v59[7] = *&v46[16];
    v59[8] = v47;
    v59[2] = v42;
    v59[3] = v43;
    v60 = v48;
    v59[4] = v44;
    v59[5] = v45;
    v59[0] = v40;
    v59[1] = v41;
    if (AnimationView.createResource()())
    {
      REAnimationSceneAssetCreateWithTimeline();
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      *&v40 = 2;
      DWORD2(v40) = 256;
      *&v41 = "AnimateAction";
      BYTE8(v41) = 0;
      v12 = REAnimationComponentPlay();
      if ((a3 & 1) == 0)
      {
        REAnimationComponentPauseAnimation();
        RENetworkMarkComponentDirty();
      }

      if ((REEntityGetSelfEnabled() & 1) == 0)
      {
        MEMORY[0x1C68F9730](*(a1 + 16), 0);
        RENetworkMarkEntityMetadataDirty();
        RERenderOptionsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderOptionsComponentSetVisibilityMode();
        RENetworkMarkComponentDirty();
        MEMORY[0x1C68F9730](*(a1 + 16), 1);
        RENetworkMarkEntityMetadataDirty();
      }

      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode())
      {
        v34 = 1;
      }

      else
      {
        v34 = REEntityGetSelfEnabled() ^ 1;
      }

      *(v4 + 144) = v34;
      RERelease();

      outlined destroy of AnimationView(v59);
      outlined destroy of AnimationView(&v49);
      __swift_destroy_boxed_opaque_existential_1(v62);
      RERelease();
    }

    else
    {

      outlined destroy of AnimationView(v59);
      outlined destroy of AnimationView(&v49);
      __swift_destroy_boxed_opaque_existential_1(v62);
      RERelease();
      return 0;
    }

    return v12;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall __RKEntityAnimateAction.stop()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass() && REAnimationComponentHasRunningAnimations() && (*(v0 + 176) & 1) == 0)
    {
      REAnimationComponentPauseAnimation();
    }
  }

  return 1;
}

uint64_t __RKEntityAnimateAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    type metadata accessor for __RKEntityAnimateAction();
    v5 = swift_allocObject();
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    *(v5 + 112) = 1;
    *(v5 + 136) = 1;
    *(v5 + 140) = 1065353216;
    *(v5 + 144) = 0;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    *(v5 + 152) = 0x3FF0000000000000;
    *(v5 + 176) = 1;
    *(v5 + 184) = 0u;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
    *(v5 + 232) = 0u;
    *(v5 + 248) = 0u;

    return __RKEntityAction.init(targetEntity:)(v6);
  }

  else
  {
    (*(*v1 + 464))(v8, 0);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityAnimateAction.__ivar_destroyer()
{

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityAnimateAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t __RKEntityStartAnimateAction.__allocating_init(targetEntity:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimationEntity:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, double a8, double a9, float a10, double a11)
{
  v22 = swift_allocObject();
  v23 = *a3;
  *(v22 + 120) = 0;
  *(v22 + 128) = 0;
  *(v22 + 112) = 1;
  *(v22 + 136) = 1;
  *(v22 + 140) = 1065353216;
  *(v22 + 144) = 0;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 152) = 0x3FF0000000000000;
  *(v22 + 176) = 1;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 248) = 0u;

  v25 = __RKEntityAction.init(targetEntity:)(v24);
  if (a1)
  {

    *(v25 + 160) = a7;

    swift_beginAccess();
    *(v25 + 105) = v23;
    *(v25 + 112) = a2;
    *(v25 + 137) = a4 & 1;
    *(v25 + 120) = a8;
    *(v25 + 128) = a9;
    *(v25 + 140) = a10;
    if (a5)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if (a2 == 1)
    {
      v26 = 0;
    }

    *(v25 + 136) = v26;

    *(v25 + 145) = a6 & 1;
    *(v25 + 152) = a11;
  }

  else
  {
  }

  return v25;
}

uint64_t __RKEntityStartAnimateAction.init(targetEntity:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:muteAudio:audioGain:targetAnimationEntity:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, double a8, double a9, float a10, double a11)
{
  v22 = *a3;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 112) = 1;
  *(v11 + 136) = 1;
  *(v11 + 140) = 1065353216;
  *(v11 + 144) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  *(v11 + 152) = 0x3FF0000000000000;
  *(v11 + 176) = 1;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 248) = 0u;

  v24 = __RKEntityAction.init(targetEntity:)(v23);
  if (a1)
  {

    *(v24 + 160) = a7;

    swift_beginAccess();
    *(v24 + 105) = v22;
    *(v24 + 112) = a2;
    *(v24 + 137) = a4 & 1;
    *(v24 + 120) = a8;
    *(v24 + 128) = a9;
    *(v24 + 140) = a10;
    if (a5)
    {
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    if (a2 == 1)
    {
      v25 = 0;
    }

    *(v24 + 136) = v25;

    *(v24 + 145) = a6 & 1;
    *(v24 + 152) = a11;
  }

  else
  {
  }

  return v24;
}

uint64_t __RKEntityStartAnimateAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v60 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v52 - v8;
  v62 = *(a1 + 8);
  swift_beginAccess();
  v10 = *(v2 + 16);
  v70 = 91;
  v71 = 0xE100000000000000;
  if (v10)
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    v75 = v10;

    _print_unlocked<A, B>(_:_:)();
    v11 = v66;
    v12 = v67;
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v13 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v15 = v70;
  v14 = v71;
  v16 = *(v2 + 16);
  if (!v16)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
    goto LABEL_15;
  }

  REAnimationComponentGetComponentType();
  if (!REEntityGetComponentByClass() || (*(v2 + 176) & 1) != 0 || !REAnimationComponentIsPaused())
  {
    swift_beginAccess();
    if (*(v2 + 104) == 1 && *(v2 + 96) == 1)
    {
      swift_beginAccess();
      if (*(v2 + 105))
      {
        if (*(v2 + 105) == 1)
        {

LABEL_15:

          return 0;
        }

        v50 = *(v2 + 96);
        v51 = *(v2 + 104);
        *(v2 + 96) = 2;
        v17 = 1;
        *(v2 + 104) = 1;
        v70 = v50;
        LOBYTE(v71) = v51;
        __RKEntityAction.state.didset(&v70);
LABEL_23:

        return v17;
      }

      __RKEntityAnimateAction.stopAnimations()();
    }

    __RKEntityAnimateAction.setAudioAnimationParameters(on:mute:gain:)(v16, *(v2 + 145), *(v2 + 152));
    SceneNullable = REEntityGetSceneNullable();
    v59 = v4;
    v58 = v5;
    v57 = v7;
    v56 = v14;
    v55 = v15;
    if (SceneNullable && (SceneNullable = RESceneGetECSManagerNullable()) != 0)
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      SceneNullable = MEMORY[0x1C68FE1F0](ServiceLocator);
      if (SceneNullable)
      {
        SceneNullable = __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(v16, SceneNullable, 1);
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    *(v2 + 168) = SceneNullable;
    *(v2 + 176) = v20 & 1;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = *(v2 + 32);
    v23 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #1 in __RKEntityStartAnimateAction.perform(with:);
    *(v2 + 40) = v21;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22, v23);

    v24 = *(v2 + 96);
    v25 = *(v2 + 104);
    v17 = 1;
    *(v2 + 96) = 1;
    *(v2 + 104) = 1;
    v70 = v24;
    LOBYTE(v71) = v25;
    __RKEntityAction.state.didset(&v70);
    v54 = type metadata accessor for Entity();
    v68 = v54;
    v69 = &protocol witness table for Entity;
    v66 = v16;
    v26 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v70);
    v27 = v73;
    v28 = v74;
    __swift_project_boxed_opaque_existential_1(&v70, v73);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v29, &v66, v27, v29, v28);
    v30 = v63;
    v31 = v64;
    v32 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v70);
    *(swift_allocObject() + 16) = 0;
    v70 = v30;
    v71 = v31;
    v72 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v53 = protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v33 = swift_allocObject();
    (*(v60 + 32))(&v33[*(*v33 + *MEMORY[0x1E695BEE8] + 16)], v9, v61);
    v70 = v33;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for closure #2 in __RKEntityStartAnimateAction.perform(with:);
    *(v34 + 24) = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v61 = protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v35 = Publisher<>.sink(receiveValue:)();

    v36 = type metadata accessor for AnyCancellable();
    v73 = v36;
    v74 = MEMORY[0x1E695BF08];

    v70 = v35;
    outlined destroy of BodyTrackingComponent?(&v66, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v70, v2 + 184);
    swift_endAccess();
    v68 = v54;
    v69 = &protocol witness table for Entity;
    v66 = v16;
    v37 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v70);
    v38 = v73;
    v39 = v74;
    __swift_project_boxed_opaque_existential_1(&v70, v73);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v40, &v66, v38, v40, v39);
    v41 = v63;
    v42 = v64;
    v43 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v70);
    *(swift_allocObject() + 16) = 0;
    v70 = v41;
    v71 = v42;
    v72 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, v53);
    v44 = v57;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v45 = swift_allocObject();
    (*(v58 + 32))(&v45[*(*v45 + *MEMORY[0x1E695BEE8] + 16)], v44, v59);
    v70 = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for closure #3 in __RKEntityStartAnimateAction.perform(with:);
    *(v46 + 24) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, v61);
    v47 = Publisher<>.sink(receiveValue:)();

    v73 = v36;
    v74 = MEMORY[0x1E695BF08];

    v70 = v47;
    outlined destroy of BodyTrackingComponent?(&v66, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v70, v2 + 224);
    swift_endAccess();
    v70 = v55;
    v71 = v56;
    v48 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v48, &v70);

    goto LABEL_23;
  }

  REAnimationComponentResumeAnimation();

  return 1;
}

uint64_t closure #1 in __RKEntityStartAnimateAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v2 + 184, &v5);
    if (*(&v6 + 1))
    {
      outlined init with copy of __REAssetService(&v5, v3);

      outlined destroy of BodyTrackingComponent?(&v5, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v3, v4);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {

      outlined destroy of BodyTrackingComponent?(&v5, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v2 + 184);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v2 + 224, &v5);
    if (*(&v6 + 1))
    {
      outlined init with copy of __REAssetService(&v5, v3);
      outlined destroy of BodyTrackingComponent?(&v5, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v3, v4);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v5, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v2 + 224);
    swift_endAccess();

    __RKEntityAnimateAction.stopAnimations()();
  }

  return result;
}

uint64_t closure #2 in __RKEntityStartAnimateAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((*(result + 176) & 1) != 0 || *(v2 + 16) != *(result + 168))
    {
    }

    else
    {
      swift_beginAccess();
      v5 = *(v4 + 96);
      v6 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntityStartAnimateAction.reversed()()
{
  swift_beginAccess();
  type metadata accessor for __RKEntityStopAnimateAction();
  v0 = swift_allocObject();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = 1;
  *(v0 + 136) = 1;
  *(v0 + 140) = 1065353216;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0x3FF0000000000000;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v1);
}

uint64_t __RKEntityAnimateAction.__allocating_init(targetEntity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityStartAnimateAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 112);
  swift_beginAccess();
  v5 = *(v1 + 105);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 137);
  v9 = *(v1 + 140);
  v10 = *(v1 + 136);
  v11 = *(v1 + 145);
  v12 = *(v1 + 152);
  v13 = *(v1 + 160);
  started = type metadata accessor for __RKEntityStartAnimateAction();
  v15 = swift_allocObject();
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v15 + 112) = 1;
  *(v15 + 136) = 1;
  *(v15 + 140) = 1065353216;
  *(v15 + 144) = 0;
  *(v15 + 160) = 0;
  *(v15 + 168) = 0;
  *(v15 + 152) = 0x3FF0000000000000;
  *(v15 + 176) = 1;
  *(v15 + 184) = 0u;
  *(v15 + 200) = 0u;
  *(v15 + 216) = 0u;
  *(v15 + 232) = 0u;
  *(v15 + 248) = 0u;
  swift_retain_n();

  v16 = __RKEntityAction.init(targetEntity:)(v3);
  if (v3)
  {

    *(v16 + 160) = v13;

    result = swift_beginAccess();
    *(v16 + 105) = v5;
    *(v16 + 112) = v4;
    *(v16 + 137) = v8;
    *(v16 + 120) = v6;
    *(v16 + 128) = v7;
    *(v16 + 140) = v9;
    if (v10 == 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    if (v4 == 1)
    {
      v18 = 0;
    }

    *(v16 + 136) = v18;
    *(v16 + 145) = v11;
    *(v16 + 152) = v12;
  }

  else
  {
  }

  a1[3] = started;
  *a1 = v16;
  return result;
}

uint64_t __RKEntityStartAnimateAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    swift_beginAccess();
    v6 = *(v1 + 105);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    v9 = *(v1 + 137);
    v10 = *(v1 + 140);
    v11 = *(v1 + 136);
    v12 = *(v1 + 145);
    v13 = *(v1 + 152);
    v14 = *(v1 + 160);
    type metadata accessor for __RKEntityStartAnimateAction();
    v15 = swift_allocObject();
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v15 + 112) = 1;
    *(v15 + 136) = 1;
    *(v15 + 140) = 1065353216;
    *(v15 + 144) = 0;
    *(v15 + 160) = 0;
    *(v15 + 168) = 0;
    *(v15 + 152) = 0x3FF0000000000000;
    *(v15 + 176) = 1;
    *(v15 + 184) = 0u;
    *(v15 + 200) = 0u;
    *(v15 + 216) = 0u;
    *(v15 + 232) = 0u;
    *(v15 + 248) = 0u;

    v17 = __RKEntityAction.init(targetEntity:)(v16);
    *(v17 + 160) = v14;

    swift_beginAccess();
    result = v17;
    *(v17 + 105) = v6;
    *(v17 + 112) = v5;
    *(v17 + 137) = v9;
    *(v17 + 120) = v7;
    *(v17 + 128) = v8;
    *(v17 + 140) = v10;
    if (v11 == 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    if (v5 == 1)
    {
      v18 = 0;
    }

    *(v17 + 136) = v18;
    *(v17 + 145) = v12;
    *(v17 + 152) = v13;
  }

  else
  {
    __RKEntityStartAnimateAction.copy(with:)(v20);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __RKEntityAnimateAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityStopAnimateAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  v20 = 91;
  v21 = 0xE100000000000000;
  if (v2)
  {
    v18 = v2;

    _print_unlocked<A, B>(_:_:)();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1C68F3410](v3, v4);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v5 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v5);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v7 = v20;
  v6 = v21;
  v8 = *(v1 + 16);
  if (!v8)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_15:
      v18 = v20;
      v19 = v21;
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

      return 0;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_15;
  }

  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable && (SceneNullable = RESceneGetECSManagerNullable()) != 0)
  {
    ServiceLocator = REECSManagerGetServiceLocator();
    SceneNullable = MEMORY[0x1C68FE1F0](ServiceLocator);
    if (SceneNullable)
    {
      SceneNullable = __RKEntityAnimateAction._setupAnimations(entity:assetManager:andPlay:)(v8, SceneNullable, 0);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  *(v1 + 168) = SceneNullable;
  *(v1 + 176) = v11 & 1;
  v13 = *(v1 + 96);
  v14 = *(v1 + 104);
  *(v1 + 96) = 3;
  *(v1 + 104) = 1;
  v18 = v13;
  LOBYTE(v19) = v14;
  __RKEntityAction.state.didset(&v18);
  __RKEntityAnimateAction.stopAnimations()();
  v18 = v7;
  v19 = v6;
  static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)();
  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  *(v1 + 96) = 2;
  *(v1 + 104) = 1;
  v18 = v15;
  LOBYTE(v19) = v16;
  __RKEntityAction.state.didset(&v18);
  v18 = v7;
  v19 = v6;
  v17 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v17, &v18);

  return 1;
}

uint64_t __RKEntityStopAnimateAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 160);
  type metadata accessor for __RKEntityStartAnimateAction();
  v3 = swift_allocObject();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = 1;
  *(v3 + 136) = 1;
  *(v3 + 140) = 1065353216;
  *(v3 + 144) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0x3FF0000000000000;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;
  swift_retain_n();

  v4 = __RKEntityAction.init(targetEntity:)(v1);

  if (v1)
  {
    *(v4 + 160) = v2;

    swift_beginAccess();
    *(v4 + 105) = 1;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    *(v4 + 112) = 1;
    *(v4 + 140) = 1065353216;
    *(v4 + 136) = 0;
    *(v4 + 145) = 0;
    *(v4 + 152) = 0x3FF0000000000000;
  }

  return v4;
}

uint64_t __RKEntityAnimateAction.copy(with:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v4 = swift_beginAccess();
  v5 = a1(v4);
  v6 = swift_allocObject();
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 1;
  *(v6 + 136) = 1;
  *(v6 + 140) = 1065353216;
  *(v6 + 144) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 176) = 1;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;

  result = __RKEntityAction.init(targetEntity:)(v7);
  a2[3] = v5;
  *a2 = result;
  return result;
}

uint64_t @objc __RKEntityAnimateAction.copy(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = swift_beginAccess();
  a4(v5);
  swift_allocObject();

  return __RKEntityAnimateAction.init(targetEntity:)();
}

uint64_t __RKEntityStopAnimateAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 && *(a1 + 16) == *(v5 + 16))
  {
    v5 = a2;
  }

  type metadata accessor for __RKEntityStopAnimateAction();
  v6 = swift_allocObject();
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 1;
  *(v6 + 136) = 1;
  *(v6 + 140) = 1065353216;
  *(v6 + 144) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 176) = 1;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntityAnimateAction.init(targetEntity:)(uint64_t a1)
{
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 1;
  *(v1 + 136) = 1;
  *(v1 + 140) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityStartAnimateAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t __RKEntityToggleAnimateAction.perform(with:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(v1 + 16);
  v47 = 91;
  v48 = 0xE100000000000000;
  if (v5)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    v44[0] = v5;

    _print_unlocked<A, B>(_:_:)();
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1C68F3410](v6, v7);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v8 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v8);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v10 = v47;
  v9 = v48;
  if (!*(v1 + 16))
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_13:
      v45 = v47;
      v46 = v48;
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

      goto LABEL_14;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_13;
  }

  RETransformComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    IsAnimated = RETransformComponentIsAnimated();
  }

  else
  {
    IsAnimated = 0;
  }

  REAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    if (REAnimationComponentHasRunningAnimations())
    {
LABEL_18:
      type metadata accessor for __RKEntityStopAnimateAction();
      v13 = swift_allocObject();
      *(v13 + 120) = 0;
      *(v13 + 128) = 0;
      *(v13 + 112) = 1;
      *(v13 + 136) = 1;
      *(v13 + 140) = 1065353216;
      *(v13 + 144) = 0;
      *(v13 + 160) = 0;
      *(v13 + 168) = 0;
      *(v13 + 152) = 0x3FF0000000000000;
      *(v13 + 176) = 1;
      *(v13 + 184) = 0u;
      *(v13 + 200) = 0u;
      *(v13 + 216) = 0u;
      *(v13 + 232) = 0u;
      *(v13 + 248) = 0u;

      v15 = __RKEntityAction.init(targetEntity:)(v14);
      goto LABEL_21;
    }
  }

  else if (IsAnimated)
  {
    goto LABEL_18;
  }

  type metadata accessor for __RKEntityStartAnimateAction();
  v16 = swift_allocObject();
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 112) = 1;
  *(v16 + 136) = 1;
  *(v16 + 140) = 1065353216;
  *(v16 + 144) = 0;
  *(v16 + 160) = 0;
  *(v16 + 168) = 0;
  *(v16 + 152) = 0x3FF0000000000000;
  *(v16 + 176) = 1;
  *(v16 + 184) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 232) = 0u;
  *(v16 + 248) = 0u;

  v15 = __RKEntityAction.init(targetEntity:)(v17);
  *(v15 + 160) = 0;

  swift_beginAccess();
  *(v15 + 105) = 1;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  *(v15 + 112) = 1;
  *(v15 + 140) = 1065353216;
  *(v15 + 136) = 0;
  *(v15 + 145) = 0;
  *(v15 + 152) = 0x3FF0000000000000;
LABEL_21:
  *(v2 + 264) = v15;

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v15 + 32);
  v20 = *(v15 + 40);
  *(v15 + 32) = partial apply for closure #1 in __RKEntityToggleAnimateAction.perform(with:);
  *(v15 + 40) = v18;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v19, v20);

  v22 = *(v2 + 264);
  if (!v22)
  {
    __break(1u);
    goto LABEL_41;
  }

  v44[0] = v3;
  v44[1] = v4;
  v23 = *(*v22 + 408);

  v12 = v23(v44);

  v24 = *(v2 + 264);
  if (!v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  swift_beginAccess();
  v25 = *(v24 + 104);
  v26 = *(v2 + 96);
  v27 = *(v2 + 104);
  *(v2 + 96) = *(v24 + 96);
  *(v2 + 104) = v25;
  v42 = v26;
  LOBYTE(v43) = v27;
  result = __RKEntityAction.state.didset(&v42);
  v28 = *(v2 + 264);
  if (v28)
  {
    v29 = *(v28 + 168);
    v30 = *(v28 + 176);
    *(v2 + 168) = v29;
    *(v2 + 176) = v30;
    v31 = static os_log_type_t.debug.getter();
    if (one-time initialization token for interactionsLoggingEnabled != -1)
    {
      swift_once();
    }

    if (interactionsLoggingEnabled)
    {
      v42 = 0x6E696E7275746552;
      v43 = 0xEA00000000002067;
      if (v12)
      {
        v32 = 1702195828;
      }

      else
      {
        v32 = 0x65736C6166;
      }

      if (v12)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      MEMORY[0x1C68F3410](v32, v33);

      v35 = v42;
      v34 = v43;
      if (one-time initialization token for interactionsLogger != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, interactionsLogger);

      v37 = Logger.logObject.getter();

      if (os_log_type_enabled(v37, v31))
      {
        v41 = &v41;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v42 = v39;
        *v38 = 136315394;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v42);
        *(v38 + 12) = 2080;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v42);

        *(v38 + 14) = v40;
        _os_log_impl(&dword_1C1358000, v37, v31, "%s%s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v39, -1, -1);
        MEMORY[0x1C6902A30](v38, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    return v12 & 1;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t closure #1 in __RKEntityToggleAnimateAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + 264);
    if (v3)
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      swift_beginAccess();
      v6 = *(v2 + 96);
      v7 = *(v2 + 104);
      *(v2 + 96) = v4;
      *(v2 + 104) = v5;
      v8 = v6;
      v9 = v7;

      __RKEntityAction.state.didset(&v8);

      *(v2 + 168) = 0;
      *(v2 + 176) = 1;
    }
  }

  return result;
}

uint64_t __RKEntityToggleAnimateAction.reversed()()
{
  swift_beginAccess();
  type metadata accessor for __RKEntityToggleAnimateAction();
  v0 = swift_allocObject();
  *(v0 + 264) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 112) = 1;
  *(v0 + 136) = 1;
  *(v0 + 140) = 1065353216;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0x3FF0000000000000;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v1);
}

uint64_t __RKEntityToggleAnimateAction.__allocating_init(targetEntity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 264) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = 1;
  *(v2 + 140) = 1065353216;
  *(v2 + 144) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0x3FF0000000000000;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityToggleAnimateAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = type metadata accessor for __RKEntityToggleAnimateAction();
  v3 = swift_allocObject();
  *(v3 + 264) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = 1;
  *(v3 + 136) = 1;
  *(v3 + 140) = 1065353216;
  *(v3 + 144) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0x3FF0000000000000;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 248) = 0u;

  result = __RKEntityAction.init(targetEntity:)(v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t __RKEntityToggleAnimateAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 && *(a1 + 16) == *(v5 + 16))
  {
    v5 = a2;
  }

  type metadata accessor for __RKEntityToggleAnimateAction();
  v6 = swift_allocObject();
  *(v6 + 264) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 112) = 1;
  *(v6 + 136) = 1;
  *(v6 + 140) = 1065353216;
  *(v6 + 144) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 152) = 0x3FF0000000000000;
  *(v6 + 176) = 1;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntityToggleAnimateAction.init(targetEntity:)(uint64_t a1)
{
  *(v1 + 264) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 1;
  *(v1 + 136) = 1;
  *(v1 + 140) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0x3FF0000000000000;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityToggleAnimateAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return v0;
}

uint64_t __RKEntityToggleAnimateAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 224, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioBufferResource.Error, &type metadata for AudioBufferResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioBufferResource.Error, &type metadata for AudioBufferResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Error and conformance AudioBufferResource.Error);
  }

  return result;
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioBufferResource.Error()
{
  v1 = 0xD00000000000002DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000043;
  }
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  return Entity.ComponentSet.subscript.getter(a2, *(a3 + 8), x8_0);
}

{
  KeyPath = swift_getKeyPath();
  Entity.access<A>(keyPath:)(KeyPath);
  Entity.ComponentSet.subscript.getter(a2, a3, x8_0);
}

uint64_t Entity.ComponentSet.subscript.setter(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v54 = a2;
  v55 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  Description = a3[-1].Description;
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  v50 = static ImplicitAnimationStack.$current;
  TaskLocal.get()();
  if (v57[0])
  {
    v52 = v21;
    v48 = v10;
    swift_unknownObjectRelease();
    v22 = *v4;
    v23 = *(v55 + 8);

    v57[0] = v22;
    v49 = v23;
    Entity.ComponentSet.subscript.getter(a3, v23, v16);

    v24 = Description;
    v25 = Description[6];
    if (v25(v16, 1, a3) == 1)
    {
      v26 = *(v8 + 8);
      v26(a1, v7);
      return (v26)(v16, v7);
    }

    else
    {
      v46 = v22;
      v28 = v16;
      v29 = v24[4];
      v29(v52, v28, a3);
      (*(v8 + 16))(v13, a1, v7);
      v47 = v25;
      if (v25(v13, 1, a3) == 1)
      {
        v30 = *(v8 + 8);
        v30(a1, v7);
        (v24[1])(v52, a3);
        return (v30)(v13, v7);
      }

      else
      {
        v44 = a1;
        v45 = v7;
        v31 = v51;
        v29(v51, v13, a3);
        (*(v55 + 16))(v57, &v56, v52, v31, a3);
        v33 = v56;
        v32 = v57[0];
        v34 = v49;
        static ComponentAnimatableData.== infix(_:_:)(v57, &v56, a3, v49);
        if ((v35 & 1) != 0 || (TaskLocal.get()(), !v57[0]))
        {

          (*(v8 + 8))(v44, v45);
          v42 = Description[1];
          v42(v31, a3);
          return (v42)(v52, a3);
        }

        else
        {
          v50 = v57[1];
          v36 = v46;

          v57[0] = v36;
          v37 = v48;
          Entity.ComponentSet.subscript.getter(a3, v34, v48);

          result = v47(v37, 1, a3);
          v39 = v44;
          v38 = v45;
          if (result == 1)
          {
            __break(1u);
          }

          else
          {
            ObjectType = swift_getObjectType();
            v56 = v33;
            v57[0] = v32;
            (*(v50 + 8))(v36, v37, v57, &v56, a3, v55, ObjectType);
            swift_unknownObjectRelease();
            (*(v8 + 8))(v39, v38);
            v41 = Description[1];
            v41(v51, a3);
            v41(v52, a3);

            return (v41)(v37, a3);
          }
        }
      }
    }
  }

  else
  {
    specialized Entity.ComponentSet.subscript.setter(a1, v54, a3, *(v55 + 8));
    return (*(v8 + 8))(a1, v7);
  }

  return result;
}

void Entity.ComponentSet.set<A>(_:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v32 = a1;
  Description = a2[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *v3;
  if (one-time initialization token for $current != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v34[0])
  {
    swift_unknownObjectRelease();
    v18 = *(a3 + 8);

    v34[0] = v17;
    Entity.ComponentSet.subscript.getter(a2, v18, v13);

    v29 = Description[6];
    if (v29(v13, 1, a2) == 1)
    {
      (*(v9 + 8))(v13, v8);
    }

    else
    {
      v19 = v31;
      (Description[4])(v31, v13, a2);
      v20 = *(a3 + 16);
      v21 = v32;
      v32 = a3;
      v20(v34, &v33, v19, v21, a2, a3);
      v23 = v33;
      v22 = v34[0];
      static ComponentAnimatableData.== infix(_:_:)(v34, &v33, a2, v18);
      if ((v24 & 1) != 0 || (TaskLocal.get()(), !v34[0]))
      {
        (Description[1])(v31, a2);
      }

      else
      {
        v28 = v34[1];

        v34[0] = v17;
        v25 = v30;
        Entity.ComponentSet.subscript.getter(a2, v18, v30);

        if (v29(v25, 1, a2) == 1)
        {
          __break(1u);
        }

        else
        {
          ObjectType = swift_getObjectType();
          v33 = v23;
          v34[0] = v22;
          (*(v28 + 8))(v17, v25, v34, &v33, a2, v32, ObjectType);
          swift_unknownObjectRelease();
          v27 = Description[1];
          v27(v31, a2);

          v27(v25, a2);
        }
      }
    }
  }

  else
  {
    v34[0] = v17;
    (Description[2])(v16, v32, a2);
    (Description[7])(v16, 0, 1, a2);
    Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)(a2, v16, 0, a2, *(a3 + 8));
    (*(v9 + 8))(v16, v8);
  }
}

float protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance Float@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance Float(double a1)
{
  v2 = a1;
  result = *v1 * v2;
  *v1 = result;
  return result;
}

double protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *v2 - *a1;
  *a2 = result;
  return result;
}

double protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance Double@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

double protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance Double(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

float32x2_t SIMD2<>.scale(by:)(double a1)
{
  v2 = a1;
  result = vmul_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

float32x2_t protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance <> SIMD2<A>@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vsub_f32(*v2, *a1);
  *a2 = result;
  return result;
}

float32x2_t protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance <> SIMD2<A>@<D0>(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  result = vadd_f32(*a1, *v2);
  *a2 = result;
  return result;
}

float32x2_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance <> SIMD2<A>(double a1)
{
  v2 = a1;
  result = vmul_n_f32(*v1, v2);
  *v1 = result;
  return result;
}

float SIMD3<>.scale(by:)(double a1)
{
  v2 = a1;
  v3.i64[0] = vmulq_n_f32(*v1, v2).u64[0];
  result = vmuls_lane_f32(v2, *v1, 2);
  v3.f32[2] = result;
  v3.i32[3] = HIDWORD(*v1);
  *v1 = v3;
  return result;
}

__n128 protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance <> SIMD3<A>@<Q0>(float32x4_t *a1@<X0>, __n128 *a2@<X8>)
{
  result = vsubq_f32(*v2, *a1);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance <> SIMD3<A>@<Q0>(float32x4_t *a1@<X0>, __n128 *a2@<X8>)
{
  result = vaddq_f32(*a1, *v2);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

float protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance <> SIMD3<A>(double a1)
{
  v2 = a1;
  v3.i64[0] = vmulq_n_f32(*v1, v2).u64[0];
  result = vmuls_lane_f32(v2, *v1, 2);
  v3.f32[2] = result;
  v3.i32[3] = HIDWORD(*v1);
  *v1 = v3;
  return result;
}

Swift::Void __swiftcall simd_quatf.scale(by:)(Swift::Double by)
{
  v2 = by;
  simd_slerp(_PromotedConst_1, *v1, v2);
  *v1 = v3;
}

void protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance simd_quatf(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = *v2;
  *v4.i64 = simd_inverse(*a1);
  *&v5 = simd_mul(v4, v6);
  *a2 = v5;
}

void protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance simd_quatf(double a1)
{
  *v3.i64 = simd_quaternion();
  v4 = a1;
  simd_slerp(v3, *v1, v4);
  *v1 = v5;
}

float64x2_t protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance ImplicitlyAnimatableLightColor@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vsubq_f64(*v2, *a1);
  v4 = vsubq_f64(v2[1], a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

float64x2_t protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance ImplicitlyAnimatableLightColor@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vaddq_f64(*a1, *v2);
  v4 = vaddq_f64(a1[1], v2[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

float64x2_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance ImplicitlyAnimatableLightColor(double a1)
{
  v2 = vmulq_n_f64(*v1, a1);
  result = vmulq_n_f64(v1[1], a1);
  *v1 = v2;
  v1[1] = result;
  return result;
}

double protocol witness for RealityKitVectorArithmetic.magnitudeSquared.getter in conformance ImplicitlyAnimatableLightColor()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  return result;
}

void static PhysicallyBasedMaterial.SheenColor.zero.getter(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = specialized SIMD4<>.cgColor.getter(_Q0);
  outlined consume of MaterialParameters.Texture?(0, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
}

void PhysicallyBasedMaterial.BaseColor.rekitMinus(_:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *v1;
  outlined copy of MaterialParameters.Texture?(v3, v4);
  v8 = CGColorRef.components.getter();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = CGColorRef.components.getter();
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16[0] = *(v9 + 32) - *(v10 + 32);
  if (v11 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16[1] = *(v9 + 40) - *(v10 + 40);
  if (v11 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16[2] = *(v9 + 48) - *(v10 + 48);
  if (v11 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16[3] = *(v9 + 56) - *(v10 + 56);
  v13 = CGColorGetColorSpace(v7);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = CGColorCreate(v13, v16);

  if (v15)
  {

    v7 = v15;
LABEL_15:
    *a1 = v7;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    return;
  }

LABEL_25:
  __break(1u);
}

void PhysicallyBasedMaterial.BaseColor.rekitPlus(_:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *v1;
  outlined copy of MaterialParameters.Texture?(v3, v4);
  v8 = CGColorRef.components.getter();
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = CGColorRef.components.getter();
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16[0] = *(v9 + 32) + *(v10 + 32);
  if (v11 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16[1] = *(v9 + 40) + *(v10 + 40);
  if (v11 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16[2] = *(v9 + 48) + *(v10 + 48);
  if (v11 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16[3] = *(v9 + 56) + *(v10 + 56);
  v13 = CGColorGetColorSpace(v7);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = CGColorCreate(v13, v16);

  if (v15)
  {

    v7 = v15;
LABEL_15:
    *a1 = v7;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    return;
  }

LABEL_25:
  __break(1u);
}

void PhysicallyBasedMaterial.BaseColor.scale(by:)(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = CGColorRef.components.getter();
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v10[0] = *(v5 + 32) * a1;
      if (v6 != 1)
      {
        v10[1] = *(v5 + 40) * a1;
        if (v6 >= 3)
        {
          v10[2] = *(v5 + 48) * a1;
          if (v6 != 3)
          {
            v10[3] = *(v5 + 56) * a1;
            v7 = CGColorGetColorSpace(v4);
            if (v7)
            {
              v8 = v7;
              v9 = CGColorCreate(v7, v10);

              if (v9)
              {

                *v2 = v9;
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

double PhysicallyBasedMaterial.BaseColor.magnitudeSquared.getter(double a1)
{
  v1 = CGColorRef.components.getter();
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 >= 4)
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v5 = (v1 + 48);
        v4 = 0.0;
        v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v7 = vmulq_f64(v5[-1], v5[-1]);
          v8 = vmulq_f64(*v5, *v5);
          v4 = v4 + v7.f64[0] + v7.f64[1] + v8.f64[0] + v8.f64[1];
          v5 += 2;
          v6 -= 4;
        }

        while (v6);
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v4 = 0.0;
      }

      v9 = v2 - v3;
      v10 = (v1 + 8 * v3 + 32);
      do
      {
        v11 = *v10++;
        v4 = v4 + v11 * v11;
        --v9;
      }

      while (v9);
    }

    else
    {
      v4 = 0.0;
    }

LABEL_12:

    return v4;
  }

  return 0.0;
}

void static PhysicallyBasedMaterial.EmissiveColor.zero.getter(uint64_t a1@<X8>)
{
  *a1 = specialized SIMD4<>.cgColor.getter(0);
  outlined consume of MaterialParameters.Texture?(0, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
}

CGColorRef static CustomMaterial.BaseColor.zero.getter@<X0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  result = specialized SIMD4<>.cgColor.getter(_Q0);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static CustomMaterial.BaseColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

void CustomMaterial.BaseColor.rekitMinus(_:)(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);

  v6 = v4;
  v7 = CGColorRef.components.getter();
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = CGColorRef.components.getter();
  if (!v9)
  {

    goto LABEL_15;
  }

  v10 = *(v8 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15[0] = *(v8 + 32) - *(v9 + 32);
  if (v10 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15[1] = *(v8 + 40) - *(v9 + 40);
  if (v10 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15[2] = *(v8 + 48) - *(v9 + 48);
  if (v10 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15[3] = *(v8 + 56) - *(v9 + 56);
  v12 = CGColorGetColorSpace(v6);
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = CGColorCreate(v12, v15);

  if (v14)
  {

    v6 = v14;
LABEL_15:
    *a1 = v6;
    *(a1 + 8) = v3;
    *(a1 + 16) = v5;
    return;
  }

LABEL_25:
  __break(1u);
}

void CustomMaterial.BaseColor.rekitPlus(_:)(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);

  v6 = v4;
  v7 = CGColorRef.components.getter();
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = CGColorRef.components.getter();
  if (!v9)
  {

    goto LABEL_15;
  }

  v10 = *(v8 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15[0] = *(v8 + 32) + *(v9 + 32);
  if (v10 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15[1] = *(v8 + 40) + *(v9 + 40);
  if (v10 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15[2] = *(v8 + 48) + *(v9 + 48);
  if (v10 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15[3] = *(v8 + 56) + *(v9 + 56);
  v12 = CGColorGetColorSpace(v6);
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = CGColorCreate(v12, v15);

  if (v14)
  {

    v6 = v14;
LABEL_15:
    *a1 = v6;
    *(a1 + 8) = v3;
    *(a1 + 16) = v5;
    return;
  }

LABEL_25:
  __break(1u);
}

CGColorRef static CustomMaterial.EmissiveColor.zero.getter@<X0>(uint64_t a1@<X8>)
{
  result = specialized SIMD4<>.cgColor.getter(0);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

double MaterialScalarParameter.rekitMinus(_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    outlined consume of MaterialScalarParameter(v4);
    *&result = *&v5 - *&v4;
    *a2 = COERCE_UNSIGNED_INT(*&v5 - *&v4);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

double MaterialScalarParameter.rekitPlus(_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    outlined consume of MaterialScalarParameter(v4);
    *&result = *&v4 + *&v5;
    *a2 = COERCE_UNSIGNED_INT(*&v4 + *&v5);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

Swift::Void __swiftcall MaterialScalarParameter.scale(by:)(Swift::Double by)
{
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v3 = COERCE_FLOAT(*v1);
    outlined consume of MaterialScalarParameter(*v1);
    v4 = by;
    *v1 = COERCE_UNSIGNED_INT(v4 * v3);
  }
}

double MaterialScalarParameter.magnitudeSquared.getter()
{
  result = (COERCE_FLOAT(*v0) * COERCE_FLOAT(*v0));
  if (*v0 < 0)
  {
    return 0.0;
  }

  return result;
}

double protocol witness for RealityKitAdditiveArithmetic.rekitMinus(_:) in conformance MaterialScalarParameter@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    outlined consume of MaterialScalarParameter(v4);
    *&result = *&v5 - *&v4;
    *a2 = COERCE_UNSIGNED_INT(*&v5 - *&v4);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

double protocol witness for RealityKitAdditiveArithmetic.rekitPlus(_:) in conformance MaterialScalarParameter@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 < 0)
  {
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    outlined consume of MaterialScalarParameter(*v2);
    outlined consume of MaterialScalarParameter(v4);
    *&result = *&v4 + *&v5;
    *a2 = COERCE_UNSIGNED_INT(*&v4 + *&v5);
    return result;
  }

  outlined copy of MaterialScalarParameter(v4);
  outlined consume of MaterialScalarParameter(v5);
  outlined consume of MaterialScalarParameter(v4);
  *a2 = v5;

  return outlined copy of MaterialScalarParameter(v5);
}

uint64_t protocol witness for RealityKitVectorArithmetic.scale(by:) in conformance MaterialScalarParameter(double a1)
{
  result = *v1;
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v4 = COERCE_FLOAT(*v1);
    result = outlined consume of MaterialScalarParameter(result);
    v5 = a1;
    *v1 = COERCE_UNSIGNED_INT(v5 * v4);
  }

  return result;
}

double protocol witness for RealityKitVectorArithmetic.magnitudeSquared.getter in conformance MaterialScalarParameter()
{
  result = (COERCE_FLOAT(*v0) * COERCE_FLOAT(*v0));
  if (*v0 < 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - v8;
  v17[0] = *v10;
  v17[1] = v6;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v17[5] = v14;
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.PropertyStorage(0, v17);
  (*(v7 + 16))(v9, a1, v6);
  v15 = _Proto_AnyAnimatableProperty_v1.PropertyStorage.__allocating_init(_:_:)(v9, a2);
  result = (*(v7 + 8))(a1, v6);
  *a3 = v15;
  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__allocating_init(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 192) - 8) + 32))(v4 + *(*v4 + 232), a1);
  *(v4 + *(*v4 + 240)) = a2;
  return v4;
}

uint64_t static _Proto_AnyAnimatableProperty_v1.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.TypeErasedStorage(0, a1, a2, a4);
  result = swift_allocObject();
  *a3 = result;
  return result;
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.TypeErasedStorage.debugPrintValue()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 16) = xmmword_1C1887600;
  *(v0 + 56) = v1;
  strcpy((v0 + 32), "UnknownValue");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  print(_:separator:terminator:)();
}

uint64_t _Proto_AnyAnimatableProperty_v1.TypeErasedStorage.processAdd(_:)@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>)
{
  type metadata accessor for _Proto_AnyAnimatableProperty_v1.TypeErasedStorage(0, *(*v2 + 80), *(*v2 + 88), a2);
  result = swift_allocObject();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.debugPrintValue()()
{
  v1 = v0;
  v2 = *(*v0 + 192);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1887600;
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1C68F3410](0x203D2065756C6156, 0xE800000000000000);
  v7 = *(*v0 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v3 + 8))(v5, v2);
  v8 = v11;
  v9 = v12;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  print(_:separator:terminator:)();
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.assignProperty(toComponent:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return swift_setAtWritableKeyPath();
}

uint64_t *_Proto_AnyAnimatableProperty_v1.PropertyStorage.processAddAndAssign(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  result = swift_dynamicCastClass();
  if (result)
  {
    v14 = result;
    v15 = *(v2 + 232);
    swift_beginAccess();
    v23 = v12;
    v16 = *(v4 + 16);
    v16(v9, &v1[v15], v3);
    v17 = *v14;
    v22 = v2;
    v18 = *(v17 + 232);
    swift_beginAccess();
    v16(v6, v14 + v18, v3);
    v19 = v23;
    (*(*(v22 + 208) + 16))(v6, v3);
    v20 = *(v4 + 8);
    v20(v6, v3);
    v20(v9, v3);
    swift_beginAccess();
    (*(v4 + 40))(&v1[v15], v19, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t *_Proto_AnyAnimatableProperty_v1.PropertyStorage.processSubtractAndAssign(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  result = swift_dynamicCastClass();
  if (result)
  {
    v14 = result;
    v15 = *(v2 + 232);
    swift_beginAccess();
    v23 = v12;
    v16 = *(v4 + 16);
    v16(v9, &v1[v15], v3);
    v17 = *v14;
    v22 = v2;
    v18 = *(v17 + 232);
    swift_beginAccess();
    v16(v6, v14 + v18, v3);
    v19 = v23;
    (*(*(v22 + 208) + 8))(v6, v3);
    v20 = *(v4 + 8);
    v20(v6, v3);
    v20(v9, v3);
    swift_beginAccess();
    (*(v4 + 40))(&v1[v15], v19, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processAdd(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v32 = v13;
  v33 = v29 - v14;
  v15 = swift_dynamicCastClass();
  v16 = *(v3 + 232);
  v17 = (v6 + 16);
  if (v15)
  {
    v18 = v15;
    swift_beginAccess();
    v19 = *(v6 + 16);
    v19(v11, &v2[v16], v5);
    v30 = v19;
    v20 = *(*v18 + 232);
    swift_beginAccess();
    v19(v8, (v18 + v20), v5);
    v21 = *(v4 + 208);
    v22 = *(v21 + 16);

    v29[1] = v6 + 16;
    v22(v8, v5, v21);
    v23 = *(v6 + 8);
    v23(v8, v5);
    v23(v11, v5);
    v24 = v33;
    v30(v11, v33, v5);
    v25 = *&v2[*(*v2 + 240)];

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v11, v25, v31);

    return (v23)(v24, v5);
  }

  else
  {
    swift_beginAccess();
    v27 = v33;
    (*v17)(v33, &v2[v16], v5);
    v28 = *&v2[*(*v2 + 240)];

    return _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v27, v28, v31);
  }
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processSubtract(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v32 = v13;
  v33 = v29 - v14;
  v15 = swift_dynamicCastClass();
  v16 = *(v3 + 232);
  v17 = (v6 + 16);
  if (v15)
  {
    v18 = v15;
    swift_beginAccess();
    v19 = *(v6 + 16);
    v19(v11, &v2[v16], v5);
    v30 = v19;
    v20 = *(*v18 + 232);
    swift_beginAccess();
    v19(v8, (v18 + v20), v5);
    v21 = *(v4 + 208);
    v22 = *(v21 + 8);

    v29[1] = v6 + 16;
    v22(v8, v5, v21);
    v23 = *(v6 + 8);
    v23(v8, v5);
    v23(v11, v5);
    v24 = v33;
    v30(v11, v33, v5);
    v25 = *&v2[*(*v2 + 240)];

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v11, v25, v31);

    return (v23)(v24, v5);
  }

  else
  {
    swift_beginAccess();
    v27 = v33;
    (*v17)(v33, &v2[v16], v5);
    v28 = *&v2[*(*v2 + 240)];

    return _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v27, v28, v31);
  }
}

Swift::Void __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.processScale(_:)(Swift::Double a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 216) + 8))(*(v3 + 192), a1);
  swift_endAccess();
}

Swift::Double __swiftcall _Proto_AnyAnimatableProperty_v1.PropertyStorage.processMagnitudeSquared()()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v9 - v4;
  v6 = *(v1 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  v7 = (*(*(v1 + 216) + 16))(v2);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.processEqual(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v2 + 232);
    swift_beginAccess();
    v13 = *(v4 + 16);
    v13(v9, &v1[v12], v3);
    v14 = *(*v11 + 232);
    swift_beginAccess();
    v13(v6, (v11 + v14), v3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__ivar_destroyer()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));

  return v0;
}

uint64_t _Proto_AnyAnimatableProperty_v1.PropertyStorage.__deallocating_deinit()
{
  _Proto_AnyAnimatableProperty_v1.PropertyStorage.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ComponentAnimatableData.hasValues()()
{
  v2 = v0;
  v3 = *v1;
  v4 = type metadata accessor for AnyKeyPath();
  v6 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, *(v2 + 16), *(v2 + 24), v5);
  return (MEMORY[0x1C68F3180](v3, v4, v6, MEMORY[0x1E69E6930]) & 1) == 0;
}

Swift::Void __swiftcall ComponentAnimatableData.debugPrintProperties()()
{
  v1 = *v0;
  type metadata accessor for AnyKeyPath();
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(**(*(v1 + 56) + ((v7 << 9) | (8 * v8))) + 96);

      v9(v10);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

void ComponentAnimatableData.assignProperties(toComponent:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(v3 + 32);
  v21 = v10;
  v22 = v9;
  v20 = v8;
  (v8)(v6, v10, v4);
  type metadata accessor for AnyKeyPath();
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = *(**(*(v7 + 56) + ((v16 << 9) | (8 * v17))) + 104);

    v18(v6);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v20(v21, v6, v22);
      return;
    }

    v13 = *(v7 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void static ComponentAnimatableData.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = type metadata accessor for AnyKeyPath();
  v10 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, a3, a4, v9);
  v11 = MEMORY[0x1E69E6930];
  v30 = v6;
  v12 = MEMORY[0x1C68F3170](v6, v8, v10, MEMORY[0x1E69E6930]);
  v28 = v7;
  if (v12 == MEMORY[0x1C68F3170](v7, v8, v10, v11))
  {
    v13 = MEMORY[0x1E69E6930];
    v26 = v10;
    v27 = v8;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v29 = v14;

    v20 = 0;
    while (v18)
    {
      v21 = v27;
LABEL_12:
      v23 = *(*(v29 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
      v31 = v23;
      swift_retain_n();
      MEMORY[0x1C68F31A0](&v32, &v31, v30, v21, v26, v13);

      v24 = v32;
      if (!v32)
      {

LABEL_19:

        return;
      }

      v31 = v23;

      MEMORY[0x1C68F31A0](&v32, &v31, v28, v21, v26, v13);

      if (!v32)
      {

        goto LABEL_19;
      }

      v18 &= v18 - 1;
      v25 = (*(*v24 + 168))(v32);

      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v21 = v27;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void static ComponentAnimatableData.+= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = type metadata accessor for AnyKeyPath();
  v10 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, a3, a4, v9);
  v11 = MEMORY[0x1E69E6930];
  v12 = MEMORY[0x1C68F3170](v7, v8, v10, MEMORY[0x1E69E6930]);
  v30 = v6;
  if (v12 == MEMORY[0x1C68F3170](v6, v8, v10, v11))
  {
    v28 = v10;
    v29 = v8;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v31 = v13;

    v19 = 0;
    v27 = v14;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
        v21 = MEMORY[0x1E69E6930];
        v23 = v28;
        v22 = v29;
LABEL_10:
        v24 = *(*(v31 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
        v25 = *a1;
        v33 = v24;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v34, &v33, v25, v22, v23, v21);

        v26 = v34;
        if (!v34)
        {
          break;
        }

        v33 = v24;

        MEMORY[0x1C68F31A0](&v34, &v33, v30, v22, v23, v21);

        if (!v34)
        {

          break;
        }

        v17 &= v17 - 1;
        (*(*v26 + 128))(&v33, v34);
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v19 = v20;
        v14 = v27;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

LABEL_16:
    }

    else
    {
LABEL_6:
      v21 = MEMORY[0x1E69E6930];
      v23 = v28;
      v22 = v29;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void static ComponentAnimatableData.-= infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = type metadata accessor for AnyKeyPath();
  v10 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, a3, a4, v9);
  v11 = MEMORY[0x1E69E6930];
  v12 = MEMORY[0x1C68F3170](v7, v8, v10, MEMORY[0x1E69E6930]);
  v30 = v6;
  if (v12 == MEMORY[0x1C68F3170](v6, v8, v10, v11))
  {
    v28 = v10;
    v29 = v8;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v31 = v13;

    v19 = 0;
    v27 = v14;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
        v21 = MEMORY[0x1E69E6930];
        v23 = v28;
        v22 = v29;
LABEL_10:
        v24 = *(*(v31 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
        v25 = *a1;
        v33 = v24;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v34, &v33, v25, v22, v23, v21);

        v26 = v34;
        if (!v34)
        {
          break;
        }

        v33 = v24;

        MEMORY[0x1C68F31A0](&v34, &v33, v30, v22, v23, v21);

        if (!v34)
        {

          break;
        }

        v17 &= v17 - 1;
        (*(*v26 + 136))(&v33, v34);
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v19 = v20;
        v14 = v27;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

LABEL_16:
    }

    else
    {
LABEL_6:
      v21 = MEMORY[0x1E69E6930];
      v23 = v28;
      v22 = v29;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          goto LABEL_16;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void static ComponentAnimatableData.- infix(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = type metadata accessor for AnyKeyPath();
  v12 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, a3, a4, v11);

  v14 = MEMORY[0x1E69E6930];
  v15 = MEMORY[0x1C68F3170](v13, v10, v12, MEMORY[0x1E69E6930]);
  v32 = v9;
  if (v15 == MEMORY[0x1C68F3170](v9, v10, v12, v14))
  {
    v28 = a5;
    v36 = v8;
    v31 = v10;
    v16 = MEMORY[0x1E69E6930];
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v33 = v17;

    v23 = 0;
    v29 = v22;
    v30 = v8;
    if (v21)
    {
      while (1)
      {
        v24 = v23;
        v25 = v31;
LABEL_10:
        v26 = *(*(v33 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v21)))));
        v34 = v26;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v35, &v34, v8, v25, v12, v16);

        v27 = v35;
        if (!v35)
        {

          goto LABEL_20;
        }

        v34 = v26;

        MEMORY[0x1C68F31A0](&v35, &v34, v32, v25, v12, v16);

        if (!v35)
        {
          break;
        }

        v21 &= v21 - 1;
        (*(*v27 + 136))(&v34, v35);
        v22 = v29;
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v23 = v24;
        v8 = v30;
        if (!v21)
        {
          goto LABEL_6;
        }
      }

LABEL_20:

      *v28 = v30;
    }

    else
    {
LABEL_6:
      v25 = v31;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {

          *v28 = v36;
          return;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
        if (v21)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {

    *a5 = v8;
  }
}

void static ComponentAnimatableData.+ infix(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = type metadata accessor for AnyKeyPath();
  v12 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, a3, a4, v11);

  v14 = MEMORY[0x1E69E6930];
  v15 = MEMORY[0x1C68F3170](v13, v10, v12, MEMORY[0x1E69E6930]);
  v32 = v9;
  if (v15 == MEMORY[0x1C68F3170](v9, v10, v12, v14))
  {
    v28 = a5;
    v36 = v8;
    v31 = v10;
    v16 = MEMORY[0x1E69E6930];
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;
    v33 = v17;

    v23 = 0;
    v29 = v22;
    v30 = v8;
    if (v21)
    {
      while (1)
      {
        v24 = v23;
        v25 = v31;
LABEL_10:
        v26 = *(*(v33 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v21)))));
        v34 = v26;
        swift_retain_n();
        MEMORY[0x1C68F31A0](&v35, &v34, v8, v25, v12, v16);

        v27 = v35;
        if (!v35)
        {

          goto LABEL_20;
        }

        v34 = v26;

        MEMORY[0x1C68F31A0](&v35, &v34, v32, v25, v12, v16);

        if (!v35)
        {
          break;
        }

        v21 &= v21 - 1;
        (*(*v27 + 128))(&v34, v35);
        v22 = v29;
        type metadata accessor for Dictionary();
        Dictionary.updateValue(_:forKey:)();

        v23 = v24;
        v8 = v30;
        if (!v21)
        {
          goto LABEL_6;
        }
      }

LABEL_20:

      *v28 = v30;
    }

    else
    {
LABEL_6:
      v25 = v31;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {

          *v28 = v36;
          return;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
        if (v21)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {

    *a5 = v8;
  }
}

Swift::Void __swiftcall ComponentAnimatableData.scale(by:)(Swift::Double by)
{
  v2 = v1;
  v4 = type metadata accessor for AnyKeyPath();
  v6 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, *(v2 + 16), *(v2 + 24), v5);
  v23 = v4;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v22 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v16 = v23;
    v15 = v24;
    v17 = MEMORY[0x1E69E6930];
LABEL_11:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *v15;
    v25 = *(*(v22 + 48) + ((v14 << 9) | (8 * v18)));

    v20 = MEMORY[0x1C68F31A0](&v26, &v25, v19, v16, v6, v17);
    v21 = v26;
    if (v26)
    {
      (*(*v26 + 144))(v20, by);
      v25 = v21;
      type metadata accessor for Dictionary();

      Dictionary.updateValue(_:forKey:)();
    }

    v13 = v14;
  }

  v16 = v23;
  v15 = v24;
  v17 = MEMORY[0x1E69E6930];
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void ComponentAnimatableData.magnitudeSquared.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for AnyKeyPath();
  v6 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(0, *(a1 + 16), *(a1 + 24), v5);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v8 = v7;
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = 0.0;
  while (1)
  {
    v16 = v14;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = *(*(v8 + 48) + ((v14 << 9) | (8 * v17)));

    v18 = MEMORY[0x1C68F31A0](&v21, &v20, v3, v4, v6, MEMORY[0x1E69E6930]);
    if (v21)
    {
      v19 = (*(*v21 + 160))(v18);

      v15 = v15 + v19;
    }

    else
    {
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v14);
    ++v16;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void ComponentAnimatableData.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AnyKeyPath();
  v8 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(255, a1, a2, v7);
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v10 = specialized Dictionary.init(dictionaryLiteral:)(v9, v6, v8, MEMORY[0x1E69E6930]);

  *a3 = v10;
}

uint64_t static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:)()
{
  return static _ImplicitlyAnimatableBuiltinComponent.animation(from:to:)();
}

{
  static ComponentAnimatableData.zero.getter();

  return static ComponentAnimatableData.zero.getter();
}

void ImplicitAnimatableContext.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AnyKeyPath();
  v8 = type metadata accessor for _Proto_AnyAnimatableProperty_v1(255, a1, a2, v7);
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v10 = MEMORY[0x1E69E6930];
  specialized Dictionary.init(dictionaryLiteral:)(v9, v6, v8, MEMORY[0x1E69E6930]);

  v11 = static Array._allocateUninitialized(_:)();
  specialized Dictionary.init(dictionaryLiteral:)(v11, v6, v8, v10);

  v12 = static Array._allocateUninitialized(_:)();
  v13 = specialized Dictionary.init(dictionaryLiteral:)(v12, v6, v8, v10);

  *a3 = v13;
  v14 = static Array._allocateUninitialized(_:)();
  v15 = specialized Dictionary.init(dictionaryLiteral:)(v14, v6, v8, v10);

  a3[1] = v15;
}

uint64_t registerAnimatableProperties<A>(_:)(void *a1, uint64_t *a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  ImplicitAnimatableContext.init()(a5, a6, v11);
  result = a3(v11);
  v10 = v11[1];
  *a1 = v11[0];
  *a2 = v10;
  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t *a2, float32x4_t a3, float32x4_t a4)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(a3, a4))) & 1) == 0)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_So10simd_quatfaGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_So10simd_quatfaGMR);
    v6 = swift_allocObject();
    v6[1] = a3;
    v6[2].i64[0] = v5;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v5, isUniquelyReferenced_nonNull_native);
    *a2 = v12;
    v8 = swift_allocObject();
    v8[1] = a4;
    v8[2].i64[0] = v5;

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v13 = a2[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v5, v9);

    a2[1] = v13;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a1[1];
  v31 = *a1;
  v32 = v10;
  v33 = *(a1 + 8);
  v11 = a2[1];
  v28 = *a2;
  v29 = v11;
  v30 = *(a2 + 8);
  result = specialized static PhysicallyBasedMaterial.SheenColor.== infix(_:_:)(&v31, &v28);
  if ((result & 1) == 0)
  {
    v13 = v31;
    v14 = v32;
    v15 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 32) = v14;
    *(v16 + 48) = v15;
    *(v16 + 56) = a3;
    swift_retain_n();
    v17 = v13;
    outlined copy of MaterialParameters.Texture?(*(&v13 + 1), v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a3, isUniquelyReferenced_nonNull_native);
    v19 = v28;
    *a4 = v26;
    v20 = *(&v28 + 1);
    v21 = v29;
    v22 = v30;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v20;
    *(v23 + 32) = v21;
    *(v23 + 48) = v22;
    *(v23 + 56) = a3;

    v24 = v19;
    outlined copy of MaterialParameters.Texture?(v20, v21);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v27 = a4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a3, v25);

    a4[1] = v27;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = result;
  if (result < 0)
  {
    if ((a2 & 0x8000000000000000) == 0 || *((result & 0x7FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10))
    {
      goto LABEL_7;
    }
  }

  else if (a2 < 0 || *&result != *&a2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AF23MaterialScalarParameterOGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AF23MaterialScalarParameterOGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a3;
    swift_retain_n();
    outlined copy of MaterialScalarParameter(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v12;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    outlined copy of MaterialScalarParameter(a2);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v13 = a4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a3, v11);

    a4[1] = v13;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(void), uint64_t a10, uint64_t *a11, uint64_t *a12)
{
  a9();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3;
    *(v15 + 40) = a7;

    swift_retain_n();
    v16 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a7, isUniquelyReferenced_nonNull_native);
    *a8 = v21;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;

    v19 = a4;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = a8[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a7, v20);

    a8[1] = v22;
  }

  return result;
}

uint64_t specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(__n128 *, uint64_t, uint64_t), float32x4_t a6, float32x4_t a7)
{
  v9 = vmovn_s32(vceqq_f32(a6, a7));
  if ((v9.i8[0] & 1) == 0 || (v9.i8[2] & 1) == 0 || (v9.i8[4] & 1) == 0)
  {
    v10 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v11 = swift_allocObject();
    *(v11 + 16) = a6;
    *(v11 + 32) = v10;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a2;
    a5(v11, v10, isUniquelyReferenced_nonNull_native);
    *a2 = v17;
    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 32) = v10;

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v18 = a2[1];
    a5(v13, v10, v14);

    a2[1] = v18;
  }

  return result;
}

uint64_t propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a4;
  v22 = a6;
  v11 = *a3;
  v12 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - v14;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v19 = *(v13 + 16);
    v19(v15, a1, v12);
    swift_retain_n();
    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v15, a3, &v25);
    v23 = a3;
    v24 = v25;
    type metadata accessor for AnyKeyPath();
    type metadata accessor for _Proto_AnyAnimatableProperty_v1(255, *(v11 + *MEMORY[0x1E69E6CE8]), a5, v17);
    type metadata accessor for Dictionary();

    Dictionary.subscript.setter();
    v19(v15, a2, v12);

    _Proto_AnyAnimatableProperty_v1.init<A>(_:_:)(v15, a3, &v25);
    v23 = a3;
    v24 = v25;
    return Dictionary.subscript.setter();
  }

  return result;
}

uint64_t static Transform.animation(from:to:)(unint64_t *a1, uint64_t *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v10 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);

  v24 = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit9TransformVGTt0g5Tf4g_n(v10);

  v25 = v12;
  KeyPath = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(KeyPath, &v24, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), a3, a6);

  v14 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v14, &v24, a4, a7);

  v15 = swift_getKeyPath();
  specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v15, &v24, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit9TransformV_s5SIMD3VySfGGMR, specialized _NativeDictionary.setValue(_:forKey:isUnique:), a5, a8);

  v17 = v25;
  *a1 = v24;
  *a2 = v17;
  return result;
}

uint64_t static OpacityComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);

  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_n(v8);

  KeyPath = swift_getKeyPath();
  if (v6 == v7)
  {
  }

  else
  {
    v13 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA16OpacityComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCyAA16OpacityComponentV_SfGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v13;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, isUniquelyReferenced_nonNull_native);
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v13;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v13, v17);
  }

  *a1 = v9;
  *a2 = v10;
  return result;
}

void ModelComponent.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-v6 - 8];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2 + 8);
    if (*(v8 + 16) > v5)
    {
      outlined init with copy of __REAssetService(v8 + 40 * v5 + 32, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
      swift_dynamicCast();
      swift_getAtKeyPath();
      (*(v4 + 8))(v7, v3);
      return;
    }
  }

  __break(1u);
}

uint64_t specialized ModelComponent.subscript.setter(unint64_t a1, uint64_t a2, float a3)
{
  v21 = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1;
  v3 = *(v4 + 8);
  if (v3[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a1 + 4], v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v8, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v19[6] = v14;
  v19[7] = v15;
  v19[8] = v16;
  v20 = v17;
  v19[2] = v10;
  v19[3] = v11;
  v19[4] = v12;
  v19[5] = v13;
  v19[0] = v8;
  v19[1] = v9;
  swift_setAtWritableKeyPath();
  *(&v9 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v10 = &protocol witness table for PhysicallyBasedMaterial;
  *&v8 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v19, v8 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v19);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v8, (v7 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

{
  v11 = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1;
  v3 = *(v4 + 8);
  if (v3[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a1 + 4], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v8, 0, 354);
    return outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v8, 0x162uLL);
  swift_setAtWritableKeyPath();
  *(&v8[1] + 1) = &type metadata for CustomMaterial;
  *&v8[2] = &protocol witness table for CustomMaterial;
  *&v8[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *&v8[0] + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(v8, (v7 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v24 = *a1;
  v25 = v6;
  v26 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  v5 = *(v3 + 8);
  if (v5[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v5[5 * a2 + 4], v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v9 = *(&v24 + 1);
    v10 = v25;

    outlined consume of MaterialParameters.Texture?(v9, v10);

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v11, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v22[6] = v17;
  v22[7] = v18;
  v22[8] = v19;
  v23 = v20;
  v22[2] = v13;
  v22[3] = v14;
  v22[4] = v15;
  v22[5] = v16;
  v22[0] = v11;
  v22[1] = v12;
  swift_setAtWritableKeyPath();
  *(&v12 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v13 = &protocol witness table for PhysicallyBasedMaterial;
  *&v11 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v22, v11 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v22);
  if (v5[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v8 + 4);
    result = outlined init with take of ForceEffectBase(&v11, (v8 + 4));
    *(v3 + 8) = v5;
  }

  return result;
}

{
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v24 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  v5 = *(v3 + 8);
  if (v5[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v5[5 * a2 + 4], v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v9 = *(&v22 + 1);
    v10 = v23;

    outlined consume of MaterialParameters.Texture?(v9, v10);

    v17 = 0u;
    memset(v18, 0, 27);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v11, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
  }

  v20[6] = v17;
  v21[0] = v18[0];
  *(v21 + 11) = *(v18 + 11);
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v20[0] = v11;
  v20[1] = v12;
  swift_setAtWritableKeyPath();
  *(&v12 + 1) = &type metadata for SimpleMaterial;
  *&v13 = &protocol witness table for SimpleMaterial;
  *&v11 = swift_allocObject();
  outlined init with copy of SimpleMaterial(v20, v11 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of SimpleMaterial(v20);
  if (v5[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v8 + 4);
    result = outlined init with take of ForceEffectBase(&v11, (v8 + 4));
    *(v3 + 8) = v5;
  }

  return result;
}

{
  v6 = a1[1];
  v23 = *a1;
  v24 = v6;
  v25 = *(a1 + 8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  v5 = *(v3 + 8);
  if (v5[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v5[5 * a2 + 4], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    v9 = *(&v23 + 1);
    v10 = v24;

    outlined consume of MaterialParameters.Texture?(v9, v10);

    v18 = 0u;
    memset(v19, 0, 30);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v11, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
  }

  v21[6] = v17;
  v21[7] = v18;
  v22[0] = v19[0];
  *(v22 + 14) = *(v19 + 14);
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  v21[0] = v11;
  v21[1] = v12;
  swift_setAtWritableKeyPath();
  *(&v12 + 1) = &type metadata for UnlitMaterial;
  *&v13 = &protocol witness table for UnlitMaterial;
  *&v11 = swift_allocObject();
  outlined init with copy of UnlitMaterial(v21, v11 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of UnlitMaterial(v21);
  if (v5[2] <= v4)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * v4];
    __swift_destroy_boxed_opaque_existential_1(v8 + 4);
    result = outlined init with take of ForceEffectBase(&v11, (v8 + 4));
    *(v3 + 8) = v5;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(unint64_t a1, uint64_t a2, double a3)
{
  v21 = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1;
  v3 = *(v4 + 8);
  if (v3[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a1 + 4], v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v8, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
  }

  v19[6] = v14;
  v19[7] = v15;
  v19[8] = v16;
  v20 = v17;
  v19[2] = v10;
  v19[3] = v11;
  v19[4] = v12;
  v19[5] = v13;
  v19[0] = v8;
  v19[1] = v9;
  swift_setAtWritableKeyPath();
  *(&v9 + 1) = &type metadata for PhysicallyBasedMaterial;
  *&v10 = &protocol witness table for PhysicallyBasedMaterial;
  *&v8 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v19, v8 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of PhysicallyBasedMaterial(v19);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v8, (v7 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

{
  v20[0] = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1;
  v3 = *(v4 + 8);
  if (v3[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a1 + 4], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    v15 = 0u;
    memset(v16, 0, 30);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v8, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
  }

  v18[6] = v14;
  v18[7] = v15;
  v19[0] = v16[0];
  *(v19 + 14) = *(v16 + 14);
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[5] = v13;
  v18[0] = v8;
  v18[1] = v9;
  swift_setAtWritableKeyPath();
  *(&v9 + 1) = &type metadata for UnlitMaterial;
  *&v10 = &protocol witness table for UnlitMaterial;
  *&v8 = swift_allocObject();
  outlined init with copy of UnlitMaterial(v18, v8 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of UnlitMaterial(v18);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(&v8, (v7 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

{
  v11 = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a1;
  v3 = *(v4 + 8);
  if (v3[2] <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a1 + 4], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v8, 0, sizeof(v8));
    return outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v8, 0x162uLL);
  swift_setAtWritableKeyPath();
  *&v8[24] = &type metadata for CustomMaterial;
  *&v8[32] = &protocol witness table for CustomMaterial;
  *v8 = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *v8 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v7 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
    result = outlined init with take of ForceEffectBase(v8, (v7 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = a1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a2;
  v3 = *(v4 + 8);
  if (v3[2] <= a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v3[5 * a2 + 4], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {
    outlined consume of MaterialScalarParameter(a1);

    v15 = 0u;
    memset(v16, 0, 27);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    return outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
  }

  v18[6] = v15;
  v19[0] = v16[0];
  *(v19 + 11) = *(v16 + 11);
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v18[0] = v9;
  v18[1] = v10;
  swift_setAtWritableKeyPath();
  *(&v10 + 1) = &type metadata for SimpleMaterial;
  *&v11 = &protocol witness table for SimpleMaterial;
  *&v9 = swift_allocObject();
  outlined init with copy of SimpleMaterial(v18, v9 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of SimpleMaterial(v18);
  if (v3[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v8 = &v3[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v8 + 4);
    result = outlined init with take of ForceEffectBase(&v9, (v8 + 4));
    *(v4 + 8) = v3;
  }

  return result;
}

uint64_t specialized ModelComponent.subscript.setter(void *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a4;
  v7 = *(v6 + 8);
  if (v7[2] <= a4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(&v7[5 * a4 + 4], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
  if (!swift_dynamicCast())
  {

    memset(v11, 0, sizeof(v11));
    return outlined destroy of BodyTrackingComponent?(v11, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
  }

  memcpy(__dst, v11, 0x162uLL);
  swift_setAtWritableKeyPath();
  *&v11[24] = &type metadata for CustomMaterial;
  *&v11[32] = &protocol witness table for CustomMaterial;
  *v11 = swift_allocObject();
  outlined init with copy of CustomMaterial(__dst, *v11 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:

  result = outlined destroy of CustomMaterial(__dst);
  if (v7[2] <= v5)
  {
    __break(1u);
  }

  else
  {
    v10 = &v7[5 * v5];
    __swift_destroy_boxed_opaque_existential_1(v10 + 4);
    result = outlined init with take of ForceEffectBase(v11, (v10 + 4));
    *(v6 + 8) = v7;
  }

  return result;
}

unint64_t static ModelComponent.animation(from:to:)(unint64_t *a1, unint64_t *a2, float *a3, float *a4)
{
  v6 = *(a3 + 1);
  v7 = *(a4 + 1);
  if (*(v6 + 16) == *(v7 + 16))
  {
    v15 = *a4;
    v8 = *(a3 + 3);
    v9 = *a3;
    v10 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v10);
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v10);

    v16 = v11;
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v10);

    v17 = v12;
    closure #1 in static ModelComponent.animation(from:to:)(&v16, v9, v6, v8, v15, v7);
    result = v17;
    *a1 = v16;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1Vy0F3Kit14ModelComponentVGTt0g5Tf4g_n(v14);
  }

  *a2 = result;
  return result;
}

uint64_t closure #1 in static ModelComponent.animation(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v233 = *(a3 + 16);
  v234 = result;
  if (!v233)
  {
    return result;
  }

  v6 = a6;
  v7 = 0;
  v8 = a3 + 32;
  for (i = a6 + 32; ; i += 40)
  {
    v235 = v8;
    outlined init with copy of __REAssetService(v8, v268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      memset(v269, 0, 146);
      v28 = v269;
      goto LABEL_24;
    }

    v270[6] = v269[6];
    v270[7] = v269[7];
    v270[8] = v269[8];
    LOWORD(v270[9]) = v269[9];
    v270[2] = v269[2];
    v270[3] = v269[3];
    v270[4] = v269[4];
    v270[5] = v269[5];
    v270[0] = v269[0];
    v270[1] = v269[1];
    if (v7 >= *(v6 + 16))
    {
      break;
    }

    outlined init with copy of __REAssetService(i, &v257);
    if (swift_dynamicCast())
    {
      v269[6] = v268[6];
      v269[7] = v268[7];
      v269[8] = v268[8];
      LOWORD(v269[9]) = v268[9];
      v269[2] = v268[2];
      v269[3] = v268[3];
      v269[4] = v268[4];
      v269[5] = v268[5];
      v269[0] = v268[0];
      v269[1] = v268[1];
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, 0, 0, &v257);
      v279[0] = v257;
      v279[1] = v258;
      v280 = v259;
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, 0, 0, &v252);
      v281[0] = v252;
      v281[1] = v253;
      v282 = v254;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v23 = swift_getKeyPath();
      specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v279, v281, v23, v234, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

      outlined destroy of PhysicallyBasedMaterial.BaseColor(v281);
      outlined destroy of PhysicallyBasedMaterial.BaseColor(v279);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v268, &v257);
      v24 = *&v257;
      outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v268, &v252);
      v25 = *&v252;
      outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
      v26 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v26);
      v27 = swift_getKeyPath();
      if (v24 == v25)
      {
      }

      else
      {
        v49 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v50 = swift_allocObject();
        *(v50 + 16) = v24;
        *(v50 + 24) = v49;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = *v234;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v49, isUniquelyReferenced_nonNull_native);
        *v234 = *&v268[0];
        v52 = swift_allocObject();
        *(v52 + 16) = v25;
        *(v52 + 24) = v49;

        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = v234[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v49, v53);

        v234[1] = *&v268[0];
      }

      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v268, &v257);
      v54 = *&v257;
      outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v268, &v252);
      v55 = *&v252;
      outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
      v56 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v56);
      v57 = swift_getKeyPath();
      if (v54 == v55)
      {
      }

      else
      {
        v58 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v59 = swift_allocObject();
        *(v59 + 16) = v54;
        *(v59 + 24) = v58;
        swift_retain_n();
        v60 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = *v234;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v58, v60);
        *v234 = *&v268[0];
        v61 = swift_allocObject();
        *(v61 + 16) = v55;
        *(v61 + 24) = v58;

        v62 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = v234[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v58, v62);

        v234[1] = *&v268[0];
      }

      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v268, &v257);
      v63 = *&v257;
      outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v268, &v252);
      v64 = *&v252;
      outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
      v65 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v65);
      v66 = swift_getKeyPath();
      if (v63 == v64)
      {
      }

      else
      {
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v68 = swift_allocObject();
        *(v68 + 16) = v63;
        *(v68 + 24) = v67;
        swift_retain_n();
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = *v234;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v67, v69);
        *v234 = *&v268[0];
        v70 = swift_allocObject();
        *(v70 + 16) = v64;
        *(v70 + 24) = v67;

        v71 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = v234[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v67, v71);

        v234[1] = *&v268[0];
      }

      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v268, &v257);
      v72 = *&v257;
      outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v268, &v252);
      v73 = *&v252;
      outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
      v74 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v74);
      v75 = swift_getKeyPath();
      if (v72 == v73)
      {
      }

      else
      {
        v76 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v77 = swift_allocObject();
        *(v77 + 16) = v72;
        *(v77 + 24) = v76;
        swift_retain_n();
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = *v234;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v76, v78);
        *v234 = *&v268[0];
        v79 = swift_allocObject();
        *(v79 + 16) = v73;
        *(v79 + 24) = v76;

        v80 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = v234[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v76, v80);

        v234[1] = *&v268[0];
      }

      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v268, &v257);
      v81 = *&v257;
      outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
      PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v268, &v252);
      v82 = *&v252;
      outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
      v83 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v83);
      v84 = swift_getKeyPath();
      if (v81 == v82)
      {

        if ((WORD5(v270[6]) & 0x800) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v85 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
        v86 = swift_allocObject();
        *(v86 + 16) = v81;
        *(v86 + 24) = v85;
        swift_retain_n();
        v87 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = *v234;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v86, v85, v87);
        *v234 = *&v268[0];
        v88 = swift_allocObject();
        *(v88 + 16) = v82;
        *(v88 + 24) = v85;

        v89 = swift_isUniquelyReferenced_nonNull_native();
        *&v268[0] = v234[1];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v85, v89);

        v234[1] = *&v268[0];
        if ((WORD5(v270[6]) & 0x800) == 0)
        {
LABEL_60:
          *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v268[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
          PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v268, &v257);
          v96 = *&v257;
          outlined consume of MaterialParameters.Texture?(*(&v257 + 1), v258);
          *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v268[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
          PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v268, &v252);
          v97 = *&v252;
          outlined consume of MaterialParameters.Texture?(*(&v252 + 1), v253);
          v98 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v98);
          v99 = swift_getKeyPath();
          if (v96 == v97)
          {
          }

          else
          {
            v100 = v99;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v101 = swift_allocObject();
            *(v101 + 16) = v96;
            *(v101 + 24) = v100;
            swift_retain_n();
            v102 = swift_isUniquelyReferenced_nonNull_native();
            *&v268[0] = *v234;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v100, v102);
            *v234 = *&v268[0];
            v103 = swift_allocObject();
            *(v103 + 16) = v97;
            *(v103 + 24) = v100;

            v104 = swift_isUniquelyReferenced_nonNull_native();
            *&v268[0] = v234[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, v100, v104);

            v234[1] = *&v268[0];
          }

          *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v268[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
          PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v268, &v265);
          v105 = v265;
          outlined consume of MaterialParameters.Texture?(v266, v267);
          *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
          *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
          *&v268[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
          PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v268, &v262);
          v106 = v262;
          outlined consume of MaterialParameters.Texture?(v263, v264);
          v107 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v107);
          v108 = swift_getKeyPath();
          if (v105 == v106)
          {
          }

          else
          {
            v109 = v108;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v110 = swift_allocObject();
            *(v110 + 16) = v105;
            *(v110 + 24) = v109;
            swift_retain_n();
            v111 = swift_isUniquelyReferenced_nonNull_native();
            *&v268[0] = *v234;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, v109, v111);
            *v234 = *&v268[0];
            v112 = swift_allocObject();
            *(v112 + 16) = v106;
            *(v112 + 24) = v109;

            v113 = swift_isUniquelyReferenced_nonNull_native();
            *&v268[0] = v234[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, v109, v113);

            v234[1] = *&v268[0];
          }

          v114 = *&v270[2];

          v115 = v114;

          specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v115, &v257);
          if (v261 == 255)
          {
            __MaterialResource.subscript.getter(v268);
          }

          else
          {
            v268[0] = v257;
            v268[1] = v258;
            v268[2] = v259;
            v268[3] = v260;
            LOBYTE(v268[4]) = v261;
          }

          v254 = v268[2];
          v255 = v268[3];
          v256 = v268[4];
          v252 = v268[0];
          v253 = v268[1];
          v116 = 0.0;
          if (LOBYTE(v268[4]) != 255)
          {
            if (LOBYTE(v268[4]) == 2)
            {
              v116 = *&v252;
            }

            outlined destroy of BodyTrackingComponent?(&v252, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          }

          v117 = *&v269[2];

          v118 = v117;

          specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v118, v245);
          if (v246 == 255)
          {
            __MaterialResource.subscript.getter(&v247);
          }

          else
          {
            v247 = v245[0];
            v248 = v245[1];
            v249 = v245[2];
            v250 = v245[3];
            v251 = v246;
          }

          v243[1] = v248;
          v243[2] = v249;
          v243[3] = v250;
          v244 = v251;
          v243[0] = v247;
          v119 = 0.0;
          if (v251 != 255)
          {
            if (v251 == 2)
            {
              v119 = *v243;
            }

            outlined destroy of BodyTrackingComponent?(v243, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          }

          v120 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v120);
          v121 = swift_getKeyPath();
          if (v116 == v119)
          {

            v122 = v234;
          }

          else
          {
            v123 = v121;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
            v124 = swift_allocObject();
            *(v124 + 16) = v116;
            *(v124 + 24) = v123;
            swift_retain_n();
            v122 = v234;
            v125 = swift_isUniquelyReferenced_nonNull_native();
            v238[0] = *v234;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v123, v125);
            *v234 = v238[0];
            v126 = swift_allocObject();
            *(v126 + 16) = v119;
            *(v126 + 24) = v123;

            v127 = swift_isUniquelyReferenced_nonNull_native();
            v238[0] = v234[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, v123, v127);

            v234[1] = v238[0];
          }

          v239 = &type metadata for PhysicallyBasedMaterial;
          v240 = &protocol witness table for PhysicallyBasedMaterial;
          v238[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v270, v238[0] + 16);
          PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v238, v241);
          v271[0] = v241[0];
          v271[1] = v241[1];
          v272 = v242;
          v239 = &type metadata for PhysicallyBasedMaterial;
          v240 = &protocol witness table for PhysicallyBasedMaterial;
          v238[0] = swift_allocObject();
          outlined init with copy of PhysicallyBasedMaterial(v269, v238[0] + 16);
          PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v238, v236);
          v273[0] = v236[0];
          v273[1] = v236[1];
          v274 = v237;
          v128 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v128);
          v129 = swift_getKeyPath();
          specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v271, v273, v129, v122, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV13EmissiveColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV13EmissiveColorVGMR);

          outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v273);
          outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v271);
          specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v238);
          v130 = v238[0];
          specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v241);
          v131 = *&v241[0];
          v132 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v132);
          v133 = swift_getKeyPath();
          v134 = vceq_f32(v130, v131);
          if (v134.i32[0] & v134.i32[1])
          {
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
            v135 = swift_allocObject();
            *(v135 + 16) = v130;
            *(v135 + 24) = v133;
            swift_retain_n();
            v136 = swift_isUniquelyReferenced_nonNull_native();
            *&v236[0] = *v122;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v135, v133, v136);
            *v122 = *&v236[0];
            v137 = swift_allocObject();
            *(v137 + 16) = v131;
            *(v137 + 24) = v133;

            v138 = swift_isUniquelyReferenced_nonNull_native();
            *&v236[0] = v122[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v137, v133, v138);

            v122[1] = *&v236[0];
          }

          specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v238);
          v139 = v238[0];
          specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v241);
          v140 = *&v241[0];
          v141 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v141);
          v142 = swift_getKeyPath();
          v143 = vceq_f32(v139, v140);
          if (v143.i32[0] & v143.i32[1])
          {
          }

          else
          {
            v144 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
            v145 = swift_allocObject();
            *(v145 + 16) = v139;
            *(v145 + 24) = v144;
            swift_retain_n();
            v146 = swift_isUniquelyReferenced_nonNull_native();
            *&v236[0] = *v234;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v145, v144, v146);
            *v234 = *&v236[0];
            v147 = swift_allocObject();
            *(v147 + 16) = v140;
            *(v147 + 24) = v144;

            v148 = swift_isUniquelyReferenced_nonNull_native();
            *&v236[0] = v234[1];
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v147, v144, v148);

            v234[1] = *&v236[0];
          }

          v8 = v235;
          v6 = a6;
          outlined destroy of PhysicallyBasedMaterial(v269);
          result = outlined destroy of PhysicallyBasedMaterial(v270);
          goto LABEL_16;
        }
      }

      *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
      *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
      *&v268[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
      PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v268, &v257);
      v90 = *(&v257 + 1);
      v91 = v258;

      outlined consume of MaterialParameters.Texture?(v90, v91);
      if ((WORD5(v269[6]) & 0x800) != 0)
      {
        *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v268, &v257);
        v92 = *(&v257 + 1);
        v93 = v258;

        outlined consume of MaterialParameters.Texture?(v92, v93);
        *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v270, *&v268[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v268, &v257);
        v275[0] = v257;
        v275[1] = v258;
        v276 = v259;
        *(&v268[1] + 1) = &type metadata for PhysicallyBasedMaterial;
        *&v268[2] = &protocol witness table for PhysicallyBasedMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v269, *&v268[0] + 16);
        PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v268, &v257);
        v277[0] = v257;
        v277[1] = v258;
        v278 = v259;
        v94 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v94);
        v95 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v275, v277, v95, v234, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV10SheenColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV10SheenColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.SheenColor(v275);
        outlined destroy of PhysicallyBasedMaterial.SheenColor(v277);
      }

      goto LABEL_60;
    }

    outlined destroy of PhysicallyBasedMaterial(v270);
    memset(v268, 0, 146);
    v28 = v268;
LABEL_24:
    outlined destroy of BodyTrackingComponent?(v28, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMd, &_s17RealityFoundation23PhysicallyBasedMaterialVSgMR);
    outlined init with copy of __REAssetService(v8, v268);
    result = swift_dynamicCast();
    if (result)
    {
      v270[5] = v269[5];
      v270[6] = v269[6];
      v270[7] = v269[7];
      *(&v270[7] + 11) = *(&v269[7] + 11);
      v270[2] = v269[2];
      v270[3] = v269[3];
      v270[4] = v269[4];
      v270[0] = v269[0];
      v270[1] = v269[1];
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_117;
      }

      outlined init with copy of __REAssetService(i, &v257);
      if (swift_dynamicCast())
      {
        v269[6] = v268[6];
        v269[7] = v268[7];
        *(&v269[7] + 11) = *(&v268[7] + 11);
        v269[2] = v268[2];
        v269[3] = v268[3];
        v269[4] = v268[4];
        v269[5] = v268[5];
        v269[0] = v268[0];
        v269[1] = v268[1];
        *(&v268[1] + 1) = &type metadata for SimpleMaterial;
        *&v268[2] = &protocol witness table for SimpleMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of SimpleMaterial(v270, *&v268[0] + 16);
        v10 = v270[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, v10, *(&v10 + 1), &v257);
        v283[0] = v257;
        v283[1] = v258;
        v284 = v259;
        *(&v268[1] + 1) = &type metadata for SimpleMaterial;
        *&v268[2] = &protocol witness table for SimpleMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of SimpleMaterial(v269, *&v268[0] + 16);
        v11 = v269[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, v11, *(&v11 + 1), &v252);
        v285[0] = v252;
        v285[1] = v253;
        v286 = v254;
        v12 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v12);
        v13 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v283, v285, v13, v234, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.BaseColor(v285);
        outlined destroy of PhysicallyBasedMaterial.BaseColor(v283);
        specialized Material.getScalarParameter(_:)(0, v268);
        if (*&v268[0] >> 60 == 15)
        {
          v14 = 1065353216;
        }

        else
        {
          v14 = *&v268[0];
        }

        specialized Material.getScalarParameter(_:)(0, v268);
        if (*&v268[0] >> 60 == 15)
        {
          v15 = 1065353216;
        }

        else
        {
          v15 = *&v268[0];
        }

        v16 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v16);
        v17 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v14, v15, v17, v234);

        outlined consume of MaterialScalarParameter(v14);
        outlined consume of MaterialScalarParameter(v15);
        specialized Material.getScalarParameter(_:)(1, v268);
        if (*&v268[0] >> 60 == 15)
        {
          v18 = 0;
        }

        else
        {
          v18 = *&v268[0];
        }

        specialized Material.getScalarParameter(_:)(1, v268);
        if (*&v268[0] >> 60 == 15)
        {
          v19 = 0;
        }

        else
        {
          v19 = *&v268[0];
        }

        v20 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v20);
        v21 = swift_getKeyPath();
        v6 = a6;
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v18, v19, v21, v234);

        outlined consume of MaterialScalarParameter(v18);
        outlined consume of MaterialScalarParameter(v19);
        outlined destroy of SimpleMaterial(v269);
        result = outlined destroy of SimpleMaterial(v270);
        goto LABEL_16;
      }

      outlined destroy of SimpleMaterial(v270);
      memset(v268, 0, 139);
      outlined destroy of BodyTrackingComponent?(v268, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
    }

    else
    {
      memset(v269, 0, 139);
      outlined destroy of BodyTrackingComponent?(v269, &_s10RealityKit14SimpleMaterialVSgMd, &_s10RealityKit14SimpleMaterialVSgMR);
    }

    outlined init with copy of __REAssetService(v8, v268);
    result = swift_dynamicCast();
    if (result)
    {
      v270[6] = v269[6];
      v270[7] = v269[7];
      v270[8] = v269[8];
      *(&v270[8] + 14) = *(&v269[8] + 14);
      v270[2] = v269[2];
      v270[3] = v269[3];
      v270[4] = v269[4];
      v270[5] = v269[5];
      v270[0] = v269[0];
      v270[1] = v269[1];
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_118;
      }

      outlined init with copy of __REAssetService(i, &v257);
      if (swift_dynamicCast())
      {
        v269[6] = v268[6];
        v269[7] = v268[7];
        v269[8] = v268[8];
        *(&v269[8] + 14) = *(&v268[8] + 14);
        v269[2] = v268[2];
        v269[3] = v268[3];
        v269[4] = v268[4];
        v269[5] = v268[5];
        v269[0] = v268[0];
        v269[1] = v268[1];
        *(&v268[1] + 1) = &type metadata for UnlitMaterial;
        *&v268[2] = &protocol witness table for UnlitMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of UnlitMaterial(v270, *&v268[0] + 16);
        v29 = v270[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, v29, *(&v29 + 1), &v257);
        v287[0] = v257;
        v287[1] = v258;
        v288 = v259;
        *(&v268[1] + 1) = &type metadata for UnlitMaterial;
        *&v268[2] = &protocol witness table for UnlitMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of UnlitMaterial(v269, *&v268[0] + 16);
        v30 = v269[5];

        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v268, v30, *(&v30 + 1), &v252);
        v289[0] = v252;
        v289[1] = v253;
        v290 = v254;
        v31 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v31);
        v32 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v287, v289, v32, v234, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA23PhysicallyBasedMaterialV9BaseColorVGMR);

        outlined destroy of PhysicallyBasedMaterial.BaseColor(v289);
        outlined destroy of PhysicallyBasedMaterial.BaseColor(v287);
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v268);
        v33 = *&v268[0];
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, &v257);
        v34 = v257;
        v35 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v35);
        v36 = swift_getKeyPath();
        v37 = vceq_f32(v33, v34);
        if (v37.i32[0] & v37.i32[1])
        {
        }

        else
        {
          v149 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v150 = swift_allocObject();
          *(v150 + 16) = v33;
          *(v150 + 24) = v149;
          swift_retain_n();
          v151 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v150, v149, v151);
          *v234 = v252;
          v152 = swift_allocObject();
          *(v152 + 16) = v34;
          *(v152 + 24) = v149;

          v153 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v152, v149, v153);

          v234[1] = v252;
        }

        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v268);
        v154 = *&v268[0];
        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, &v257);
        v155 = v257;
        v156 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v156);
        v157 = swift_getKeyPath();
        v158 = vceq_f32(v154, v155);
        if (v158.i32[0] & v158.i32[1])
        {
        }

        else
        {
          v159 = v157;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v160 = swift_allocObject();
          *(v160 + 16) = v154;
          *(v160 + 24) = v159;
          swift_retain_n();
          v161 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v160, v159, v161);
          *v234 = v252;
          v162 = swift_allocObject();
          *(v162 + 16) = v155;
          *(v162 + 24) = v159;

          v163 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v162, v159, v163);

          v234[1] = v252;
        }

        v8 = v235;
        v6 = a6;
        outlined destroy of UnlitMaterial(v269);
        result = outlined destroy of UnlitMaterial(v270);
        goto LABEL_16;
      }

      outlined destroy of UnlitMaterial(v270);
      memset(v268, 0, 158);
      v38 = v268;
    }

    else
    {
      memset(v269, 0, 158);
      v38 = v269;
    }

    outlined destroy of BodyTrackingComponent?(v38, &_s10RealityKit13UnlitMaterialVSgMd, &_s10RealityKit13UnlitMaterialVSgMR);
    outlined init with copy of __REAssetService(v8, v268);
    if (swift_dynamicCast())
    {
      result = memcpy(v270, v269, 0x162uLL);
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_119;
      }

      outlined init with copy of __REAssetService(i, &v257);
      if (swift_dynamicCast())
      {
        memcpy(v269, v268, 0x162uLL);
        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.BaseColor.init(material:alternateTintKey:)(v268, 0, 0, &v257);
        v39 = v257;
        v231 = v258;
        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.BaseColor.init(material:alternateTintKey:)(v268, 0, 0, &v252);
        v40 = v252;
        v41 = v253;
        v42 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v42);
        v43 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v39, *(&v39 + 1), v231, v40, *(&v40 + 1), v41, v43, v234, lazy protocol witness table accessor for type CustomMaterial.BaseColor and conformance CustomMaterial.BaseColor, &type metadata for CustomMaterial.BaseColor, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV9BaseColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV9BaseColorVGMR);

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.Roughness.init(material:alternateTintKey:)(v268, &v257);
        v44 = *&v257;

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.Roughness.init(material:alternateTintKey:)(v268, &v252);
        v45 = *&v252;

        v46 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v46);
        v47 = swift_getKeyPath();
        if (v44 == v45)
        {
        }

        else
        {
          v164 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v165 = swift_allocObject();
          *(v165 + 16) = v44;
          *(v165 + 24) = v164;
          swift_retain_n();
          v166 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v165, v164, v166);
          *v234 = *&v268[0];
          v167 = swift_allocObject();
          *(v167 + 16) = v45;
          *(v167 + 24) = v164;

          v168 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v167, v164, v168);

          v234[1] = *&v268[0];
        }

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.Metallic.init(material:alternateTintKey:)(v268, &v257);
        v169 = *&v257;

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.Metallic.init(material:alternateTintKey:)(v268, &v252);
        v170 = *&v252;

        v171 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v171);
        v172 = swift_getKeyPath();
        if (v169 == v170)
        {
        }

        else
        {
          v173 = v172;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v174 = swift_allocObject();
          *(v174 + 16) = v169;
          *(v174 + 24) = v173;
          swift_retain_n();
          v175 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v173, v175);
          *v234 = *&v268[0];
          v176 = swift_allocObject();
          *(v176 + 16) = v170;
          *(v176 + 24) = v173;

          v177 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, v173, v177);

          v234[1] = *&v268[0];
        }

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.Specular.init(material:alternateTintKey:)(v268, &v257);
        v178 = *&v257;

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.Specular.init(material:alternateTintKey:)(v268, &v252);
        v179 = *&v252;

        v180 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v180);
        v181 = swift_getKeyPath();
        if (v178 == v179)
        {
        }

        else
        {
          v182 = v181;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v183 = swift_allocObject();
          *(v183 + 16) = v178;
          *(v183 + 24) = v182;
          swift_retain_n();
          v184 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v182, v184);
          *v234 = *&v268[0];
          v185 = swift_allocObject();
          *(v185 + 16) = v179;
          *(v185 + 24) = v182;

          v186 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v182, v186);

          v234[1] = *&v268[0];
        }

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v268, &v257);
        v187 = *&v257;

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.Clearcoat.init(material:alternateTintKey:)(v268, &v252);
        v188 = *&v252;

        v189 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v189);
        v190 = swift_getKeyPath();
        if (v187 == v188)
        {
        }

        else
        {
          v191 = v190;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v192 = swift_allocObject();
          *(v192 + 16) = v187;
          *(v192 + 24) = v191;
          swift_retain_n();
          v193 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v192, v191, v193);
          *v234 = *&v268[0];
          v194 = swift_allocObject();
          *(v194 + 16) = v188;
          *(v194 + 24) = v191;

          v195 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v194, v191, v195);

          v234[1] = *&v268[0];
        }

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v268, &v257);
        v196 = *&v257;

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v268, &v252);
        v197 = *&v252;

        v198 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v198);
        v199 = swift_getKeyPath();
        if (v196 == v197)
        {
        }

        else
        {
          v200 = v199;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_SfGMR);
          v201 = swift_allocObject();
          *(v201 + 16) = v196;
          *(v201 + 24) = v200;
          swift_retain_n();
          v202 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v201, v200, v202);
          *v234 = *&v268[0];
          v203 = swift_allocObject();
          *(v203 + 16) = v197;
          *(v203 + 24) = v200;

          v204 = swift_isUniquelyReferenced_nonNull_native();
          *&v268[0] = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v203, v200, v204);

          v234[1] = *&v268[0];
        }

        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v270, *&v268[0] + 16);
        CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v268, &v257);
        v205 = v257;
        v206 = v258;
        *(&v268[1] + 1) = &type metadata for CustomMaterial;
        *&v268[2] = &protocol witness table for CustomMaterial;
        *&v268[0] = swift_allocObject();
        outlined init with copy of CustomMaterial(v269, *&v268[0] + 16);
        CustomMaterial.EmissiveColor.init(material:alternateTintKey:)(v268, &v252);
        v207 = v252;
        v208 = v253;
        v209 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v209);
        v210 = swift_getKeyPath();
        specialized propertyCanAnimate<A, B>(from:to:keyPath:animatableContext:)(v205, *(&v205 + 1), v206, v207, *(&v207 + 1), v208, v210, v234, lazy protocol witness table accessor for type CustomMaterial.EmissiveColor and conformance CustomMaterial.EmissiveColor, &type metadata for CustomMaterial.EmissiveColor, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV13EmissiveColorVGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_AA14CustomMaterialV13EmissiveColorVGMR);

        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, v268);
        v211 = *&v268[0];
        specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, &v257);
        v212 = v257;
        v213 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v213);
        v214 = swift_getKeyPath();
        v215 = vceq_f32(v211, v212);
        if (v215.i32[0] & v215.i32[1])
        {
        }

        else
        {
          v216 = v214;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v217 = swift_allocObject();
          *(v217 + 16) = v211;
          *(v217 + 24) = v216;
          swift_retain_n();
          v218 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v217, v216, v218);
          *v234 = v252;
          v219 = swift_allocObject();
          *(v219 + 16) = v212;
          *(v219 + 24) = v216;

          v220 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, v216, v220);

          v234[1] = v252;
        }

        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, v268);
        v221 = *&v268[0];
        specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, &v257);
        v222 = v257;
        v223 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v223);
        v224 = swift_getKeyPath();
        v225 = vceq_f32(v221, v222);
        if (v225.i32[0] & v225.i32[1])
        {
        }

        else
        {
          v226 = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMd, &_s17RealityFoundation31_Proto_AnyAnimatableProperty_v1V0F7StorageCy0A3Kit14ModelComponentV_s5SIMD2VySfGGMR);
          v227 = swift_allocObject();
          *(v227 + 16) = v221;
          *(v227 + 24) = v226;
          swift_retain_n();
          v228 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = *v234;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v227, v226, v228);
          *v234 = v252;
          v229 = swift_allocObject();
          *(v229 + 16) = v222;
          *(v229 + 24) = v226;

          v230 = swift_isUniquelyReferenced_nonNull_native();
          *&v252 = v234[1];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v229, v226, v230);

          v234[1] = v252;
        }

        v8 = v235;
        v6 = a6;
        outlined destroy of CustomMaterial(v269);
        result = outlined destroy of CustomMaterial(v270);
        goto LABEL_16;
      }

      outlined destroy of CustomMaterial(v270);
      memset(v268, 0, 354);
      v48 = v268;
    }

    else
    {
      memset(v269, 0, 354);
      v48 = v269;
    }

    result = outlined destroy of BodyTrackingComponent?(v48, &_s17RealityFoundation14CustomMaterialVSgMd, &_s17RealityFoundation14CustomMaterialVSgMR);
LABEL_16:
    ++v7;
    v8 += 40;
    if (v233 == v7)
    {
      return result;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}