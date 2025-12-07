uint64_t __SceneResource.makeRootEntity(withAnchoringComponent:hasAnchoringComponent:preferAnchorEntity:)(char a1, _BYTE *a2, int a3)
{
  v30 = a3;
  v5 = specialized static __ServiceLocator.shared.getter();
  String.utf8CString.getter();

  v6 = RESceneCreate();

  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v27);
  v8 = v28;
  v7 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v7 + 32))(v8, v7);
  v9 = RESceneLoadFromAsset();
  __swift_destroy_boxed_opaque_existential_1(v27);
  if ((v9 & 1) == 0)
  {
    RERelease();

    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError();
    swift_allocError();
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v20 - 8) + 56))(v19, 1, 2, v20);
    swift_willThrow();
    return v7;
  }

  type metadata accessor for Scene();
  swift_allocObject();
  Scene.init(coreScene:)(v6);
  RERelease();

  EntitiesArray = RESceneGetEntitiesArray();
  if (v10 != 1)
  {
    v12 = v10;
    v7 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E6530];
    *(v13 + 16) = xmmword_1C1887600;
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = v12;
    type metadata accessor for OS_os_log();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Expected exactly one root entity, got %d", v26);

    if (!v12)
    {
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError();
      swift_allocError();
      v24 = v23;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v25 - 8) + 56))(v24, 1, 2, v25);
      swift_willThrow();

      return v7;
    }
  }

  v17 = *EntitiesArray;
  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    *a2 = 1;
    if (a1)
    {
LABEL_6:
      REAnchoringComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      goto LABEL_11;
    }
  }

  else
  {
    *a2 = 0;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  REAnchoringComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REEntityRemoveComponent();
  }

LABEL_11:
  REAnchorComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REEntityRemoveComponent();
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    goto LABEL_20;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    if (v30)
    {
      REAnchoringComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        type metadata accessor for AnchorEntity();
        v7 = swift_allocObject();
        *(v7 + 16) = v17;
        MEMORY[0x1C68F9740](v17, v7);
LABEL_21:
        REEntitySetParent();

        return v7;
      }
    }

    v21 = makeEntity(for:)(v17);
LABEL_20:
    v7 = v21;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t __SceneResource.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t __SceneResource.coreHandle.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[3] = MEMORY[0x1E69E6B70];
  v7[0] = v3;
  outlined init with copy of Any(v7, v6);
  swift_dynamicCast();
  *a1 = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t static __SceneResource.fromCoreRetained(_:)(uint64_t *a1)
{
  v1 = *a1;
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t __SceneResource.makeScene(named:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  String.utf8CString.getter();

  v3 = RESceneCreate();

  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 32))(v4, v5);
  v6 = RESceneLoadFromAsset();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v6)
  {
    type metadata accessor for Scene();
    swift_allocObject();
    v7 = Scene.init(coreScene:)(v3);
    RERelease();

    return v7;
  }

  else
  {
    RERelease();

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError()
{
  result = lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError;
  if (!lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError)
  {
    v3 = type metadata accessor for SceneResourceLoadResult.InternalError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SceneResourceLoadResult.InternalError, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError);
  }

  return result;
}

uint64_t PhysicallyBasedMaterial.normal.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

void PhysicallyBasedMaterial.blending.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 106))
  {
    v11 = &type metadata for PhysicallyBasedMaterial;
    v12 = &protocol witness table for PhysicallyBasedMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(v10, &v13);
    if (RELinkedOnOrAfterFall2024OSVersions())
    {
      v3 = v13;
    }

    else
    {
      v11 = &type metadata for PhysicallyBasedMaterial;
      v12 = &protocol witness table for PhysicallyBasedMaterial;
      v10[0] = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v10, 0, 0, v9);
      v4 = v9[0];
      outlined consume of MaterialParameters.Texture?(v9[1], v9[2]);
      Alpha = CGColorGetAlpha(v4);

      v6 = Alpha;
      v3 = v6;
    }

    v7 = v15;
    v8 = v16;
    *a1 = LODWORD(v3);
    *(a1 + 8) = v14;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = xmmword_1C1887610;
    *(a1 + 32) = 0;
  }
}

uint64_t PhysicallyBasedMaterial.ambientOcclusion.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

void PhysicallyBasedMaterial.sheen.getter(uint64_t a1@<X8>)
{
  if ((*(v1 + 106) & 0x800) != 0)
  {
    v7[3] = &type metadata for PhysicallyBasedMaterial;
    v7[4] = &protocol witness table for PhysicallyBasedMaterial;
    v7[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v7[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v7, &v8);
    v3 = v8;
    v6 = v9;
    v4 = v10;
    v5 = v11;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t PhysicallyBasedMaterial.roughness.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for PhysicallyBasedMaterial;
  v4[4] = &protocol witness table for PhysicallyBasedMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

float PhysicallyBasedMaterial.emissiveIntensity.getter()
{
  v1 = *(v0 + 32);

  v2 = v1;

  specialized String.withCString<A>(_:)(0x6576697373696D65, 0xED0000656C616353, v2, v7);
  if (v8 == 255)
  {
    __MaterialResource.subscript.getter(&v9);
  }

  else
  {
    v9 = v7[0];
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
    v13 = v8;
  }

  v5[2] = v11;
  v5[3] = v12;
  v6 = v13;
  v5[0] = v9;
  v5[1] = v10;
  v3 = 0.0;
  if (v13 != 255)
  {
    if (v13 == 2)
    {
      v3 = *v5;
    }

    outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return v3;
}

uint64_t PhysicallyBasedMaterial.baseColor.getter(uint64_t (*a1)(void *, void, void))
{
  v4[3] = &type metadata for PhysicallyBasedMaterial;
  v4[4] = &protocol witness table for PhysicallyBasedMaterial;
  v4[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v4[0] + 16);
  return a1(v4, 0, 0);
}

void PhysicallyBasedMaterial.faceCulling.getter(char *a1@<X8>)
{
  v2 = 2;
  if ((*(v1 + 88) & 1) == 0)
  {
    if (*(v1 + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 80);
    }
  }

  *a1 = v2;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t))
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = *a1;
    v13 = v8;
    v14 = v5;
    v15 = v9;
    v16 = v10;

    v11 = v10;
    a3(&v17, v12, a2);
    if (v4)
    {

      __break(1u);
    }

    else
    {
    }
  }
}

double specialized Material.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (v6 == 255)
  {
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = *(v3 + 32);
      v13 = REMaterialParameterBlockValueCopy();

      *(v3 + 32) = v13;
    }

    specialized String.withCString<A>(_:)(a2, a3, v3 + 8);
  }

  else
  {
    v7 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v7;
    v8 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v8;
    v15 = v6;
    v10 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v10 + 32), v14);

    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return result;
}

{
  v6 = *(a1 + 64);
  if (v6 == 255)
  {
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = *(v3 + 72);
      v13 = REMaterialParameterBlockValueCopy();

      *(v3 + 72) = v13;
    }

    specialized String.withCString<A>(_:)(a2, a3, v3 + 48);
  }

  else
  {
    v7 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v7;
    v8 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v8;
    v15 = v6;
    v10 = String.utf8CString.getter();

    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v10 + 32), v14);

    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  return result;
}

uint64_t specialized Material.setUVTransform(_:withSuffix:)(uint64_t a1, uint64_t a2, double a3, int32x4_t a4, float a5)
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v9 = *(v5 + 32);
    v10 = REMaterialParameterBlockValueCopy();

    *(v5 + 32) = v10;
  }

  REMaterialParameterBlockValueSetFloat2();

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *(v5 + 32);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v13 = REMaterialParameterBlockValueCopy();

    *(v5 + 32) = v13;
  }

  __sincosf_stret(a5);
  REMaterialParameterBlockValueSetFloat4();
}

{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v9 = *(v5 + 72);
    v10 = REMaterialParameterBlockValueCopy();

    *(v5 + 72) = v10;
  }

  REMaterialParameterBlockValueSetFloat2();

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](a1, a2);
  String.utf8CString.getter();

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *(v5 + 72);
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v13 = REMaterialParameterBlockValueCopy();

    *(v5 + 72) = v13;
  }

  __sincosf_stret(a5);
  REMaterialParameterBlockValueSetFloat4();
}

uint64_t PhysicallyBasedMaterial.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = a2[2];
  v7 = a2[3];
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 106) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
  *(a3 + 121) = 514;
  *(a3 + 136) = 0;
  *(a3 + 144) = 257;
  v8 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v8)
  {
    v9 = v8;
    *a3 = v8;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;

    FeatureFlags = REMaterialAssetGetFeatureFlags();
    if ((FeatureFlags & 0x1000) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if ((FeatureFlags & 0x2000) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *(a3 + 104) = 0;
    *(a3 + 106) = FeatureFlags;
    *(a3 + 112) = 0;
    *(a3 + 120) = 1;
    *(a3 + 121) = v11;
    *(a3 + 122) = v12;
    if ((FeatureFlags & 0x1001) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    type metadata accessor for PhysicallyBasedMaterial.Program();
    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 17) = 0;
    *(result + 24) = v9;
    *(a3 + 128) = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized MaterialWithBlendingInternal.blendingInternal.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v34 = &type metadata for PhysicallyBasedMaterial;
    v35 = &protocol witness table for PhysicallyBasedMaterial;
    v32 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v32, &v36);
    v3 = v37;
    v4 = v38;
    if (v38 && v39)
    {
      v5 = v37;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        PhysicallyBasedMaterial.setMultiUVs(_:)(0);
      }

      outlined consume of MaterialParameters.Texture?(v3, v4);
    }

    v6 = *(v1 + 106);
    v7 = *(v1 + 112);
    v8 = *(v1 + 120);
    v9 = *(v1 + 121);
    v10 = *(v1 + 122);
    LOBYTE(v32) = *(v1 + 104);
    WORD1(v32) = v6 & 0xFFFE;
    *&v33 = v7;
    BYTE8(v33) = v8;
    BYTE9(v33) = v9;
    BYTE10(v33) = v10;
    LOBYTE(v28) = v32;
    WORD1(v28) = v6;
    *&v29 = v7;
    BYTE8(v29) = v8;
    BYTE9(v29) = v9;
    BYTE10(v29) = v10;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v28, &v32) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16), v33, (BYTE9(v33) << 8) | (BYTE10(v33) << 16) | BYTE8(v33));
    }

    outlined consume of MaterialParameters.Texture?(v3, v4);
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v15 = *(a1 + 8);
    v36 = *a1;
    v37 = v15;
    v38 = v2;
    v39 = v12;
    v40 = v13;
    if (v2 && v12)
    {
      PhysicallyBasedMaterial.setMultiUVs(_:)(1);
    }

    else
    {
      v34 = &type metadata for PhysicallyBasedMaterial;
      v35 = &protocol witness table for PhysicallyBasedMaterial;
      v32 = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
      PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v32, &v28);
      v16 = v29;
      if (*(&v29 + 1))
      {
        if (v30)
        {
          v17 = v29;

          if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
          {
            PhysicallyBasedMaterial.setMultiUVs(_:)(0);
          }

          outlined consume of MaterialParameters.Texture?(v16, *(&v16 + 1));
          v19 = v16 >> 64;
          v18 = v16;
        }

        else
        {
          v19 = *(&v29 + 1);
          v18 = v29;
        }
      }

      else
      {
        v18 = v29;
        v19 = 0;
      }

      outlined consume of MaterialParameters.Texture?(v18, v19);
    }

    specialized Material.setParameter<A>(_:alternateTintKey:)(&v36);
    if ((RELinkedOnOrAfterFall2024OSVersions() & 1) == 0)
    {
      v34 = &type metadata for PhysicallyBasedMaterial;
      v35 = &protocol witness table for PhysicallyBasedMaterial;
      v32 = swift_allocObject();
      outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v32, 0, 0, &v28);
      v20 = v28;
      outlined consume of MaterialParameters.Texture?(v29, *(&v29 + 1));
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v20, v11);

      if (CopyWithAlpha)
      {
        v34 = &type metadata for PhysicallyBasedMaterial;
        v35 = &protocol witness table for PhysicallyBasedMaterial;
        v32 = swift_allocObject();
        outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
        v22 = CopyWithAlpha;
        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v32, 0, 0, &v28);

        v32 = v22;
        v33 = v29;
        v34 = v30;
        LODWORD(v35) = v31;
        PhysicallyBasedMaterial.baseColor.setter(&v32);
      }
    }

    v23 = *(v1 + 106);
    v24 = *(v1 + 112);
    v25 = *(v1 + 120);
    v26 = *(v1 + 121);
    v27 = *(v1 + 122);
    LOBYTE(v32) = *(v1 + 104);
    WORD1(v32) = v23 | 1;
    *&v33 = v24;
    BYTE8(v33) = v25;
    BYTE9(v33) = v26;
    BYTE10(v33) = v27;
    LOBYTE(v28) = v32;
    WORD1(v28) = v23;
    *&v29 = v24;
    BYTE8(v29) = v25;
    BYTE9(v29) = v26;
    BYTE10(v29) = v27;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v28, &v32) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16), v33, (BYTE9(v33) << 8) | (BYTE10(v33) << 16) | BYTE8(v33));
    }

    outlined destroy of PhysicallyBasedMaterial.Blending(a1);
  }
}

{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v32 = &type metadata for UnlitMaterial;
    v33 = &protocol witness table for UnlitMaterial;
    v30 = swift_allocObject();
    outlined init with copy of UnlitMaterial(v1, v30 + 16);
    PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v30, &v34);
    v3 = v35;
    v4 = v36;
    if (v36 && v37)
    {
      v5 = v35;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        UnlitMaterial.setMultiUVs(_:)(0);
      }

      outlined consume of MaterialParameters.Texture?(v3, v4);
    }

    v6 = *(v1 + 154);
    v7 = *(v1 + 156);
    v8 = *(v1 + 157);
    LOBYTE(v30) = *(v1 + 152);
    WORD1(v30) = v6 & 0xFFFE;
    BYTE4(v30) = v7;
    BYTE5(v30) = v8;
    LOBYTE(v26) = v30;
    WORD1(v26) = v6;
    BYTE4(v26) = v7;
    BYTE5(v26) = v8;
    if (!specialized static UnlitMaterial.UnlitShaderParameters.== infix(_:_:)(&v26, &v30))
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v30 | (WORD1(v30) << 16) | (BYTE4(v30) << 32) | (BYTE5(v30) << 40));
    }

    outlined consume of MaterialParameters.Texture?(v3, v4);
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = *(a1 + 8);
    v34 = *a1;
    v35 = v13;
    v36 = v2;
    v37 = v10;
    v38 = v11;
    if (v2 && v10)
    {
      UnlitMaterial.setMultiUVs(_:)(1);
    }

    else
    {
      v32 = &type metadata for UnlitMaterial;
      v33 = &protocol witness table for UnlitMaterial;
      v30 = swift_allocObject();
      outlined init with copy of UnlitMaterial(v1, v30 + 16);
      PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(&v30, &v26);
      v14 = v27;
      if (*(&v27 + 1))
      {
        if (v28)
        {
          v15 = v27;

          if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
          {
            UnlitMaterial.setMultiUVs(_:)(0);
          }

          outlined consume of MaterialParameters.Texture?(v14, *(&v14 + 1));
          v17 = v14 >> 64;
          v16 = v14;
        }

        else
        {
          v17 = *(&v27 + 1);
          v16 = v27;
        }
      }

      else
      {
        v16 = v27;
        v17 = 0;
      }

      outlined consume of MaterialParameters.Texture?(v16, v17);
    }

    specialized Material.setParameter<A>(_:alternateTintKey:)(&v34);
    if ((RELinkedOnOrAfterFall2024OSVersions() & 1) == 0)
    {
      v32 = &type metadata for UnlitMaterial;
      v33 = &protocol witness table for UnlitMaterial;
      v30 = swift_allocObject();
      outlined init with copy of UnlitMaterial(v1, v30 + 16);
      v18 = *(v1 + 80);
      v19 = *(v1 + 88);

      PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v30, v18, v19, &v26);
      v20 = v26;
      outlined consume of MaterialParameters.Texture?(v27, *(&v27 + 1));
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v20, v9);

      if (CopyWithAlpha)
      {
        v32 = &type metadata for UnlitMaterial;
        v33 = &protocol witness table for UnlitMaterial;
        v30 = swift_allocObject();
        outlined init with copy of UnlitMaterial(v1, v30 + 16);

        v22 = CopyWithAlpha;
        PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(&v30, v18, v19, &v26);

        v30 = v22;
        v31 = v27;
        v32 = v28;
        LODWORD(v33) = v29;
        UnlitMaterial.color.setter(&v30);
      }
    }

    v23 = *(v1 + 154);
    v24 = *(v1 + 156);
    v25 = *(v1 + 157);
    LOBYTE(v30) = *(v1 + 152);
    WORD1(v30) = v23 | 1;
    BYTE4(v30) = v24;
    BYTE5(v30) = v25;
    LOBYTE(v26) = v30;
    WORD1(v26) = v23;
    BYTE4(v26) = v24;
    BYTE5(v26) = v25;
    if (!specialized static UnlitMaterial.UnlitShaderParameters.== infix(_:_:)(&v26, &v30))
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v30 | (WORD1(v30) << 16) | (BYTE4(v30) << 32) | (BYTE5(v30) << 40));
    }

    outlined destroy of PhysicallyBasedMaterial.Blending(a1);
  }
}

uint64_t specialized ShaderCache.getResource(_:)(uint64_t a1)
{
  v3 = *(a1 + 80);
  *&v48[48] = *(a1 + 64);
  *&v48[64] = v3;
  *&v48[80] = *(a1 + 96);
  *&v48[96] = *(a1 + 112);
  v4 = *(a1 + 16);
  v47 = *a1;
  *v48 = v4;
  v5 = *(a1 + 48);
  *&v48[16] = *(a1 + 32);
  *&v48[32] = v5;
  v55 = *&v48[16];
  v56 = v5;
  v53 = v47;
  v54 = v4;
  v60 = *&v48[96];
  v58 = v3;
  v59 = *&v48[80];
  v57 = *&v48[48];

  v6 = specialized SharedCacheStorage.getResource(forKey:)(&v53);

  if (v6)
  {
    return v6;
  }

  v7 = CustomMaterial.CustomShaderParameters.materialPath.getter();
  v9 = v8;
  v10 = CustomMaterial.CustomShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v1 + 16, v40);
  v11 = v41;
  v12 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v13 = __REAssetService.asset(_:)(v7, v9, v11, v12);
  if (v13)
  {
    v14 = v13;

    v15 = BYTE2(v54);
    v16 = WORD1(v53);
    v17 = v53;
    *(&v43 + 1) = v10;
    *&v44 = 0;
    BYTE8(v44) = 1;
    *&v43 = v14;
    v18 = MEMORY[0x1E69E7CC0];
    *(&v46 + 1) = MEMORY[0x1E69E7CC0];
    *&v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(&v45 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v18);
    *&v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v18);
    __swift_destroy_boxed_opaque_existential_1(v40);
    BYTE14(v44) = v48[1];
    BYTE11(v44) = v15;
    BYTE9(v44) = (v16 & 0x400) != 0;
    BYTE10(v44) = (v16 & 0x800) != 0;
    BYTE12(v44) = (v16 & 0x4000) != 0;
    BYTE13(v44) = v17;
    v52[0] = *&v48[8];
    v52[1] = *&v48[24];
    v52[2] = *&v48[40];
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v52, &v43, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v51[0] = *&v48[56];
    v51[1] = *&v48[72];
    v51[2] = *&v48[88];
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c49Foundation11ShaderCacheC11getResourcey0A3Kit010__e11F0CxKFyAG04g2H8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v51, &v43, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v6 = type metadata accessor for __MaterialResource();
    v39[0] = v43;
    v39[1] = v44;
    v39[2] = v45;
    v39[3] = v46;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    outlined init with copy of __MaterialResource.BuildParameters(v39, &v28);
    static __MaterialResource.createMaterial(_:)(&v32, v36);
    if (v2)
    {
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      outlined destroy of __MaterialResource.BuildParameters(&v24);
      v28 = v43;
      v29 = v44;
      v30 = v45;
      v31 = v46;
      outlined destroy of __MaterialResource.BuildParameters(&v28);
    }

    else
    {
      v28 = v32;
      v29 = v33;
      v30 = v34;
      v31 = v35;
      outlined destroy of __MaterialResource.BuildParameters(&v28);
      v19 = v37;
      v20 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v21 = (*(v20 + 8))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C1887600;
      *(v22 + 32) = v21;
      *(v22 + 56) = v6;
      *(v22 + 64) = &protocol witness table for __MaterialResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(v22);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v22 + 32));
      swift_deallocClassInstance();
      v49[4] = *&v48[48];
      v49[5] = *&v48[64];
      v49[6] = *&v48[80];
      v50 = *&v48[96];
      v49[0] = v47;
      v49[1] = *v48;
      v49[2] = *&v48[16];
      v49[3] = *&v48[32];

      v6 = specialized SharedCacheStorage.addResource(value:forKey:)(v21, v49);

      v24 = v43;
      v25 = v44;
      v26 = v45;
      v27 = v46;
      outlined destroy of __MaterialResource.BuildParameters(&v24);
    }

    return v6;
  }

  __break(1u);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_deallocClassInstance();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized ShaderCache.getResource(_:)(unint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 56);
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v6 + 16);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 0xFFFFFFFF0001), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(v7 + 4);

  if (v11)
  {
    return v11;
  }

  v12 = 0xD00000000000002CLL;
  if ((a1 & 0x20000) != 0)
  {
    v13 = "utPbr.rematerialdefinition";
  }

  else if ((a1 & 0x10000) == 0 && BYTE4(a1) == 2)
  {
    v12 = 0xD000000000000021;
    v13 = "fail with the same error.";
  }

  else
  {
    v13 = "aterialdefinition";
  }

  v57 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 32) = 0x6C6E55686374614DLL;
  v15 = v14 + 32;
  *(v14 + 40) = 0xEF726F6C6F437469;
  *(v14 + 48) = (a1 >> 18) & 1;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v15, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  swift_deallocClassInstance();
  outlined init with copy of __REAssetService(v4 + 16, v53);
  v16 = v54;
  v17 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v18 = __REAssetService.asset(_:)(v12, v13 | 0x8000000000000000, v16, v17);
  if (v18)
  {
    v19 = v18;

    v56 = 1;
    v20 = MEMORY[0x1E69E7CC0];
    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v20);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v11 = type metadata accessor for __MaterialResource();
    *&v49 = v19;
    *(&v49 + 1) = v33;
    *&v50 = 0;
    BYTE8(v50) = v56;
    *(&v50 + 9) = 0;
    *(&v50 + 11) = BYTE5(a1);
    BYTE13(v50) = a1 & 1;
    BYTE14(v50) = BYTE4(a1);
    *&v51 = v32;
    *(&v51 + 1) = v21;
    *&v52 = v22;
    *(&v52 + 1) = v20;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    outlined init with copy of __MaterialResource.BuildParameters(&v49, &v38);
    v23 = v11;
    v24 = v57;
    static __MaterialResource.createMaterial(_:)(&v42, v46);
    if (v24)
    {
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      outlined destroy of __MaterialResource.BuildParameters(&v34);
      *&v38 = v19;
      *(&v38 + 1) = v33;
      *&v39 = 0;
      BYTE8(v39) = v56;
      *(&v39 + 9) = 0;
      *(&v39 + 11) = BYTE5(a1);
      BYTE13(v39) = a1 & 1;
      BYTE14(v39) = BYTE4(a1);
      *&v40 = v32;
      *(&v40 + 1) = v21;
      *&v41 = v22;
      *(&v41 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v38);
    }

    else
    {
      v31 = v19;
      v57 = v21;
      v25 = MEMORY[0x1E69E7CC0];
      v38 = v42;
      v39 = v43;
      v40 = v44;
      v41 = v45;
      outlined destroy of __MaterialResource.BuildParameters(&v38);
      v26 = v47;
      v27 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v28 = (*(v27 + 8))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      *(inited + 32) = v28;
      *(inited + 56) = v23;
      *(inited + 64) = &protocol witness table for __MaterialResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));

      v11 = specialized SharedCacheStorage.addResource(value:forKey:)(v28, a1 & 0xFFFFFFFF0001);

      *&v34 = v31;
      *(&v34 + 1) = v33;
      *&v35 = 0;
      BYTE8(v35) = v56;
      *(&v35 + 9) = 0;
      *(&v35 + 11) = BYTE5(a1);
      BYTE13(v35) = a1 & 1;
      BYTE14(v35) = BYTE4(a1);
      *&v36 = v32;
      *(&v36 + 1) = v57;
      *&v37 = v22;
      *(&v37 + 1) = v25;
      outlined destroy of __MaterialResource.BuildParameters(&v34);
    }

    return v11;
  }

  __break(1u);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v3);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized ShaderCache.getResource(_:)(int a1, uint64_t a2, unsigned int a3)
{
  v5 = v3;
  v76 = a1;
  v77 = a2;
  v78 = a3;
  v9 = HIWORD(a3);
  v79 = BYTE2(a3);
  v10 = *(v3 + 56);
  v11 = *(v10 + 24);

  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(v10 + 16);
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(v11 + 4);

  if (v15)
  {
    return v15;
  }

  v80 = v4;
  v16 = (a1 & 0x10000) == 0;
  v17 = BYTE1(a3) == 2;
  v18 = !v16 || !v17;
  if (v16 && v17)
  {
    v19 = 0xD00000000000001FLL;
  }

  else
  {
    v19 = 0xD00000000000002ALL;
  }

  if (v18)
  {
    v20 = "engine:pbr.rematerialdefinition";
  }

  else
  {
    v20 = "ntUnlit.rematerialdefinition";
  }

  if ((a1 & 0x20000) != 0)
  {
    v21 = 0xD00000000000002ALL;
  }

  else
  {
    v21 = v19;
  }

  if ((a1 & 0x20000) != 0)
  {
    v22 = "EnableOpacityThreshold";
  }

  else
  {
    v22 = v20;
  }

  v52 = PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v5 + 16, v72);
  v23 = v73;
  v24 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v25 = __REAssetService.asset(_:)(v21, v22 | 0x8000000000000000, v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = a3 >> 8;

    v75 = 1;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v28);
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v28);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v32 = type metadata accessor for __MaterialResource();
    *&v68 = v26;
    *(&v68 + 1) = v52;
    *&v69 = 0;
    BYTE8(v69) = v75;
    *(&v69 + 9) = 0;
    *(&v69 + 11) = v9;
    v51 = a1 & 1;
    BYTE13(v69) = a1 & 1;
    BYTE14(v69) = v27;
    v15 = v32;
    *&v70 = v29;
    *(&v70 + 1) = v30;
    *&v71 = v31;
    *(&v71 + 1) = v28;
    v61 = v68;
    v62 = v69;
    v63 = v70;
    v64 = v71;
    outlined init with copy of __MaterialResource.BuildParameters(&v68, &v57);
    v33 = v26;
    v34 = v15;
    v35 = v80;
    static __MaterialResource.createMaterial(_:)(&v61, v65);
    v80 = v35;
    if (v35)
    {
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      outlined destroy of __MaterialResource.BuildParameters(&v53);
      *&v57 = v33;
      *(&v57 + 1) = v52;
      *&v58 = 0;
      BYTE8(v58) = v75;
      *(&v58 + 9) = 0;
      *(&v58 + 11) = v9;
      BYTE13(v58) = v51;
      BYTE14(v58) = v27;
      *&v59 = v29;
      *(&v59 + 1) = v30;
      *&v60 = v31;
      *(&v60 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v57);
      return v15;
    }

    v48 = v31;
    v49 = v30;
    v50 = v33;
    v57 = v61;
    v58 = v62;
    v59 = v63;
    v60 = v64;
    outlined destroy of __MaterialResource.BuildParameters(&v57);
    v36 = v66;
    v37 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v38 = (*(v37 + 8))(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v38;
    v21 = (inited + 32);
    *(inited + 56) = v34;
    *(inited + 64) = &protocol witness table for __MaterialResource;

    v40 = v80;
    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v40)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v21);
      v41 = v76;
      v42 = v77;
      v43 = v78;
      v44 = HIBYTE(v78);
      v45 = v79;
      v46 = HIWORD(v76);

      v15 = specialized SharedCacheStorage.addResource(value:forKey:)(v38, v41 | (v46 << 16), v42, (v44 << 8) | (v45 << 16) | v43);

      *&v53 = v50;
      *(&v53 + 1) = v52;
      *&v54 = 0;
      BYTE8(v54) = v75;
      *(&v54 + 9) = 0;
      *(&v54 + 11) = v9;
      BYTE13(v54) = v51;
      BYTE14(v54) = v27;
      *&v55 = v29;
      *(&v55 + 1) = v49;
      *&v56 = v48;
      *(&v56 + 1) = MEMORY[0x1E69E7CC0];
      outlined destroy of __MaterialResource.BuildParameters(&v53);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v21);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(uint64_t a1)
{
  v3 = v1;
  outlined init with copy of CustomMaterial(v1, v112);
  v5 = *(v1 + 256);
  v116[4] = *(v1 + 240);
  v116[5] = v5;
  v116[6] = *(v1 + 272);
  v117 = *(v1 + 288);
  v6 = *(v1 + 192);
  v116[0] = *(v1 + 176);
  v116[1] = v6;
  v7 = *(v1 + 224);
  v116[2] = *(v1 + 208);
  v116[3] = v7;
  outlined init with copy of CustomMaterial.CustomShaderParameters(a1, &v87);
  outlined destroy of CustomMaterial.CustomShaderParameters(v116);
  v8 = *(a1 + 80);
  *(v1 + 240) = *(a1 + 64);
  *(v1 + 256) = v8;
  *(v1 + 272) = *(a1 + 96);
  *(v1 + 288) = *(a1 + 112);
  v9 = *(a1 + 16);
  *(v1 + 176) = *a1;
  *(v1 + 192) = v9;
  v10 = *(a1 + 48);
  *(v1 + 208) = *(a1 + 32);
  *(v1 + 224) = v10;
  CustomMaterial.shaderCache.getter();
  v11 = specialized ShaderCache.getResource(_:)(a1);

  v118 = v2;
  if (v2 || (, *v1 = v11, v12 = v112[0], swift_beginAccess(), v13 = *(v12 + 16), swift_beginAccess(), v13 == *(v11 + 16)))
  {
    outlined destroy of CustomMaterial(v112);
  }

  else
  {
    v67 = v3;
    v14 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
    REMaterialAssetGetMaterialDefinition();
    REMaterialDefinitionAssetGetParameterKeys();
    *&v87 = 0;
    v15 = v14;
    static Set._forceBridgeFromObjectiveC(_:result:)();
    v16 = v87;
    if (!v87)
    {
      goto LABEL_55;
    }

    v63[2] = v12;

    v17 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
    v63[1] = v11;
    REMaterialAssetGetMaterialDefinition();
    REMaterialDefinitionAssetGetParameterKeys();
    *&v87 = 0;
    v15 = v17;
    static Set._forceBridgeFromObjectiveC(_:result:)();
    v18 = v87;
    if (v87)
    {

      specialized Set.union<A>(_:)(v18, v16);
      v20 = 0;
      v22 = v19 + 56;
      v21 = *(v19 + 56);
      v65 = v19 + 56;
      v66 = v19;
      v23 = 1 << *(v19 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & v21;
      v26 = (v23 + 63) >> 6;
      v64 = v26;
      v27 = v67;
      while (1)
      {
        if (!v25)
        {
          while (1)
          {
            v28 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v28 >= v26)
            {
              outlined destroy of CustomMaterial(v112);

              return;
            }

            v25 = *(v22 + 8 * v28);
            ++v20;
            if (v25)
            {
              v20 = v28;
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

LABEL_16:
        v29 = (*(v66 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v25)))));
        v30 = v29[1];
        v72 = *v29;
        v31 = *(v27 + 8);
        v32 = v27;
        v33 = *(v27 + 16);
        v35 = *(v32 + 24);
        v34 = *(v32 + 32);
        MEMORY[0x1EEE9AC00](v19);
        v63[-4] = v31;
        LOBYTE(v63[-3]) = v33;
        v63[-2] = v35;
        v63[-1] = v34;
        v71 = v30;
        v69 = v36;
        if ((v30 & 0x1000000000000000) == 0)
        {
          if ((v30 & 0x2000000000000000) != 0)
          {
            *&v87 = v72;
            *(&v87 + 1) = v30 & 0xFFFFFFFFFFFFFFLL;

            v15 = v34;

            goto LABEL_21;
          }

          if ((v72 & 0x1000000000000000) != 0)
          {

            v15 = v34;

LABEL_21:
            v37 = v118;
            closure #1 in __RKMaterialParameterBlock.get(parameter:)(v105);
            if (v37)
            {
              goto LABEL_57;
            }

            goto LABEL_23;
          }
        }

        v61 = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        v62 = v118;
        _StringGuts._slowWithCString<A>(_:)();
        if (v62)
        {

          goto LABEL_59;
        }

LABEL_23:

        v38 = v72;
        if (v106 == 255)
        {
          v39 = v71;
          v38 = __MaterialResource.subscript.getter(&v107);
          v70 = v111;
        }

        else
        {
          v107 = v105[0];
          v108 = v105[1];
          v109 = v105[2];
          v110 = v105[3];
          v70 = v106;
          v111 = v106;
          v39 = v71;
        }

        v40 = v112[1];
        v41 = v113;
        v42 = v114;
        v43 = v115;
        MEMORY[0x1EEE9AC00](v38);
        v63[-4] = v40;
        LOBYTE(v63[-3]) = v41;
        v63[-2] = v42;
        v63[-1] = v43;
        v68 = v44;
        if ((v39 & 0x1000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if ((v39 & 0x2000000000000000) == 0)
        {
          if ((v72 & 0x1000000000000000) != 0)
          {

            v45 = v43;

            closure #1 in __RKMaterialParameterBlock.get(parameter:)(v98);
            v118 = 0;
          }

          else
          {
LABEL_30:

            v46 = v43;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
            _StringGuts._slowWithCString<A>(_:)();
            v118 = 0;
          }

          v27 = v67;
          v47 = v72;
          goto LABEL_33;
        }

        v48 = v39 & 0xFFFFFFFFFFFFFFLL;
        v47 = v72;
        *&v87 = v72;
        *(&v87 + 1) = v48;

        v49 = v43;

        closure #1 in __RKMaterialParameterBlock.get(parameter:)(v98);
        v118 = 0;

        v27 = v67;
LABEL_33:
        v15 = v70;
        v50 = v99;
        if (v99 == 255)
        {
          __MaterialResource.subscript.getter(&v100);
          v50 = v104;
        }

        else
        {
          v100 = v98[0];
          v101 = v98[1];
          v102 = v98[2];
          v103 = v98[3];
          v104 = v99;
        }

        v25 &= v25 - 1;
        *(v97 + 15) = v100;
        *(&v97[1] + 15) = v101;
        *(&v97[2] + 15) = v102;
        *(&v97[3] + 15) = v103;
        if (v15 == 255)
        {
          if (v50 == 255)
          {
            v87 = v107;
            v88 = v108;
            v89 = v109;
            v90 = v110;
            v91 = -1;
            outlined destroy of BodyTrackingComponent?(&v87, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_45:

            goto LABEL_10;
          }

          goto LABEL_41;
        }

        v87 = v107;
        v88 = v108;
        v89 = v109;
        v90 = v110;
        v91 = v15;
        v84 = v109;
        v85 = v110;
        v86 = v15;
        v82 = v107;
        v83 = v108;
        if (v50 == 255)
        {
          v79 = v89;
          v80 = v90;
          v81 = v91;
          v77 = v87;
          v78 = v88;
          outlined init with copy of [String : String](&v87, v75, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
          outlined destroy of __RKMaterialParameterBlock.Parameter(&v77);
LABEL_41:
          v87 = v107;
          v88 = v108;
          v89 = v109;
          v90 = v110;
          v93 = v97[1];
          v94 = v97[2];
          *v95 = v97[3];
          *&v95[15] = *(&v97[3] + 15);
          v91 = v15;
          v92 = v97[0];
          v96 = v50;
          outlined destroy of BodyTrackingComponent?(&v87, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSg_AFtMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSg_AFtMR);
          goto LABEL_42;
        }

        v77 = v100;
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v50;
        v55 = v15;
        v15 = &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd;
        outlined init with copy of [String : String](&v87, v75, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        v56 = specialized static __RKMaterialParameterBlock.Parameter.== infix(_:_:)(&v82, &v77);
        v73[2] = v79;
        v73[3] = v80;
        v74 = v81;
        v73[0] = v77;
        v73[1] = v78;
        outlined destroy of __RKMaterialParameterBlock.Parameter(v73);
        v75[2] = v84;
        v75[3] = v85;
        v76 = v86;
        v75[0] = v82;
        v75[1] = v83;
        outlined destroy of __RKMaterialParameterBlock.Parameter(v75);
        v77 = v107;
        v78 = v108;
        v79 = v109;
        v80 = v110;
        v81 = v55;
        outlined destroy of BodyTrackingComponent?(&v77, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        if (v56)
        {
          goto LABEL_45;
        }

LABEL_42:
        v15 = v113;
        v51 = v115;

        v52 = v51;

        v53 = v52;
        v54 = v118;
        specialized String.withCString<A>(_:)(v47, v71, v53, v97);
        v118 = v54;
        if (LOBYTE(v97[4]) == 255)
        {
          __MaterialResource.subscript.getter(&v87);
        }

        else
        {
          v87 = v97[0];
          v88 = v97[1];
          v89 = v97[2];
          v90 = v97[3];
          v91 = v97[4];
        }

        v84 = v89;
        v85 = v90;
        v86 = v91;
        v82 = v87;
        v83 = v88;
        if (v91 == 255)
        {
          isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
          v58 = v72;
          if ((isUniquelyReferenced_nonNull & 1) == 0)
          {
            v59 = *(v27 + 32);
            v15 = REMaterialParameterBlockValueCopy();

            *(v27 + 32) = v15;
          }

          v60 = v118;
          specialized String.withCString<A>(_:)(v58, v71, v27 + 8);
          v118 = v60;
        }

        else
        {
          v77 = v87;
          v78 = v88;
          v79 = v89;
          v80 = v90;
          v81 = v91;
          v15 = String.utf8CString.getter();

          __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v15 + 32), &v77);

          v19 = outlined destroy of BodyTrackingComponent?(&v82, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
        }

LABEL_10:
        v26 = v64;
        v22 = v65;
      }
    }

    __break(1u);
LABEL_57:

LABEL_59:

    __break(1u);
  }
}

void specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(unint64_t a1)
{
  v3 = v1;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  outlined init with copy of UnlitMaterial(v3, v15);
  *(v3 + 152) = a1 & 1;
  *(v3 + 154) = v5;
  *(v3 + 156) = v6;
  *(v3 + 157) = v7;
  UnlitMaterial.shaderCache.getter();
  v8 = specialized ShaderCache.getResource(_:)(a1 & 0xFFFFFFFF0001);
  if (v2)
  {
    outlined destroy of UnlitMaterial(v15);
  }

  else
  {
    v9 = v8;

    *(v3 + 40) = v9;
    v10 = v16;
    swift_beginAccess();
    v11 = *(v10 + 16);
    swift_beginAccess();
    if (v11 == *(v9 + 16))
    {
      outlined destroy of UnlitMaterial(v15);
    }

    else
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
      REMaterialAssetGetMaterialDefinition();
      REMaterialDefinitionAssetGetParameterKeys();
      v14 = 0;
      v13 = v12;
      static Set._forceBridgeFromObjectiveC(_:result:)();
      __break(1u);
      __break(1u);

      __break(1u);
    }
  }
}

void specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v5 = v3;
  v9 = HIWORD(a1);
  v10 = a3 >> 8;
  v11 = HIWORD(a3);
  outlined init with copy of PhysicallyBasedMaterial(v5, &v19);
  *(v5 + 104) = a1 & 1;
  *(v5 + 106) = v9;
  *(v5 + 112) = a2;
  *(v5 + 120) = a3 & 1;
  *(v5 + 121) = v10;
  *(v5 + 122) = v11;
  PhysicallyBasedMaterial.shaderCache.getter();
  v12 = specialized ShaderCache.getResource(_:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01);
  if (v4)
  {
    outlined destroy of PhysicallyBasedMaterial(&v19);
  }

  else
  {
    v13 = v12;

    *v5 = v13;
    v14 = v19;
    swift_beginAccess();
    v15 = *(v14 + 16);
    swift_beginAccess();
    if (v15 == *(v13 + 16))
    {
      outlined destroy of PhysicallyBasedMaterial(&v19);
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
      REMaterialAssetGetMaterialDefinition();
      REMaterialDefinitionAssetGetParameterKeys();
      v18 = 0;
      v17 = v16;
      static Set._forceBridgeFromObjectiveC(_:result:)();
      __break(1u);
      __break(1u);

      __break(1u);
    }
  }
}

uint64_t PhysicallyBasedMaterial.baseColor.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  *v24 = *(a1 + 8);
  *&v24[12] = *(a1 + 20);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  if (*&v24[8])
  {
    v9 = v4 | 4;
  }

  else
  {
    v9 = v4 & 0xFFFB;
  }

  v15[0] = *(v1 + 104);
  *&v15[2] = v9;
  *&v15[8] = v5;
  v15[16] = v6;
  v15[17] = v7;
  v15[18] = v8;
  LOBYTE(v17) = v3;
  WORD1(v17) = v4;
  v18 = v5;
  LOBYTE(v19) = v6;
  BYTE1(v19) = v7;
  BYTE2(v19) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v17, v15) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v15[0] | (*&v15[2] << 16), *&v15[8], (v15[17] << 8) | (v15[18] << 16) | v15[16]);
  }

  *&v15[24] = &type metadata for PhysicallyBasedMaterial;
  v16 = &protocol witness table for PhysicallyBasedMaterial;
  *v15 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, *v15 + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v15, 0, 0, &v17);
  v11 = v17;
  v10 = v18;
  v12 = v19;
  *v15 = *v24;
  *&v15[12] = *&v24[12];
  v17 = v18;
  v18 = v19;
  v19 = v20;
  LODWORD(v20) = v21;
  outlined init with copy of [String : String](v24, v14, &_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  outlined copy of MaterialParameters.Texture?(v10, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v15, &v17);
  outlined consume of MaterialParameters.Texture?(v10, v12);
  outlined consume of MaterialParameters.Texture?(*v15, *&v15[8]);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v22, 0, 0);

  outlined consume of MaterialParameters.Texture?(v10, v12);
  return outlined destroy of PhysicallyBasedMaterial.BaseColor(v22);
}

uint64_t PhysicallyBasedMaterial.roughness.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x20;
  }

  else
  {
    v12 = v7 & 0xFFDF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Roughness(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Roughness(v31);
}

uint64_t key path setter for PhysicallyBasedMaterial.roughness : PhysicallyBasedMaterial(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(int *, double))
{
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = a1[8];
  v12 = *a1;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  v10 = outlined copy of MaterialParameters.Texture?(v7, v6);
  return a5(&v12, v10);
}

uint64_t PhysicallyBasedMaterial.metallic.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x40;
  }

  else
  {
    v12 = v7 & 0xFFBF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Metallic(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Metallic(v31);
}

uint64_t PhysicallyBasedMaterial.specular.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3)
  {
    v12 = v7 | 0x100;
  }

  else
  {
    v12 = v7 & 0xFEFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Specular(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Specular(v31);
}

uint64_t PhysicallyBasedMaterial.clearcoat.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3 || *v31 != 0.0)
  {
    v12 = v7 | 0x200;
  }

  else
  {
    v12 = v7 & 0xFDFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.Clearcoat(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.Clearcoat(v31);
}

double key path getter for PhysicallyBasedMaterial.sheen : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X8>)
{
  PhysicallyBasedMaterial.sheen.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void key path setter for PhysicallyBasedMaterial.sheen : PhysicallyBasedMaterial(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  v6 = v4;
  outlined copy of PhysicallyBasedMaterial.SheenColor?(v5[0], v1, v2);
  PhysicallyBasedMaterial.sheen.setter(v5);
}

void PhysicallyBasedMaterial.sheen.setter(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v37 = *a1;
    v38 = v3;
    v39 = v4;
    v40 = v5;
    v41 = v6;
    v7 = *(v1 + 106);
    v8 = *(v1 + 112);
    v9 = *(v1 + 120);
    v10 = *(v1 + 121);
    v11 = *(v1 + 122);
    LOBYTE(v32) = *(v1 + 104);
    WORD1(v32) = v7 | 0x800;
    v33 = v8;
    LOBYTE(v34) = v9;
    BYTE1(v34) = v10;
    BYTE2(v34) = v11;
    LOBYTE(v27) = v32;
    WORD1(v27) = v7;
    v28 = v8;
    LOBYTE(v29) = v9;
    BYTE1(v29) = v10;
    BYTE2(v29) = v11;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v27, &v32) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16), v33, (BYTE1(v34) << 8) | (BYTE2(v34) << 16) | v34);
    }

    v35 = &type metadata for PhysicallyBasedMaterial;
    v36 = &protocol witness table for PhysicallyBasedMaterial;
    v32 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(&v32, &v27);
    v12 = v28;
    v26 = v27;
    v27 = v28;
    v13 = v29;
    v32 = v3;
    v33 = v4;
    v34 = v5;
    LODWORD(v35) = v6;
    v28 = v29;
    v29 = v30;
    LODWORD(v30) = v31;
    outlined copy of MaterialParameters.Texture?(v3, v4);
    outlined copy of MaterialParameters.Texture?(v12, v13);
    PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v32, &v27);
    outlined consume of MaterialParameters.Texture?(v12, v13);
    outlined consume of MaterialParameters.Texture?(v3, v4);
    specialized Material.setParameter<A>(_:alternateTintKey:)(&v37, 0, 0);

    outlined consume of MaterialParameters.Texture?(v12, v13);

    outlined consume of PhysicallyBasedMaterial.SheenColor?(v2, v3, v4);
  }

  else
  {
    v14 = *(v1 + 106);
    v15 = *(v1 + 112);
    v16 = *(v1 + 120);
    v17 = *(v1 + 121);
    v18 = *(v1 + 122);
    LOBYTE(v32) = *(v1 + 104);
    WORD1(v32) = v14 & 0xF7FF;
    v33 = v15;
    LOBYTE(v34) = v16;
    BYTE1(v34) = v17;
    BYTE2(v34) = v18;
    LOBYTE(v37) = v32;
    WORD1(v37) = v14;
    v38 = v15;
    LOBYTE(v39) = v16;
    BYTE1(v39) = v17;
    BYTE2(v39) = v18;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v37, &v32) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v32 | (WORD1(v32) << 16), v33, (BYTE1(v34) << 8) | (BYTE2(v34) << 16) | v34);
    }

    v35 = &type metadata for PhysicallyBasedMaterial;
    v36 = &protocol witness table for PhysicallyBasedMaterial;
    v32 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v32 + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(&v32, &v37);
    v20 = v37;
    v19 = v38;
    v21 = v39;
    v32 = 0;
    v33 = 0;
    LODWORD(v35) = 0;
    v34 = 0;
    v37 = v38;
    v38 = v39;
    v39 = v40;
    LODWORD(v40) = v41;
    outlined copy of MaterialParameters.Texture?(v37, v38);
    PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v32, &v37);
    outlined consume of MaterialParameters.Texture?(v19, v21);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v22 = *(v1 + 32);
      v23 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v23;
    }

    specialized String.withCString<A>(_:)(0xD000000000000011, 0x80000001C18E3940, v1 + 8);
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v24 = *(v1 + 32);
      v25 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v25;
    }

    specialized String.withCString<A>(_:)(0x6C6F436E65656873, 0xEA0000000000726FLL, v1 + 8);

    outlined consume of MaterialParameters.Texture?(v19, v21);
  }
}

uint64_t PhysicallyBasedMaterial.anisotropyLevel.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v3;
  v32 = *(a1 + 32);
  v4 = *(&v31[0] + 1);
  v5 = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 106);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = *(v1 + 122);
  if (v3 || *v31 != 0.0)
  {
    v12 = v7 | 0x400;
  }

  else
  {
    v12 = v7 & 0xFBFF;
  }

  LOBYTE(v19) = *(v1 + 104);
  WORD1(v19) = v12;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  LOBYTE(v26) = v6;
  WORD1(v26) = v7;
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  BYTE2(v28) = v11;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v26, &v19) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v19 | (WORD1(v19) << 16), v20, (v22 << 8) | (v23 << 16) | v21);
  }

  v24 = &type metadata for PhysicallyBasedMaterial;
  v25 = &protocol witness table for PhysicallyBasedMaterial;
  v19 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v19 + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(&v19, &v26);
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v26 = v4;
  v27 = v5;
  v28 = *(a1 + 24);
  LODWORD(v29) = *(a1 + 32);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = v30;
  outlined init with copy of PhysicallyBasedMaterial.AnisotropyLevel(v31, &v19);
  outlined copy of MaterialParameters.Texture?(v13, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(&v26, v17);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  outlined consume of MaterialParameters.Texture?(v4, v5);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v31);
  outlined consume of MaterialParameters.Texture?(v13, v14);
  return outlined destroy of PhysicallyBasedMaterial.AnisotropyLevel(v31);
}

double key path getter for PhysicallyBasedMaterial.roughness : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for PhysicallyBasedMaterial;
  v9[4] = &protocol witness table for PhysicallyBasedMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(a1, v9[0] + 16);
  a2(&v10, v9, 0, 0);
  v6 = v12;
  v7 = v13;
  *a3 = v10;
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t PhysicallyBasedMaterial.clearcoatRoughness.setter(uint64_t a1, void (*a2)(_BYTE *__return_ptr, void *, void, void), void (*a3)(_BYTE *, void *), void (*a4)(_BYTE *), uint64_t (*a5)(_BYTE *))
{
  v10 = *(a1 + 16);
  *v20 = *a1;
  *&v20[16] = v10;
  *&v20[32] = *(a1 + 32);
  v17[3] = &type metadata for PhysicallyBasedMaterial;
  v17[4] = &protocol witness table for PhysicallyBasedMaterial;
  v17[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v5, v17[0] + 16);
  a2(v18, v17, 0, 0);
  v11 = *&v18[8];
  v12 = *&v18[16];
  v13 = *&v18[24];
  *v18 = *&v20[8];
  *&v18[12] = *&v20[20];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = v13;
  v16 = v19;
  a3(v20, v17);
  outlined copy of MaterialParameters.Texture?(v11, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v18, v15);
  outlined consume of MaterialParameters.Texture?(v11, v12);
  outlined consume of MaterialParameters.Texture?(*v18, *&v18[8]);
  a4(v20);
  outlined consume of MaterialParameters.Texture?(v11, v12);
  return a5(v20);
}

uint64_t key path setter for PhysicallyBasedMaterial.emissiveIntensity : PhysicallyBasedMaterial(float *a1, uint64_t a2)
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = *(a2 + 32);
    v4 = REMaterialParameterBlockValueCopy();

    *(a2 + 32) = v4;
  }

  return REMaterialParameterBlockValueSetFloat();
}

uint64_t PhysicallyBasedMaterial.emissiveIntensity.setter(float a1)
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v2 = *(v1 + 32);
    v3 = REMaterialParameterBlockValueCopy();

    *(v1 + 32) = v3;
  }

  return REMaterialParameterBlockValueSetFloat();
}

double key path getter for PhysicallyBasedMaterial.baseColor : PhysicallyBasedMaterial@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, void, void)@<X3>, uint64_t a3@<X8>)
{
  v9[3] = &type metadata for PhysicallyBasedMaterial;
  v9[4] = &protocol witness table for PhysicallyBasedMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(a1, v9[0] + 16);
  a2(&v10, v9, 0, 0);
  v6 = v12;
  v7 = v13;
  *a3 = v10;
  result = *&v11;
  *(a3 + 8) = v11;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t key path setter for PhysicallyBasedMaterial.baseColor : PhysicallyBasedMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *, double))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v13[0] = *a1;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v14 = v9;
  v10 = v13[0];
  v11 = outlined copy of MaterialParameters.Texture?(v6, v7);
  return a5(v13, v11);
}

uint64_t PhysicallyBasedMaterial.emissiveColor.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v23 = *(a1 + 32);
  *v24 = *(a1 + 8);
  *&v24[12] = *(a1 + 20);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  if (*&v24[8])
  {
    v9 = v4 | 0x10;
  }

  else
  {
    v9 = v4 & 0xFFEF;
  }

  v15[0] = *(v1 + 104);
  *&v15[2] = v9;
  *&v15[8] = v5;
  v15[16] = v6;
  v15[17] = v7;
  v15[18] = v8;
  LOBYTE(v17) = v3;
  WORD1(v17) = v4;
  v18 = v5;
  LOBYTE(v19) = v6;
  BYTE1(v19) = v7;
  BYTE2(v19) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v17, v15) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v15[0] | (*&v15[2] << 16), *&v15[8], (v15[17] << 8) | (v15[18] << 16) | v15[16]);
  }

  *&v15[24] = &type metadata for PhysicallyBasedMaterial;
  v16 = &protocol witness table for PhysicallyBasedMaterial;
  *v15 = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, *v15 + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v15, &v17);
  v11 = v17;
  v10 = v18;
  v12 = v19;
  *v15 = *v24;
  *&v15[12] = *&v24[12];
  v17 = v18;
  v18 = v19;
  v19 = v20;
  LODWORD(v20) = v21;
  outlined init with copy of [String : String](v24, v14, &_s17RealityFoundation18MaterialParametersV7TextureVSgMd, &_s17RealityFoundation18MaterialParametersV7TextureVSgMR);
  outlined copy of MaterialParameters.Texture?(v10, v12);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v15, &v17);
  outlined consume of MaterialParameters.Texture?(v10, v12);
  outlined consume of MaterialParameters.Texture?(*v15, *&v15[8]);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v22, 0, 0);

  outlined consume of MaterialParameters.Texture?(v10, v12);
  return outlined destroy of PhysicallyBasedMaterial.EmissiveColor(v22);
}

unint64_t PhysicallyBasedMaterial.opacityThreshold.getter()
{
  if ((*(v0 + 106) & 2) == 0)
  {
    goto LABEL_9;
  }

  v1 = *(v0 + 32);

  v2 = v1;

  specialized String.withCString<A>(_:)(0xD000000000000010, 0x80000001C18DD850, v2, v8);
  if (v9 == 255)
  {
    __MaterialResource.subscript.getter(&v10);
  }

  else
  {
    v10 = v8[0];
    v11 = v8[1];
    v12 = v8[2];
    v13 = v8[3];
    v14 = v9;
  }

  v6[2] = v12;
  v6[3] = v13;
  v7 = v14;
  v6[0] = v10;
  v6[1] = v11;
  if (v14 == 255)
  {
    goto LABEL_9;
  }

  if (v14 != 2)
  {
    outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 32);
  }

  v3 = LODWORD(v6[0]);
  outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  v4 = 0;
  return v3 | (v4 << 32);
}

uint64_t PhysicallyBasedMaterial.__resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double PhysicallyBasedMaterial.__parameterBlock.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;

  return result;
}

void PhysicallyBasedMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
}

uint64_t PhysicallyBasedMaterial.assetService.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 40, &v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  if (v6)
  {
    return outlined init with take of ForceEffectBase(&v5, a1);
  }

  outlined destroy of BodyTrackingComponent?(&v5, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, a1);
  outlined destroy of BodyTrackingComponent?(v1 + 40, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  return outlined init with copy of __REAssetService(a1, v1 + 40);
}

uint64_t PhysicallyBasedMaterial.PBRMaterialDefinitionMapping.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t PhysicallyBasedMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 121) = 514;
  *(a1 + 144) = 257;
  *(a1 + 136) = 0;
  v2 = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000015, 0x80000001C18EE0E0, 0);
  *a1 = v2;

  v3 = REMaterialParameterBlockValueCreate();
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v5 = type metadata accessor for __MaterialResource();
  *(inited + 32) = v2;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for __MaterialResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  swift_beginAccess();
  FeatureFlags = REMaterialAssetGetFeatureFlags();
  if ((FeatureFlags & 0x1000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if ((FeatureFlags & 0x2000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(a1 + 104) = 0;
  *(a1 + 106) = FeatureFlags;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 121) = v7;
  *(a1 + 122) = v8;
  if ((FeatureFlags & 0x1001) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  type metadata accessor for PhysicallyBasedMaterial.Program();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 17) = 0;
  *(v10 + 24) = v2;
  *(a1 + 128) = v10;
  outlined consume of MaterialParameters.Texture?(0, 0);
  LODWORD(v12[0]) = 0;
  memset(&v12[1], 0, 24);
  v13 = 0;
  specialized Material.setParameter<A>(_:alternateTintKey:)(v12);
  return outlined destroy of PhysicallyBasedMaterial.Clearcoat(v12);
}

uint64_t PhysicallyBasedMaterial.init(assetService:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  PhysicallyBasedMaterial.init()(a2);
  outlined destroy of BodyTrackingComponent?(a2 + 40, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);

  return outlined init with take of ForceEffectBase(a1, a2 + 40);
}

void PhysicallyBasedMaterial.checkMultiUV(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = *a2;
    v5 = *(a2 + 8);
    v7 = *(a2 + 16);
    v39 = &type metadata for PhysicallyBasedMaterial;
    v40 = &protocol witness table for PhysicallyBasedMaterial;
    v34 = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v2, v34 + 16);
    PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(&v34, &v41);
    v8 = v41;
    v9 = v42;
    v10 = v43;
    if (v5 && v7)
    {
      v11 = v6;

      if (REMaterialParameterBlockValueNumberOfTexturesWithNonZeroUVIndex() == 1)
      {
        v12 = *(v2 + 106);
        v13 = *(v2 + 112);
        v14 = *(v2 + 120);
        v15 = *(v2 + 121);
        LOBYTE(v34) = *(v2 + 104);
        WORD1(v34) = v12;
        v35 = v13;
        v36 = v14;
        v37 = v15;
        v38 = 0;
        v16 = *(v2 + 122);
        LOBYTE(v41) = v34;
        WORD1(v41) = v12;
        v42 = v13;
        LOBYTE(v43) = v14;
        BYTE1(v43) = v15;
        BYTE2(v43) = v16;
        if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v41, &v34) & 1) == 0)
        {
          specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v34 | (WORD1(v34) << 16), v35, (v37 << 8) | (v38 << 16) | v36);
        }

        outlined consume of MaterialParameters.Texture?(v9, v10);
        v17 = v6;
        v18 = v5;
        goto LABEL_14;
      }

      outlined consume of MaterialParameters.Texture?(v9, v10);
      v32 = v6;
      v33 = v5;
    }

    else
    {

      v32 = v9;
      v33 = v10;
    }

    outlined consume of MaterialParameters.Texture?(v32, v33);
  }

  else
  {
    v19 = *a1;
    v20 = *(v2 + 106);
    v21 = *(v2 + 112);
    v22 = *(v2 + 120);
    v23 = *(v2 + 121);
    LOBYTE(v34) = *(v2 + 104);
    WORD1(v34) = v20;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = 1;
    v24 = *(v2 + 122);
    LOBYTE(v41) = v34;
    WORD1(v41) = v20;
    v42 = v21;
    LOBYTE(v43) = v22;
    BYTE1(v43) = v23;
    BYTE2(v43) = v24;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v41, &v34) & 1) == 0)
    {
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v30 = WORD1(v34);
      v31 = v19;

      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v25 | (v30 << 16), v26, (v28 << 8) | (v29 << 16) | v27);
      v17 = v19;
      v18 = v3;
LABEL_14:
      outlined consume of MaterialParameters.Texture?(v17, v18);
    }
  }
}

void (*PhysicallyBasedMaterial.baseColor.modify(uint64_t *a1))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(v6, 0, 0, v4);
  return PhysicallyBasedMaterial.baseColor.modify;
}

void (*PhysicallyBasedMaterial.metallic.modify(uint64_t *a1))(int **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.metallic.modify;
}

void (*PhysicallyBasedMaterial.roughness.modify(uint64_t *a1))(int **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.roughness.modify;
}

void PhysicallyBasedMaterial.metallic.modify(int **a1, char a2, void (*a3)(int *))
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(*a1 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = v5[8];
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  if (a2)
  {
    v11 = outlined copy of MaterialParameters.Texture?(v7, v8);
    (a3)(&v12, v11);
    outlined consume of MaterialParameters.Texture?(*(v5 + 1), *(v5 + 2));
  }

  else
  {
    a3(&v12);
  }

  free(v5);
}

void (*PhysicallyBasedMaterial.emissiveColor.modify(uint64_t *a1))(void ***a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.emissiveColor.modify;
}

void PhysicallyBasedMaterial.baseColor.modify(void ***a1, char a2, void (*a3)(void *, double))
{
  v4 = *a1;
  v5 = **a1;
  v6 = (*a1)[1];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = *(*a1 + 8);
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v8;
  v14[3] = v7;
  v15 = v9;
  if (a2)
  {
    v10 = v5;
    v11 = outlined copy of MaterialParameters.Texture?(v6, v8);
    a3(v14, v11);
    v12 = v4[1];
    v13 = v4[2];

    outlined consume of MaterialParameters.Texture?(v12, v13);
  }

  else
  {
    (a3)(v14);
  }

  free(v4);
}

uint64_t (*PhysicallyBasedMaterial.emissiveIntensity.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = PhysicallyBasedMaterial.emissiveIntensity.getter();
  return PhysicallyBasedMaterial.emissiveIntensity.modify;
}

uint64_t PhysicallyBasedMaterial.emissiveIntensity.modify(float *a1)
{
  v1 = *a1;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v2 = *(v1 + 32);
    v3 = REMaterialParameterBlockValueCopy();

    *(v1 + 32) = v3;
  }

  return REMaterialParameterBlockValueSetFloat();
}

void (*PhysicallyBasedMaterial.specular.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Specular.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.specular.modify;
}

void (*PhysicallyBasedMaterial.clearcoat.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.clearcoat.modify;
}

void (*PhysicallyBasedMaterial.clearcoatRoughness.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.clearcoatRoughness.modify;
}

void PhysicallyBasedMaterial.opacityThreshold.setter(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    v9 = *(v1 + 106);
    v10 = *(v1 + 112);
    v11 = *(v1 + 120);
    v12 = *(v1 + 121);
    v13 = *(v1 + 122);
    v20[0] = *(v1 + 104);
    v21 = v9 & 0xFFFD;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v14[0] = v20[0];
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v14, v20) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v20[0] | (v21 << 16), v22, (v24 << 8) | (v25 << 16) | v23);
    }
  }

  else
  {
    v2 = *(v1 + 106);
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = *(v1 + 121);
    v6 = *(v1 + 122);
    v20[0] = *(v1 + 104);
    v21 = v2 | 2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v14[0] = v20[0];
    v15 = v2;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v19 = v6;
    if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v14, v20) & 1) == 0)
    {
      specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v20[0] | (v21 << 16), v22, (v24 << 8) | (v25 << 16) | v23);
    }

    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v7 = *(v1 + 32);
      v8 = REMaterialParameterBlockValueCopy();

      *(v1 + 32) = v8;
    }

    REMaterialParameterBlockValueSetFloat();
  }
}

void (*PhysicallyBasedMaterial.opacityThreshold.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = PhysicallyBasedMaterial.opacityThreshold.getter();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return PhysicallyBasedMaterial.opacityThreshold.modify;
}

unsigned __int8 *PhysicallyBasedMaterial.faceCulling.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;
  return result;
}

uint64_t *(*PhysicallyBasedMaterial.faceCulling.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = 2;
  if ((*(v1 + 88) & 1) == 0)
  {
    if (*(v1 + 80) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(v1 + 80);
    }
  }

  *(a1 + 8) = v2;
  return PhysicallyBasedMaterial.faceCulling.modify;
}

uint64_t *PhysicallyBasedMaterial.faceCulling.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = v2 == 1;
  v4 = v2 > 1;
  v5 = v3;
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;
  return result;
}

uint64_t PhysicallyBasedMaterial.__faceCullMode.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

Swift::Void __swiftcall PhysicallyBasedMaterial.setMultiUVs(_:)(Swift::Bool a1)
{
  v2 = *(v1 + 106);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 121);
  v13[0] = *(v1 + 104);
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = a1;
  v6 = *(v1 + 122);
  v7[0] = v13[0];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v7, v13) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v13[0] | (v14 << 16), v15, (v17 << 8) | (v18 << 16) | v16);
  }
}

void PhysicallyBasedMaterial.blending.setter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  specialized MaterialWithBlendingInternal.blendingInternal.setter(v2);
}

void (*PhysicallyBasedMaterial.blending.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  PhysicallyBasedMaterial.blending.getter(v3 + 80);
  return PhysicallyBasedMaterial.blending.modify;
}

void PhysicallyBasedMaterial.blending.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 8) = *(v2 + 28);
    outlined init with copy of PhysicallyBasedMaterial.Blending(v2, (v2 + 120));
    specialized MaterialWithBlendingInternal.blendingInternal.setter(v2);
    outlined consume of PhysicallyBasedMaterial.Blending(*(v2 + 10), *(v2 + 11), *(v2 + 12));
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 18) = *(v2 + 28);
    specialized MaterialWithBlendingInternal.blendingInternal.setter((v2 + 40));
  }

  free(v2);
}

uint64_t key path getter for PhysicallyBasedMaterial.normal : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0x4E65727574786574, 0xED00006C616D726FLL, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void PhysicallyBasedMaterial.normal.setter(uint64_t a1)
{
  v2 = *a1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v3 = *(v1 + 104);
  v4 = *(v1 + 106);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  v8 = *(v1 + 122);
  v22 = *(a1 + 8);
  if (v22)
  {
    v9 = v4 | 8;
  }

  else
  {
    v9 = v4 & 0xFFF7;
  }

  v42[0] = *(v1 + 104);
  v43 = v9;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  LOBYTE(v24[0]) = v3;
  WORD1(v24[0]) = v4;
  v24[1] = v5;
  LOBYTE(v25) = v6;
  BYTE1(v25) = v7;
  BYTE2(v25) = v8;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(v24, v42) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v42[0] | (v43 << 16), v44, (v46 << 8) | (v47 << 16) | v45);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v42);
  v10 = v48;

  v11 = v10;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v11, v35);
  if (v36 == 255)
  {
    __MaterialResource.subscript.getter(&v37);
  }

  else
  {
    v37 = v35[0];
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    v41 = v36;
  }

  v32 = v39;
  v33 = v40;
  v34 = v41;
  v30 = v37;
  v31 = v38;
  if (v41 != 255)
  {
    if (v41 == 1)
    {
      v12 = DWORD2(v31);
      v14 = *(&v30 + 1);
      v13 = v31;
      v15 = v30;
      goto LABEL_14;
    }

    outlined destroy of BodyTrackingComponent?(&v30, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
LABEL_14:
  outlined destroy of PhysicallyBasedMaterial(v42);
  v24[0] = v2;
  v24[1] = v22;
  *&v25 = v20;
  DWORD2(v25) = v21;
  *&v49 = v15;
  *(&v49 + 1) = v14;
  *&v50 = v13;
  DWORD2(v50) = v12;
  outlined copy of MaterialParameters.Texture?(v2, v22);
  outlined copy of MaterialParameters.Texture?(v15, v14);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v24, &v49);
  outlined consume of MaterialParameters.Texture?(v15, v14);
  outlined consume of MaterialParameters.Texture?(v2, v22);
  if (v22)
  {
    v16 = 1;
    v17 = v2;
    v18 = v20;
    v19 = v21;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v16 = -1;
  }

  strcpy(v24, "textureNormal");
  HIWORD(v24[1]) = -4864;
  *&v25 = v17;
  *(&v25 + 1) = v22;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  v27 = 0u;
  v28 = 0u;
  v29 = v16;
  v53 = v16;
  v51 = 0u;
  v52 = 0u;
  v49 = v25;
  v50 = v26;
  outlined copy of MaterialParameters.Texture?(v2, v22);

  outlined init with copy of [String : String](&v25, v23, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
  specialized Material.subscript.setter(&v49, 0x4E65727574786574, 0xED00006C616D726FLL);
  outlined destroy of MaterialParameterKeyValue(v24);
  outlined consume of MaterialParameters.Texture?(v15, v14);
  outlined consume of MaterialParameters.Texture?(v2, v22);
}

void (*PhysicallyBasedMaterial.normal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 104);

  v6 = v5;

  specialized String.withCString<A>(_:)(0x4E65727574786574, 0xED00006C616D726FLL, v6, v4 + 224);
  v7 = *(v4 + 288);
  if (v7 == 255)
  {
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v8 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v8;
    v9 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v9;
    *(v4 + 64) = v7;
  }

  v10 = *(v4 + 64);
  *(v4 + 400) = v10;
  v11 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v11;
  v12 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v12;
  if (v10 == 255)
  {
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  v13 = *(v4 + 360);
  v15 = *(v4 + 344);
  v14 = *(v4 + 352);
  v16 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v16;
  *(v4 + 304) = v15;
  *(v4 + 312) = v14;
  *(v4 + 320) = v13;
  return PhysicallyBasedMaterial.normal.modify;
}

uint64_t key path getter for PhysicallyBasedMaterial.ambientOcclusion : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0xD000000000000017, 0x80000001C18DDE20, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void PhysicallyBasedMaterial.ambientOcclusion.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 104);
  v5 = *(v1 + 106);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 121);
  v9 = *(v1 + 122);
  v19 = *a1;
  v18 = *(a1 + 24);
  if (v2)
  {
    v10 = v5 | 0x80;
  }

  else
  {
    v10 = v5 & 0xFF7F;
  }

  v36[0] = *(v1 + 104);
  v37 = v10;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  LOBYTE(v31) = v4;
  WORD1(v31) = v5;
  *(&v31 + 1) = v6;
  LOBYTE(v32) = v7;
  BYTE1(v32) = v8;
  BYTE2(v32) = v9;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v31, v36) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v36[0] | (v37 << 16), v38, (v40 << 8) | (v41 << 16) | v39);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v36);
  v11 = v42;

  v12 = v11;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v12, v29);
  if (v30 == 255)
  {
    __MaterialResource.subscript.getter(&v31);
  }

  else
  {
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[3];
    v35 = v30;
  }

  v26 = v33;
  v27 = v34;
  v28 = v35;
  v24 = v31;
  v25 = v32;
  if (v35 == 255)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = v19;
  }

  else
  {
    v13 = v19;
    if (v35 == 1)
    {
      v14 = DWORD2(v25);
      v16 = *(&v24 + 1);
      v15 = v25;
      v17 = v24;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }
  }

  outlined destroy of PhysicallyBasedMaterial(v36);
  v22[0] = v13;
  v22[1] = v2;
  v22[2] = v3;
  v23 = v18;
  v20[0] = v17;
  v20[1] = v16;
  v20[2] = v15;
  v21 = v14;
  outlined copy of MaterialParameters.Texture?(v13, v2);
  outlined copy of MaterialParameters.Texture?(v17, v16);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v22, v20);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v13, v2, v3, v18);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
}

void (*PhysicallyBasedMaterial.ambientOcclusion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 104);

  v6 = v5;

  specialized String.withCString<A>(_:)(0xD000000000000017, 0x80000001C18DDE20, v6, v4 + 224);
  v7 = *(v4 + 288);
  if (v7 == 255)
  {
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v8 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v8;
    v9 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v9;
    *(v4 + 64) = v7;
  }

  v10 = *(v4 + 64);
  *(v4 + 400) = v10;
  v11 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v11;
  v12 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v12;
  if (v10 == 255)
  {
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  v13 = *(v4 + 360);
  v15 = *(v4 + 344);
  v14 = *(v4 + 352);
  v16 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v16;
  *(v4 + 304) = v15;
  *(v4 + 312) = v14;
  *(v4 + 320) = v13;
  return PhysicallyBasedMaterial.ambientOcclusion.modify;
}

void (*PhysicallyBasedMaterial.anisotropyLevel.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.anisotropyLevel.modify;
}

void (*PhysicallyBasedMaterial.anisotropyAngle.modify(uint64_t *a1))(int **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v6[3] = &type metadata for PhysicallyBasedMaterial;
  v6[4] = &protocol witness table for PhysicallyBasedMaterial;
  v6[0] = swift_allocObject();
  outlined init with copy of PhysicallyBasedMaterial(v1, v6[0] + 16);
  PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(v6, v4);
  return PhysicallyBasedMaterial.anisotropyAngle.modify;
}

void (*PhysicallyBasedMaterial.sheen.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  if ((*(v1 + 106) & 0x800) != 0)
  {
    v10[3] = &type metadata for PhysicallyBasedMaterial;
    v10[4] = &protocol witness table for PhysicallyBasedMaterial;
    v10[0] = swift_allocObject();
    outlined init with copy of PhysicallyBasedMaterial(v1, v10[0] + 16);
    PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(v10, &v11);
    v5 = v11;
    v8 = v12;
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
  }

  *v4 = v5;
  *(v4 + 8) = v8;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  return PhysicallyBasedMaterial.sheen.modify;
}

void PhysicallyBasedMaterial.sheen.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 8);
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  v10 = v8;
  if (a2)
  {
    outlined copy of PhysicallyBasedMaterial.SheenColor?(v4, v5, v6);
    PhysicallyBasedMaterial.sheen.setter(v9);
    outlined consume of PhysicallyBasedMaterial.SheenColor?(*v3, v3[1], v3[2]);
  }

  else
  {
    PhysicallyBasedMaterial.sheen.setter(v9);
  }

  free(v3);
}

uint64_t (*PhysicallyBasedMaterial.textureCoordinateTransform.modify(uint64_t a1))(uint64_t a1, double a2, int32x4_t a3)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(0, 0xE000000000000000, a1);
  return CustomMaterial.textureCoordinateTransform.modify;
}

uint64_t (*PhysicallyBasedMaterial.secondaryTextureCoordinateTransform.modify(uint64_t a1))(uint64_t a1, double a2, int32x4_t a3)
{
  *(a1 + 24) = v1;
  specialized Material.getUVTransform(withSuffix:)(49, 0xE100000000000000, a1);
  return CustomMaterial.secondaryTextureCoordinateTransform.modify;
}

uint64_t PhysicallyBasedMaterial.shaderCache.getter()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    if (one-time initialization token for shaderCacheRegistry != -1)
    {
      swift_once();
    }

    PhysicallyBasedMaterial.assetService.getter(v3);
    v1 = specialized AssetServiceScopedRegistry.instance(for:)(v3);

    __swift_destroy_boxed_opaque_existential_1(v3);

    *(v0 + 96) = v1;
  }

  return v1;
}

void PhysicallyBasedMaterial.PBRShaderParameters.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  Hasher._combine(_:)(*(v0 + 2));
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
    if (v4 != 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v5 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v2);
  if (v4 == 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v4 & 1);
  if (v5 == 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  v6 = v5 & 1;
LABEL_8:
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v1);
}

unint64_t PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter()
{
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C18CFC20;
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = 0x80000001C18EE220;
  *(v2 + 48) = (v1 >> 2) & 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0x6F4E656C62616E45;
  *(v2 + 88) = 0xEF70614D6C616D72;
  *(v2 + 96) = (v1 >> 3) & 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0xD000000000000011;
  *(v2 + 136) = 0x80000001C18EE240;
  *(v2 + 144) = (v1 >> 4) & 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 176) = 0xD000000000000012;
  *(v2 + 184) = 0x80000001C18EE260;
  *(v2 + 192) = (v1 >> 5) & 1;
  *(v2 + 200) = 0;
  *(v2 + 208) = 0;
  *(v2 + 224) = 0xD000000000000011;
  *(v2 + 232) = 0x80000001C18EE280;
  *(v2 + 240) = (v1 >> 6) & 1;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 272) = 0x4F41656C62616E45;
  *(v2 + 280) = 0xEB0000000070614DLL;
  *(v2 + 288) = (v1 >> 7) & 1;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 320) = 0xD000000000000011;
  *(v2 + 328) = 0x80000001C18EE2A0;
  *(v2 + 336) = (v1 >> 8) & 1;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 368) = 0x6C43656C62616E45;
  *(v2 + 376) = 0xEF74616F63726165;
  *(v2 + 384) = (v1 >> 9) & 1;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 416) = 0xD000000000000010;
  *(v2 + 424) = 0x80000001C18EE2C0;
  *(v2 + 432) = (v1 >> 10) & 1;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  *(v2 + 464) = 0x6C43656C62616E45;
  *(v2 + 472) = 0xEB0000000068746FLL;
  *(v2 + 480) = (v1 >> 11) & 1;
  *(v2 + 488) = 0;
  *(v2 + 496) = 0;
  *(v2 + 512) = 0xD000000000000018;
  *(v2 + 520) = 0x80000001C18EE2E0;
  *(v2 + 528) = (v1 >> 14) & 1;
  *(v2 + 536) = 0;
  *(v2 + 544) = 0;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v3;
}

Swift::Int PhysicallyBasedMaterial.PBRShaderParameters.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
  }

  if (v4 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
    if (v5 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  Hasher._combine(_:)(0);
  if (v5 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v7 = v5 & 1;
LABEL_9:
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.PBRShaderParameters()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
  }

  if (v4 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
    if (v5 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  Hasher._combine(_:)(0);
  if (v5 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v7 = v5 & 1;
LABEL_9:
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *(*PhysicallyBasedMaterial.triangleFillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 136) == 1;
  return PhysicallyBasedMaterial.triangleFillMode.modify;
}

uint64_t (*PhysicallyBasedMaterial.writesDepth.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 144);
  return PhysicallyBasedMaterial.writesDepth.modify;
}

uint64_t (*PhysicallyBasedMaterial.readsDepth.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 145);
  return PhysicallyBasedMaterial.readsDepth.modify;
}

uint64_t PhysicallyBasedMaterial.program.setter(uint64_t a1)
{
  specialized PhysicallyBasedMaterial.program.setter(a1);
}

uint64_t (*PhysicallyBasedMaterial.program.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 128);
  a1[1] = v1;

  return PhysicallyBasedMaterial.program.modify;
}

uint64_t PhysicallyBasedMaterial.program.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized PhysicallyBasedMaterial.program.setter(v3);
  }

  else
  {
    specialized PhysicallyBasedMaterial.program.setter(v2);
  }
}

uint64_t PhysicallyBasedMaterial.init(program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = a2 + 40;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 106) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 121) = 514;
  *(a2 + 144) = 257;
  *(a2 + 128) = a1;
  *(a2 + 136) = 0;
  v4 = *(a1 + 24);
  *a2 = v4;

  v5 = REMaterialParameterBlockValueCreate();
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v12);
  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit16__REAssetService_pSgMd, _s10RealityKit16__REAssetService_pSgMR);
  outlined init with take of ForceEffectBase(v12, v3);
  swift_beginAccess();
  FeatureFlags = REMaterialAssetGetFeatureFlags();
  if ((FeatureFlags & 0x1000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(a2 + 104) = 0;
  *(a2 + 106) = FeatureFlags;
  if ((FeatureFlags & 0x2000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 121) = v8;
  *(a2 + 122) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for __MaterialResource();
  *(inited + 64) = &protocol witness table for __MaterialResource;
  *(inited + 32) = v4;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  return __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

uint64_t PhysicallyBasedMaterial.clearcoatNormal.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(v1, v21);
  v3 = v21[4];

  v4 = v3;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v4, v14);
  if (v15 == 255)
  {
    __MaterialResource.subscript.getter(&v16);
  }

  else
  {
    v16 = v14[0];
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    v20 = v15;
  }

  v11 = v18;
  v12 = v19;
  v13 = v20;
  v9 = v16;
  v10 = v17;
  v5 = 0uLL;
  if (v20 == 255)
  {
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    outlined destroy of BodyTrackingComponent?(&v9, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
    v5 = 0uLL;
LABEL_8:
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = DWORD2(v10);
  v7 = v10;
  v5 = v9;
LABEL_9:
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return outlined destroy of PhysicallyBasedMaterial(v21);
}

uint64_t key path getter for PhysicallyBasedMaterial.clearcoatNormal : PhysicallyBasedMaterial@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PhysicallyBasedMaterial(a1, v12);
  specialized Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E2B00, &v8);
  result = outlined destroy of PhysicallyBasedMaterial(v12);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  if (!v9)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t key path setter for PhysicallyBasedMaterial.normal : PhysicallyBasedMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void **, double))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  v9 = outlined copy of MaterialParameters.Texture?(v11[0], v6);
  return a5(v11, v9);
}

void PhysicallyBasedMaterial.clearcoatNormal.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(v1 + 104);
  v5 = *(v1 + 106);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 121);
  v9 = *(v1 + 122);
  v19 = *a1;
  v18 = *(a1 + 24);
  if (v2)
  {
    v10 = v5 | 0x4000;
  }

  else
  {
    v10 = v5 & 0xBFFF;
  }

  v36[0] = *(v1 + 104);
  v37 = v10;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  LOBYTE(v31) = v4;
  WORD1(v31) = v5;
  *(&v31 + 1) = v6;
  LOBYTE(v32) = v7;
  BYTE1(v32) = v8;
  BYTE2(v32) = v9;
  if ((specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(&v31, v36) & 1) == 0)
  {
    specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(v36[0] | (v37 << 16), v38, (v40 << 8) | (v41 << 16) | v39);
  }

  outlined init with copy of PhysicallyBasedMaterial(v1, v36);
  v11 = v42;

  v12 = v11;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v12, v29);
  if (v30 == 255)
  {
    __MaterialResource.subscript.getter(&v31);
  }

  else
  {
    v31 = v29[0];
    v32 = v29[1];
    v33 = v29[2];
    v34 = v29[3];
    v35 = v30;
  }

  v26 = v33;
  v27 = v34;
  v28 = v35;
  v24 = v31;
  v25 = v32;
  if (v35 == 255)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = v19;
  }

  else
  {
    v13 = v19;
    if (v35 == 1)
    {
      v14 = DWORD2(v25);
      v16 = *(&v24 + 1);
      v15 = v25;
      v17 = v24;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v24, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }
  }

  outlined destroy of PhysicallyBasedMaterial(v36);
  v22[0] = v13;
  v22[1] = v2;
  v22[2] = v3;
  v23 = v18;
  v20[0] = v17;
  v20[1] = v16;
  v20[2] = v15;
  v21 = v14;
  outlined copy of MaterialParameters.Texture?(v13, v2);
  outlined copy of MaterialParameters.Texture?(v17, v16);
  PhysicallyBasedMaterial.checkMultiUV(_:_:)(v22, v20);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
  specialized Material.setParameter<A>(_:alternateTintKey:)(v13, v2, v3, v18);
  outlined consume of MaterialParameters.Texture?(v17, v16);
  outlined consume of MaterialParameters.Texture?(v13, v2);
}

void (*PhysicallyBasedMaterial.clearcoatNormal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 328) = v1;
  outlined init with copy of PhysicallyBasedMaterial(v1, v3 + 72);
  v5 = *(v4 + 104);

  v6 = v5;

  specialized String.withCString<A>(_:)(0xD000000000000016, 0x80000001C18E2B00, v6, v4 + 224);
  v7 = *(v4 + 288);
  if (v7 == 255)
  {
    __MaterialResource.subscript.getter(v4);
  }

  else
  {
    v8 = *(v4 + 240);
    *v4 = *(v4 + 224);
    *(v4 + 16) = v8;
    v9 = *(v4 + 272);
    *(v4 + 32) = *(v4 + 256);
    *(v4 + 48) = v9;
    *(v4 + 64) = v7;
  }

  v10 = *(v4 + 64);
  *(v4 + 400) = v10;
  v11 = *(v4 + 48);
  *(v4 + 368) = *(v4 + 32);
  *(v4 + 384) = v11;
  v12 = *(v4 + 16);
  *(v4 + 336) = *v4;
  *(v4 + 352) = v12;
  if (v10 == 255)
  {
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4 + 336, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
LABEL_11:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  v13 = *(v4 + 360);
  v15 = *(v4 + 344);
  v14 = *(v4 + 352);
  v16 = *(v4 + 336);
LABEL_12:
  outlined destroy of PhysicallyBasedMaterial(v4 + 72);
  *(v4 + 296) = v16;
  *(v4 + 304) = v15;
  *(v4 + 312) = v14;
  *(v4 + 320) = v13;
  return PhysicallyBasedMaterial.clearcoatNormal.modify;
}

void PhysicallyBasedMaterial.normal.modify(uint64_t *a1, char a2, void (*a3)(void *, double))
{
  v5 = *a1;
  v6 = *(*a1 + 296);
  v7 = *(v5 + 304);
  v8 = *(v5 + 312);
  v9 = *(v5 + 320);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v12 = v9;
  if (a2)
  {
    v10 = outlined copy of MaterialParameters.Texture?(v6, v7);
    a3(v11, v10);
    outlined consume of MaterialParameters.Texture?(*(v5 + 296), *(v5 + 304));
  }

  else
  {
    (a3)(v11);
  }

  free(v5);
}

uint64_t specialized static PhysicallyBasedMaterial.PBRShaderParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v4 = a1[17];
    v5 = a1[18];
    v6 = a2[17];
    v7 = a2[18];
    if (a1[16])
    {
      if (!a2[16])
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 1) == *(a2 + 1))
      {
        v8 = a2[16];
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (v4 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void outlined consume of PhysicallyBasedMaterial.SheenColor?(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {

    outlined consume of MaterialParameters.Texture?(a2, a3);
  }
}

void outlined consume of PhysicallyBasedMaterial.Blending(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined consume of MaterialParameters.Texture?(a2, a3);
  }
}

double outlined copy of PhysicallyBasedMaterial.SheenColor?(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;

    return outlined copy of MaterialParameters.Texture?(a2, a3);
  }

  return result;
}

void specialized PhysicallyBasedMaterial.program.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  v3 = *(a1 + 24);

  *v1 = v3;
  v4 = *(a1 + 16);
  v5 = *(v1 + 106) & 0xFFFE;
  if (v4 != 2)
  {
    ++v5;
  }

  specialized MaterialWithShaderCache.updateShaderFromParameters(parameters:)(*(a1 + 17) | (v5 << 16), *(v1 + 112), (*(v1 + 122) << 16) | (v4 << 8) | *(v1 + 120));
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters()
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicallyBasedMaterial.PBRShaderParameters, &type metadata for PhysicallyBasedMaterial.PBRShaderParameters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicallyBasedMaterial.PBRShaderParameters, &type metadata for PhysicallyBasedMaterial.PBRShaderParameters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicallyBasedMaterial.PBRShaderParameters, &type metadata for PhysicallyBasedMaterial.PBRShaderParameters, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters);
  }

  return result;
}

double keypath_get_66Tm_0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.PBRShaderParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.PBRShaderParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicallyBasedMaterial.PBRShaderParameters(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicallyBasedMaterial.PBRShaderParameters and conformance PhysicallyBasedMaterial.PBRShaderParameters();
  *(a1 + 8) = result;
  return result;
}

uint64_t EventSubscription.init(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  type metadata accessor for StoredEventSubscription();
  v8 = swift_allocObject();
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v9 = Publisher<>.sink(receiveValue:)();
  (*(v5 + 8))(v7, v4);
  v10 = type metadata accessor for AnyCancellable();
  v11 = MEMORY[0x1E695BF08];
  v8[5] = v10;
  v8[6] = v11;
  v8[2] = v9;
  *a2 = v8;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v8 + 2);
  outlined init with take of ForceEffectBase(a1, (v8 + 2));
  return swift_endAccess();
}

uint64_t EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[3] = a5;
  v17[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v8, a5);
  (*(a8 + 16))(v17, a2, a3, a4, a6, a8);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t getEventID<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v5 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v5)
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v7)
    {
      v8 = *(v4[7] + 8 * v6);
      swift_endAccess();
      return v8;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v11 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
LABEL_21:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    goto LABEL_22;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v11 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v11 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v10 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v11 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
    goto LABEL_21;
  }

  v12 = swift_conformsToProtocol2();
  v13 = a2;
  if (v12)
  {
    v13 = a2;
    if (a1)
    {
      v10 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
      v11 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v5)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v14)
    {
      return *(v4[7] + 8 * result);
    }
  }

  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v15 = String.utf8CString.getter();

  v16 = MEMORY[0x1C68F97D0](v15 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, isUniquelyReferenced_nonNull_native);
  v4 = v19;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v19;
  result = swift_endAccess();
  if (v19[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v18)
    {
      return *(v4[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double EventService.publish<A>(_:on:componentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 16);
  v12(&v19, a6, a2, a3, a4, a6, a5);
  v16 = v19;
  v17 = v20;
  v18 = v21;
  type metadata accessor for __REEventSubscriber(0, a6, v13, v14);
  __REEventSubscriber.receive(_:)(a1);

  if (*(a2 + 24))
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    (v12)(&v19, a6, &v16, 0, 0, a6, a5, a7);
    outlined destroy of BodyTrackingComponent?(&v16, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    __REEventSubscriber.receive(_:)(a1);
  }

  return result;
}

void *one-time initialization function for registeredEventsToEventBusIds()
{
  result = specialized static RegisteredEventsToEventBusIds.generateRegisteredEventsToEventBusIds()();
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = result;
  return result;
}

uint64_t BoxedSubscription.__deallocating_deinit()
{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t EventService.subscribe<A>(to:on:componentType:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  return EventService.subscribe<A>(to:on:componentType:_:)(a1, a2, a3, a6, a7, a8, a9);
}

{
  (*(a9 + 8))(&v19, a7, a1, a2, a3, a7, a6);
  v17 = v19;
  v18 = v20;
  v13 = type metadata accessor for Scene.CorePublisher(0, a7, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for Scene.CorePublisher<A>, v13, v17, v18);
  v14 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v16 = MEMORY[0x1E695BF08];
  a8[3] = result;
  a8[4] = v16;
  *a8 = v14;
  return result;
}

{
  return EventService.subscribe<A>(to:on:componentType:_:)(a1, a2, a3, a6, a7, a8, a9);
}

uint64_t REEventBus.__deallocating_deinit()
{
  REEventBusSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = getEventID<A>(_:)(a6, a6);
  if (a2)
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v14 + 80, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
    type metadata accessor for SceneManager();
    swift_dynamicCast();
    v15 = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
    if (v15)
    {
      goto LABEL_5;
    }

    (*(a3 + 80))(v26, a2, a3);
    if (LODWORD(v26[0]) == 36)
    {
      v15 = specialized static SceneManager.customComponentType(_:)(a2, a3);
LABEL_5:
      v16 = v15;

      if (*(a1 + 24))
      {
        goto LABEL_6;
      }

LABEL_15:
      result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      v19 = 0;
      goto LABEL_16;
    }
  }

  v16 = 0;
  if (!*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_6:
  outlined init with copy of EventSource?(a1, v21);
  if (!v22)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pMd, &_s10RealityKit11EventSource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14RECoreBridging_pMd, &_s17RealityFoundation14RECoreBridging_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  if (!*(&v24 + 1))
  {
LABEL_12:
    outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation14RECoreBridging_pSgMd, &_s17RealityFoundation14RECoreBridging_pSgMR);
    outlined init with copy of EventSource?(a1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v19 = Optional._bridgeToObjectiveC()();
    outlined destroy of BodyTrackingComponent?(v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_unknownObjectRelease();
    result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of ForceEffectBase(&v23, v26);
  v17 = v27;
  v18 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_16:
  *a7 = v13;
  a7[1] = v19;
  a7[2] = v16;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

void REEventBus.DispatcherHandle.hash(into:)(uint64_t a1)
{
  MEMORY[0x1C68F4C50](*v1);
  v2 = v1[1];
  if (v2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
    v3 = v1[2];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (v1[4])
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v3);
  if (!v1[4])
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int REEventBus.DispatcherHandle.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    v3 = v0[2];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v0[4])
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  v3 = v0[2];
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v3);
  if (!v0[4])
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance REEventBus.DispatcherHandle()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v3);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance REEventBus.DispatcherHandle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static REEventBus.DispatcherHandle.== infix(_:_:)(v5, v7);
}

uint64_t *REEventBus.getOrCreateDispatcher<A>(handle:of:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v9 & 1) != 0))
  {
    outlined init with copy of Any(*(v7 + 56) + 32 * v8, &v17);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  swift_endAccess();
  if (!*(&v18 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v17, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  type metadata accessor for REEventDispatcher(0, a3, v10, v11);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v15 = type metadata accessor for REEventDispatcher(0, a3, v12, v13);
    v14 = specialized REEventDispatcher.__allocating_init(eventBus:coreHandle:sourceObject:componentType:matching:)(v4, *(v4 + 16), a1[1], a1[2], a1[3], a1[4]);
    v19[3] = v15;
    v19[0] = v14;
    swift_beginAccess();
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v17);
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v17);

    specialized Dictionary.subscript.setter(v19, a1);
    swift_endAccess();
    return v14;
  }

  return v19[0];
}

uint64_t REEventBus.publisher<A>(for:on:componentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  outlined init with copy of EventSource?(a1, v11);
  REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)(v11, a2, a3, 0, 0, a4, v12);
  v9 = REEventBus.getOrCreateDispatcher<A>(handle:of:)(v12, a4, a4);
  outlined destroy of REEventBus.DispatcherHandle(v12);
  return Scene.CorePublisher.init(dispatcher:sourceObject:componentType:)(v9, v12[1], v12[2], a5);
}

uint64_t REEventBus.subscriber<A>(for:on:componentType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  outlined init with copy of EventSource?(a1, v11);
  REEventBus.DispatcherHandle.init<A>(event:sourceObject:componentType:matching:)(v11, a2, a3, 0, 0, a4, v12);
  v9 = REEventBus.getOrCreateDispatcher<A>(handle:of:)(v12, a4, a4);
  outlined destroy of REEventBus.DispatcherHandle(v12);
  return __REEventSubscriber.init(dispatcher:sourceObject:componentType:)(v9, v12[1], v12[2], a5);
}

void *StoredEventSubscription.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = swift_allocObject();
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v5 = Publisher<>.sink(receiveValue:)();
  (*(v1 + 8))(v3, v0);
  v6 = type metadata accessor for AnyCancellable();
  v7 = MEMORY[0x1E695BF08];
  v4[5] = v6;
  v4[6] = v7;
  v4[2] = v5;
  return v4;
}

Swift::Void __swiftcall EventSubscription.cancel()()
{
  v1 = *v0;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of Cancellable.cancel()();
  __swift_destroy_boxed_opaque_existential_1(v2);
}

void *StoredEventSubscription.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v6 = Publisher<>.sink(receiveValue:)();
  (*(v3 + 8))(v5, v2);
  v7 = type metadata accessor for AnyCancellable();
  v8 = MEMORY[0x1E695BF08];
  v1[5] = v7;
  v1[6] = v8;
  v1[2] = v6;
  return v1;
}

unint64_t lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>()
{
  result = lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>;
  if (!lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
    result = swift_getWitnessTable(MEMORY[0x1E695C018], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>);
  }

  return result;
}

uint64_t StoredEventSubscription.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized _StoredEventSubscription.__allocating_init(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t _StoredEventSubscription.init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized _StoredEventSubscription.init(to:on:componentType:_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_allocObject();
  v14 = specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(a1, a2, a3, a4, a5, a6, a7);

  return v14;
}

uint64_t _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t _StoredEventSubscription.subscribe(to:)()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  outlined init with copy of EventSource?((v0 + 8), v11);
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[17];
  v8 = *(v2 + 128);
  v9 = *(v2 + 136);

  Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(v11, v3, v4, v5, v6, v12, v7, v8, v9);

  outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  outlined init with take of ForceEffectBase(v12, (v1 + 2));
  return swift_endAccess();
}

double _StoredEventSubscription.__ivar_destroyer()
{
  outlined destroy of BodyTrackingComponent?(v0 + 64, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);

  return result;
}

uint64_t _StoredEventSubscription.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  outlined destroy of BodyTrackingComponent?(v0 + 64, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);

  return v0;
}

uint64_t _StoredEventSubscription.__deallocating_deinit()
{
  _StoredEventSubscription.deinit();

  return swift_deallocClassInstance();
}

uint64_t _StoredEventSubscription.__allocating_init(to:on:matching:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of EventSource?(a2, v14);
  swift_allocObject();
  v12 = specialized _StoredEventSubscription.init(to:on:componentType:_:)(a1, v14, 0, 0, a5, a6);

  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  *(v12 + 144) = a3;
  *(v12 + 152) = a4;

  return v12;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v36[0] = v14;
    v36[1] = v15;
    (a2)(v35, v36);
    v17 = v35[0];
    v16 = v35[1];
    v18 = *v37;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v35[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_21;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v34 & 1);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    a4 = 1;
    if ((v24 & 1) == 0)
    {
      v27 = *v37;
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_22;
      }

      v27[2] = v30;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v34 = a4;
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized static RegisteredEventsToEventBusIds.generateRegisteredEventsToEventBusIds()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySO_s6UInt64VtGMd, &_ss23_ContiguousArrayStorageCySO_s6UInt64VtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C18CFE40;
  type metadata accessor for REEngineDoUpdateEvent(0);
  *(inited + 32) = v1;
  *(inited + 40) = MEMORY[0x1C68F97D0]("REEngineDoUpdateEvent");
  type metadata accessor for REEngineDoRenderEvent(0);
  *(inited + 48) = v2;
  *(inited + 56) = MEMORY[0x1C68F97D0]("REEngineDoRenderEvent");
  type metadata accessor for RESceneAnchoredStateChangedEvent(0);
  *(inited + 64) = v3;
  *(inited + 72) = MEMORY[0x1C68F97D0]("RESceneAnchoredStateChangedEvent");
  type metadata accessor for RESceneEntityDidAddEvent(0);
  *(inited + 80) = v4;
  *(inited + 88) = MEMORY[0x1C68F97D0]("RESceneEntityDidAddEvent");
  type metadata accessor for RESceneEntityDidActivateEvent(0);
  *(inited + 96) = v5;
  *(inited + 104) = MEMORY[0x1C68F97D0]("RESceneEntityDidActivateEvent");
  type metadata accessor for RESceneEntityWillDeactivateEvent(0);
  *(inited + 112) = v6;
  *(inited + 120) = MEMORY[0x1C68F97D0]("RESceneEntityWillDeactivateEvent");
  type metadata accessor for RESceneEntityWillRemoveEvent(0);
  *(inited + 128) = v7;
  *(inited + 136) = MEMORY[0x1C68F97D0]("RESceneEntityWillRemoveEvent");
  type metadata accessor for RESceneEntityDidReparentEvent(0);
  *(inited + 144) = v8;
  *(inited + 152) = MEMORY[0x1C68F97D0]("RESceneEntityDidReparentEvent");
  type metadata accessor for REAnimationHasCompletedEvent(0);
  *(inited + 160) = v9;
  *(inited + 168) = MEMORY[0x1C68F97D0]("REAnimationHasCompletedEvent");
  type metadata accessor for REAnimationHasLoopedEvent(0);
  *(inited + 176) = v10;
  *(inited + 184) = MEMORY[0x1C68F97D0]("REAnimationHasLoopedEvent");
  type metadata accessor for REAnimationHasTerminatedEvent(0);
  *(inited + 192) = v11;
  *(inited + 200) = MEMORY[0x1C68F97D0]("REAnimationHasTerminatedEvent");
  type metadata accessor for REAnimationHasStartedEvent(0);
  *(inited + 208) = v12;
  *(inited + 216) = MEMORY[0x1C68F97D0]("REAnimationHasStartedEvent");
  type metadata accessor for REAnimationHasTimelineEventStart(0);
  *(inited + 224) = v13;
  *(inited + 232) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventStart");
  type metadata accessor for REAnimationHasTimelineEventUpdate(0);
  *(inited + 240) = v14;
  *(inited + 248) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventUpdate");
  type metadata accessor for REAnimationHasTimelineEventEnd(0);
  *(inited + 256) = v15;
  *(inited + 264) = MEMORY[0x1C68F97D0]("REAnimationHasTimelineEventEnd");
  type metadata accessor for REAnimationTimelineEventSkipped(0);
  *(inited + 272) = v16;
  *(inited + 280) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventSkipped");
  type metadata accessor for REAnimationTimelineEventPause(0);
  *(inited + 288) = v17;
  *(inited + 296) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventPause");
  type metadata accessor for REAnimationTimelineEventResume(0);
  *(inited + 304) = v18;
  *(inited + 312) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventResume");
  type metadata accessor for REAnimationTimelineEventTerminated(0);
  *(inited + 320) = v19;
  *(inited + 328) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventTerminated");
  type metadata accessor for REAnimationTimelineEventCreated(0);
  *(inited + 336) = v20;
  *(inited + 344) = MEMORY[0x1C68F97D0]("REAnimationTimelineEventCreated");
  type metadata accessor for RECollisionDidStartEventEx(0);
  *(inited + 352) = v21;
  *(inited + 360) = MEMORY[0x1C68F97D0]("RECollisionDidStartEventEx");
  type metadata accessor for RECollisionDidUpdateEventEx(0);
  *(inited + 368) = v22;
  *(inited + 376) = MEMORY[0x1C68F97D0]("RECollisionDidUpdateEventEx");
  type metadata accessor for RECollisionDidStopEvent(0);
  *(inited + 384) = v23;
  *(inited + 392) = MEMORY[0x1C68F97D0]("RECollisionDidStopEvent");
  type metadata accessor for REComponentDidAddEvent(0);
  *(inited + 400) = v24;
  *(inited + 408) = MEMORY[0x1C68F97D0]("REComponentDidAddEvent");
  type metadata accessor for REComponentDidActivateEvent(0);
  *(inited + 416) = v25;
  *(inited + 424) = MEMORY[0x1C68F97D0]("REComponentDidActivateEvent");
  type metadata accessor for REComponentWillDeactivateEvent(0);
  *(inited + 432) = v26;
  *(inited + 440) = MEMORY[0x1C68F97D0]("REComponentWillDeactivateEvent");
  type metadata accessor for REComponentWillRemoveEvent(0);
  *(inited + 448) = v27;
  *(inited + 456) = MEMORY[0x1C68F97D0]("REComponentWillRemoveEvent");
  type metadata accessor for REComponentDidChangeEvent(0);
  *(inited + 464) = v28;
  *(inited + 472) = MEMORY[0x1C68F97D0]("REComponentDidChangeEvent");
  type metadata accessor for REMotionStateDidChangeEvent(0);
  *(inited + 480) = v29;
  *(inited + 488) = MEMORY[0x1C68F97D0]("REMotionStateDidChangeEvent");
  type metadata accessor for REOwnershipRequestEvent(0);
  *(inited + 496) = v30;
  *(inited + 504) = MEMORY[0x1C68F97D0]("REOwnershipRequestEvent");
  type metadata accessor for REOwnershipResponseEvent(0);
  *(inited + 512) = v31;
  *(inited + 520) = MEMORY[0x1C68F97D0]("REOwnershipResponseEvent");
  type metadata accessor for REOwnershipChangedEvent(0);
  *(inited + 528) = v32;
  *(inited + 536) = MEMORY[0x1C68F97D0]("REOwnershipChangedEvent");
  type metadata accessor for REAudioPlayerDidStartEvent(0);
  *(inited + 544) = v33;
  *(inited + 552) = MEMORY[0x1C68F97D0]("REAudioPlayerDidStartEvent");
  type metadata accessor for REAudioPlayerDidCompleteEvent(0);
  *(inited + 560) = v34;
  *(inited + 568) = MEMORY[0x1C68F97D0]("REAudioPlayerDidCompleteEvent");
  *(inited + 576) = &type metadata for EngineRenderEvent;
  *(inited + 584) = MEMORY[0x1C68F97D0]("EngineRenderEvent");
  type metadata accessor for REEntityPhysicsWillSimulateEvent(0);
  *(inited + 592) = v35;
  *(inited + 600) = MEMORY[0x1C68F97D0]("REEntityPhysicsWillSimulateEvent");
  type metadata accessor for REEntityPhysicsDidSimulateEvent(0);
  *(inited + 608) = v36;
  *(inited + 616) = MEMORY[0x1C68F97D0]("REEntityPhysicsDidSimulateEvent");
  type metadata accessor for REEntityForceEffectComputeForcesEvent(0);
  *(inited + 624) = v37;
  *(inited + 632) = MEMORY[0x1C68F97D0]("REEntityForceEffectComputeForcesEvent");
  type metadata accessor for REAnimationSkeletalPoseUpdateCompleteEvent(0);
  *(inited + 640) = v38;
  *(inited + 648) = MEMORY[0x1C68F97D0]("REAnimationSkeletalPoseUpdateCompleteEvent");
  type metadata accessor for REVideoPlayerContentTypeChangedEvent(0);
  *(inited + 656) = v39;
  *(inited + 664) = MEMORY[0x1C68F97D0]("REVideoPlayerContentTypeChangedEvent");
  type metadata accessor for REVideoPlayerVideoSizeChangedEvent(0);
  *(inited + 672) = v40;
  *(inited + 680) = MEMORY[0x1C68F97D0]("REVideoPlayerVideoSizeChangedEvent");
  type metadata accessor for REVideoPlayerViewingModeChangedEvent(0);
  *(inited + 688) = v41;
  *(inited + 696) = MEMORY[0x1C68F97D0]("REVideoPlayerViewingModeChangedEvent");
  type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
  *(inited + 704) = v42;
  *(inited + 712) = MEMORY[0x1C68F97D0]("REVideoPlayerVideoReceiverEndpointChangedEvent");
  type metadata accessor for REAnchorStateDidAnchorEvent(0);
  *(inited + 720) = v43;
  *(inited + 728) = MEMORY[0x1C68F97D0]("REAnchorStateDidAnchorEvent");
  type metadata accessor for REAnchorStateWillUnanchorEvent(0);
  *(inited + 736) = v44;
  *(inited + 744) = MEMORY[0x1C68F97D0]("REAnchorStateWillUnanchorEvent");
  type metadata accessor for REAnchorStateDidFailToAnchorEvent(0);
  *(inited + 752) = v45;
  *(inited + 760) = MEMORY[0x1C68F97D0]("REAnchorStateDidFailToAnchorEvent");
  type metadata accessor for REAnchoringTrackingStateEvent(0);
  *(inited + 768) = v46;
  *(inited + 776) = MEMORY[0x1C68F97D0]("REAnchoringTrackingStateEvent");
  v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt64VTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v48 = MEMORY[0x1C68F97D0]("EngineUpdateEvent");
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, &type metadata for EngineUpdateEvent, isUniquelyReferenced_nonNull_native);
  v50 = v47;
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1C1897F90;
  *(v51 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd, &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR);
  *(v51 + 40) = MEMORY[0x1C68F97D0]("AccessibilityRotorNavigationEvent");
  *(v51 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AccessibilityActivateEvent_pMd, &_s17RealityFoundation26AccessibilityActivateEvent_pMR);
  *(v51 + 56) = MEMORY[0x1C68F97D0]("AccessibilityActivateEvent");
  *(v51 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityIncrementEvent_pMd, &_s17RealityFoundation27AccessibilityIncrementEvent_pMR);
  *(v51 + 72) = MEMORY[0x1C68F97D0]("AccessibilityIncrementEvent");
  *(v51 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityDecrementEvent_pMd, &_s17RealityFoundation27AccessibilityDecrementEvent_pMR);
  *(v51 + 88) = MEMORY[0x1C68F97D0]("AccessibilityDecrementEvent");
  *(v51 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30AccessibilityCustomActionEvent_pMd, &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR);
  *(v51 + 104) = MEMORY[0x1C68F97D0]("AccessibilityCustomActionEvent");
  v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt64VTt0g5Tf4g_n(v51);
  swift_setDeallocating();
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v50;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v52, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v53, &v55);
  return v55;
}

BOOL specialized static REEventBus.DispatcherHandle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    return v7 && (a1[3] == a2[3] && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v7;
}

uint64_t specialized _StoredEventSubscription.init(to:on:componentType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 56) = a1;
  swift_beginAccess();
  outlined assign with copy of EventSource?(a2, v7 + 64);
  swift_endAccess();
  *(v7 + 104) = a3;
  *(v7 + 112) = a4;
  *(v7 + 120) = 0;

  *(v7 + 128) = v21;
  *(v7 + 136) = a6;

  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v17 = Publisher<>.sink(receiveValue:)();
  (*(v14 + 8))(v16, v13);
  v18 = type metadata accessor for AnyCancellable();
  v19 = MEMORY[0x1E695BF08];
  *(v7 + 40) = v18;
  *(v7 + 48) = v19;
  *(v7 + 16) = v17;
  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  return v7;
}

uint64_t specialized _StoredEventSubscription.init(to:on:componentType:rootEntity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v24 = a4;
  v25 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd, &_s7Combine5EmptyVyyts5NeverOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 56) = a1;
  swift_beginAccess();
  outlined assign with copy of EventSource?(a2, v8 + 64);
  swift_endAccess();
  v18 = v24;
  *(v8 + 104) = a3;
  *(v8 + 112) = v18;
  *(v8 + 120) = a5;

  *(v8 + 128) = v25;
  *(v8 + 136) = a7;

  Empty.init(completeImmediately:)();
  lazy protocol witness table accessor for type Empty<(), Never> and conformance Empty<A, B>();
  v19 = Publisher<>.sink(receiveValue:)();
  (*(v15 + 8))(v17, v14);
  v20 = type metadata accessor for AnyCancellable();
  v21 = MEMORY[0x1E695BF08];
  *(v8 + 40) = v20;
  *(v8 + 48) = v21;
  *(v8 + 16) = v19;
  outlined destroy of BodyTrackingComponent?(a2, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  return v8;
}

uint64_t outlined init with copy of EventSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for REEventBus.DispatcherHandle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REEventBus.DispatcherHandle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle()
{
  result = lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle;
  if (!lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for REEventBus.DispatcherHandle, &type metadata for REEventBus.DispatcherHandle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type REEventBus.DispatcherHandle and conformance REEventBus.DispatcherHandle);
  }

  return result;
}

uint64_t outlined assign with copy of EventSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized MeshBuffer.Iterator.next()()
{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

{
  return specialized MeshBuffer.Iterator.next()(specialized MeshBuffer.Iterator.next());
}

uint64_t specialized MeshBuffer.Iterator.next()(uint64_t (*a1)(uint64_t))
{
  if (!v1[1])
  {
    return 0;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v11 & 1) == 0)
  {
    v8 = v10;

    return v8;
  }

  v4 = (v1[2])(*v1);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  *v3 = v4;
  v3[1] = v6;
  v8 = a1(v7);

  return v8;
}

{
  if (!v1[1])
  {
    return 0;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v11 & 1) == 0)
  {
    v8 = v10;

    return v8;
  }

  v4 = (v1[2])(*v1);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  *v3 = v4;
  v3[1] = v6;
  v8 = a1(v7);

  return v8;
}

{
  if (!v1[1])
  {
    goto LABEL_5;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v12 & 1) == 0)
  {
    LOWORD(v8) = v11;

    v9 = 0;
    return v8 | (v9 << 16);
  }

  v4 = (v1[2])(*v1);
  v6 = v5;

  if (v6)
  {
    *v3 = v4;
    v3[1] = v6;
    v8 = a1(v7);

    v9 = HIWORD(v8) & 1;
  }

  else
  {
LABEL_5:
    LOWORD(v8) = 0;
    v9 = 1;
  }

  return v8 | (v9 << 16);
}

{
  if (!v1[1])
  {
    goto LABEL_5;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v12 & 1) == 0)
  {
    LOBYTE(v8) = v11;

    v9 = 0;
    return v8 | (v9 << 8);
  }

  v4 = (v1[2])(*v1);
  v6 = v5;

  if (v6)
  {
    *v3 = v4;
    v3[1] = v6;
    v8 = a1(v7);

    v9 = (v8 >> 8) & 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v8) = 0;
    v9 = 1;
  }

  return v8 | (v9 << 8);
}

unint64_t specialized MeshBuffer.Iterator.next()(uint64_t (*a1)(uint64_t))
{
  if (!v1[1])
  {
    goto LABEL_5;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((v12 & 1) == 0)
  {
    LODWORD(v8) = v11;

    LOBYTE(v9) = 0;
    return v8 | (v9 << 32);
  }

  v4 = (v1[2])(*v1);
  v6 = v5;

  if (v6)
  {
    *v3 = v4;
    v3[1] = v6;
    v8 = a1(v7);

    v9 = HIDWORD(v8) & 1;
  }

  else
  {
LABEL_5:
    LODWORD(v8) = 0;
    LOBYTE(v9) = 1;
  }

  return v8 | (v9 << 32);
}

void specialized MeshBuffer.Iterator.next()(uint64_t a1@<X8>)
{
  if (!v1[1])
  {
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 1;
    return;
  }

  v3 = v1;

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (v8)
  {
    v4 = (v1[2])(*v1);
    v6 = v5;

    if (v6)
    {
      *v3 = v4;
      v3[1] = v6;
      specialized MeshBuffer.Iterator.next()(a1);

      return;
    }

    goto LABEL_5;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
}

__n128 *ShapeResource.offsetBy(translation:)(uint64_t a1, int8x16_t a2)
{
  v2 = a2;
  if (one-time initialization token for identity != -1)
  {
    a1 = swift_once();
    v2 = a2;
  }

  v3 = static simd_quatf.identity;

  return ShapeResource.offsetBy(rotation:translation:)(a1, v3, v2);
}

uint64_t one-time initialization function for empty()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  Empty = REAssetManagerCollisionShapeAssetCreateEmpty();
  type metadata accessor for ShapeResource();
  v4 = swift_allocObject();
  *(v4 + 16) = Empty;
  REPoseIdentity();
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  RERetain();
  REAssetSetSwiftObject();
  result = RERelease();
  static ShapeResource.empty = v4;
  return result;
}

uint64_t ShapeResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  REPoseIdentity();
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

double ShapeResource.bounds.getter()
{
  if (!RECollisionShapeAssetGetCollisionShape())
  {
    return 1.40444843e306;
  }

  RECollisionShapeGetBoundingBox();
  return result;
}

uint64_t ShapeResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  REPoseIdentity();
  *(v1 + 32) = v2;
  *(v1 + 48) = v3;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t ShapeResource.deinit()
{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  REAssetManagerCollisionShapeAssetRegistryRemove();
  REAssetSetSwiftObject();
  RERelease();
  return v1;
}

uint64_t ShapeResource.__deallocating_deinit()
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v1 = v0;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v5);

  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  REAssetManagerCollisionShapeAssetRegistryRemove();
  REAssetSetSwiftObject();
  RERelease();
  return swift_deallocClassInstance();
}

uint64_t ShapeResource.hash(into:)()
{
  MEMORY[0x1C68F4C10](v0[1].n128_u64[0]);
  specialized SIMD.hash(into:)();
  specialized SIMD.hash(into:)(v0[3]);
  if (RECollisionShapeAssetGetCollisionShape())
  {
    RECollisionShapeGetBoundingBox();
  }

  specialized SIMD.hash(into:)();

  return specialized SIMD.hash(into:)();
}

Swift::Int ShapeResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  ShapeResource.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShapeResource()
{
  Hasher.init(_seed:)();
  ShapeResource.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShapeResource()
{
  Hasher.init(_seed:)();
  ShapeResource.hash(into:)();
  return Hasher._finalize()();
}

__n128 *ShapeResource.offsetBy(rotation:translation:)(uint64_t a1, float32x4_t a2, int8x16_t a3)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(a2)))) & 1) == 0 && *a3.i32 == 0.0 && (v4 = vceqz_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL)), (v4.i8[0]) && (v4.i8[4])
  {
  }

  else
  {
    v5 = type metadata accessor for ShapeResource();
    v6 = swift_allocObject();
    *(v6 + 16) = *(v3 + 16);
    REPoseMultiply();
    *(v6 + 32) = v7;
    *(v6 + 48) = v8;
    RERetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v5;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v6;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    return v6;
  }

  return v3;
}

uint64_t ShapeResource.offsetBy(rotation:)(__n128 a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = static MeshResource.generate(from:);

  return ShapeResource.offsetBy(rotation:translation:)(a1, 0);
}

uint64_t ShapeResource.offsetBy(rotation:translation:)(__n128 a1, __n128 a2)
{
  v3[3].n128_u64[0] = v2;
  v3[1] = a1;
  v3[2] = a2;
  type metadata accessor for MainActor();
  v3[3].n128_u64[1] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[4].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  return MEMORY[0x1EEE6DFA0](ShapeResource.offsetBy(rotation:translation:), v5, v4);
}

uint64_t ShapeResource.offsetBy(rotation:translation:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v1 + 16))))) & 1) == 0 && *v2.i32 == 0.0 && (v3 = vceqz_f32(vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL)), (v3.i8[0]) && (v3.i8[4])
  {

    v4 = *(v1 + 48);
    v11 = *(v1 + 8);

    return v11(v4);
  }

  else
  {
    v6 = *(v1 + 48);
    type metadata accessor for ShapeResource();
    v7 = swift_allocObject();
    *(v1 + 80) = v7;
    *(v7 + 16) = *(v6 + 16);
    REPoseMultiply();
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    RERetain();
    v10 = swift_task_alloc();
    *(v1 + 88) = v10;
    *v10 = v1;
    v10[1] = ShapeResource.offsetBy(rotation:translation:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }
}

uint64_t ShapeResource.offsetBy(rotation:translation:)()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = ShapeResource.offsetBy(rotation:translation:);
  }

  else
  {
    v5 = ShapeResource.offsetBy(rotation:translation:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{

  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ShapeResource.offsetBy(translation:)(__n128 a1)
{
  v2[2].n128_u64[0] = v1;
  v2[1] = a1;
  type metadata accessor for MainActor();
  v2[2].n128_u64[1] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[3].n128_u64[0] = v4;
  v2[3].n128_u64[1] = v3;

  return MEMORY[0x1EEE6DFA0](ShapeResource.offsetBy(translation:), v4, v3);
}

uint64_t ShapeResource.offsetBy(translation:)()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v4 = static simd_quatf.identity;
  v1 = swift_task_alloc();
  v0[4].n128_u64[0] = v1;
  *v1 = v0;
  v1[1] = ShapeResource.offsetBy(translation:);
  v2 = v0[1];

  return ShapeResource.offsetBy(rotation:translation:)(v4, v2);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ShapeResource.offsetBy(translation:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = ShapeResource.offsetBy(translation:);
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = ShapeResource.offsetBy(translation:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static ShapeResource.generateBox(size:)(__n128 a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static ShapeResource.generateBox(width:height:depth:);

  return specialized static ShapeResource.generateBox(size:)(a1);
}

uint64_t static ShapeResource.generateBox(width:height:depth:)(float a1, float a2, float a3)
{
  return specialized static ShapeResource.generateBox(size:)();
}

{
  v4.n128_u64[0] = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v4.n128_u64[1] = LODWORD(a3);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = static ShapeResource.generateBox(width:height:depth:);

  return specialized static ShapeResource.generateBox(size:)(v7);
}

uint64_t static ShapeResource.generateCapsule(height:radius:)(float a1, float a2)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  Capsule = REAssetManagerCollisionShapeAssetCreateCapsule();
  v6 = type metadata accessor for ShapeResource();
  v7 = swift_allocObject();
  *(v7 + 16) = Capsule;
  REPoseIdentity();
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  RERetain();
  REAssetSetSwiftObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v6;
  *(inited + 64) = &protocol witness table for ShapeResource;
  *(inited + 32) = v7;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  RERelease();
  return v7;
}

{
  *(v2 + 120) = a1;
  *(v2 + 124) = a2;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), 0, 0);
}

uint64_t static ShapeResource.generateCapsule(height:radius:)()
{
  *(v0 + 80) = RECapsuleShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), v2, v1);
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v5 = result;
    type metadata accessor for ShapeResource();
    v6 = swift_allocObject();
    v0[12] = v6;
    *(v6 + 16) = v5;
    REPoseIdentity();
    *(v6 + 32) = v7;
    *(v6 + 48) = v8;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = static ShapeResource.generateCapsule(height:radius:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[12];

    return v3(v4);
  }
}

uint64_t static ShapeResource.generateConvex(from:)(uint64_t a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v12);
  v2 = v13;
  v3 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v12);
  ConvexPolyhedronNullable = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronNullable();
  if (ConvexPolyhedronNullable)
  {
    v5 = ConvexPolyhedronNullable;
    v6 = type metadata accessor for ShapeResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    REPoseIdentity();
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    RERetain();
    REAssetSetSwiftObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v6;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v7;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    RERelease();
    return v7;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (*(a1 + 16))
  {
    ConvexPolyhedronFromMesh = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronFromMesh();
    v6 = type metadata accessor for ShapeResource();
    v7 = swift_allocObject();
    *(v7 + 16) = ConvexPolyhedronFromMesh;
    REPoseIdentity();
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    RERetain();
    REAssetSetSwiftObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 56) = v6;
    *(inited + 64) = &protocol witness table for ShapeResource;
    *(inited + 32) = v7;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    RERelease();
    return v7;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
}

uint64_t static ShapeResource.generateConvex2(from:)(uint64_t a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  ConvexPolyhedronNullable = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronNullable();
  if (!ConvexPolyhedronNullable)
  {
    return 0;
  }

  v5 = ConvexPolyhedronNullable;
  type metadata accessor for ShapeResource();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  REPoseIdentity();
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  return v6;
}

uint64_t static ShapeResource.generateConvex(from:)()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), v2, v1);
}

{
  v1 = v0[10];

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 32))(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (*(v1 + 16))
  {
    ConvexPolyhedronFromMesh = REAssetManagerCollisionShapeAssetCreateConvexPolyhedronFromMesh();
    type metadata accessor for ShapeResource();
    v7 = swift_allocObject();
    v0[12] = v7;
    *(v7 + 16) = ConvexPolyhedronFromMesh;
    REPoseIdentity();
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = static ShapeResource.generateConvex(from:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[12];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  Nullable = REConvexPolyhedronShapeCreateNullable();
  v0[11] = Nullable;
  if (Nullable)
  {
    type metadata accessor for MainActor();
    v0[12] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), v3, v2);
  }

  else
  {
    lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  result = REAssetManagerCollisionShapeAssetCreateFromCollisionShape();
  if (result)
  {
    v5 = result;
    type metadata accessor for ShapeResource();
    v6 = swift_allocObject();
    v0[13] = v6;
    *(v6 + 16) = v5;
    REPoseIdentity();
    *(v6 + 32) = v7;
    *(v6 + 48) = v8;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = static ShapeResource.generateConvex(from:);

    return specialized RequestLoadable.awaitForResourceSharing()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateConvex(from:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[13];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ShapeResource.generateSphere(radius:)()
{
  *(v0 + 80) = RESphereShapeCreate();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateCapsule(height:radius:), v2, v1);
}

unint64_t ShapeResourceError.errorDescription.getter()
{
  if (*v0)
  {
    return 0xD0000000000000A3;
  }

  else
  {
    return 0xD000000000000068;
  }
}

Swift::Int ShapeResourceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance ShapeResourceError()
{
  if (*v0)
  {
    return 0xD0000000000000A3;
  }

  else
  {
    return 0xD000000000000068;
  }
}

uint64_t static ShapeResource.generateStaticMesh(positions:faceIndices:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)(a1, a2);
}

uint64_t static ShapeResource.generateStaticMesh(positions:faceIndices:)()
{
  v1 = RECollisionMeshCreateFromSIMDPositions();
  v0[12] = v1;
  if (v1)
  {
    type metadata accessor for MainActor();
    v0[13] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), v3, v2);
  }

  else
  {
    lazy protocol witness table accessor for type ShapeResourceError and conformance ShapeResourceError();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  REAssetManagerCollisionMeshAssetCreateFromMesh();
  CollisionMesh = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
  type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  v0[14] = v5;
  *(v5 + 16) = CollisionMesh;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = static ShapeResource.generateStaticMesh(positions:faceIndices:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(positions:faceIndices:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[14];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ShapeResource.generateStaticMesh(from:)(uint64_t a1)
{
  v1[65] = a1;
  type metadata accessor for MainActor();
  v1[66] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[67] = v2;
  v1[68] = v3;

  return MEMORY[0x1EEE6DFA0](static ShapeResource.generateStaticMesh(from:), v2, v3);
}

{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = v4[68];
    v6 = v4[67];
    v7 = static ShapeResource.generateStaticMesh(from:);
  }

  else
  {

    v4[73] = a1;
    v5 = v4[68];
    v6 = v4[67];
    v7 = static ShapeResource.generateStaticMesh(from:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t static ShapeResource.generateStaticMesh(from:)()
{
  v143 = v0;
  v142 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 65);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 63) = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = v2;
  v3 = *(v1 + 16);
  if (!v3)
  {
    __break(1u);
  }

  v4 = REMeshAssetGetDirectMesh();
  v128 = v0;
  if (v4)
  {
    v5 = v4;
    type metadata accessor for LowLevelMesh();
    swift_allocObject();
    v6 = LowLevelMesh.init(from:)(v5);
    v7 = LowLevelMesh.extractPositionsForStaticMesh()();
    if (*(v7 + 2))
    {
      v124 = v7;
      v8 = LowLevelMesh.extractIndicesForStaticMesh()();
      v9 = v8;
      if (*(v8 + 2))
      {
        v10 = v124 + 32;
        v122 = v8 + 32;
        v11 = v6[2];
        v129 = 0;
        v12 = 0;
        v121 = (v9 + 40);
        v126 = v9;
        do
        {
LABEL_6:
          if (v12 == DRMeshGetPartCount())
          {

            goto LABEL_101;
          }

          *(v0 + 2) = 0;
          *(v0 + 3) = 0;
          *(v0 + 2) = xmmword_1C18AB200;
          *(v0 + 3) = xmmword_1C189A7F0;
          *(v0 + 4) = xmmword_1C189A800;
          DRMeshGetPartAt();
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_114;
          }

          v14 = *(v0 + 3);
          ++v12;
        }

        while (v14 < 3);
        v15 = *(v0 + 4);
        v12 = v13;
        if (v15 == 4)
        {
          v28 = v11;
          v29 = 0;
          v30 = v14 - 2;
          v31 = v129;
          while (1)
          {
            v32 = v29 + 1;
            v33 = *(v9 + 2);
            if (v29)
            {
              if (v29 >= v33)
              {
                goto LABEL_134;
              }

              v35 = v29 + 2;
              v34 = v29 + 1;
              if (v29 + 2 >= v33)
              {
                goto LABEL_136;
              }
            }

            else
            {
              if (v29 >= v33)
              {
                goto LABEL_135;
              }

              if (v32 >= v33)
              {
                goto LABEL_137;
              }

              v34 = v29 + 2;
              v35 = v29 + 1;
              if (v29 + 2 >= v33)
              {
                goto LABEL_138;
              }
            }

            v0 = *&v122[4 * v29];
            v36 = *&v122[4 * v35];
            v37 = *&v122[4 * v34];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
            v38 = swift_allocObject();
            v38[1] = xmmword_1C1897FD0;
            v39 = *(v124 + 2);
            if (v39 <= v0)
            {
              break;
            }

            v38[2] = *&v10[16 * v0];
            if (v39 <= v36)
            {
              goto LABEL_118;
            }

            v38[3] = *&v10[16 * v36];
            if (v39 <= v37)
            {
              goto LABEL_119;
            }

            v38[4] = *&v10[16 * v37];
            specialized Array.append<A>(contentsOf:)(v38);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_1C1897FD0;
            if ((v129 & 0x8000000000000000) != 0)
            {
              goto LABEL_120;
            }

            if (HIDWORD(v31))
            {
              goto LABEL_121;
            }

            *(v40 + 32) = v31;
            if (v31 == 0xFFFFFFFF)
            {
              goto LABEL_122;
            }

            *(v40 + 36) = v31 + 1;
            if (v31 > 0xFFFFFFFD)
            {
              goto LABEL_123;
            }

            *(v40 + 40) = v31 + 2;
            specialized Array.append<A>(contentsOf:)(v40);
            v31 += 3;
            v29 = v32;
            v9 = v126;
            if (v30 == v32)
            {
              v129 = v31;
              v0 = v128;
              v11 = v28;
              goto LABEL_6;
            }
          }

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
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_115;
          }

          v118 = v11;
          v119 = v6;
          v16 = 0;
          v17 = v121;
          v18 = v129;
          v0 = v124;
          while (1)
          {
            v19 = *(v9 + 2);
            if (v16 >= v19)
            {
              break;
            }

            v20 = v16 + 1;
            if (v20 >= v19)
            {
              goto LABEL_125;
            }

            v21 = v20 + 1;
            if (v20 + 1 >= v19)
            {
              goto LABEL_126;
            }

            v22 = *(v17 - 2);
            v23 = *(v17 - 1);
            v24 = *v17;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
            v25 = swift_allocObject();
            v25[1] = xmmword_1C1897FD0;
            v26 = *(v124 + 2);
            if (v26 <= v22)
            {
              goto LABEL_127;
            }

            v25[2] = *&v10[16 * v22];
            if (v26 <= v23)
            {
              goto LABEL_128;
            }

            v25[3] = *&v10[16 * v23];
            if (v26 <= v24)
            {
              goto LABEL_129;
            }

            v25[4] = *&v10[16 * v24];
            specialized Array.append<A>(contentsOf:)(v25);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1C1897FD0;
            if ((v129 & 0x8000000000000000) != 0)
            {
              goto LABEL_130;
            }

            if (HIDWORD(v18))
            {
              goto LABEL_131;
            }

            *(v27 + 32) = v18;
            if (v18 == 0xFFFFFFFF)
            {
              goto LABEL_132;
            }

            *(v27 + 36) = v18 + 1;
            if (v18 > 0xFFFFFFFD)
            {
              goto LABEL_133;
            }

            *(v27 + 40) = v18 + 2;
            specialized Array.append<A>(contentsOf:)(v27);
            v18 += 3;
            v17 += 3;
            v16 = v21 + 1;
            v9 = v126;
            if ((v21 + 1) >= v14)
            {
              v129 = v18;
              v0 = v128;
              v11 = v118;
              v6 = v119;
              goto LABEL_6;
            }
          }
        }

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
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
    }

    if (one-time initialization token for empty == -1)
    {
LABEL_106:
      v111 = static ShapeResource.empty;

      goto LABEL_107;
    }

LABEL_142:
    swift_once();
    goto LABEL_106;
  }

  v116 = v3;
  MeshResource.Contents.init(_:)(v3, &v136);
  v41 = v137;

  v42 = v41;

  v114 = *(v41 + 16);
  if (!v114)
  {
LABEL_100:

LABEL_101:
    v108 = *(v0 + 63);
    v107 = *(v0 + 64);
    *(v0 + 69) = v108;
    *(v0 + 70) = v107;
    v109 = swift_task_alloc();
    *(v0 + 71) = v109;
    *v109 = v0;
    v109[1] = static ShapeResource.generateStaticMesh(from:);

    return specialized static ShapeResource.generateStaticMesh(positions:faceIndices:)(v108, v107);
  }

  v43 = 0;
  v130 = 0;
  v115 = v41 + 32;
  v113 = v41;
  while (1)
  {
    if (v43 >= *(v42 + 16))
    {
      goto LABEL_139;
    }

    v44 = (v115 + 96 * v43);
    v45 = v44[1].i64[0];
    v46 = v44[1].i64[1];
    v133 = v44[3];
    v134 = v44[2];
    v131 = v44[5];
    v132 = v44[4];
    v117 = v43;

    MeshResource.Contents.init(_:)(v116, &v136);
    v47 = v136;
    v11 = v138;

    if (!*(*(&v47 + 1) + 16) || (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46), (v49 & 1) == 0))
    {
LABEL_144:

      __break(1u);
LABEL_145:
      swift_once();
      goto LABEL_116;
    }

    v50 = *(*(*(&v47 + 1) + 56) + 8 * v48);
    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_140;
    }

    if (v50 >= *(v47 + 16))
    {
      goto LABEL_141;
    }

    v51 = v47 + 48 * v50;
    v52 = *(v51 + 48);
    v11 = *(v51 + 64);

    v53 = *(v52 + 16);

    if (v53)
    {
      break;
    }

LABEL_43:

    v42 = v113;

    v43 = v117 + 1;
    if (v117 + 1 == v114)
    {
      goto LABEL_100;
    }
  }

  v54 = 0;
  v123 = v52;
  v125 = v52 + 32;
  v120 = v11;
  while (1)
  {
    v127 = v54;
    v55 = *(v125 + (v54 << 6));
    v56 = one-time initialization token for positions;

    if (v56 == -1)
    {
      if (!*(v55 + 16))
      {
        goto LABEL_60;
      }
    }

    else
    {
      swift_once();
      if (!*(v55 + 16))
      {
        goto LABEL_60;
      }
    }

    if (HIBYTE(word_1EBEAD0B8))
    {
      v57 = 256;
    }

    else
    {
      v57 = 0;
    }

    v58 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v57 | word_1EBEAD0B8);
    if ((v59 & 1) == 0)
    {
LABEL_60:
      memset(v135, 0, 81);
      goto LABEL_61;
    }

    outlined init with copy of __REAssetService(*(v55 + 56) + 40 * v58, (v0 + 384));
    outlined init with take of BindableDataInternal(v0 + 24, (v0 + 344));
    v60 = *(v0 + 46);
    v11 = *(v0 + 47);
    __swift_project_boxed_opaque_existential_1(v0 + 43, v60);
    v61 = v11[7];
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v61(v135, v62, v60, v11);
    __swift_destroy_boxed_opaque_existential_1(v0 + 43);
    v63 = *&v135[0];
    if (*&v135[0])
    {
      v64 = *(&v135[1] + 8);
      v65 = *(&v135[3] + 8);
      *(v0 + 13) = *(&v135[2] + 8);
      *(v0 + 14) = v65;
      *(v0 + 233) = *(&v135[4] + 1);
      *(v0 + 11) = *(v135 + 8);
      *(v0 + 12) = v64;
      *(v0 + 21) = v63;
      goto LABEL_62;
    }

LABEL_61:
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v2, &v136);
    v66 = v139;
    *(v0 + 200) = v138;
    *(v0 + 216) = v66;
    *(v0 + 232) = v140;
    v0[248] = v141;
    v67 = v137;
    *(v0 + 168) = v136;
    *(v0 + 184) = v67;
LABEL_62:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v68 = v2;
    v69 = *(v0 + 27);
    v70 = *(v0 + 28);
    v136 = 0uLL;
    *&v137 = v69;
    *(&v137 + 1) = v70;

    v71 = v69(0);
    if (v72)
    {
      *&v136 = v71;
      *(&v136 + 1) = v72;
    }

    v73 = specialized MeshBuffer.Iterator.next()();
    if ((v75 & 1) == 0)
    {
      v97 = v73;
      v11 = v74;
      do
      {
        v99 = *(v68 + 16);
        v98 = *(v68 + 24);
        if (v99 >= v98 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
        }

        v100.i64[0] = v97;
        v100.i64[1] = v11;
        v101 = vaddq_f32(v131, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_f32(v134, vdupq_n_s32(v97)), v133, v97, 1), v132, v100, 2));
        v101.i32[3] = 0;
        *(v68 + 16) = v99 + 1;
        *(v68 + 16 * v99 + 32) = v101;
        v97 = specialized MeshBuffer.Iterator.next()();
        v11 = v102;
      }

      while ((v103 & 1) == 0);
    }

    v0 = v128;
    outlined destroy of BodyTrackingComponent?((v128 + 168), &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);

    specialized Array.append<A>(contentsOf:)(v76);
    if (one-time initialization token for triangleIndices != -1)
    {
      swift_once();
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (*(v55 + 16) && (!HIBYTE(word_1EBEAD130) ? (v77 = 0) : (v77 = 256), v78 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v77 | word_1EBEAD130), (v79 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v55 + 56) + 40 * v78, (v128 + 464));
      outlined init with take of BindableDataInternal(v128 + 29, (v128 + 424));
      v80 = *(v128 + 56);
      v11 = *(v128 + 57);
      __swift_project_boxed_opaque_existential_1(v128 + 53, v80);
      (v11[7])(&v136, MEMORY[0x1E69E7668], v80, v11);
      __swift_destroy_boxed_opaque_existential_1(v128 + 53);
    }

    else
    {
      v141 = 0;
      v139 = 0u;
      v140 = 0u;
      v138 = 0u;
      v136 = 0u;
      v137 = 0u;
    }

    v81 = v139;
    *(v128 + 18) = v138;
    *(v128 + 19) = v81;
    *(v128 + 20) = v140;
    v128[336] = v141;
    v82 = v137;
    *(v128 + 16) = v136;
    *(v128 + 17) = v82;
    v83 = *(v128 + 32);
    if (!v83)
    {
      __break(1u);
      goto LABEL_144;
    }

    v84 = *(v128 + 33);
    *(v128 + 10) = v83;
    *(v128 + 11) = v84;
    v85 = v140;
    *(v128 + 8) = v139;
    *(v128 + 9) = v85;
    v128[160] = v141;
    v86 = v138;
    *(v128 + 6) = v137;
    *(v128 + 7) = v86;

    v88 = v83(v87);
    if (!v88)
    {
      v88 = specialized _copySequenceToContiguousArray<A>(_:)((v128 + 80), specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    }

    v89 = v88;
    outlined destroy of BodyTrackingComponent?((v128 + 256), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    v90 = *(v89 + 16);
    if (v90)
    {
      break;
    }

    v91 = v2;
LABEL_92:
    specialized Array.append<A>(contentsOf:)(v91);
    v104 = *(v68 + 16);

    v105 = __OFADD__(v130, v104);
    v130 += v104;
    v11 = v120;
    if (v105)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v54 = v127 + 1;
    v106 = *(v123 + 16);
    if (v127 + 1 == v106)
    {
      goto LABEL_43;
    }

    if (v127 + 1 >= v106)
    {
      goto LABEL_111;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
  v0 = v130;
  if ((v130 & 0x8000000000000000) != 0)
  {
    goto LABEL_112;
  }

  if (!(v130 >> 32))
  {
    v91 = v2;
    v92 = 32;
    while (1)
    {
      v93 = *(v89 + v92);
      v94 = v93 + v130;
      if (__CFADD__(v93, v130))
      {
        break;
      }

      v96 = *(v91 + 16);
      v95 = *(v91 + 24);
      if (v96 >= v95 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
      }

      *(v91 + 16) = v96 + 1;
      *(v91 + 4 * v96 + 32) = v94;
      v92 += 4;
      if (!--v90)
      {

        v0 = v128;
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_92;
      }
    }

    __break(1u);
    goto LABEL_100;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:

  if (one-time initialization token for empty != -1)
  {
    goto LABEL_145;
  }

LABEL_116:
  v111 = static ShapeResource.empty;

LABEL_107:
  v112 = *(v0 + 1);

  return v112(v111);
}

{

  v1 = *(v0 + 584);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

char *LowLevelMesh.extractPositionsForStaticMesh()()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (v1 + 32);
  v4 = *(v1 + 16) + 1;
  result = MEMORY[0x1E69E7CC0];
  while (--v4)
  {
    v6 = v3 + 32;
    v7 = *v3;
    v3 += 32;
    if (!v7)
    {
      v8 = *(v6 - 1);
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v9 = v0[6];
        if (v8 < *(v9 + 16))
        {
          v10 = *(v6 - 2);
          v11 = (v9 + 24 * v8);
          v12 = v11[5];
          if (!__OFADD__(v10, v12))
          {
            v13 = *(v6 - 3);
            v14 = v11[4];
            v15 = v11[6];
            v32 = v10 + v12;
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x1E69E7CC0]);
            MEMORY[0x1EEE9AC00](v33);
            v21[2] = v2;
            v22 = 0;
            v23 = v13;
            v24 = v10;
            v25 = v8;
            v26 = &v32;
            v27 = &v33;
            v28 = v14;
            v29 = v12;
            v30 = v15;
            v16 = v0[2];
            v17 = swift_allocObject();
            *(v17 + 16) = partial apply for closure #2 in LowLevelMesh.extractPositionsForStaticMesh();
            *(v17 + 24) = v21;
            v18 = swift_allocObject();
            *(v18 + 16) = _s17RealityFoundation12LowLevelMeshC17withUnsafeIndicesyyySWXEFySV_SitXEfU_TA_0;
            *(v18 + 24) = v17;
            aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ()partial apply;
            aBlock[5] = v18;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
            aBlock[3] = &block_descriptor_54;
            v19 = _Block_copy(aBlock);
            v20 = v16;

            DRMeshReadVertices();

            _Block_release(v19);
            LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

            if ((v14 & 1) == 0)
            {
              return v33;
            }

            goto LABEL_13;
          }

LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

char *LowLevelMesh.extractIndicesForStaticMesh()()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v13[0] = *(v0 + 24);
  v13[1] = v2;
  v13[2] = v1;
  v11 = 0;
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v9[2] = v13;
  v9[3] = &v11;
  v9[4] = &v12;
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in LowLevelMesh.extractIndicesForStaticMesh();
  *(v4 + 24) = v9;
  v5 = swift_allocObject();
  *(v5 + 16) = _s17RealityFoundation12LowLevelMeshC17withUnsafeIndicesyyySWXEFySV_SitXEfU_TA_0;
  *(v5 + 24) = v4;
  aBlock[4] = _sSVSiIgyy_SVSiIegyy_TRTA_0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  aBlock[3] = &block_descriptor_47;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  DRMeshReadIndices();

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t static ShapeResource.generateStaticMesh(meshAnchor:)()
{
  v1 = [*(v0 + 80) geometry];
  v2 = [v1 faces];

  v3 = [v2 primitiveType];
  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = [*(v0 + 80) geometry];
  *(v0 + 88) = v7;
  v8 = [v7 vertices];
  *(v0 + 96) = v8;
  v9 = [v7 faces];
  *(v0 + 104) = v9;
  v10 = [v8 count];
  v4 = [v8 stride];
  if ((v10 * (v4 / 4)) >> 64 != (v10 * (v4 / 4)) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = [v8 buffer];
  [v11 contents];
  v12 = v11;
  [v8 offset];
  v13 = [v9 buffer];
  [v13 contents];
  v14 = v13;
  [v8 count];
  [v8 stride];
  v4 = [v9 count];
  if ((v4 * 3) >> 64 != (3 * v4) >> 63)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  *(v0 + 112) = RECollisionMeshCreateWithFormatV2();
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  v4 = static ShapeResource.generateStaticMesh(meshAnchor:);
  v5 = v15;
  v6 = v17;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  REAssetManagerCollisionMeshAssetCreateFromMesh();
  CollisionMesh = REAssetManagerCollisionShapeAssetCreateCollisionMesh();
  type metadata accessor for ShapeResource();
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = CollisionMesh;
  REPoseIdentity();
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = static ShapeResource.generateStaticMesh(meshAnchor:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = static ShapeResource.generateStaticMesh(meshAnchor:);
  }

  else
  {
    v2 = static ShapeResource.generateStaticMesh(meshAnchor:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);
  v4 = *(v0 + 128);

  return v3(v4);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ShapeResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1887600;
  *(v9 + 32) = 0x73646E756F62;
  *(v9 + 40) = 0xE600000000000000;

  if (RECollisionShapeAssetGetCollisionShape())
  {
    RECollisionShapeGetBoundingBox();
    v16 = v10;
    v17 = v11;
  }

  else
  {
    v17 = xmmword_1C189A800;
    v16 = xmmword_1C189A7F0;
  }

  *(v9 + 72) = &type metadata for BoundingBox;
  v12 = swift_allocObject();
  *(v9 + 48) = v12;
  v13 = v17;
  *(v12 + 16) = v16;
  *(v12 + 32) = v13;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for ShapeResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void closure #2 in LowLevelMesh.extractPositionsForStaticMesh()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = a3;
    if (!a3)
    {
      return;
    }

    while (1)
    {
      if (a5 == 26)
      {
        if (!a1)
        {
          goto LABEL_24;
        }

        v32 = *(a1 + *a8);
        v16 = *a9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          *a9 = v16;
        }

        v19 = *(v16 + 2);
        v25 = *(v16 + 3);
        v20 = v19 + 1;
        if (v19 >= v25 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v19 + 1, 1, v16);
          *a9 = v16;
        }

        _H1 = v32.i16[0];
        __asm { FCVT            S0, H1 }

        HIDWORD(v21) = 0;
        LODWORD(v21) = _D0.i32[0];
        *(&v21 + 4) = vcvtq_f32_f16(vext_s8(v32, _D0, 2uLL)).u64[0];
      }

      else
      {
        if (a5 != 30)
        {
          *a9 = MEMORY[0x1E69E7CC0];

          return;
        }

        if (!a1)
        {
          goto LABEL_25;
        }

        v31 = *(a1 + *a8);
        v16 = *a9;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *a9 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          *a9 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        v20 = v19 + 1;
        v21 = v31;
        if (v19 >= v18 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          v21 = v31;
          v16 = v22;
          *a9 = v22;
        }
      }

      *(v16 + 2) = v20;
      *&v16[16 * v19 + 32] = v21;
      if (__OFADD__(*a8, a12))
      {
        __break(1u);
        break;
      }

      *a8 += a12;
      if (!--v12)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t closure #1 in LowLevelMesh.extractIndicesForStaticMesh()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a3 + 32);
  if (v5 < 0)
  {
    goto LABEL_20;
  }

  if (v5)
  {
    v9 = result;
    do
    {
      v10 = *(a3 + 40);
      if (v10 == 1)
      {
        if (!v9)
        {
          goto LABEL_21;
        }

        v11 = *a4 + 4;
        if (__OFADD__(*a4, 4))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v12 = *(v9 + *a4);
      }

      else
      {
        if (v10)
        {
          return result;
        }

        if (!v9)
        {
          goto LABEL_22;
        }

        v11 = *a4 + 2;
        if (__OFADD__(*a4, 2))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + *a4);
      }

      *a4 = v11;
      v13 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v13;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        *a5 = result;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
        *a5 = result;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 4 * v15 + 32) = v12;
      --v5;
    }

    while (v5);
  }

  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v37 = v3;
  if (v3)
  {
    outlined init with copy of _Proto_AnimationLibraryComponent_v1(a1, v36);
  }

  else
  {
    outlined init with copy of _Proto_AnimationLibraryComponent_v1(a1, v36);
    if (v2)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = 1 << *(v3 + 32);
  outlined init with copy of [String : AnimationResource]?(&v37, v36);
  outlined destroy of _Proto_AnimationLibraryComponent_v1(a1);
  v8 = 0;
  v9 = 0;
  v10 = -1;
  if (v7 < 64)
  {
    v10 = ~(-1 << v7);
  }

  v11 = v10 & v5;
  v12 = (v7 + 63) >> 6;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = (MEMORY[0x1E69E7CC0] + 32);
  v34 = v3;
  if (v11)
  {
    while (1)
    {
      v15 = v9;
LABEL_14:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(v3 + 56);
      v18 = (*(v3 + 48) + 16 * v16);
      v19 = v18[1];
      v35 = *v18;
      v20 = *(v17 + 8 * v16);
      if (v8)
      {

        v21 = v13;
        v22 = __OFSUB__(v8--, 1);
        if (v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v23 = v13[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMR);
        v21 = swift_allocObject();
        v26 = (_swift_stdlib_malloc_size(v21) - 32) / 24;
        v21[2] = v25;
        v21[3] = 2 * v26;
        v27 = v21 + 4;
        v28 = v13[3] >> 1;
        v14 = &v21[3 * v28 + 4];
        v29 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
        if (v13[2])
        {
          if (v21 != v13 || v27 >= &v13[3 * v28 + 4])
          {
            memmove(v27, v13 + 4, 24 * v28);
          }

          v13[2] = 0;
        }

        else
        {
        }

        v22 = __OFSUB__(v29, 1);
        v8 = v29 - 1;
        if (v22)
        {
          goto LABEL_39;
        }
      }

      v11 &= v11 - 1;
      *v14 = v35;
      v14[1] = v19;
      v14[2] = v20;
      v14 += 3;
      v13 = v21;
      v9 = v15;
      v3 = v34;
      if (!v11)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v6 + 8 * v15);
    ++v9;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v31 = v13[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v22 = __OFSUB__(v32, v8);
  v33 = v32 - v8;
  if (!v22)
  {
    v13[2] = v33;
    return;
  }

LABEL_41:
  __break(1u);
}

{
  v2 = *a1;
  v3 = a1[1];
  v37 = v3;
  if (v3)
  {
    outlined init with copy of AnimationLibraryComponent(a1, v36);
  }

  else
  {
    outlined init with copy of AnimationLibraryComponent(a1, v36);
    if (v2)
    {
      v4 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v3 = v4;
  }

  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = 1 << *(v3 + 32);
  outlined init with copy of [String : AnimationResource]?(&v37, v36);
  outlined destroy of AnimationLibraryComponent(a1);
  v8 = 0;
  v9 = 0;
  v10 = -1;
  if (v7 < 64)
  {
    v10 = ~(-1 << v7);
  }

  v11 = v10 & v5;
  v12 = (v7 + 63) >> 6;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = (MEMORY[0x1E69E7CC0] + 32);
  v34 = v3;
  if (v11)
  {
    while (1)
    {
      v15 = v9;
LABEL_14:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(v3 + 56);
      v18 = (*(v3 + 48) + 16 * v16);
      v19 = v18[1];
      v35 = *v18;
      v20 = *(v17 + 8 * v16);
      if (v8)
      {

        v21 = v13;
        v22 = __OFSUB__(v8--, 1);
        if (v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v23 = v13[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10RealityKit17AnimationResourceC5valuetGMR);
        v21 = swift_allocObject();
        v26 = (_swift_stdlib_malloc_size(v21) - 32) / 24;
        v21[2] = v25;
        v21[3] = 2 * v26;
        v27 = v21 + 4;
        v28 = v13[3] >> 1;
        v14 = &v21[3 * v28 + 4];
        v29 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
        if (v13[2])
        {
          if (v21 != v13 || v27 >= &v13[3 * v28 + 4])
          {
            memmove(v27, v13 + 4, 24 * v28);
          }

          v13[2] = 0;
        }

        else
        {
        }

        v22 = __OFSUB__(v29, 1);
        v8 = v29 - 1;
        if (v22)
        {
          goto LABEL_39;
        }
      }

      v11 &= v11 - 1;
      *v14 = v35;
      v14[1] = v19;
      v14[2] = v20;
      v14 += 3;
      v13 = v21;
      v9 = v15;
      v3 = v34;
      if (!v11)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v6 + 8 * v15);
    ++v9;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v31 = v13[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v22 = __OFSUB__(v32, v8);
  v33 = v32 - v8;
  if (!v22)
  {
    v13[2] = v33;
    return;
  }

LABEL_41:
  __break(1u);
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{

  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    PinCount = REPinComponentGetPinCount();
  }

  else
  {
    PinCount = 0;
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (PinCount >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      REPinComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        goto LABEL_34;
      }

      REPinComponentGetPinNameAtIndex();
      v7 = String.init(cString:)();
      v9 = v8;
      REPinComponentGetPinOffsetPoseAtIndex();
      v11 = v10;
      HIDWORD(v11) = HIDWORD(v28);
      v27 = v12;
      v28 = v11;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v13 = String.init(cString:)();
        v15 = v14;
        swift_weakInit();
        v32 = v28;
        v33 = v27;
        swift_weakAssign();
      }

      else
      {
        swift_weakInit();
        v32 = v28;
        v33 = v27;
        swift_weakAssign();
        v13 = 0;
        v15 = 0;
      }

      *(&v29 + 1) = v7;
      *&v30 = v9;
      *(&v30 + 1) = v13;
      *&v31 = v15;
      result = outlined init with take of GeometricPin(&v29, v34);
      if (!v3)
      {
        v16 = v2[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12GeometricPinVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12GeometricPinVGMR);
        v19 = swift_allocObject();
        v20 = (_swift_stdlib_malloc_size(v19) - 32) / 80;
        v19[2] = v18;
        v19[3] = 2 * v20;
        v21 = (v19 + 4);
        v22 = v2[3] >> 1;
        if (v2[2])
        {
          if (v19 < v2 || v21 >= &v2[10 * v22 + 4])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v5 = v21 + 80 * v22;
        v3 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

        v2 = v19;
      }

      v23 = __OFSUB__(v3--, 1);
      if (v23)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      outlined init with take of GeometricPin(v34, v5);
      v5 += 80;
      if (++v4 >= PinCount)
      {
        goto LABEL_27;
      }
    }
  }

  v3 = 0;
LABEL_27:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;

  result = outlined destroy of BodyTrackingComponent?(&v29, &_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  v24 = v2[3];
  if (v24 < 2)
  {
    return v2;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v3);
  v26 = v25 - v3;
  if (!v23)
  {
    v2[2] = v26;
    return v2;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

{
  v1 = *(a1 + 48);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          if (v11 != v3 || v15 >= &v3[v16 + 4])
          {
            memmove(v11 + 4, v3 + 4, 8 * v16);
          }

          v3[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v20 = v3[3];
  if (v20 < 2)
  {
    return v3;
  }

  v21 = v20 >> 1;
  v18 = __OFSUB__(v21, v4);
  v22 = v21 - v4;
  if (!v18)
  {
    v3[2] = v22;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = *(a1 + 48);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((v5 & 1) == 0)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v7 = v3[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = result;
        v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 3);
        v15 = (v11 + 4);
        v16 = v3[3] >> 1;
        if (v3[2])
        {
          if (v11 != v3 || v15 >= &v3[v16 + 4])
          {
            memmove(v11 + 4, v3 + 4, 8 * v16);
          }

          v3[2] = 0;
        }

        v6 = (v15 + 8 * v16);
        v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v3 = v11;
        result = v8;
      }

      v18 = __OFSUB__(v4--, 1);
      if (v18)
      {
        break;
      }

      *v6++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v20 = v3[3];
  if (v20 < 2)
  {
    return v3;
  }

  v21 = v20 >> 1;
  v18 = __OFSUB__(v21, v4);
  v22 = v21 - v4;
  if (!v18)
  {
    v3[2] = v22;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 48);

  v7 = v6(0);
  result = a2(v7);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 0;
  if ((v12 & 1) == 0)
  {
    v13 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v11)
      {
        v14 = v10[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v15 = v9;
        v16 = result;
        v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 17;
        }

        v22 = v21 >> 4;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 4);
        v23 = (v19 + 4);
        v24 = v10[3] >> 1;
        if (v10[2])
        {
          if (v19 != v10 || v23 >= &v10[2 * v24 + 4])
          {
            memmove(v19 + 4, v10 + 4, 16 * v24);
          }

          v10[2] = 0;
        }

        v13 = (v23 + 16 * v24);
        v11 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v10 = v19;
        result = v16;
        v9 = v15;
      }

      v26 = __OFSUB__(v11--, 1);
      if (v26)
      {
        break;
      }

      *v13 = result;
      v13[1] = v9;
      v13 += 2;
      result = (a2)();
      if (v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v28 = v10[3];
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v26 = __OFSUB__(v29, v11);
  v30 = v29 - v11;
  if (!v26)
  {
    v10[2] = v30;
    return v10;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 48);

  v1(0);
  result = specialized MeshBuffer.Iterator.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if ((result & 0x100000000) == 0)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v7 = result;
        v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 29;
        }

        v13 = v12 >> 2;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 2);
        v14 = (v10 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v10 != v3 || v14 >= v3 + 4 * v15 + 32)
          {
            memmove(v10 + 4, v3 + 4, 4 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 4 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v10;
        result = v7;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = result;
      result = specialized MeshBuffer.Iterator.next()();
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
}

{
  return specialized _copySequenceToContiguousArray<A>(_:)(a1, specialized MeshBuffer.Iterator.next(), &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v7 = *(a1 + 48);

  v8 = v7(0);
  result = (a2)(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x100000000) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 29;
        }

        v23 = v22 >> 2;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 2);
        v24 = (v20 + 4);
        v25 = v13[3] >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v24 >= v13 + 4 * v25 + 32)
          {
            memmove(v20 + 4, v13 + 4, 4 * v25);
          }

          v13[2] = 0;
        }

        v15 = (v24 + 4 * v25);
        v14 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v13 = v20;
        result = v17;
      }

      v27 = __OFSUB__(v14--, 1);
      if (v27)
      {
        break;
      }

      *v15++ = result;
      result = a2(result, v10, v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v28 = v13[3];
  if (v28 < 2)
  {
    return v13;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v14);
  v30 = v29 - v14;
  if (!v27)
  {
    v13[2] = v30;
    return v13;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = *(a1 + 48);

  v8 = v7(0);
  result = (a2)(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x10000) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32 + ((v21 - 32) >> 63);
        v20[2] = v19;
        v20[3] = v22 & 0xFFFFFFFFFFFFFFFELL;
        v23 = (v20 + 4);
        v24 = v13[3];
        v25 = v24 >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v23 >= v13 + 2 * v25 + 32)
          {
            memmove(v20 + 4, v13 + 4, v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13[2] = 0;
        }

        v27 = v22 >> 1;
        v15 = (v23 + 2 * v25);
        v14 = v27 - v25;

        v13 = v20;
        result = v17;
      }

      v28 = __OFSUB__(v14--, 1);
      if (v28)
      {
        break;
      }

      *v15++ = result;
      result = a2(result, v10, v11, v12);
      if ((result & 0x10000) != 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v29 = v13[3];
  if (v29 < 2)
  {
    return v13;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v14);
  v31 = v30 - v14;
  if (!v28)
  {
    v13[2] = v31;
    return v13;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v7 = *(a1 + 48);

  v8 = v7(0);
  result = (a2)(v8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 0;
  if ((result & 0x100) == 0)
  {
    v15 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v14)
      {
        v16 = v13[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v17 = result;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
        v20 = swift_allocObject();
        v21 = 2 * _swift_stdlib_malloc_size(v20) - 64;
        v20[2] = v19;
        v20[3] = v21;
        v22 = (v20 + 4);
        v23 = v13[3] >> 1;
        if (v13[2])
        {
          if (v20 != v13 || v22 >= v13 + v23 + 32)
          {
            memmove(v20 + 4, v13 + 4, v23);
          }

          v13[2] = 0;
        }

        v15 = (v22 + v23);
        v14 = (v21 >> 1) - v23;

        v13 = v20;
        result = v17;
      }

      v25 = __OFSUB__(v14--, 1);
      if (v25)
      {
        break;
      }

      *v15++ = result;
      result = a2(result, v10, v11, v12);
      if ((result & 0x100) != 0)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v26 = v13[3];
  if (v26 < 2)
  {
    return v13;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v14);
  v28 = v27 - v14;
  if (!v25)
  {
    v13[2] = v28;
    return v13;
  }

LABEL_25:
  __break(1u);
  return result;
}