double _s11ShaderGraph19NodeDefinitionStoreV0C0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space()
{
  result = lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space;
  if (!lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDefinitionStore.Space and conformance NodeDefinitionStore.Space);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph19NodeDefinitionStoreV11TypeStorageOSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 0x17)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy137_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.Output(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.Output(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.Node(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.Node(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDefinitionStore.GeomProp(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t storeEnumTagSinglePayload for NodeDefinitionStore.GeomProp(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double outlined consume of NodeDefinitionStore.GeomPropValue(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t UserGraph.insertMaterialXDefaultValue(_:ofType:toFeedInput:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{

  result = specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v17);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = 7632239;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = a3;
    v11 = swift_allocObject();
    v12 = v17[3];
    *(v11 + 48) = v17[2];
    *(v11 + 64) = v12;
    *(v11 + 80) = v18;
    v13 = v17[1];
    *(v11 + 16) = v17[0];
    *(v11 + 32) = v13;
    *(v11 + 88) = a3;
    swift_retain_n();
    outlined init with copy of SGDataTypeStorage(v17, &v15);
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], inited, v11, &v19);

    swift_setDeallocating();
    swift_arrayDestroy();
    v35 = v20[0];
    specialized ShaderGraphNode.output(labeled:)(&v21, 7632239, 0xE300000000000000, v20[0]);
    if (v22)
    {
      v26[0] = v21;
      v26[1] = v22;
      v27 = v23;
      v28 = v24;
      v29 = v25;
      UserGraph.connect(_:to:)(v26, a4);

      v30 = v27;
      outlined destroy of String(&v30);
      v32 = v19;
      outlined destroy of NodePersonality(&v32);
      v31 = *(&v19 + 1);
      outlined destroy of [Input](&v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    }

    else
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v15 = v19;
      v16[0] = *v20;
      *(v16 + 9) = *(&v20[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v14 = 14;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0xE000000000000000;
      swift_willThrow();
      v34 = v19;
      outlined destroy of NodePersonality(&v34);
      v33 = *(&v19 + 1);
      outlined destroy of [Input](&v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    }

    outlined destroy of [Input](&v35, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    return outlined destroy of SGDataTypeStorage(v17);
  }

  return result;
}

uint64_t UserGraph.insertMaterialXDefaultGeomProp(_:ofType:toFeedInput:fromNodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) != 0))
  {
    v15 = (*(a6 + 56) + (v13 << 6));
    v17 = v15[1];
    v16 = v15[2];
    v18 = *v15;
    *(v49 + 9) = *(v15 + 41);
    v48[1] = v17;
    v49[0] = v16;
    v48[0] = v18;
    outlined init with copy of GeomPropDef(v48, &v26);
    specialized UserGraph.insertGeomPropGetter(_:outputType:nodeDefStore:)(v48, a3, a5, &v30);
    if (!v6)
    {
      v47 = v31[0];
      specialized ShaderGraphNode.output(labeled:)(&v32, 7632239, 0xE300000000000000, v31[0]);
      if (v33)
      {
        v37[0] = v32;
        v37[1] = v33;
        v38 = v34;
        v39 = v35;
        v40 = v36;
        UserGraph.connect(_:to:)(v37, a4);

        v41 = v38;
        outlined destroy of String(&v41);
        v44 = v30;
        outlined destroy of NodePersonality(&v44);
        v43 = *(&v30 + 1);
        v19 = &v43;
      }

      else
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v26 = v30;
        v27[0] = *v31;
        *(v27 + 9) = *(&v31[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v23 = v28;
        v24 = v29;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v25 = 14;
        *(v25 + 8) = v23;
        *(v25 + 16) = v24;
        swift_willThrow();
        v46 = v30;
        outlined destroy of NodePersonality(&v46);
        v45 = *(&v30 + 1);
        v19 = &v45;
      }

      outlined destroy of [Input](v19, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v47, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    }

    return outlined destroy of GeomPropDef(v48);
  }

  else
  {
    v42 = *(a4 + 16);
    v26 = v42;
    outlined init with copy of String(&v42, &v28);
    MEMORY[0x266771550](32, 0xE100000000000000);
    MEMORY[0x266771550](a1, a2);
    v20 = v26;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v21 = 17;
    *(v21 + 8) = v20;
    return swift_willThrow();
  }
}

uint64_t sub_265EE8618()
{
  outlined consume of SGDataTypeStorage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t SGREMaterial.debugHash.getter(uint64_t a1)
{
  v1 = SHA512Digest.description.getter();
  v3 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x2667714E0](v3, v5, v7, v9);

  MEMORY[0x266771550](95, 0xE100000000000000);

  v11 = v10;
  v12 = SHA512Digest.description.getter();
  v14 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x2667714E0](v14, v16, v18, v20);
  v23 = v22;

  MEMORY[0x266771550](v21, v23);

  return v11;
}

uint64_t SGREMaterial.name.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);

  return v1;
}

uint64_t SGREMaterial.surfaceShaderFunctionName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName);

  return v1;
}

id @objc SGREMaterial.surfaceShaderFunctionName.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    v6 = MEMORY[0x266771450](v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SGREMaterial.geometryModifierFunctionName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGREMaterial_geometryModifierFunctionName);

  return v1;
}

Class @objc SGREMaterial.uniforms.getter(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  (a4)(0, a2);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

double SGREMaterial.internalGraph.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SGREMaterial_internalGraph;
  v3 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 16);
  v4 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 24);
  v5 = *(v1 + OBJC_IVAR___SGREMaterial_internalGraph + 32);
  v6 = *(v2 + 40);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return result;
}

Class SGREMaterial.SHA512Hash.getter()
{
  v1 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v2 = type metadata accessor for SHA512Digest();
  v9 = v2;
  v10 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(&lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest, MEMORY[0x277CC52E8], MEMORY[0x277CC52D8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v0 + v1, v2);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v7);
  return isa;
}

uint64_t SGREMaterial.edgeDigest.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SHA512Digest();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SGREMaterial.operationalHashString.getter()
{
  v1 = (v0 + OBJC_IVAR___SGREMaterial_operationalHashString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double SGREMaterial.operationalHashString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SGREMaterial_operationalHashString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v566 = a4;
  v569 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SHA512();
  v553 = *(v8 - 8);
  v554 = v8;
  MEMORY[0x28223BE20](v8);
  v552 = &v514 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostError();
  v549 = *(v10 - 8);
  v550 = v10;
  MEMORY[0x28223BE20](v10);
  v548 = &v514 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v547 = &v514 - v13;
  v14 = type metadata accessor for SHA512Digest();
  v558 = *(v14 - 8);
  v559 = v14;
  MEMORY[0x28223BE20](v14);
  v546 = &v514 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v555 = &v514 - v17;
  MEMORY[0x28223BE20](v18);
  v556 = &v514 - v19;
  v567._rawValue = type metadata accessor for OSSignpostID();
  v20 = *(v567._rawValue - 1);
  MEMORY[0x28223BE20](v567._rawValue);
  v551 = &v514 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v514 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v514 - v26;
  v28 = type metadata accessor for OSSignposter();
  v29 = *(v28 - 8);
  v563 = v28;
  v564 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v514 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *((*MEMORY[0x277D85000] & *a2) + 0x78);
  v568._rawValue = a2;
  v34 = v33(v30);
  v570 = v5;
  *&v5[OBJC_IVAR___SGREMaterial_functionConstantInputs] = v34;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v562 = v32;
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v35, v36, v38, "shaderGraphMaterial", "", v37, 2u);
    MEMORY[0x266773120](v37, -1, -1);
  }

  rawValue = v567._rawValue;
  (*(v20 + 16))(v24, v27, v567._rawValue);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v40 = OSSignpostIntervalState.init(id:isOpen:)();
  v41 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v27, rawValue);
  v43 = OBJC_IVAR___SGREMaterial_graph;
  v44 = v570;
  *&v570[OBJC_IVAR___SGREMaterial_graph] = a1;
  v45 = v568._rawValue;
  *&v44[OBJC_IVAR___SGREMaterial_config] = v568;
  v46 = a1;
  v565 = v45;
  v47 = v695._rawValue;
  SGGraph.topologicalSort()(v587);
  v695._rawValue = v47;
  if (v47)
  {
    (*(v564 + 8))(v562, v563);

LABEL_7:
    LODWORD(v568._rawValue) = 0;
    LODWORD(v567._rawValue) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_8;
  }

  v540 = v41;
  v557 = v40;
  v684 = v587[0];
  outlined destroy of [Input](&v684, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMd, &_sSay11ShaderGraph15TopologicalSortV7ElementVGMR);
  v48 = v587[1];
  v49 = v43;
  v50 = v587[3];

  v683 = v50;
  outlined destroy of [Input](&v683, &_s11ShaderGraph6SGNodeCSgMd, &_s11ShaderGraph6SGNodeCSgMR);

  v51 = *&v44[v49];
  v52 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  v55 = v569;
  swift_beginAccess();
  v56 = *&v55[v54];
  v57 = v44;
  v58 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v59 = *&v55[v58];

  v60 = v56;
  v61 = v59;
  v62 = v695._rawValue;
  mergeFunctionConstants(from:scalars:vectors:)(v53, v60, v61);
  v695._rawValue = v62;
  if (v62)
  {

    (*(v564 + 8))(v562, v563);
    goto LABEL_7;
  }

  v539 = v49;
  v537 = v42;
  v541 = v46;
  v72 = v63;

  *&v57[OBJC_IVAR___SGREMaterial_functionConstantValues] = v72;
  v73 = *(v72 + 16);
  v74 = v72;
  v538 = v73;
  if (v73)
  {
    *&v574 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
    v75 = v574;
    v76 = v72;
    v77 = (v72 + 40);
    v78 = v73;
    do
    {
      v80 = *(v77 - 1);
      v79 = *v77;
      *&v574 = v75;
      v82 = *(v75 + 16);
      v81 = *(v75 + 24);

      if (v82 >= v81 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
        v75 = v574;
      }

      *(v75 + 16) = v82 + 1;
      v83 = v75 + 16 * v82;
      *(v83 + 32) = v80;
      *(v83 + 40) = v79;
      v77 += 14;
      --v78;
    }

    while (v78);
    v84 = v570;
    v74 = v76;
  }

  else
  {
    v84 = v57;
  }

  v85 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  *&v574 = 0;
  v86 = v541;

  v87 = v695._rawValue;
  specialized SGDataTypeGraph.init(_:idSequence:constants:)(v86, &v574, v74, v588);
  v88 = v557;
  v89 = &OBJC_IVAR___SGGraph_inputs;
  v695._rawValue = v87;
  if (v87)
  {
    (*(v564 + 8))(v562, v563);

LABEL_34:
    LODWORD(v568._rawValue) = 0;
    LODWORD(v567._rawValue) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v68 = 0;
    goto LABEL_71;
  }

  v534 = v86;
  v536 = v74;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v90 = static DebugConfig.debugMode;

  v91 = specialized Set.contains(_:)(6, v90);

  if (v91)
  {
    v92 = v695._rawValue;
    specialized createGraphDotText<A>(representing:)(v588);
    v695._rawValue = v92;
    if (v92)
    {
      (*(v564 + 8))(v562, v563);

      v682 = *(v588 + 8);
      outlined destroy of String(&v682);
      v681 = *(&v588[1] + 1);
      outlined destroy of [Input](&v681, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v680 = v589;
      outlined destroy of [Input](&v680, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v679 = *(&v589 + 1);
      outlined destroy of [Input](&v679, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      goto LABEL_34;
    }

    v532 = v93;
    v535 = v94;
  }

  else
  {
    v532 = 0;
    v535 = 0xE000000000000000;
  }

  v95 = *&v84[v539];
  v96 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v97 = *(v95 + v96);
  *&v571[0] = MEMORY[0x277D84F90];
  if (v97 >> 62)
  {
    v98 = __CocoaSet.count.getter();
  }

  else
  {
    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v98)
  {
    v114 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  v100 = v97;
  v101 = 0;
  v544 = (v100 & 0xFFFFFFFFFFFFFF8);
  v545 = (v100 & 0xC000000000000001);
  v533 = v100;
  v542 = v98;
  v543 = v100 + 32;
  v102 = v85 + 56;
  while (!v545)
  {
    if (v101 >= v544[2])
    {
      __break(1u);
      goto LABEL_88;
    }

    v103 = *(v543 + 8 * v101);
    v104 = __OFADD__(v101++, 1);
    if (v104)
    {
      goto LABEL_65;
    }

LABEL_51:
    v105 = *(v85 + 16);
    v560 = v103;
    if (!v105)
    {
      goto LABEL_47;
    }

    v106 = *&v103[OBJC_IVAR___SGInput_name];
    v107 = *&v103[OBJC_IVAR___SGInput_name + 8];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v108 = Hasher._finalize()();
    v109 = -1 << *(v85 + 32);
    v110 = v108 & ~v109;
    if ((*(v102 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110))
    {
      v111 = ~v109;
      while (1)
      {
        v112 = (*(v85 + 48) + 16 * v110);
        v113 = *v112 == v106 && v112[1] == v107;
        if (v113 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v110 = (v110 + 1) & v111;
        if (((*(v102 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v88 = v557;
      v98 = v542;
      if (v101 == v542)
      {
        goto LABEL_66;
      }
    }

    else
    {
LABEL_46:

      v88 = v557;
      v98 = v542;
LABEL_47:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = specialized ContiguousArray._endMutation()();
      if (v101 == v98)
      {
        goto LABEL_66;
      }
    }
  }

  v103 = MEMORY[0x266772030](v101, v533);
  v104 = __OFADD__(v101++, 1);
  if (!v104)
  {
    goto LABEL_51;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v84 = v570;
  v114 = *&v571[0];
LABEL_68:

  v89 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  *&v84[OBJC_IVAR___SGREMaterial_uniforms] = v114;
  SGDataTypeGraph.topologicalSort()(&v590);
  v115 = v695._rawValue;
  SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)(0, v592);
  if (v115)
  {
    v695._rawValue = v115;
    (*(v564 + 8))(v562, v563);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v678 = *(v588 + 8);
    outlined destroy of String(&v678);
    v677 = *(&v588[1] + 1);
    outlined destroy of [Input](&v677, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v676 = v589;
    outlined destroy of [Input](&v676, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v675 = *(&v589 + 1);
    outlined destroy of [Input](&v675, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

    goto LABEL_70;
  }

  if (!v593)
  {

    v674 = *(v588 + 8);
    outlined destroy of String(&v674);
    v673 = *(&v588[1] + 1);
    outlined destroy of [Input](&v673, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v672 = v589;
    outlined destroy of [Input](&v672, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v671 = *(&v589 + 1);
    outlined destroy of [Input](&v671, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v117 = swift_allocError();
    *v118 = xmmword_265F22B90;
    *(v118 + 16) = 24;
    v695._rawValue = v117;
    swift_willThrow();

    (*(v564 + 8))(v562, v563);
LABEL_70:
    LODWORD(v568._rawValue) = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v68 = 0;
    LODWORD(v567._rawValue) = 1;
    goto LABEL_71;
  }

  v613 = v592[0];
  v614 = v592[1];
  v615 = v593;
  v616 = v594;
  v617 = v595;
  v618 = v596;
  v116 = v588;
  SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)(1, v597);
  checkConstantInputs(in:)(&v590);
  v119 = *&v84[v539];
  v120 = inferTextureAssignments(from:)(v119);
  v695._rawValue = 0;
  v121 = v120;

  v560 = v121;
  mapUniforms(_:)(v121);
  v122 = 0;
  v123 = *(v99 + 16);
  v124 = MEMORY[0x277D84F90];
LABEL_76:
  v125 = 48 * v122;
  v101 = v539;
  while (v123 != v122)
  {
    if (v122 >= *(v99 + 16))
    {
      __break(1u);
      goto LABEL_106;
    }

    ++v122;
    v126 = v125 + 48;
    v127 = *(v99 + v125 + 72);
    v125 += 48;
    if ((v127 & 1) == 0)
    {
      v544 = *(v99 + v126 - 16);
      v545 = v99;
      v128 = *(v99 + v126 + 8);
      v116 = *(v99 + v126 + 16);
      v543 = *(v99 + v126 - 8);

      v542 = v128;
      outlined copy of TextureSource(v128, v116);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v124[2] + 1, 1, v124);
      }

      v130 = v124[2];
      v129 = v124[3];
      v88 = v130 + 1;
      if (v130 >= v129 >> 1)
      {
        v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v124);
      }

      v124[2] = v88;
      v131 = &v124[4 * v130];
      v132 = v543;
      v131[4] = v544;
      v131[5] = v132;
      v131[6] = v542;
      v131[7] = v116;
      v99 = v545;
      goto LABEL_76;
    }
  }

  if (v124[2])
  {
    v133 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v134 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_89;
  }

LABEL_88:
  v133 = v99;
  v134 = MEMORY[0x277D84F98];
LABEL_89:
  v135 = v695._rawValue;
  *&v574 = v134;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v136, 1, &v574);
  v116 = v135;
  if (v135)
  {
    goto LABEL_365;
  }

  swift_bridgeObjectRelease_n();
  v137 = OBJC_IVAR___SGREMaterial_textures;
  v138 = v570;
  *&v570[OBJC_IVAR___SGREMaterial_textures] = v574;
  *&v138[OBJC_IVAR___SGREMaterial_textureAssignments] = v133;
  v139 = *&v138[v101];

  v140 = v139;
  v141 = SGGraph.createCustomUniformsType(named:textureAssignments:)(0x736D726F66696E55, 0xE800000000000000, v133);
  v695._rawValue = 0;
  v142 = v141;

  v143 = type metadata accessor for SGPropertyDescription();
  v144 = objc_allocWithZone(v143);
  v145 = &v144[OBJC_IVAR___SGPropertyDescription_name];
  *v145 = 0x736D726F66696E55;
  v145[1] = 0xE800000000000000;
  *&v144[OBJC_IVAR___SGPropertyDescription_type] = v142;
  v144[OBJC_IVAR___SGPropertyDescription_visible] = 1;
  v586.receiver = v144;
  v586.super_class = v143;
  v88 = &unk_279BBD000;
  v146 = v142;
  v147 = objc_msgSendSuper2(&v586, sel_init);

  v116 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  v148 = v570;
  *&v570[OBJC_IVAR___SGREMaterial_customUniformsType] = v147;
  swift_beginAccess();
  v149 = *&v148[v137];

  v150 = v695._rawValue;
  v151 = specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(&v590, v149);
  v695._rawValue = v150;
  if (v150)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v670[0] = *(v588 + 8);
    outlined destroy of String(v670);
    v669 = *(&v588[1] + 1);
    outlined destroy of [Input](&v669, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v668 = v589;
    outlined destroy of [Input](&v668, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v667 = *(&v589 + 1);
    v152 = &v667;
    goto LABEL_94;
  }

  v153 = v151;

  v560 = v153;
  v154 = v695._rawValue;
  edgeListDigest(_:)(v153, v556);
  v695._rawValue = v154;
  if (v154)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v666 = *(v588 + 8);
    outlined destroy of String(&v666);
    v665 = *(&v588[1] + 1);
    outlined destroy of [Input](&v665, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v664 = v589;
    outlined destroy of [Input](&v664, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v663 = *(&v589 + 1);
    v152 = &v663;
LABEL_94:
    outlined destroy of [Input](v152, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    LODWORD(v568._rawValue) = 0;
    v65 = 0;
    v68 = 0;
    LODWORD(v567._rawValue) = 1;
    v64 = 1;
    v66 = 1;
LABEL_71:
    v67 = 1;
LABEL_72:
    v46 = v541;
LABEL_8:
    type metadata accessor for SGError();
    v69 = v695._rawValue;
    v70 = v695._rawValue;
    SGError.__allocating_init(_:)(v69);
    swift_willThrow();

    outlined destroy of [Input](v566, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
    if (v65)
    {

      return;
    }

    v71 = v570;
    if (LODWORD(v568._rawValue))
    {
    }

    if (LODWORD(v567._rawValue))
    {
    }

    if (v64)
    {

      if (!v66)
      {
LABEL_19:
        if (v67)
        {

          if (v68)
          {
LABEL_21:
            (*(v558 + 8))(&v71[OBJC_IVAR___SGREMaterial_edgeDigest], v559);
          }
        }

        else if (v68)
        {
          goto LABEL_21;
        }

        swift_deallocPartialClassInstance();
        return;
      }
    }

    else
    {

      if (!v66)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }

  v85 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v155 = v556;
  v556 = *(v558 + 32);
  (v556)(&v570[OBJC_IVAR___SGREMaterial_edgeDigest], v155, v559);
  v156 = v695._rawValue;
  v157 = inferLightingModel(from:in:)(&v613, &v590);
  v695._rawValue = v156;
  if (v156)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v662 = *(v588 + 8);
    outlined destroy of String(&v662);
    v661 = *(&v588[1] + 1);
    outlined destroy of [Input](&v661, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v660 = v589;
    outlined destroy of [Input](&v660, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v659 = *(&v589 + 1);
    v158 = &v659;
    goto LABEL_102;
  }

  *&v570[OBJC_IVAR___SGREMaterial_lightingModel] = v157;
  v159 = *(&v614 + 1);
  v160 = v615;
  if (v614 >> 62 || (v161 = *(v614 + 16), v162 = *(v614 + 24), , v163 = specialized Surface.init(nodeDefID:)(v161, v162), v163 == 3) || v163 == 5)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v164 = swift_allocError();
    *v165 = v159;
    *(v165 + 8) = v160;
    *(v165 + 16) = 10;

    v695._rawValue = v164;
    swift_willThrow();
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v622 = *(v588 + 8);
    outlined destroy of String(&v622);
    v621 = *(&v588[1] + 1);
    outlined destroy of [Input](&v621, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v620 = v589;
    outlined destroy of [Input](&v620, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v619 = *(&v589 + 1);
    v158 = &v619;
    goto LABEL_102;
  }

LABEL_106:
  specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0x7974696361706FLL, 0xE700000000000000, &v613, &v590, v601);
  LODWORD(v545) = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
  v542 = 0xD000000000000010;
  specialized SGDataTypeGraph.TopologicalSort.path(to:on:resolvingInput:)(0xD000000000000010, 0x8000000265F2E2F0, &v613, &v590, v602);
  LODWORD(v544) = SGDataTypeGraph.TopologicalSort.Path.hasValue.getter();
  v543 = v590;
  v166 = *(v590 + 16);
  if (v166)
  {
    v167 = (v543 + 48);
    while (1)
    {
      v169 = *v167;
      v167 += 11;
      v168 = v169;
      if (!(v169 >> 62))
      {
        v170 = *(v168 + 16) == static MaterialXNodeTokens.discardNodeID && *(v168 + 24) == off_280042378;
        if (v170 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      if (!--v166)
      {
        goto LABEL_116;
      }
    }

    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v602);
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v601);
    v171 = 0;
  }

  else
  {
LABEL_116:
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v602);
    outlined destroy of SGDataTypeGraph.TopologicalSort.Path(v601);
    v171 = v545 & ~v544 & 1;
  }

  v172 = &lazy protocol witness table cache variable for type NodeDefinitionStore.BuiltinGeomProp and conformance NodeDefinitionStore.BuiltinGeomProp;
  *&v570[OBJC_IVAR___SGREMaterial_blending] = v171;
  v173 = v695._rawValue;
  v174 = inferHasPremultipliedAlpha(from:in:)(&v613, &v590);
  v695._rawValue = v173;
  if (v173)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v658 = *(v588 + 8);
    outlined destroy of String(&v658);
    v657 = *(&v588[1] + 1);
    outlined destroy of [Input](&v657, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v656 = v589;
    outlined destroy of [Input](&v656, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v655 = *(&v589 + 1);
    v158 = &v655;
    goto LABEL_102;
  }

  v570[OBJC_IVAR___SGREMaterial_hasPremultipliedAlpha] = v174 & 1;
  v175 = v695._rawValue;
  v176 = inferApplyPostProcessToneMap(from:in:)(&v613, &v590);
  v695._rawValue = v175;
  if (v175)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v654 = *(v588 + 8);
    outlined destroy of String(&v654);
    v653 = *(&v588[1] + 1);
    outlined destroy of [Input](&v653, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v652 = v589;
    outlined destroy of [Input](&v652, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v651 = *(&v589 + 1);
    v158 = &v651;
LABEL_102:
    outlined destroy of [Input](v158, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    LODWORD(v568._rawValue) = 0;
    v65 = 0;
LABEL_103:
    LODWORD(v567._rawValue) = 1;
    v64 = 1;
LABEL_104:
    v66 = 1;
    v67 = 1;
    v68 = 1;
    goto LABEL_72;
  }

  v177 = v570;
  v570[OBJC_IVAR___SGREMaterial_matchUnlitColor] = (v176 & 1) == 0;
  v178 = &v177[OBJC_IVAR___SGREMaterial_surfaceShaderFunctionName];
  *v178 = 0xD000000000000018;
  *(v178 + 1) = 0x8000000265F2D560;
  v179 = 0x8000000265F2D500;
  v180 = 0xD00000000000001BLL;
  v545 = v599;
  if (!v599)
  {
    v180 = 0;
    v179 = 0;
  }

  v181 = &v177[OBJC_IVAR___SGREMaterial_geometryModifierFunctionName];
  *v181 = v180;
  v181[1] = v179;
  v182 = v695._rawValue;
  v183 = inferHasBackgroundBlur(in:)(&v590);
  v695._rawValue = v182;
  if (v182)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v650 = *(v588 + 8);
    outlined destroy of String(&v650);
    v649 = *(&v588[1] + 1);
    outlined destroy of [Input](&v649, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v648 = v589;
    outlined destroy of [Input](&v648, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v647 = *(&v589 + 1);
    v184 = &v647;
    goto LABEL_127;
  }

  v570[OBJC_IVAR___SGREMaterial_hasBackgroundBlur] = v183 & 1;
  v185 = v695._rawValue;
  v186 = inferShaderHasTimeVaryingFeatures(in:)(&v590);
  v695._rawValue = v185;
  if (v185)
  {
    (*(v564 + 8))(v562, v563);

    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    v646 = *(v588 + 8);
    outlined destroy of String(&v646);
    v645 = *(&v588[1] + 1);
    outlined destroy of [Input](&v645, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v644 = v589;
    outlined destroy of [Input](&v644, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v643 = *(&v589 + 1);
    v184 = &v643;
LABEL_127:
    outlined destroy of [Input](v184, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

LABEL_128:
    v65 = 0;
    LODWORD(v568._rawValue) = 1;
    goto LABEL_103;
  }

  v570[OBJC_IVAR___SGREMaterial_hasTimeVaryingFeatures] = v186 & 1;
  v187 = v599;
  if (!v599)
  {
    goto LABEL_146;
  }

  v188 = v598;
  if (v598 >> 62)
  {

    v642 = *(v588 + 8);
    outlined destroy of String(&v642);
    v641 = *(&v588[1] + 1);
    outlined destroy of [Input](&v641, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v640 = v589;
    outlined destroy of [Input](&v640, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v639 = *(&v589 + 1);
    v190 = &v639;
    goto LABEL_134;
  }

  v530 = v600;
  v531 = v597[0];
  v189 = *(v598 + 24);
  v544 = *(v598 + 16);
  v533 = v189;

  outlined init with copy of [Input](v597, &v574, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  if (specialized Surface.init(nodeDefID:)(v544, v533) == 5)
  {
    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    v638 = *(v588 + 8);
    outlined destroy of String(&v638);
    v637 = *(&v588[1] + 1);
    outlined destroy of [Input](&v637, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    v636 = v589;
    outlined destroy of [Input](&v636, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    v635 = *(&v589 + 1);
    v190 = &v635;
LABEL_134:
    outlined destroy of [Input](v190, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);

    outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v191 = swift_allocError();
    *v192 = xmmword_265F2A0B0;
    *(v192 + 16) = 24;
    v695._rawValue = v191;
    swift_willThrow();
    outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    (*(v564 + 8))(v562, v563);
    goto LABEL_128;
  }

  specialized Graph.Node<>.input(named:)(0xD000000000000013, 0x8000000265F33D20, v531, v188, &v603);
  if (!v605)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_142;
    }

    goto LABEL_208;
  }

  v608 = v603;
  v609 = v604;
  v610 = v605;
  v611 = v606;
  v612 = v607;
  v193 = v591;
  if (!*(v591 + 16) || (v194 = specialized __RawDictionaryStorage.find<A>(_:)(v530), (v195 & 1) == 0))
  {
    outlined destroy of [Input](&v603, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    v187 = 0;
    goto LABEL_146;
  }

  v196 = *(*(v193 + 56) + 48 * v194 + 40);

  specialized Graph.edge(to:)(&v608, v196, &v574);

  outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
  outlined destroy of [Input](&v603, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  v571[2] = v576;
  v571[3] = v577;
  v571[4] = v578;
  v572 = v579;
  v571[0] = v574;
  v571[1] = v575;
  v187 = BYTE8(v575);
  if (!*(&v575 + 1))
  {
    goto LABEL_146;
  }

  v197 = &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd;
  v198 = &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR;
  v199 = v571;
  while (2)
  {
    outlined destroy of [Input](v199, v197, v198);
    v187 = 1;
LABEL_146:
    v206 = v570;
    v570[OBJC_IVAR___SGREMaterial_hasGeometryModifierOffset] = v187;
    v207 = *&v206[v539];
    v208 = v695._rawValue;
    v209 = inferShaderHasCustomUniform(from:shaderType:)(v207, 53);
    v695._rawValue = v208;
    if (v208)
    {
      (*(v564 + 8))(v562, v563);

      outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
      v634 = *(v588 + 8);
      outlined destroy of String(&v634);
      v633 = *(&v588[1] + 1);
      outlined destroy of [Input](&v633, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v632 = v589;
      outlined destroy of [Input](&v632, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v631 = *(&v589 + 1);
      v184 = &v631;
      goto LABEL_127;
    }

    v210 = v209;

    v570[OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms] = v210 & 1;
    if (v545)
    {
      v211 = *&v570[v539];
      v212 = v695._rawValue;
      v213 = inferShaderHasCustomUniform(from:shaderType:)(v211, 54);
      v695._rawValue = v212;
      if (v212)
      {
        (*(v564 + 8))(v562, v563);

        outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
        v630 = *(v588 + 8);
        outlined destroy of String(&v630);
        v629 = *(&v588[1] + 1);
        outlined destroy of [Input](&v629, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
        v628 = v589;
        outlined destroy of [Input](&v628, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
        v627 = *(&v589 + 1);
        v184 = &v627;
        goto LABEL_127;
      }

      v214 = v213;

      v570[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms] = v214 & 1;
    }

    else
    {
      v570[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms] = 0;
    }

    v215 = v695._rawValue;
    v216 = inferHighestConnectedLightSpillNodeRequirements(in:)(&v590);
    v545 = v215;
    if (v215)
    {
      (*(v564 + 8))(v562, v563);

      outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
      v626 = *(v588 + 8);
      outlined destroy of String(&v626);
      v625 = *(&v588[1] + 1);
      outlined destroy of [Input](&v625, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      v624 = v589;
      outlined destroy of [Input](&v624, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      v623 = *(&v589 + 1);
      outlined destroy of [Input](&v623, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

      v65 = 0;
      LODWORD(v568._rawValue) = 1;
      v695._rawValue = v545;
      goto LABEL_103;
    }

    v217 = v570;
    v570[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodes] = 0x10100u >> (8 * v216);
    v217[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodesWithRoughness] = 0x10000u >> (8 * v216);
    v218 = v217;
    Hasher.init()();
    v219 = v558;
    v220 = *(v558 + 16);
    v221 = &v218[v85];
    v222 = v555;
    v533 = v558 + 16;
    v531 = v220;
    v220(v555, v221, v559);
    SHA512Digest.hash(into:)();
    v528 = *(v219 + 8);
    v529 = v219 + 8;
    v528(v222, v559);
    v692 = v584[3];
    v693 = v584[4];
    v694 = v585;
    v690 = v584[1];
    v691 = v584[2];
    v223 = Hasher.finalize()();
    *&v570[OBJC_IVAR___SGREMaterial_operationalHash] = v223;
    *&v574 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v224 = v574;
    *&v571[0] = v223;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v544 = String.init<A>(_:radix:uppercase:)();
    v539 = v225;
    v227 = *(v224 + 16);
    v226 = *(v224 + 24);
    v228 = v224;
    v695._rawValue = (v227 + 1);
    v530 = v227;
    if (v227 >= v226 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v226 > 1), v695._rawValue, 1);
      v228 = v574;
    }

    v228[2]._rawValue = v695._rawValue;
    v229 = &v228[2 * v530];
    v230 = v539;
    v229[4]._rawValue = v544;
    v229[5]._rawValue = v230;
    *&v574 = v228;
    v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v539 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v231 = BidirectionalCollection<>.joined(separator:)();
    v695._rawValue = v232;

    v233 = &v570[OBJC_IVAR___SGREMaterial_operationalHashString];
    v234 = v695._rawValue;
    *v233 = v231;
    v233[1] = v234;
    v235 = v547;
    outlined init with copy of [Input](v566, v547, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
    v695._rawValue = *(v558 + 48);
    if ((v695._rawValue)(v235, 1, v559) == 1)
    {
      v236 = v559;
      v531(v546, &v570[v85], v559);
      if ((v695._rawValue)(v547, 1, v236) != 1)
      {
        outlined destroy of [Input](v547, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
      }
    }

    else
    {
      (v556)(v546, v547, v559);
    }

    v237 = v570;
    (v556)(&v570[OBJC_IVAR___SGREMaterial_sourceHash], v546, v559);
    v238 = &v237[OBJC_IVAR___SGREMaterial_internalGraph];
    v239 = v588[1];
    *v238 = v588[0];
    *(v238 + 1) = v239;
    *(v238 + 2) = v589;
    *&v237[OBJC_IVAR___SGREMaterial_warnings] = MEMORY[0x277D84F90];
    v584[0].receiver = v237;
    v584[0].super_class = ObjectType;
    v570 = objc_msgSendSuper2(v584, *(v88 + 760));
    v240 = v534;
    v241 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    LODWORD(v695._rawValue) = static os_signpost_type_t.end.getter();
    v547 = v240;

    if (OS_os_log.signpostsEnabled.getter())
    {

      v242 = v548;
      checkForErrorAndConsumeState(state:)();

      if ((*(v549 + 88))(v242, v550) == *MEMORY[0x277D85B00])
      {
        v243 = 0;
        v244 = 0;
        v556 = "[Error] Interval already ended";
      }

      else
      {
        (*(v549 + 8))(v548, v550);
        v556 = "%{private,mask.hash}s ";
        v244 = 3;
        v243 = 2;
      }

      v246 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      *&v574 = v247;
      *v246 = v244;
      *(v246 + 1) = v243;
      *(v246 + 2) = 2160;
      *(v246 + 4) = 1752392040;
      *(v246 + 12) = 2081;
      v249 = *&v547[OBJC_IVAR___SGGraph_name];
      v248 = *&v547[OBJC_IVAR___SGGraph_name + 8];

      v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v249, v248, &v574);

      *(v246 + 14) = v250;
      v251 = v551;
      v252 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v241, v695._rawValue, v252, "shaderGraphMaterial", v556, v246, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v247);
      MEMORY[0x266773120](v247, -1, -1);
      MEMORY[0x266773120](v246, -1, -1);

      v245 = v251;
    }

    else
    {

      v245 = v551;
    }

    v537(v245, v567._rawValue);
    v253 = static DebugConfig.debugMode;

    v254 = specialized Set.contains(_:)(6, v253);

    if ((v254 & 1) == 0)
    {
      v255 = static DebugConfig.debugMode;

      v256 = specialized Set.contains(_:)(3, v255);

      if ((v256 & 1) == 0)
      {
        v257 = static DebugConfig.debugMode;

        v258 = specialized Set.contains(_:)(1, v257);

        if ((v258 & 1) == 0)
        {

          outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
          v302 = 0;
          v303 = 0;
          v304 = 0xE000000000000000;
          goto LABEL_349;
        }
      }
    }

    v259 = *(v543 + 16);
    if (v259)
    {
      v582[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v259, 0);
      v260 = v582[0];
      v261 = v543 + 32;
      v695._rawValue = (v259 - 1);
      while (1)
      {
        v262 = *(v261 + 64);
        v263 = *(v261 + 80);
        v264 = *(v261 + 32);
        v577 = *(v261 + 48);
        v265 = *(v261 + 16);
        v574 = *v261;
        v575 = v265;
        *&v579 = v263;
        v576 = v264;
        v578 = v262;
        v266 = *(&v265 + 1);
        v267 = v264;
        v583 = v577;
        outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v574, v571);

        MEMORY[0x266771550](46, 0xE100000000000000);

        MEMORY[0x266771550](v266, v267);

        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v574);
        v556 = *(&v583 + 1);
        v567._rawValue = v583;
        v582[0] = v260;
        v269 = *(v260 + 16);
        v268 = *(v260 + 24);
        if (v269 >= v268 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v268 > 1), v269 + 1, 1);
          v260 = v582[0];
        }

        *(v260 + 16) = v269 + 1;
        v270 = (v260 + 16 * v269);
        v271 = v556;
        v270[4]._rawValue = v567._rawValue;
        v270[5]._rawValue = v271;
        if (!v695._rawValue)
        {
          break;
        }

        --v695._rawValue;
        v261 += 88;
      }

      outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
    }

    else
    {
      outlined destroy of SGDataTypeGraph.TopologicalSort(&v590);
      v260 = MEMORY[0x277D84F90];
    }

    *&v574 = v260;
    v548 = BidirectionalCollection<>.joined(separator:)();
    v549 = v272;

    v88 = v570;
    v523 = ObjectIdentifier.debugDescription.getter();
    v524 = v273;
    v274 = (*(v88 + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v275 = v274[1];
    v526 = *v274;
    v276 = (v88 + OBJC_IVAR___SGREMaterial_operationalHashString);
    swift_beginAccess();
    v277 = *v276;
    v278 = v276[1];
    v530 = v277;
    v279 = v555;
    v531(v555, (v88 + OBJC_IVAR___SGREMaterial_edgeDigest), v559);
    v527 = v275;

    v531 = v278;

    v280 = SHA512Digest.description.getter();
    v695._rawValue = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v280, v281);
    v567._rawValue = v282;
    v284 = v283;
    v286 = v285;

    v521 = MEMORY[0x2667714E0](v695._rawValue, v567._rawValue, v284, v286);
    v522 = v287;

    v528(v279, v559);
    v288 = *(v88 + OBJC_IVAR___SGREMaterial_lightingModel);
    switch(v288)
    {
      case 1:
        v517 = 0xE300000000000000;
        v289 = 7496304;
        break;
      case 2:
        v517 = 0xE500000000000000;
        v289 = 0x74696C6E75;
        break;
      case 3:
        v517 = 0xE900000000000074;
        v289 = 0x616F637261656C63;
        break;
      default:
        v517 = 0x8000000265F33AD0;
        v289 = 0xD000000000000012;
        break;
    }

    v516 = v289;
    v290 = *&v570[*(v172 + 152)];
    if (v290)
    {
      if (v290 == 1)
      {
        v520 = 0xEB00000000746E65;
        v291 = 0x726170736E617274;
      }

      else
      {
        v520 = 0xEF3E65756C617620;
        v291 = 0x64696C61766E693CLL;
      }
    }

    else
    {
      v520 = 0xE600000000000000;
      v291 = 0x65757161706FLL;
    }

    v519 = v291;
    v525 = v570[OBJC_IVAR___SGREMaterial_hasPremultipliedAlpha];
    v518 = v570[OBJC_IVAR___SGREMaterial_matchUnlitColor];
    LODWORD(v540) = v570[OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms];
    LODWORD(v543) = v570[OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms];
    LODWORD(v533) = v570[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodes];
    LODWORD(v534) = v570[OBJC_IVAR___SGREMaterial_hasConnectedLightSpillNodesWithRoughness];
    LODWORD(v537) = v570[OBJC_IVAR___SGREMaterial_hasBackgroundBlur];
    LODWORD(v546) = v570[OBJC_IVAR___SGREMaterial_hasGeometryModifierOffset];
    v85 = *&v570[v89[15]];
    if (!(v85 >> 62))
    {
      v556 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v556)
      {
        goto LABEL_210;
      }

LABEL_192:
      *&v571[0] = MEMORY[0x277D84F90];

      v172 = v556;
      specialized ContiguousArray.reserveCapacity(_:)(v556);
      if ((v172 & 0x8000000000000000) == 0)
      {
        v292 = 0;
        v550 = v85 & 0xFFFFFFFFFFFFFF8;
        v551 = v85 & 0xC000000000000001;
        while (1)
        {
          v695._rawValue = (v292 + 1);
          if (__OFADD__(v292, 1))
          {
            break;
          }

          if (v551)
          {
            v293 = MEMORY[0x266772030](v292, v85);
          }

          else
          {
            if (v292 >= *(v550 + 16))
            {
              goto LABEL_207;
            }

            v293 = *(v85 + 8 * v292 + 32);
          }

          v294 = v293;
          v296 = *&v293[OBJC_IVAR___SGInput_name];
          v295 = *&v293[OBJC_IVAR___SGInput_name + 8];
          *&v574 = v296;
          *(&v574 + 1) = v295;

          MEMORY[0x266771550](8250, 0xE200000000000000);
          swift_beginAccess();
          v297 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v297);

          v172 = *(&v574 + 1);
          v298 = v574;
          v567._rawValue = *&v571[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v567._rawValue + 2) + 1, 1);
            v567._rawValue = *&v571[0];
          }

          v88 = *(v567._rawValue + 2);
          v299 = *(v567._rawValue + 3);
          v89 = (v88 + 1);
          if (v88 >= v299 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v299 > 1), v88 + 1, 1);
            v567._rawValue = *&v571[0];
          }

          v300 = v567._rawValue;
          *(v567._rawValue + 2) = v89;
          v301 = &v300[16 * v88];
          *(v301 + 4) = v298;
          *(v301 + 5) = v172;
          ++v292;
          if (v695._rawValue == v556)
          {

            goto LABEL_211;
          }
        }

        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        swift_once();
LABEL_142:
        v200 = type metadata accessor for Logger();
        __swift_project_value_buffer(v200, logger);
        v201 = Logger.logObject.getter();
        v202 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          *v203 = 0;
          v204 = v202;
          v205 = v203;
          _os_log_impl(&dword_265D7D000, v201, v204, "GeometryModifier is missing an expected input.", v203, 2u);
          MEMORY[0x266773120](v205, -1, -1);
        }

        v197 = &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd;
        v198 = &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR;
        v199 = v597;
        continue;
      }

      __break(1u);
LABEL_362:
      __break(1u);
      goto LABEL_363;
    }

    break;
  }

  v556 = __CocoaSet.count.getter();
  if (v556)
  {
    goto LABEL_192;
  }

LABEL_210:
  v567._rawValue = MEMORY[0x277D84F90];
LABEL_211:
  v305 = v570;
  swift_beginAccess();

  v307 = v545;
  v515._rawValue = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SSs5NeverOTg5128_s11ShaderGraph18SGREMaterialSourceC5graph13configurationAcA7SGGraphC_AA23SGMaterialConfigurationCtKcfcS2S3key_SS5valuet_tXEfU8_Tf1cn_n(v306);
  v545 = v307;

  v309 = v116[30];
  v310 = *(*(*(*&v305[v309] + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 56);
  if (v310)
  {
    *&v574 = 0x203A657A69732820;
    *(&v574 + 1) = 0xE800000000000000;
    LODWORD(v571[0]) = v310;
    v311 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v311);

    MEMORY[0x266771550](0x6D6E67696C61202CLL, 0xED0000203A746E65);
    v116 = v570;
    LODWORD(v571[0]) = *(*(*(*&v570[v309] + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 60);
    v312 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v312);

    MEMORY[0x266771550](2601, 0xE200000000000000);
    v313 = *(**(*(*(v116 + v309) + OBJC_IVAR___SGPropertyDescription_type) + OBJC_IVAR___SGTypeDescription_type) + 232);

    v315 = v313(v314);

    v695._rawValue = v315;
    v316 = v315[2];
    if (v316)
    {
      *&v571[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)(v316);
      v317 = *&v571[0];
      v318 = v695._rawValue + 40;
      do
      {
        v320 = *(v318 - 1);
        v319 = *v318;
        v321 = *(v318 + 1);
        v322 = v318[24];

        v116 = specialized closure #8 in SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v320, v319, v321, v322);
        v324 = v323;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v317 + 16) + 1, 1);
          v317 = *&v571[0];
        }

        v326 = *(v317 + 16);
        v325 = *(v317 + 24);
        if (v326 >= v325 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v325 > 1), v326 + 1, 1);
          v317 = *&v571[0];
        }

        v318 += 56;
        *(v317 + 16) = v326 + 1;
        v327 = v317 + 16 * v326;
        *(v327 + 32) = v116;
        *(v327 + 40) = v324;
        --v316;
      }

      while (v316);
    }

    else
    {

      v317 = MEMORY[0x277D84F90];
    }

    *&v571[0] = v317;
    v328 = BidirectionalCollection<>.joined(separator:)();
    v330 = v329;

    MEMORY[0x266771550](v328, v330);

    v308 = MEMORY[0x266771550](10506, 0xE200000000000000);
    v514 = v574;
  }

  else
  {
    *&v514 = 0x2D656E6F6E2D09;
    *(&v514 + 1) = 0xE700000000000000;
  }

  v568._rawValue = (*((*MEMORY[0x277D85000] & *v565) + 0x60))(v308);
  if (v568._rawValue >> 62)
  {
    v331 = __CocoaSet.count.getter();
    if (!v331)
    {
      goto LABEL_237;
    }

LABEL_225:
    *&v571[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v331);
    if ((v331 & 0x8000000000000000) == 0)
    {
      v332 = 0;
      v333 = v568._rawValue & 0xC000000000000001;
      do
      {
        if (v333)
        {
          v334 = MEMORY[0x266772030](v332, v568._rawValue);
        }

        else
        {
          v334 = *(v568._rawValue + v332 + 4);
        }

        v335 = v334;
        v337 = *&v334[OBJC_IVAR___SGGeometryPropertyDefinition_name];
        v336 = *&v334[OBJC_IVAR___SGGeometryPropertyDefinition_name + 8];
        *&v574 = v337;
        *(&v574 + 1) = v336;

        MEMORY[0x266771550](540945696, 0xE400000000000000);
        MEMORY[0x266771550](*&v335[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName], *&v335[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8]);

        v338 = *(&v574 + 1);
        v116 = v574;
        v695._rawValue = *&v571[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v695._rawValue + 2) + 1, 1);
          v695._rawValue = *&v571[0];
        }

        v340 = *(v695._rawValue + 2);
        v339 = *(v695._rawValue + 3);
        if (v340 >= v339 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v339 > 1), v340 + 1, 1);
          v695._rawValue = *&v571[0];
        }

        ++v332;
        v341 = v695._rawValue;
        *(v695._rawValue + 2) = v340 + 1;
        v342 = &v341[16 * v340];
        *(v342 + 4) = v116;
        *(v342 + 5) = v338;
      }

      while (v331 != v332);

      goto LABEL_238;
    }

    goto LABEL_362;
  }

  v331 = *((v568._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v331)
  {
    goto LABEL_225;
  }

LABEL_237:

  v695._rawValue = MEMORY[0x277D84F90];
LABEL_238:
  v343 = OBJC_IVAR___SGREMaterial_functionConstantInputs;
  v344 = v570;
  swift_beginAccess();
  v556 = v343;
  v568._rawValue = *&v343[v344];
  if (v568._rawValue >> 62)
  {
    v345 = __CocoaSet.count.getter();
  }

  else
  {
    v345 = *((v568._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v345)
  {
LABEL_252:
    v550 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    v556 = *&v570[v556];
    if (v556 >> 62)
    {
      v551 = __CocoaSet.count.getter();
      if (v551)
      {
        goto LABEL_254;
      }
    }

    else
    {
      v551 = *((v556 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v551)
      {
LABEL_254:
        *&v571[0] = MEMORY[0x277D84F90];

        v356 = v551;
        specialized ContiguousArray.reserveCapacity(_:)(v551);
        if (v356 < 0)
        {
          goto LABEL_364;
        }

        v357 = 0;
        v358 = v556 & 0xC000000000000001;
        do
        {
          if (v358)
          {
            v359 = MEMORY[0x266772030](v357, v556);
          }

          else
          {
            v359 = *(v556 + 8 * v357 + 32);
          }

          v360 = v359;
          v362 = *&v359[OBJC_IVAR___SGInput_name];
          v361 = *&v359[OBJC_IVAR___SGInput_name + 8];
          *&v574 = v362;
          *(&v574 + 1) = v361;

          MEMORY[0x266771550](8250, 0xE200000000000000);
          v363 = v574;
          swift_beginAccess();
          v364 = SGDataType.stringValue.getter();
          v366 = v365;
          v574 = v363;

          MEMORY[0x266771550](v364, v366);

          v367 = v574;
          v568._rawValue = *&v571[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v568._rawValue + 2) + 1, 1);
            v568._rawValue = *&v571[0];
          }

          v369 = *(v568._rawValue + 2);
          v368 = *(v568._rawValue + 3);
          if (v369 >= v368 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v368 > 1), v369 + 1, 1);
            v568._rawValue = *&v571[0];
          }

          ++v357;
          v370 = v568._rawValue;
          *(v568._rawValue + 2) = v369 + 1;
          v370[v369 + 2] = v367;
        }

        while (v551 != v357);

        goto LABEL_268;
      }
    }

    v568._rawValue = MEMORY[0x277D84F90];
LABEL_268:
    v556 = *&v570[OBJC_IVAR___SGREMaterial_functionConstantValues];
    v371 = *(v556 + 16);
    if (v371)
    {
      v581 = MEMORY[0x277D84F90];
      v372 = v556;

      specialized ContiguousArray.reserveCapacity(_:)(v371);
      v373 = v371 - 1;
      for (i = v372 + 64; ; i += 112)
      {
        v375 = *(i - 32);
        v376 = *i;
        v575 = *(i - 16);
        v576 = v376;
        v574 = v375;
        v377 = *(i + 16);
        v378 = *(i + 32);
        v379 = *(i + 48);
        v580 = *(i + 64);
        v578 = v378;
        v579 = v379;
        v577 = v377;
        v380 = *i;
        v381 = *(i + 16);
        v382 = *(i + 32);
        v383 = *(i + 48);
        v689 = *(i + 64);
        v687 = v382;
        v688 = v383;
        v685 = v380;
        v686 = v381;
        v384 = v574;
        v573 = v574;
        outlined init with copy of FunctionConstantValue(&v574, v571);

        MEMORY[0x266771550](8250, 0xE200000000000000);
        v385 = v573;
        v386 = SGDataType.stringValue.getter();
        v388 = v387;
        v571[0] = v385;

        MEMORY[0x266771550](v386, v388);

        MEMORY[0x266771550](2112800, 0xE300000000000000);

        v389 = v571[0];
        v390 = SGDataTypeStorage.valueString.getter();
        v392 = v391;
        v571[0] = v389;

        MEMORY[0x266771550](v390, v392);

        v393 = v571[0];
        v394 = specialized Set.contains(_:)(v384, *(&v384 + 1), v550);
        if (v394)
        {
          v395 = 0;
        }

        else
        {
          v395 = 0x696D616E79642820;
        }

        if (v394)
        {
          v396 = 0xE000000000000000;
        }

        else
        {
          v396 = 0xEA00000000002963;
        }

        v571[0] = v393;

        MEMORY[0x266771550](v395, v396);

        outlined destroy of FunctionConstantValue(&v574);
        v397 = v571[0];
        v398._rawValue = v581;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v398._rawValue + 2) + 1, 1);
          v398._rawValue = v581;
        }

        v400 = *(v398._rawValue + 2);
        v399 = *(v398._rawValue + 3);
        if (v400 >= v399 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v399 > 1), v400 + 1, 1);
          v398._rawValue = v581;
        }

        *(v398._rawValue + 2) = v400 + 1;
        *(v398._rawValue + v400 + 2) = v397;
        if (!v373)
        {
          break;
        }

        --v373;
      }
    }

    else
    {

      v398._rawValue = MEMORY[0x277D84F90];
    }

    LODWORD(v556) = v570[OBJC_IVAR___SGREMaterial_hasTimeVaryingFeatures];
    *&v574 = 0;
    *(&v574 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(509);
    MEMORY[0x266771550](0xD000000000000016, 0x8000000265F33AF0);
    MEMORY[0x266771550](v523, v524);

    MEMORY[0x266771550](0x203A656D616E0ALL, 0xE700000000000000);
    MEMORY[0x266771550](v526, v527);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33B10);
    MEMORY[0x266771550](v530, v531);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2FA30);
    MEMORY[0x266771550](v521, v522);

    v401 = v542;
    MEMORY[0x266771550](v542, 0x8000000265F33B30);
    MEMORY[0x266771550](v516, v517);

    MEMORY[0x266771550](0x6E69646E656C620ALL, 0xEB00000000203A67);
    MEMORY[0x266771550](v519, v520);

    MEMORY[0x266771550](0xD00000000000001ALL, 0x8000000265F33B50);
    if (v518)
    {
      v402 = 0x65736C6166;
    }

    else
    {
      v402 = 1702195828;
    }

    if (v518)
    {
      v403 = 0xE500000000000000;
    }

    else
    {
      v403 = 0xE400000000000000;
    }

    if (v518)
    {
      v404 = 1702195828;
    }

    else
    {
      v404 = 0x65736C6166;
    }

    if (v518)
    {
      v405 = 0xE400000000000000;
    }

    else
    {
      v405 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v402, v403);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33B70);
    MEMORY[0x266771550](v404, v405);

    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F33B90);
    if (v525)
    {
      v406 = 1702195828;
    }

    else
    {
      v406 = 0x65736C6166;
    }

    if (v525)
    {
      v407 = 0xE400000000000000;
    }

    else
    {
      v407 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v406, v407);

    MEMORY[0x266771550](v401, 0x8000000265F33BB0);
    if (v533)
    {
      v408 = 1702195828;
    }

    else
    {
      v408 = 0x65736C6166;
    }

    if (v533)
    {
      v409 = 0xE400000000000000;
    }

    else
    {
      v409 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v408, v409);

    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33BD0);
    if (v534)
    {
      v410 = 1702195828;
    }

    else
    {
      v410 = 0x65736C6166;
    }

    if (v534)
    {
      v411 = 0xE400000000000000;
    }

    else
    {
      v411 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v410, v411);

    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F33BF0);
    if (v537)
    {
      v412 = 1702195828;
    }

    else
    {
      v412 = 0x65736C6166;
    }

    if (v537)
    {
      v413 = 0xE400000000000000;
    }

    else
    {
      v413 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v412, v413);

    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F33C10);
    if (v540)
    {
      v414 = 1702195828;
    }

    else
    {
      v414 = 0x65736C6166;
    }

    if (v540)
    {
      v415 = 0xE400000000000000;
    }

    else
    {
      v415 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v414, v415);

    MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F33C30);
    if (v543)
    {
      v416 = 1702195828;
    }

    else
    {
      v416 = 0x65736C6166;
    }

    if (v543)
    {
      v417 = 0xE400000000000000;
    }

    else
    {
      v417 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v416, v417);

    MEMORY[0x266771550](0xD000000000000021, 0x8000000265F33C50);
    if (v546)
    {
      v418 = 1702195828;
    }

    else
    {
      v418 = 0x65736C6166;
    }

    if (v546)
    {
      v419 = 0xE400000000000000;
    }

    else
    {
      v419 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v418, v419);

    MEMORY[0x266771550](0xD000000000000019, 0x8000000265F33C80);
    if (v556)
    {
      v420 = 1702195828;
    }

    else
    {
      v420 = 0x65736C6166;
    }

    if (v556)
    {
      v421 = 0xE400000000000000;
    }

    else
    {
      v421 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v420, v421);

    MEMORY[0x266771550](0x6D726F66696E750ALL, 0xEB000000000A3A73);
    v422 = logArray(_:tabs:)(v567, 1);

    MEMORY[0x266771550](v422._countAndFlagsBits, v422._object);

    MEMORY[0x266771550](0xD00000000000001CLL, 0x8000000265F33CA0);
    v423 = logArray(_:tabs:)(v568, 1);

    MEMORY[0x266771550](v423._countAndFlagsBits, v423._object);

    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F33CC0);
    v424 = logArray(_:tabs:)(v398, 1);

    MEMORY[0x266771550](v424._countAndFlagsBits, v424._object);

    MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2FAB0);
    v425 = logArray(_:tabs:)(v515, 1);

    MEMORY[0x266771550](v425._countAndFlagsBits, v425._object);

    MEMORY[0x266771550](0xD000000000000018, 0x8000000265F33CE0);
    MEMORY[0x266771550](v514, *(&v514 + 1));

    MEMORY[0x266771550](0xD000000000000013, 0x8000000265F2FAD0);
    v426 = logArray(_:tabs:)(v695, 1);

    MEMORY[0x266771550](v426._countAndFlagsBits, v426._object);

    MEMORY[0x266771550](2960650, 0xE300000000000000);

    MEMORY[0x266771550](0x6C20656764450A0ALL, 0xED00000A3A747369);

    v427 = v574;
    *&v574 = v560;
    v428 = BidirectionalCollection<>.joined(separator:)();
    v430 = v429;

    v574 = v427;

    MEMORY[0x266771550](v428, v430);

    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F33D00);

    MEMORY[0x266771550](v548, v549);

    v304 = *(&v574 + 1);
    v302 = v574;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v431 = type metadata accessor for Logger();
    __swift_project_value_buffer(v431, logger);

    v432 = Logger.logObject.getter();
    v433 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v432, v433))
    {
      v434 = swift_slowAlloc();
      v435 = swift_slowAlloc();
      *&v574 = v435;
      *v434 = 136315138;
      *(v434 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, &v574);
      _os_log_impl(&dword_265D7D000, v432, v433, "%s", v434, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v435);
      MEMORY[0x266773120](v435, -1, -1);
      MEMORY[0x266773120](v434, -1, -1);
    }

    v303 = 1;
LABEL_349:
    v436 = static DebugConfig.debugMode;

    v437 = specialized Set.contains(_:)(0, v436);

    if (v437)
    {

      outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    }

    else
    {
      *&v574 = v532;
      *(&v574 + 1) = v535;

      MEMORY[0x266771550](170536714, 0xE400000000000000);

      MEMORY[0x266771550](v302, v304);

      MEMORY[0x266771550](170863114, 0xE400000000000000);

      v438 = *(&v574 + 1);
      if (v303)
      {
        v695._rawValue = v574;
        v439 = (*&v570[OBJC_IVAR___SGREMaterial_graph] + OBJC_IVAR___SGGraph_name);
        v440 = v439[1];
        *&v574 = *v439;
        *(&v574 + 1) = v440;

        MEMORY[0x266771550](95, 0xE100000000000000);
        v441 = SHA512Digest.description.getter();
        v443 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v441, v442);
        v445 = v444;
        v447 = v446;
        v449 = v448;

        v450 = MEMORY[0x2667714E0](v443, v445, v447, v449);
        v452 = v451;

        *&v571[0] = v450;
        *(&v571[0] + 1) = v452;

        MEMORY[0x266771550](95, 0xE100000000000000);

        v453 = v571[0];
        v454 = SHA512Digest.description.getter();
        v456 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v454, v455);
        v458 = v457;
        v460 = v459;
        v462 = v461;

        v463 = MEMORY[0x2667714E0](v456, v458, v460, v462);
        v465 = v464;

        v571[0] = v453;

        MEMORY[0x266771550](v463, v465);

        MEMORY[0x266771550](*&v571[0], *(&v571[0] + 1));

        MEMORY[0x266771550](0x7972616D6D75735FLL, 0xE800000000000000);
        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v695._rawValue, v438, v574, *(&v574 + 1), 7630692, 0xE300000000000000);
      }

      v466 = static DebugConfig.debugMode;

      v467 = specialized Set.contains(_:)(8, v466);

      if ((v467 & 1) != 0 && v538)
      {
        type metadata accessor for PropertyListEncoder();
        swift_allocObject();
        PropertyListEncoder.init()();
        *&v574 = v536;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
        lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]();
        v468 = v545;
        v469 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
        v695._rawValue = v468;
        if (v468)
        {
          (*(v564 + 8))(v562, v563);
          outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
          outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

          LODWORD(v568._rawValue) = 1;
          LODWORD(v567._rawValue) = 1;
          v64 = 1;
          v65 = 1;
          goto LABEL_104;
        }

        v471 = v469;
        v472 = v470;

        lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(&lazy protocol witness table cache variable for type SHA512 and conformance SHA512, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
        v473 = v552;
        v474 = v554;
        dispatch thunk of HashFunction.init()();
        outlined copy of Data._Representation(v471, v472);
        v568._rawValue = v471;
        v475 = v695._rawValue;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v471, v472, v473);
        v545 = v475;
        outlined consume of Data._Representation(v471, v472);
        dispatch thunk of HashFunction.finalize()();
        (*(v553 + 8))(v473, v474);
        v476 = SHA512Digest.description.getter();
        v478 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v476, v477);
        v480 = v479;
        v482 = v481;
        v484 = v483;

        v695._rawValue = MEMORY[0x2667714E0](v478, v480, v482, v484);
        v567._rawValue = v485;

        v486 = (*&v570[OBJC_IVAR___SGREMaterial_graph] + OBJC_IVAR___SGGraph_name);
        v487 = v486[1];
        *&v574 = *v486;
        *(&v574 + 1) = v487;

        MEMORY[0x266771550](95, 0xE100000000000000);
        v488 = SHA512Digest.description.getter();
        v490 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v488, v489);
        v492 = v491;
        v494 = v493;
        v496 = v495;

        v497 = MEMORY[0x2667714E0](v490, v492, v494, v496);
        v499 = v498;

        *&v571[0] = v497;
        *(&v571[0] + 1) = v499;

        MEMORY[0x266771550](95, 0xE100000000000000);

        v500 = v571[0];
        v501 = SHA512Digest.description.getter();
        v503 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v501, v502);
        v505 = v504;
        v507 = v506;
        v509 = v508;

        v510 = MEMORY[0x2667714E0](v503, v505, v507, v509);
        v512 = v511;

        v571[0] = v500;

        MEMORY[0x266771550](v510, v512);

        MEMORY[0x266771550](*&v571[0], *(&v571[0] + 1));

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v695._rawValue, v567._rawValue);

        MEMORY[0x266771550](0xD000000000000012, 0x8000000265F33AB0);
        v513 = v568._rawValue;
        specialized static FileLogger.saveDebugFile(_:name:extension:)(v568._rawValue, v472, v574, *(&v574 + 1), 0x7473696C70, 0xE500000000000000);
        outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined consume of Data._Representation(v513, v472);

        outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

        outlined destroy of [Input](v566, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
        v528(v555, v559);
        goto LABEL_359;
      }

      outlined destroy of [Input](v592, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);
    }

    outlined destroy of [Input](v597, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMd, &_s11ShaderGraph010SGDataTypeB0V15TopologicalSortV7ElementVSgMR);

    outlined destroy of [Input](v566, &_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
LABEL_359:
    (*(v564 + 8))(v562, v563);
    return;
  }

  *&v574 = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)(v345);
  if ((v345 & 0x8000000000000000) == 0)
  {
    v346 = 0;
    v347 = v568._rawValue & 0xC000000000000001;
    do
    {
      if (v347)
      {
        v348 = MEMORY[0x266772030](v346, v568._rawValue);
      }

      else
      {
        v348 = *(v568._rawValue + v346 + 4);
      }

      v349 = v348;
      v350 = &v348[OBJC_IVAR___SGInput_name];
      swift_beginAccess();
      v116 = *v350;
      v351 = v350[1];

      v352 = v574;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v352 + 16) + 1, 1);
        v352 = v574;
      }

      v354 = *(v352 + 16);
      v353 = *(v352 + 24);
      if (v354 >= v353 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v353 > 1), v354 + 1, 1);
        v352 = v574;
      }

      ++v346;
      *(v352 + 16) = v354 + 1;
      v355 = v352 + 16 * v354;
      *(v355 + 32) = v116;
      *(v355 + 40) = v351;
    }

    while (v345 != v346);

    goto LABEL_252;
  }

LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:

  __break(1u);
}

id SGREMaterial.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGREMaterial.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SGREMaterial.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of [Input](a1, v9, &_sypSgMd, &_sypSgMR);
  if (!v10)
  {
    outlined destroy of [Input](v9, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  if (v8 == v1)
  {

    v6 = 1;
    return v6 & 1;
  }

  type metadata accessor for NSObject();
  v3 = *&v8[OBJC_IVAR___SGREMaterial_graph];
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = *&v8[OBJC_IVAR___SGREMaterial_config];
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized closure #8 in SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v14[8] = 0;
  _StringGuts.grow(_:)(58);
  MEMORY[0x266771550](9, 0xE100000000000000);
  MEMORY[0x266771550](a1, a2);
  MEMORY[0x266771550](8250, 0xE200000000000000);
  MEMORY[0x266771550](*(a3 + 24), *(a3 + 32));
  MEMORY[0x266771550](0x74657366666F2820, 0xEA0000000000203ALL);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v8);

  MEMORY[0x266771550](0x203A657A6973202CLL, 0xE800000000000000);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v9);

  MEMORY[0x266771550](0x6D6E67696C61202CLL, 0xED0000203A746E65);
  *v14 = *(a3 + 60);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v10);

  MEMORY[0x266771550](0x6C6269736976202CLL, 0xEB00000000203A65);
  if (a4)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a4)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x266771550](v11, v12);

  MEMORY[0x266771550](41, 0xE100000000000000);
  return *&v14[4];
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t type metadata accessor for SGREMaterial(uint64_t a1)
{
  result = type metadata singleton initialization cache for SGREMaterial;
  if (!type metadata singleton initialization cache for SGREMaterial)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SGREMaterial(uint64_t a1)
{
  result = type metadata accessor for SHA512Digest();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t OrderedSet.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = specialized OrderedSet.union(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

{
  v6 = specialized OrderedSet.union(_:)(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t OrderedSet.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized OrderedSet.formUnion(_:)(a1, a2, a3);
}

{
  v6[0] = a1;
  v6[1] = a2;
  WitnessTable = swift_getWitnessTable();
  OrderedSet.append<A>(contentsOf:)(v6, a3, a3, WitnessTable);
}

uint64_t OrderedSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v27 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v17 = OrderedSet.init()(v16);
  v28 = v17;
  v29 = v18;
  v19 = *(a4 + 16);
  if (v19)
  {
    v25[1] = a3;
    for (i = 0; i != v19; ++i)
    {
      ContiguousArray.subscript.getter();
      (*(v10 + 32))(v12, v15, a5);
      if (OrderedSet.contains(_:)(v12, v26, v27, a5, a6))
      {
        v22 = type metadata accessor for OrderedSet(0, a5, a6, v21);
        OrderedSet._appendNew(_:)(v12, v22);
      }

      (*(v10 + 8))(v12, a5);
    }

    return v28;
  }

  else
  {
    v24 = v17;

    return v24;
  }
}

uint64_t OrderedSet.intersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = ContiguousArray.count.getter();
  v11 = 0;
  type metadata accessor for OrderedSet(0, a4, a6, v9);
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v8, partial apply for closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:));
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v11);
  __break(1u);
  return result;
}

uint64_t OrderedSet.symmetricDifference(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = ContiguousArray.count.getter();
  v11 = 0;
  type metadata accessor for OrderedSet(0, a5, a6, v9);
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v8, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v11);
  __break(1u);
  return result;
}

uint64_t OrderedSet.formUnion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a5(a1, a2, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t OrderedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t, void, uint64_t))
{
  result = a5(a1, *v5, v5[1], *(a2 + 16), a3, *(a2 + 24), a4);
  *v5 = result;
  v5[1] = v7;
  return result;
}

Swift::Int closure #1 in OrderedSet.intersection<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v54 = a8;
  v61 = a7;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v49 = a9;
  v50 = a1;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v55 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v48 - v22;
  v24 = *(v55 + 2);
  v53 = a6;
  v24(v19, v56, a6, v21);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v23;
  v56 = AssociatedTypeWitness;
  v54 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v52 = *(v11 + 48);
  v53 = v11 + 48;
  if (v52(v16, 1, a5) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v55, v56);
    v26 = *v50;
    v27 = v50[1];
    v28 = v50[2];
    v29 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
    v30 = v57;

    v31 = v58;

    result = OrderedSet._extractSubset(using:extraCapacity:)(v26, v27, v28, v29, v30, v31, a5, v61);
    v33 = v49;
    *v49 = result;
    v33[1] = v34;
    return result;
  }

  v36 = *(v11 + 32);
  v35 = v11 + 32;
  v51 = v36;
  while (1)
  {
    v37 = v51(v13, v16, a5);
    MEMORY[0x28223BE20](v37);
    v38 = v61;
    *(&v48 - 6) = a5;
    *(&v48 - 5) = v38;
    v39 = v58;
    *(&v48 - 4) = v57;
    *(&v48 - 3) = v39;
    *(&v48 - 2) = v13;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMd, &_sSiSg5index_11ShaderGraph10_HashTableV6BucketV6buckettMR);
    result = _ss15ContiguousArrayV23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedSet._find_inlined(_:), (&v48 - 8), v39, a5, v40, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v41);
    if (v60)
    {
      goto LABEL_4;
    }

    v42 = (v59 >> 3) & 0x1FFFFFFFFFFFFFF8;
    v43 = 1 << v59;
    v44 = *(*v50 + v42);
    *(*v50 + v42) = v44 | (1 << v59);
    if ((v44 & v43) != 0)
    {
      goto LABEL_4;
    }

    v45 = v50[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      break;
    }

    v50[2] = v47;
LABEL_4:
    (*(v35 - 24))(v13, a5);
    dispatch thunk of IteratorProtocol.next()();
    if (v52(v16, 1, a5) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OrderedSet.symmetricDifference(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = ContiguousArray.count.getter();
  type metadata accessor for OrderedSet(0, a6, a7, v10);
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v9, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  if (!v12)
  {
    __break(1u);
  }

  result = outlined consume of OrderedSet<Input>?(0, 0);
  __break(1u);
  return result;
}

Swift::Int closure #1 in closure #1 in OrderedSet.symmetricDifference(_:)@<X0>(unint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v64 = a9;
  v70 = a3;
  v71 = a8;
  v68 = a1;
  v69 = a5;
  v66 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v20 = ContiguousArray.count.getter();
  v67 = a2;
  _UnsafeBitset.insertAll(upTo:)(v20);
  v74 = a6;
  v21 = *(a6 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = (v66 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      v24 = OrderedSet._find(_:)(v19, v70, a4, a7, v71);
      v26 = v25;
      (*v23)(v19, a7);
      if ((v26 & 1) == 0)
      {
        v27 = (v24 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v28 = *(*v67 + v27);
        *(*v67 + v27) = v28 & ~(1 << v24);
        if ((v28 & (1 << v24)) != 0)
        {
          v29 = v67[2];
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v30)
          {
            __break(1u);
            break;
          }

          v67[2] = v31;
        }
      }

      ++v22;
    }

    while (v21 != v22);
  }

  v32 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v32);
  v33 = *(a4 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = (v66 + 8);
    do
    {
      ContiguousArray.subscript.getter();
      v36 = OrderedSet._find(_:)(v16, v69, v74, a7, v71);
      v38 = v37;
      result = (*v35)(v16, a7);
      if ((v38 & 1) == 0)
      {
        v40 = (v36 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v41 = *(*v68 + v40);
        *(*v68 + v40) = v41 & ~(1 << v36);
        if ((v41 & (1 << v36)) != 0)
        {
          v42 = v68[2];
          v30 = __OFSUB__(v42, 1);
          v43 = (v42 - 1);
          if (v30)
          {
            goto LABEL_30;
          }

          v68[2] = v43;
        }
      }

      ++v34;
    }

    while (v33 != v34);
  }

  v44 = v68;
  v46 = *v67;
  v45 = v67[1];
  v47 = v67[2];
  v48 = v68[2];
  v49 = v70;

  result = OrderedSet._extractSubset(using:extraCapacity:)(v46, v45, v47, v48, v49, a4, a7, v71);
  v72 = result;
  v73 = v50;
  v51 = *v44;
  v52 = v44[1];
  if (v52 < 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = *v51;
  }

  v54 = v65;
  v55 = 0;
  for (i = (v66 + 8); v53; result = (*i)(v54, a7))
  {
    v53 &= v53 - 1;
LABEL_26:
    ContiguousArray.subscript.getter();
    v60 = type metadata accessor for OrderedSet(0, a7, v71, v59);
    OrderedSet._appendNew(_:)(v54, v60);
  }

  v57 = v55;
  while (1)
  {
    v55 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v55 >= v52)
    {
      v61 = v73;
      v62 = v64;
      *v64 = v72;
      v62[1] = v61;
      return result;
    }

    v58 = v51[v55];
    ++v57;
    if (v58)
    {
      v53 = (v58 - 1) & v58;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t OrderedSet.formIntersection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, void))
{
  result = a4(a1, a2, *v4, v4[1], *(a3 + 16), *(a3 + 24));
  *v4 = result;
  v4[1] = v6;
  return result;
}

unint64_t closure #1 in OrderedSet.symmetricDifference<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v61 = a9;
  AssociatedConformanceWitness = a8;
  v66 = a4;
  v67 = a2;
  v68 = a3;
  v63 = a1;
  v70 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v60 - v15;
  v16 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - v17;
  v19 = *(a6 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v60 - v24;
  v75 = a7;
  v73 = OrderedSet.init()(a5);
  v74 = v26;
  v27 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v27);
  (*(v19 + 16))(v22, v66, a6);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = v25;
  v28 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v29 = *(v70 + 48);
  if (v29(v18, 1, a5) != 1)
  {
    v64 = *(v70 + 32);
    v49 = (v70 + 8);
    v64(v13, v18, a5);
    while (1)
    {
      v51 = v75;
      result = OrderedSet._find(_:)(v13, v67, v68, a5, v75);
      if (v53)
      {
        v50 = type metadata accessor for OrderedSet(0, a5, v51, v52);
        OrderedSet._append(_:)(v13, v50);
      }

      else
      {
        v54 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v55 = *(*v63 + v54);
        *(*v63 + v54) = v55 & ~(1 << result);
        if ((v55 & (1 << result)) != 0)
        {
          v56 = v63[2];
          v57 = __OFSUB__(v56, 1);
          v58 = v56 - 1;
          if (v57)
          {
            goto LABEL_18;
          }

          v63[2] = v58;
        }
      }

      (*v49)(v13, a5);
      dispatch thunk of IteratorProtocol.next()();
      if (v29(v18, 1, a5) == 1)
      {
        break;
      }

      v64(v13, v18, a5);
    }
  }

  (*(v62 + 8))(v66, v28);
  v30 = *v63;
  v31 = v63[1];
  v32 = v63[2];
  v33 = v74;
  v34 = v67;

  v35 = v68;

  v36 = ContiguousArray.count.getter();
  result = OrderedSet._extractSubset(using:extraCapacity:)(v30, v31, v32, v36, v34, v35, a5, v75);
  v71 = result;
  v72 = v38;
  v68 = *(v33 + 16);
  if (v68)
  {
    v39 = 0;
    v40 = v33 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    while (v39 < *(v33 + 16))
    {
      v41 = v33;
      v42 = v69;
      v43 = v70;
      (*(v70 + 16))(v69, v40 + *(v70 + 72) * v39++, a5);
      v45 = type metadata accessor for OrderedSet(0, a5, v75, v44);
      OrderedSet._appendNew(_:)(v42, v45);
      v46 = *(v43 + 8);
      v33 = v41;
      result = v46(v42, a5);
      if (v68 == v39)
      {

        v47 = v71;
        v48 = v72;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v47 = result;
    v48 = v38;

LABEL_16:

    v59 = v61;
    *v61 = v47;
    v59[1] = v48;
  }

  return result;
}

uint64_t OrderedSet._subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (ContiguousArray.count.getter() < 1)
  {
    v12 = OrderedSet.init()(a4);

    return v12;
  }

  v8 = ContiguousArray.count.getter();
  v14 = &v14;
  MEMORY[0x28223BE20](v8);
  v15 = 0;
  v16 = 0;
  MEMORY[0x28223BE20](v9);
  type metadata accessor for OrderedSet(0, a4, a6, v10);
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v8, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  v11 = v16;
  if (v16)
  {
    v12 = v15;

    outlined consume of OrderedSet<Input>?(v12, v11);
    return v12;
  }

  __break(1u);

  result = outlined consume of OrderedSet<Input>?(v15, v16);
  __break(1u);
  return result;
}

uint64_t OrderedSet.subtracting(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = type metadata accessor for OrderedSet(0, a5, a6, a4);
  swift_getWitnessTable();
  return OrderedSet._subtracting<A>(_:)(v12, a3, a4, a5, v10, a6);
}

uint64_t OrderedSet.subtract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v11[0] = a1;
  v11[1] = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getWitnessTable();
  result = OrderedSet._subtracting<A>(_:)(v11, v5, v6, v7, a3, v8);
  *v3 = result;
  v3[1] = v10;
  return result;
}

unint64_t closure #1 in OrderedSet._subtracting<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, unint64_t *a9@<X8>)
{
  v49 = a9;
  v53 = a8;
  v54 = a4;
  v57 = a7;
  v55 = a2;
  v50 = *(a5 - 8);
  v51 = a1;
  MEMORY[0x28223BE20](a1);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v48 - v22;
  v56 = a3;
  v24 = ContiguousArray.count.getter();
  _UnsafeBitset.insertAll(upTo:)(v24);
  (*(v17 + 16))(v20, v54, a6);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v23;
  v54 = AssociatedTypeWitness;
  v52 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v26 = v50;
  v27 = *(v50 + 48);
  if (v27(v16, 1, a5) != 1)
  {
    v37 = *(v26 + 32);
    v38 = (v26 + 8);
    v37(v13, v16, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v13, v55, v56, a5, v57);
      if ((v39 & 1) == 0)
      {
        v40 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v41 = *(*v51 + v40);
        *(*v51 + v40) = v41 & ~(1 << result);
        if ((v41 & (1 << result)) != 0)
        {
          v42 = v51[2];
          v43 = __OFSUB__(v42, 1);
          v44 = v42 - 1;
          if (v43)
          {
            __break(1u);
            return result;
          }

          v51[2] = v44;
          if (!v44)
          {
            v45 = OrderedSet.init()(a5);
            v47 = v46;
            (*v38)(v13, a5);
            (*(v48 + 8))(v53, v54);
            v35 = v47;
            result = v45;
            goto LABEL_3;
          }
        }
      }

      (*v38)(v13, a5);
      dispatch thunk of IteratorProtocol.next()();
      if (v27(v16, 1, a5) == 1)
      {
        break;
      }

      v37(v13, v16, a5);
    }
  }

  (*(v48 + 8))(v53, v54);
  v28 = *v51;
  v29 = v51[1];
  v30 = v51[2];
  v31 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v32 = v55;

  v33 = v56;

  result = OrderedSet._extractSubset(using:extraCapacity:)(v28, v29, v30, v31, v32, v33, a5, v57);
LABEL_3:
  v36 = v49;
  *v49 = result;
  v36[1] = v35;
  return result;
}

uint64_t specialized OrderedSet.formUnion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.append<A>(contentsOf:)(v6, a3, a3, WitnessTable);
}

uint64_t specialized OrderedSet.union(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for OrderedSet(0, a5, a6, a4);
  v12[0] = a1;
  v12[1] = a2;
  WitnessTable = swift_getWitnessTable();
  OrderedSet.append<A>(contentsOf:)(v12, v8, v8, WitnessTable);
  return a3;
}

uint64_t specialized OrderedSet.union<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for OrderedSet(0, a4, a6, a4);
  OrderedSet.append<A>(contentsOf:)(a1, v10, a5, a7);
  return a2;
}

uint64_t specialized OrderedSet.symmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = ContiguousArray.count.getter();
  v11 = 0;
  type metadata accessor for OrderedSet(0, a4, a6, v9);
  specialized static _UnsafeBitset._withTemporaryBitset(capacity:run:)(v8, closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:run:)partial apply);
  __break(1u);

  result = outlined consume of OrderedSet<Input>?(0, v11);
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet.formSymmetricDifference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized OrderedSet.symmetricDifference<A>(_:)(a1, *v3, v3[1], *(a2 + 16), a3, *(a2 + 24));
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph7NodeDefV_G_SS_AH17BuiltInDefinitionVts5NeverOTg504_s11e7Graph22ijk12StoreC07nodeh12F0AcA04NodehQ30V_tcfcSS_AA0cdE0VtAA0iH0VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v43 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v43;
  v47 = v3 + 64;
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v5 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v33 = v3 + 72;
    v34 = v1;
    v6 = *(v3 + 36);
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v47 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      v35 = v6;
      v9 = *(v3 + 56) + 152 * v5;
      v10 = *(v9 + 16);
      v44[0] = *v9;
      v44[1] = v10;
      v11 = *(v9 + 80);
      v13 = *(v9 + 32);
      v12 = *(v9 + 48);
      v44[4] = *(v9 + 64);
      v44[5] = v11;
      v44[2] = v13;
      v44[3] = v12;
      v15 = *(v9 + 112);
      v14 = *(v9 + 128);
      v16 = *(v9 + 96);
      v45 = *(v9 + 144);
      v44[7] = v15;
      v44[8] = v14;
      v44[6] = v16;
      v46 = *v9;
      v37 = *v9;
      outlined init with copy of NodeDef(v44, v36);
      outlined init with copy of String(&v46, v36);
      specialized BuiltInDefinition.init(nodeDef:)(v44, v38);
      result = outlined destroy of NodeDef(v44);
      v41 = v38[1];
      v42 = v38[2];
      v39 = v37;
      v40 = v38[0];
      v43 = v2;
      v17 = v3;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v2 = v43;
      }

      *(v2 + 16) = v19 + 1;
      v20 = (v2 + (v19 << 6));
      v21 = v39;
      v22 = v40;
      v23 = v42;
      v20[4] = v41;
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v24 = 1 << *(v17 + 32);
      if (v5 >= v24)
      {
        goto LABEL_25;
      }

      v25 = *(v47 + 8 * v8);
      if ((v25 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v17;
      if (v35 != *(v17 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v5 & 0x3F));
      if (v26)
      {
        v5 = __clz(__rbit64(v26)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v27 = v34;
      }

      else
      {
        v28 = v8 << 6;
        v29 = v8 + 1;
        v27 = v34;
        v30 = (v33 + 8 * v8);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = outlined consume of [String : String].Index._Variant(v5, v35, 0);
            v5 = __clz(__rbit64(v31)) + v28;
            goto LABEL_18;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v5, v35, 0);
        v5 = v24;
      }

LABEL_18:
      if (v7 == v27)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(v3 + 36);
        ++v7;
        if (v5 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t BuiltInDefinition.ReservedNames.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746C757365725F5FLL;
  }

  else
  {
    return 0x656D756772615F5FLL;
  }
}

uint64_t BuiltInDefinition.isArgumentsDefinition.getter()
{
  if (*v0 == 0x656D756772615F5FLL && v0[1] == 0xEB0000000073746ELL)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t BuiltInDefinition.isResultDefinition.getter()
{
  if (*v0 == 0x746C757365725F5FLL && v0[1] == 0xE900000000000073)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *BuiltInDefinitionStore.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BuiltInDefinitionStore.shared;
}

double BuiltInDefinition.init(name:inputs:outputs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_265F1F680;
  return result;
}

BOOL BuiltInDefinition.isDotNode.getter()
{
  v0._countAndFlagsBits = 0x5F746F645F444ELL;
  v0._object = 0xE700000000000000;
  return String.hasPrefix(_:)(v0);
}

BOOL BuiltInDefinition.isMatXConstantNode.getter()
{
  v0._countAndFlagsBits = 0x74736E6F635F444ELL;
  v0._object = 0xEC0000005F746E61;
  return String.hasPrefix(_:)(v0);
}

double BuiltInDefinitionStore.definition(named:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized OrderedDictionary.subscript.getter(a1, a2, v3[5], v3[6], v3[7], v7);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  result = *&v8;
  a3[2] = v8;
  return result;
}

uint64_t BuiltInDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BuiltInDefinition.availability.getter()
{
  v1 = *(v0 + 32);
  outlined copy of MaterialXAvailability(v1, *(v0 + 40));
  return v1;
}

uint64_t static BuiltInDefinition.InputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      v12 = 0;
      return v12 & 1;
    }

LABEL_7:
    v12 = a4 ^ a8 ^ 1;
    return v12 & 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    goto LABEL_7;
  }

  return v12 & 1;
}

void BuiltInDefinition.InputSpec.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  String.hash(into:)();
  MEMORY[0x266772770](a4);
  Hasher._combine(_:)(a5 & 1);
}

Swift::Int BuiltInDefinition.InputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](a3);
  Hasher._combine(_:)(a4 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.InputSpec()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.InputSpec(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x266772770](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.InputSpec(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.InputSpec(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

BOOL static BuiltInDefinition.OutputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int BuiltInDefinition.OutputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.OutputSpec()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.OutputSpec(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  return MEMORY[0x266772770](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.OutputSpec(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266772770](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.OutputSpec(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

ShaderGraph::BuiltInDefinition::ReservedNames_optional __swiftcall BuiltInDefinition.ReservedNames.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BuiltInDefinition.ReservedNames.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_BuiltInDefinition_ReservedNames___results;
  }

  else
  {
    v4.value = ShaderGraph_BuiltInDefinition_ReservedNames_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition.ReservedNames(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746C757365725F5FLL;
  }

  else
  {
    v3 = 0x656D756772615F5FLL;
  }

  if (v2)
  {
    v4 = 0xEB0000000073746ELL;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x746C757365725F5FLL;
  }

  else
  {
    v5 = 0x656D756772615F5FLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEB0000000073746ELL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition.ReservedNames()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance BuiltInDefinition.ReservedNames(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition.ReservedNames(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance BuiltInDefinition.ReservedNames(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BuiltInDefinition.ReservedNames.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BuiltInDefinition.ReservedNames(uint64_t *a1@<X8>)
{
  v2 = 0x656D756772615F5FLL;
  if (*v1)
  {
    v2 = 0x746C757365725F5FLL;
  }

  v3 = 0xEB0000000073746ELL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

double BuiltInDefinition.init(nodeDef:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized BuiltInDefinition.init(nodeDef:)(a1, v6);
  outlined destroy of NodeDef(a1);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void BuiltInDefinition.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  v2 = v1[2];
  v3 = *(v2 + 16);
  MEMORY[0x266772770](v3);
  if (v3)
  {
    v4 = (v2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 32;

      String.hash(into:)();
      MEMORY[0x266772770](v5);
      Hasher._combine(_:)(v6);

      --v3;
    }

    while (v3);
  }

  v7 = v1[3];
  v8 = *(v7 + 16);
  MEMORY[0x266772770](v8);
  if (v8)
  {
    v9 = (v7 + 48);
    do
    {
      v10 = *v9;
      v9 += 3;

      String.hash(into:)();
      MEMORY[0x266772770](v10);

      --v8;
    }

    while (v8);
  }

  v11 = v1[5];
  switch(v11)
  {
    case 1:
      v12 = 0;
      goto LABEL_13;
    case 2:
      v12 = 1;
      goto LABEL_13;
    case 3:
      v12 = 3;
LABEL_13:
      MEMORY[0x266772770](v12);
      return;
  }

  MEMORY[0x266772770](2);
  if (v11)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int BuiltInDefinition.hashValue.getter()
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BuiltInDefinition()
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BuiltInDefinition(uint64_t a1)
{
  Hasher.init(_seed:)();
  BuiltInDefinition.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BuiltInDefinition(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static BuiltInDefinition.== infix(_:_:)(v7, v8);
}

uint64_t one-time initialization function for shared()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static NodeDefStore.shared;
  v1 = qword_280051428;
  v2 = qword_280051430;
  type metadata accessor for BuiltInDefinitionStore();
  v3 = swift_allocObject();

  result = BuiltInDefinitionStore.init(nodeDefStore:)(v0, v1, v2);
  static BuiltInDefinitionStore.shared = v3;
  return result;
}

uint64_t BuiltInDefinitionStore.__allocating_init(nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BuiltInDefinitionStore.init(nodeDefStore:)(a1, a2, a3);
  return v6;
}

uint64_t static BuiltInDefinitionStore.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t BuiltInDefinitionStore.nodeDefStore.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BuiltInDefinitionStore.init(nodeDefStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  swift_bridgeObjectRetain_n();

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph7NodeDefV_G_SS_AH17BuiltInDefinitionVts5NeverOTg504_s11e7Graph22ijk12StoreC07nodeh12F0AcA04NodehQ30V_tcfcSS_AA0cdE0VtAA0iH0VXEfU_Tf1cn_n(a1);

  swift_bridgeObjectRelease_n();
  v8 = 0;
  *&v9 = MEMORY[0x277D84F90];
  *(&v9 + 1) = MEMORY[0x277D84F90];

  specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v5, specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:), 0, &v8);

  v6 = v9;
  *(v3 + 40) = v8;
  *(v3 + 48) = v6;
  return v3;
}

__n128 BuiltInDefinitionStore.defaultValue(for:on:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v29 = 0u;
  if (*(v6 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(*a2, a2[1]);
    if (v9)
    {
      v27 = v4;
      v10 = *(*(v6 + 56) + 152 * v8 + 128);
      v11 = (a1 + OBJC_IVAR___SGInput_name);
      v12 = (v10 + 40);
      v13 = *(v10 + 16) + 1;
      while (--v13)
      {
        v14 = v12[2];
        v15 = v12[3];
        if (*(v12 - 1) != *v11 || *v12 != v11[1])
        {
          v12 += 8;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        if (!v15)
        {

          break;
        }

        v17 = OBJC_IVAR___SGInput_type;
        swift_beginAccess();
        v18 = *(a1 + v17);

        v19 = specialized SGDataType.materialXDataType.getter(v18);

        specialized SGDataTypeStorage.init(materialXValue:type:)(v14, v15, v19, v30);
        if (v27)
        {

          return result;
        }

        v28 = v30[1];
        v29 = v30[0];
        v25 = v30[3];
        v26 = v30[2];
        v21 = v31;

        v24 = v25;
        v23 = v26;
        v22 = v28;
        goto LABEL_17;
      }
    }
  }

  v21 = -1;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_17:
  result = v29;
  *a3 = v29;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  *(a3 + 64) = v21;
  return result;
}

void *BuiltInDefinitionStore.deinit()
{

  return v0;
}

uint64_t BuiltInDefinitionStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double specialized closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  a2[7] = v8;

  outlined copy of MaterialXAvailability(v7, v8);

  return result;
}

BOOL specialized static BuiltInDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(a1[2], a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  switch(v5)
  {
    case 3:
      return v6 == 3;
    case 2:
      return v6 == 2;
    case 1:
      if (v6 == 1)
      {
        return 1;
      }

      break;
    default:
      if ((v6 - 1) >= 3)
      {
        if (v5)
        {
          if (v6 && (a1[4] == a2[4] && v5 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v6)
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

void specialized BuiltInDefinition.init(nodeDef:)(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v37 = a1[1];
  v38 = *a1;
  v3 = a1[16];
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v40 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v40;
    v6 = v3 + 48;
    do
    {
      v7 = *(v6 - 16);
      v8 = *(v6 - 8);
      v9 = *(v6 + 40);

      v11 = specialized SGDataType.init(_:)(v10);
      *&v40 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v2;
        v16 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v2 = v15;
        v5 = v40;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 32 * v13;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v14 + 48) = v11;
      *(v14 + 56) = v9;
      v6 += 64;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v17 = v2[17];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v36 = v2;
    *&v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v40;
    v20 = v17 + 48;
    do
    {
      v21 = *(v20 - 16);
      v22 = *(v20 - 8);

      v24 = specialized SGDataType.init(_:)(v23);
      *&v40 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v24 = v28;
        v19 = v40;
      }

      *(v19 + 16) = v26 + 1;
      v27 = (v19 + 24 * v26);
      v27[4] = v21;
      v27[5] = v22;
      v27[6] = v24;
      v20 += 64;
      --v18;
    }

    while (v18);
    v2 = v36;
  }

  v29 = v2[7];
  if (v29 && (v2[6] == 0xD000000000000012 && 0x8000000265F341F0 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v30 = 0;
    v31 = 3;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v32 operatingSystemVersion];
    v33 = v41;

    LOBYTE(v41) = 0;
    v42 = v33;
    v43 = 0;
    v34 = v2[18];
    if (v34)
    {

      v30 = specialized static NodeDef.available(for:in:)(0, &v40, v34);
      v31 = v35;
    }

    else
    {
      v30 = v2[14];
      v31 = v2[15];
      outlined copy of MaterialXAvailability(v30, v31);
    }
  }

  *a2 = v38;
  a2[1] = v37;
  a2[2] = v5;
  a2[3] = v19;
  a2[4] = v30;
  a2[5] = v31;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.ReservedNames and conformance BuiltInDefinition.ReservedNames);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [BuiltInDefinition.ReservedNames] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph17BuiltInDefinitionV13ReservedNamesOGMd, &_sSay11ShaderGraph17BuiltInDefinitionV13ReservedNamesOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BuiltInDefinition.ReservedNames] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition and conformance BuiltInDefinition()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition and conformance BuiltInDefinition);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BuiltInDefinition.InputSpec(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for BuiltInDefinition.InputSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Say10Foundation3URLVGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, void *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v16;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v14[0] = *(i - 1);
      v14[1] = v10;

      (a1)(&v15, v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v15;
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v19 = a3 + v8;
      a1(&v20, &v19);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, _OWORD *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v21;
  for (i = (a3 + 64); ; i += 5)
  {
    v9 = *i;
    v10 = *(i - 1);
    v18[0] = *(i - 2);
    v18[1] = v10;
    v19 = v9;

    (a1)(v20, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v20[0];
    v11 = v20[1];
    v21 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v21;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v25;
    for (i = (a3 + 72); ; i += 48)
    {
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v19 = *(i - 40);
      v20 = v9;
      v21 = v10;
      v22 = v11;
      v23 = v12;

      (a1)(v24, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v14 = v24[0];
      v13 = v24[1];
      v25 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v7 = v25;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V6OutputVyAF010SGDataTypeE0V11PersonalityV_GG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v23;
    for (i = (a3 + 64); ; i += 5)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      v18 = *(i - 2);
      v19 = v9;
      v20 = v10;
      v21 = v11;

      (a1)(v22, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v13 = v22[0];
      v12 = v22[1];
      v23 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SS_AHtsAE_pTg5(void (*a1)(_OWORD *__return_ptr, void *, uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v27;
    for (i = (a3 + 40); ; i += 6)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = i[1];
      v12 = *(i + 32);
      v22[0] = v10;
      v22[1] = v9;
      v22[2] = v11;
      v23 = *(i + 1);
      v24 = v12;
      outlined copy of NodePersonality(v10);

      (a1)(v25, v22, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of NodePersonality(v10);

      *&v20[9] = *(v26 + 9);
      v19 = v25[1];
      *v20 = v26[0];
      v18 = v25[0];
      v27 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + (v14 << 6));
      *(v15 + 73) = *&v20[9];
      v15[3] = v19;
      v15[4] = *v20;
      v15[2] = v18;
      if (!--v5)
      {
        return v6;
      }
    }

    outlined consume of NodePersonality(v10);
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo11MTLFunction_pG_SSs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x266772030](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_AH4EdgeVyAN_Gs5NeverOTg5(void (*a1)(_OWORD *__return_ptr, __int128 *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v30;
    for (i = (a3 + 72); ; i += 48)
    {
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;
      v23 = *(i - 40);
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;

      (a1)(v28, &v23);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v22 = v29;
      v20 = v28[3];
      v21 = v28[4];
      v18 = v28[1];
      v19 = v28[2];
      v17 = v28[0];
      v30 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 88 * v15;
      *(v16 + 32) = v17;
      *(v16 + 48) = v18;
      *(v16 + 112) = v22;
      *(v16 + 80) = v20;
      *(v16 + 96) = v21;
      *(v16 + 64) = v19;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SSsAE_pTg5(void (*a1)(void *__return_ptr, void *, uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v25;
    for (i = (a3 + 40); ; i += 6)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = i[1];
      v12 = *(i + 32);
      v21[0] = v10;
      v21[1] = v9;
      v21[2] = v11;
      v22 = *(i + 1);
      v23 = v12;
      outlined copy of NodePersonality(v10);

      (a1)(v24, v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of NodePersonality(v10);

      v13 = v24[0];
      v14 = v24[1];
      v25 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      if (!--v5)
      {
        return v6;
      }
    }

    outlined consume of NodePersonality(v10);
  }

  return v6;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t *a2)
{
  v2 = result;
  if (result >> 62)
  {
LABEL_18:
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266772030](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

LABEL_15:
            lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
            swift_allocError();
            *v16 = xmmword_265F23D80;
            *(v16 + 16) = 6;
            swift_willThrow();
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = (*(*v5 + 160))();
        v9 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_14;
        }

        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }

        v13 = *(*v5 + 112);
        v14 = *(*(v9 + 56) + 8 * v10);
        v15 = v13();
        specialized OrderedDictionary.subscript.setter(v14, v15);

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = __CocoaSet.count.getter();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x266772030](i, a4, a3);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);
          swift_unknownObjectRetain();
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);
        result = swift_unknownObjectRelease();
        if (v4)
        {
          return swift_unknownObjectRelease();
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t MetalStitchingBackend.specializeGetter(for:field:offset:library:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  result = specialized MetalStitchingBackend.specializeGetter(for:field:offset:library:)(a1, *a2, a2[1], a2[2], a2[5], a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t MetalStitchingBackend.init(materialName:programHash:signposter:signpostID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for MetalStitchingBackend(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for OSSignposter();
  (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a7[v13], a6, v14);
}

void *MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v178 = a5;
  v167 = a4;
  v171 = a2;
  v168 = a1;
  v191 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for OSSignpostError();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v159 = &v158 - v13;
  v180 = type metadata accessor for OSSignpostID();
  v14 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v16 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v182 = &v158 - v18;
  MEMORY[0x28223BE20](v19);
  v164 = &v158 - v20;
  MEMORY[0x28223BE20](v21);
  v174 = &v158 - v22;
  MEMORY[0x28223BE20](v23);
  v170 = &v158 - v24;
  v177 = type metadata accessor for MetalStitchingBackend(0);
  MEMORY[0x28223BE20](v177);
  v165 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v169 = &v158 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v158 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v158 - v33);
  v175 = a6;
  v35 = [a6 argumentBuffersSupport];
  v173 = a3;
  if (!v35 || (*(v178 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static DebugConfig.tier1SupportOverrideEnabled == 1)
  {
LABEL_6:
    v176 = 0xD000000000000010;
    v36 = 0x8000000265F34240;
  }

  else
  {
    v176 = 0;
    v36 = 0xE000000000000000;
  }

  v160 = v9;
  v161 = v8;
  v179 = v14;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, logger);
  v38 = v181;
  outlined init with copy of MetalStitchingBackend(v181, v34);
  outlined init with copy of MetalStitchingBackend(v38, v30);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  v41 = os_log_type_enabled(v39, v40);
  v162 = v16;
  v158 = v11;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v187 = v43;
    *v42 = 141558787;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    v44 = *v34;
    v45 = v34[1];

    outlined destroy of MetalStitchingBackend(v34);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v187);

    *(v42 + 14) = v46;
    *(v42 + 22) = 2080;
    v47 = *(v30 + 2);
    v48 = *(v30 + 3);

    outlined destroy of MetalStitchingBackend(v30);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v187);

    *(v42 + 24) = v49;
    *(v42 + 32) = 2080;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v36, &v187);

    *(v42 + 34) = v50;
    _os_log_impl(&dword_265D7D000, v39, v40, "Compiling ShaderGraph material: %{private,mask.hash}s %s %s", v42, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266773120](v43, -1, -1);
    MEMORY[0x266773120](v42, -1, -1);
  }

  else
  {

    outlined destroy of MetalStitchingBackend(v30);
    outlined destroy of MetalStitchingBackend(v34);
  }

  v51 = *(v177 + 24);
  v52 = v179;
  v53 = *(v179 + 16);
  v54 = v181;
  v163 = *(v177 + 28);
  v55 = v170;
  v177 = v179 + 16;
  v176 = v53;
  v53(v170, v181 + v163, v180);
  v56 = v169;
  outlined init with copy of MetalStitchingBackend(v54, v169);
  v166 = v51;
  v57 = OSSignposter.logHandle.getter();
  v58 = static os_signpost_type_t.begin.getter();
  v59 = OS_os_log.signpostsEnabled.getter();
  v60 = v182;
  v61 = v173;
  if (v59)
  {
    v62 = v173;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v187 = v64;
    *v63 = 136315138;
    v65 = *(v56 + 16);
    v66 = *(v56 + 24);

    outlined destroy of MetalStitchingBackend(v56);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v187);
    v52 = v179;

    *(v63 + 4) = v67;
    v68 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v57, v58, v68, "stitchingGraph", "%s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x266773120](v64, -1, -1);
    v69 = v63;
    v61 = v62;
    v60 = v182;
    MEMORY[0x266773120](v69, -1, -1);
  }

  else
  {

    outlined destroy of MetalStitchingBackend(v56);
  }

  v70 = v180;
  v176(v174, v55, v180);
  v169 = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v71 = OSSignpostIntervalState.init(id:isOpen:)();
  v74 = *(v52 + 8);
  v73 = v52 + 8;
  v72 = v74;
  v74(v55, v70);
  v75 = MEMORY[0x277D84F90];
  v188 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So11MTLFunction_pSaySS_SoAH_ptGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v189 = v76;
  v190 = v77;
  if (![v175 argumentBuffersSupport] || (*(v178 + OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport) & 1) != 0)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static DebugConfig.tier1SupportOverrideEnabled == 1)
  {
LABEL_20:
    v78 = v172;
    MetalStitchingBackend.generateFallbackTier1Getters(for:augmenting:library:)(v171, &v188, v61);
    if (v78)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v84 = v172;
    MetalStitchingBackend.generateStructGetters(for:augmenting:library:)(v171, &v188, v61);
    if (v84)
    {
      goto LABEL_31;
    }
  }

  v79 = v168;
  v173 = MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(v168, &v188, v61, v167);
  v172 = v72;
  v171 = 0;
  v178 = v71;
  v80 = (*(*v79 + 120))();
  v183 = v75;
  v81 = *(v80 + 16);
  v179 = v73;
  if (v81)
  {
    v71 = v80;
    v82 = v80 + 32;
    v83 = MEMORY[0x277D84F90];
    v61 = &_s11ShaderGraph17MetalFunctionNode_pMR;
    do
    {
      outlined init with copy of MetalFunctionNode(v82, &v187);
      outlined init with take of MetalFunctionNode(&v187, &v184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalFunctionCallNode();
      if (swift_dynamicCast())
      {
        v55 = v186;
        if (v186)
        {
          MEMORY[0x266771770]();
          if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v83 = v183;
        }
      }

      v82 += 40;
      --v81;
    }

    while (v81);

    v60 = v182;
    if (!(v83 >> 62))
    {
LABEL_35:
      v86 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v86)
      {
        goto LABEL_36;
      }

LABEL_47:

      v55 = v188;
      v71 = v189;

      v97 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

      v98 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

      v86 = v181;
      if (*(v97 + 16) > *(v98 + 16) >> 3)
      {
        v75 = specialized _NativeSet.subtracting<A>(_:)(v97, v98);

        if (!v75[2])
        {
          goto LABEL_52;
        }
      }

      else
      {
        *&v187 = v98;
        specialized Set._subtract<A>(_:)(v97);

        v75 = v187;
        if (!*(v187 + 16))
        {
LABEL_52:

          v61 = [objc_allocWithZone(MEMORY[0x277CD7010]) init];
          v103 = v190;

          specialized _copyCollectionToContiguousArray<A>(_:)(v55, v71, v103);
          v168 = v103;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11MTLFunction_pMd, &_sSo11MTLFunction_pMR);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v61 setFunctions_];

          if (one-time initialization token for debugMode == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_72;
        }
      }

      *&v187 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR, MEMORY[0x277D83B68]);
      lazy protocol witness table accessor for type String and conformance String();
      v99 = Sequence<>.joined(separator:)();
      v101 = v100;

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v102 = v99;
      *(v102 + 8) = v101;
      *(v102 + 16) = 2;
      swift_willThrow();
LABEL_31:

LABEL_32:

      return v75;
    }
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_35;
    }
  }

  v86 = __CocoaSet.count.getter();
  if (!v86)
  {
    goto LABEL_47;
  }

LABEL_36:
  v170 = v83;
  *&v187 = v75;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86 & ~(v86 >> 63), 0);
  if ((v86 & 0x8000000000000000) == 0)
  {
    v87 = 0;
    v88 = v187;
    v89 = v170;
    v90 = v170 & 0xC000000000000001;
    do
    {
      if (v90)
      {
        v91 = MEMORY[0x266772030](v87, v89);
      }

      else
      {
        v91 = *(v89 + 8 * v87 + 32);
      }

      v92 = *(v91 + 40);
      v93 = *(v91 + 48);

      *&v187 = v88;
      v95 = *(v88 + 16);
      v94 = *(v88 + 24);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
        v89 = v170;
        v88 = v187;
      }

      ++v87;
      *(v88 + 16) = v95 + 1;
      v96 = v88 + 16 * v95;
      *(v96 + 32) = v92;
      *(v96 + 40) = v93;
      v60 = v182;
    }

    while (v86 != v87);
    goto LABEL_47;
  }

  __break(1u);
LABEL_72:
  swift_once();
LABEL_53:
  swift_beginAccess();
  v105 = static DebugConfig.debugMode;

  v106 = specialized Set.contains(_:)(5, v105);

  v170 = v71;
  if (v106)
  {
    v107 = [v61 functions];
    v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x28223BE20](v109);
    *(&v158 - 2) = v86;
    v110 = v171;
    v111 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo11MTLFunction_pG_SSs5NeverOTg5(partial apply for closure #3 in MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:), (&v158 - 4), v108);
    v171 = v110;

    v184 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v112 = BidirectionalCollection<>.joined(separator:)();
    v114 = v113;
    v86 = v181;

    v184 = 0;
    v185 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v116 = *v86;
    v115 = *(v86 + 8);

    v184 = v116;
    v185 = v115;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](*(v86 + 16), *(v86 + 24));
    MEMORY[0x266771550](0xD000000000000010, 0x8000000265F34220);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v112, v114, v184, v185, 7633012, 0xE300000000000000);
  }

  v117 = v165;
  v118 = v164;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingGraph, 0x277CD6DD8);
  v119 = Array._bridgeToObjectiveC()().super.isa;

  v173 = v61;
  [v61 setFunctionGraphs_];

  v120 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v121 = v118;
  v122 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    v123 = v159;
    checkForErrorAndConsumeState(state:)();

    v124 = v160;
    v125 = v161;
    if ((*(v160 + 88))(v123, v161) == *MEMORY[0x277D85B00])
    {
      v126 = "[Error] Interval already ended";
    }

    else
    {
      (*(v124 + 8))(v123, v125);
      v126 = "";
    }

    v127 = swift_slowAlloc();
    *v127 = 0;
    v121 = v164;
    v128 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v120, v122, v128, "stitchingGraph", v126, v127, 2u);
    MEMORY[0x266773120](v127, -1, -1);
    v117 = v165;
    v86 = v181;
  }

  v129 = v180;
  v172(v121, v180);
  v176(v60, v86 + v163, v129);
  v130 = OSSignposter.logHandle.getter();
  v131 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    v133 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v130, v131, v133, "waitingOnMetal", "makeLibrary_stitchedDescriptor", v132, 2u);
    v134 = v132;
    v86 = v181;
    MEMORY[0x266773120](v134, -1, -1);
  }

  v135 = v180;
  v176(v174, v60, v180);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v172(v60, v135);
  v184 = 0;
  v136 = v173;
  v137 = [v175 newLibraryWithStitchedDescriptor:v173 error:&v184];
  v138 = v184;
  if (!v137)
  {
    v75 = v184;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_32;
  }

  v75 = v137;
  outlined init with copy of MetalStitchingBackend(v86, v117);
  v139 = v138;
  v140 = v117;
  v141 = OSSignposter.logHandle.getter();
  v142 = v162;
  OSSignpostIntervalState.signpostID.getter();
  v143 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v182 = v55;

    v144 = v158;
    checkForErrorAndConsumeState(state:)();

    v145 = v160;
    v146 = v161;
    if ((*(v160 + 88))(v144, v161) == *MEMORY[0x277D85B00])
    {
      v147 = 0;
      v148 = 0;
      v149 = "[Error] Interval already ended";
    }

    else
    {
      (*(v145 + 8))(v144, v146);
      v149 = "%s";
      v148 = 2;
      v147 = 1;
    }

    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v184 = v151;
    *v150 = v148;
    *(v150 + 1) = v147;
    *(v150 + 2) = 2080;
    v152 = v165;
    v153 = *(v165 + 2);
    v154 = *(v165 + 3);

    outlined destroy of MetalStitchingBackend(v152);
    v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v184);

    *(v150 + 4) = v155;
    v156 = v162;
    v157 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v141, v143, v157, "waitingOnMetal", v149, v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v151);
    MEMORY[0x266773120](v151, -1, -1);
    MEMORY[0x266773120](v150, -1, -1);

    v172(v156, v180);
  }

  else
  {

    v172(v142, v180);
    outlined destroy of MetalStitchingBackend(v140);
  }

  return v75;
}

uint64_t MetalStitchingBackend.materialName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetalStitchingBackend.programHash.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetalStitchingBackend.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetalStitchingBackend(0) + 24);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MetalStitchingBackend.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetalStitchingBackend(0) + 28);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void MetalStitchingBackend.generateStructGetters(for:augmenting:library:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v62[3] = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalDataType.Struct();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();

    v9 = calculateOffsets(for:)(v8);

    v54 = v9[2];
    if (!v54)
    {
LABEL_18:

      return;
    }

    v55 = v7;
    v10 = 0;
    a1 = v9 + 5;
    v53 = v9;
    while (v10 < v9[2])
    {
      v11 = *(a1 - 1);
      v12 = a1[1];
      v13 = *(a1 + 10);
      v14 = one-time initialization token for typeToLookupFunctionMap;
      v59 = *a1;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      if (v14 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = static MetalStitchingBackend.typeToLookupFunctionMap;
      if (!*(static MetalStitchingBackend.typeToLookupFunctionMap + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v17 & 1) == 0))
      {
        swift_endAccess();
        v44 = *(v55 + 32);
        v60 = *(v55 + 24);
        v61 = v44;

        MEMORY[0x266771550](46, 0xE100000000000000);
        MEMORY[0x266771550](v11, v59);
        v45 = MEMORY[0x266771550](10272, 0xE200000000000000);
        v46 = (*(*v12 + 136))(v45);
        MEMORY[0x266771550](v46);

        MEMORY[0x266771550](41, 0xE100000000000000);
        v47 = v60;
        v48 = v61;
        lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
        swift_allocError();
        *v49 = v47;
        *(v49 + 8) = v48;
        *(v49 + 16) = 4;
        swift_willThrow();

LABEL_21:

        swift_bridgeObjectRelease_n();
        return;
      }

      v58 = v4;
      v18 = (*(v15 + 56) + 16 * v16);
      v19 = v18[1];
      v57 = *v18;
      swift_endAccess();
      v20 = v12[4];
      v60 = v12[3];
      v61 = v20;
      v21 = lazy protocol witness table accessor for type String and conformance String();

      v22 = MEMORY[0x277D837D0];
      v60 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v61 = v23;
      v51 = v21;
      v52 = v21;
      v50 = v21;
      v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v26 = v25;

      v27 = *(v55 + 32);
      v60 = *(v55 + 24);
      v61 = v27;

      MEMORY[0x266771550](95, 0xE100000000000000);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v28);

      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v24, v26);

      v30 = v60;
      v29 = v61;
      v31 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
      v32 = MEMORY[0x266771450](v30, v29);
      [v31 setSpecializedName_];

      v33 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
      [v31 setConstantValues_];

      v34 = MEMORY[0x266771450](v57, v19);

      [v31 setName_];

      LODWORD(v60) = v13;
      v35 = [v31 constantValues];
      if (v35)
      {
        v36 = v35;
        [v35 setConstantValue:&v60 type:33 atIndex:100];
      }

      v37 = MetalStitchingBackend.makeFunction(_:descriptor:)(a3, v31);
      v4 = v58;
      if (v58)
      {

        goto LABEL_21;
      }

      v38 = v37;
      ++v10;

      specialized OrderedDictionary.subscript.setter(v38, v30, v29);
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      a1 += 7;
      v9 = v53;
      if (v54 == v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_23:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, logger);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v62[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[3], a1[4], v62);
    _os_log_impl(&dword_265D7D000, v40, v41, "Can not generate getters for a non-struct type %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266773120](v43, -1, -1);
    MEMORY[0x266773120](v42, -1, -1);
  }
}

uint64_t MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v29 = a3;
  v30 = a2;
  MetalShaderProgram.terminalNodes()();
  v11 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  if (v12)
  {
    v26 = v5;
    v27 = a4;
    v28 = v4;
    v13 = v10 + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v13, v37);
      outlined init with take of MetalFunctionNode(v37, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
      type metadata accessor for MetalFunctionDefinitionNode();
      if ((swift_dynamicCast() & 1) != 0 && v38)
      {
        MEMORY[0x266771770]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    a4 = v27;
    v7 = v28;
    v11 = MEMORY[0x277D84F90];
    v6 = v26;
  }

  else
  {
  }

  *&v37[0] = specialized Array._copyToContiguousArray()(v14);
  specialized MutableCollection<>.sort(by:)(v37);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v15 = *&v37[0];
    v38 = v11;
    v35 = 0;
    v36 = 0xE000000000000000;
    v34 = 0;
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC17OrderedDictionaryVySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_V_SSTt0g5Tf4g_n(v11);
    MEMORY[0x28223BE20](v33);
    v25[2] = a1;
    v25[3] = &v33;
    v25[4] = &v34;
    v25[5] = v7;
    v25[6] = v29;
    v25[7] = v30;
    v25[8] = a4;
    v25[9] = &v35;
    v25[10] = &v38;
    specialized Sequence.forEach(_:)(partial apply for closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v25, v15);

    if (one-time initialization token for debugMode != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static DebugConfig.debugMode;

    v17 = specialized Set.contains(_:)(3, v16);

    if (v17)
    {
      v18 = v35;
      v19 = v36;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v20 = v7;
      v21 = *v7;
      v22 = v20[1];

      v31 = v21;
      v32 = v22;
      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v20[2], v20[3]);
      MEMORY[0x266771550](0x696863746974735FLL, 0xEE007473694C676ELL);
      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v18, v19, v31, v32, 7633012, 0xE300000000000000);
    }

    v23 = v38;

    return v23;
  }

  return result;
}

void closure #3 in MetalStitchingBackend.compile(program:uniformDefinition:builtInLibrary:additionalLibraries:options:device:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = MetalStitchingBackend.mtlFunctionHash(_:)(*a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = [v4 name];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v28 = v10;
    v29 = v12;
    MEMORY[0x266771550](8250, 0xE200000000000000);
    v13 = v7;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    swift_unknownObjectRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      v30 = v2;
      v19 = [v4 name];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v28);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_265D7D000, v15, v16, "Unable to obtain hash for function %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266773120](v18, -1, -1);
      MEMORY[0x266773120](v17, -1, -1);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v28 = 0xD000000000000016;
    v29 = 0x8000000265F34260;
    v24 = [v4 name];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v26;

    v13 = v25;
  }

  MEMORY[0x266771550](v13, v8);

  v27 = v29;
  *a2 = v28;
  a2[1] = v27;
}

void *MetalStitchingBackend.mtlFunctionHash(_:)(uint64_t a1)
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    swift_unknownObjectRetain();
    [v1 bitCodeHash];
    v12 = MEMORY[0x277D84F90];
    v2 = 32;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 32, 0);
    v3 = v12;
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    do
    {
      v4 = String.init<A>(_:radix:uppercase:)();
      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v5;
      ++v2;
    }

    while (v2 != 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v1 = BidirectionalCollection<>.joined(separator:)();

    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t *MetalStitchingBackend.typeToLookupFunctionMap.unsafeMutableAddressor()
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  return &static MetalStitchingBackend.typeToLookupFunctionMap;
}

uint64_t MetalStitchingBackend.makeFunction(_:descriptor:)(void *a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v33[4] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static DebugConfig.debugMode;

  v12 = specialized Set.contains(_:)(9, v11);

  if (v12)
  {
    v13 = type metadata accessor for MetalStitchingBackend(0);
    v14 = *(v8 + 16);
    v15 = v2 + *(v13 + 24);
    v30 = v7;
    v14(v10, v15, v7);
    (*(v4 + 16))(v6, v2 + *(v13 + 28), v3);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    v29 = v3;
    v3 = v18;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v3, v19, "buildMetalFunction", "makeFunction_d", v16, 2u);
    v33[0] = 0;
    v20 = [v31 newFunctionWithDescriptor:v32 error:v33];
    if (v20)
    {
      v3 = v20;
      v21 = v33[0];
      v22 = static os_signpost_type_t.end.getter();
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v22, v23, "buildMetalFunction", "makeFunction_d", v16, 2u);

      MEMORY[0x266773120](v16, -1, -1);
    }

    else
    {
      v26 = v33[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    (*(v4 + 8))(v6, v29);
    (*(v8 + 8))(v10, v30);
  }

  else
  {
    v33[0] = 0;
    v24 = [v31 newFunctionWithDescriptor:v32 error:v33];
    if (v24)
    {
      v3 = v24;
      v25 = v33[0];
    }

    else
    {
      v27 = v33[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v3;
}

uint64_t MetalStitchingBackend.constantFunction(for:name:type:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v103 = *MEMORY[0x277D85DE8];
  v10 = [objc_allocWithZone(MEMORY[0x277CD6D78]) init];
  v11 = MEMORY[0x266771450](a2, a3);
  [v10 setSpecializedName_];

  v12 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
  [v10 setConstantValues_];

  v13 = *a1;
  switch(*(a1 + 64))
  {
    case 1:
      LOBYTE(v101[0]) = *a1;
      v40 = [v10 constantValues];
      if (v40)
      {
        v41 = v40;
        [v40 setConstantValue:v101 type:49 atIndex:13];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEE0072616863755FLL;
      goto LABEL_113;
    case 2:
      LODWORD(v101[0]) = vmovn_s16(vzip1q_s8(v13, v13)).u32[0];
      v32 = [v10 constantValues];
      if (v32)
      {
        v33 = v32;
        [v32 setConstantValue:v101 type:29 atIndex:1];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEC000000746E695FLL;
      goto LABEL_113;
    case 3:
      LODWORD(v101[0]) = vmovn_s16(vzip1q_s8(v13, v13)).u32[0];
      v34 = [v10 constantValues];
      if (v34)
      {
        v35 = v34;
        [v34 setConstantValue:v101 type:33 atIndex:14];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED0000746E69755FLL;
      goto LABEL_113;
    case 4:
      LOWORD(v101[0]) = *a1;
      v28 = [v10 constantValues];
      if (v28)
      {
        v29 = v28;
        [v28 setConstantValue:v101 type:16 atIndex:15];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED0000666C61685FLL;
      goto LABEL_113;
    case 5:
      LODWORD(v101[0]) = vmovn_s16(vzip1q_s8(v13, v13)).u32[0];
      v62 = [v10 constantValues];
      if (v62)
      {
        v63 = v62;
        [v62 setConstantValue:v101 type:3 atIndex:2];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEE0074616F6C665FLL;
      goto LABEL_113;
    case 6:
    case 0x16:
    case 0x17:
      goto LABEL_2;
    case 7:
      v94 = *a1;
      if (one-time initialization token for float2 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)(a4))
      {
        v22 = 0xEF3274616F6C665FLL;
      }

      else
      {
        if (one-time initialization token for half2 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)(a4) & 1) == 0)
        {
          goto LABEL_2;
        }

        v22 = 0xEE0032666C61685FLL;
      }

      *&v101[0] = v94.i64[0];
      v83 = [v10 constantValues];
      if (!v83)
      {
        goto LABEL_112;
      }

      v82 = v83;
      [v83 setConstantValue:v101 type:4 atIndex:3];
      goto LABEL_111;
    case 8:
      v97 = *a1;
      if (one-time initialization token for float3 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)(a4))
      {
        v61 = 0x74616F6C665FLL;
LABEL_65:
        v22 = v61 & 0xFFFFFFFFFFFFLL | 0xEF33000000000000;
        goto LABEL_109;
      }

      if (one-time initialization token for half3 != -1)
      {
        swift_once();
      }

      if ((MetalDataType.isEqual(to:)(a4) & 1) == 0)
      {
        if (one-time initialization token for color3 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)(a4) & 1) == 0)
        {
          goto LABEL_2;
        }

        v61 = 0x726F6C6F635FLL;
        goto LABEL_65;
      }

      v22 = 0xEE0033666C61685FLL;
LABEL_109:
      v101[0] = v97;
      v84 = [v10 constantValues];
      if (!v84)
      {
        goto LABEL_112;
      }

      v82 = v84;
      [v84 setConstantValue:v101 type:5 atIndex:4];
      goto LABEL_111;
    case 9:
      v93 = *a1;
      if (one-time initialization token for float4 != -1)
      {
        swift_once();
      }

      if (MetalDataType.isEqual(to:)(a4))
      {
        v25 = 0x74616F6C665FLL;
LABEL_13:
        v22 = v25 & 0xFFFFFFFFFFFFLL | 0xEF34000000000000;
        goto LABEL_97;
      }

      if (one-time initialization token for half4 != -1)
      {
        swift_once();
      }

      if ((MetalDataType.isEqual(to:)(a4) & 1) == 0)
      {
        if (one-time initialization token for color4 != -1)
        {
          swift_once();
        }

        if ((MetalDataType.isEqual(to:)(a4) & 1) == 0)
        {
LABEL_2:
          v14 = *(a1 + 48);
          v101[2] = *(a1 + 32);
          v101[3] = v14;
          v102 = *(a1 + 64);
          v15 = *(a1 + 16);
          v101[0] = *a1;
          v101[1] = v15;
          _print_unlocked<A, B>(_:_:)();
          lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
          v16 = swift_allocError();
          *v17 = 0;
          *(v17 + 8) = 0xE000000000000000;
          *(v17 + 16) = 3;
          v18 = v16;
          swift_willThrow();

          return v18;
        }

        v25 = 0x726F6C6F635FLL;
        goto LABEL_13;
      }

      v22 = 0xEE0034666C61685FLL;
LABEL_97:
      v101[0] = v93;
      v81 = [v10 constantValues];
      if (v81)
      {
        v82 = v81;
        [v81 setConstantValue:v101 type:6 atIndex:5];
LABEL_111:
      }

LABEL_112:
      v21 = 0x746E6174736E6F63;
LABEL_113:
      v85 = MEMORY[0x266771450](v21, v22);

      [v10 setName_];

      v18 = MetalStitchingBackend.makeFunction(_:descriptor:)(a5, v10);
      return v18;
    case 0xA:
      LODWORD(v101[0]) = vmovn_s16(vzip1q_s8(v13, v13)).u32[0];
      v26 = [v10 constantValues];
      if (v26)
      {
        v27 = v26;
        [v26 setConstantValue:v101 type:17 atIndex:21];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEE0032666C61685FLL;
      goto LABEL_113;
    case 0xB:
      *&v101[0] = *a1;
      v56 = [v10 constantValues];
      if (v56)
      {
        v57 = v56;
        [v56 setConstantValue:v101 type:18 atIndex:22];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEE0033666C61685FLL;
      goto LABEL_113;
    case 0xC:
      *&v101[0] = *a1;
      v23 = [v10 constantValues];
      if (v23)
      {
        v24 = v23;
        [v23 setConstantValue:v101 type:19 atIndex:23];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xEE0034666C61685FLL;
      goto LABEL_113;
    case 0xD:
      *&v101[0] = *a1;
      v30 = [v10 constantValues];
      if (v30)
      {
        v31 = v30;
        [v30 setConstantValue:v101 type:30 atIndex:18];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED000032746E695FLL;
      goto LABEL_113;
    case 0xE:
      v101[0] = *a1;
      v19 = [v10 constantValues];
      if (v19)
      {
        v20 = v19;
        [v19 setConstantValue:v101 type:31 atIndex:19];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED000033746E695FLL;
      goto LABEL_113;
    case 0xF:
      v101[0] = *a1;
      v36 = [v10 constantValues];
      if (v36)
      {
        v37 = v36;
        [v36 setConstantValue:v101 type:32 atIndex:20];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED000034746E695FLL;
      goto LABEL_113;
    case 0x10:
      v96 = vextq_s8(v13, v13, 8uLL).u64[0];
      v22 = 0x8000000265F34340;
      *&v101[0] = v13.i64[0];
      v58 = [v10 constantValues];
      if (v58)
      {
        v59 = v58;
        [v58 setConstantValue:v101 type:4 atIndex:16];
      }

      *&v101[0] = v96;
      v60 = [v10 constantValues];
      if (!v60)
      {
        goto LABEL_82;
      }

      v49 = v60;
      [v60 setConstantValue:v101 type:4 atIndex:17];
      goto LABEL_81;
    case 0x11:
      v91 = *(a1 + 32);
      v99 = *(a1 + 16);
      v101[0] = *a1;
      v69 = [v10 constantValues];
      if (v69)
      {
        v70 = v69;
        [v69 setConstantValue:v101 type:5 atIndex:6];
      }

      v22 = 0x8000000265F34320;
      v101[0] = v99;
      v71 = [v10 constantValues];
      if (v71)
      {
        v72 = v71;
        [v71 setConstantValue:v101 type:5 atIndex:7];
      }

      v101[0] = v91;
      v73 = [v10 constantValues];
      if (!v73)
      {
        goto LABEL_82;
      }

      v49 = v73;
      [v73 setConstantValue:v101 type:5 atIndex:8];
      goto LABEL_81;
    case 0x12:
      v87 = *(a1 + 48);
      v89 = *(a1 + 32);
      v95 = *(a1 + 16);
      v101[0] = *a1;
      v42 = [v10 constantValues];
      if (v42)
      {
        v43 = v42;
        [v42 setConstantValue:v101 type:6 atIndex:9];
      }

      v101[0] = v95;
      v44 = [v10 constantValues];
      if (v44)
      {
        v45 = v44;
        [v44 setConstantValue:v101 type:6 atIndex:10];
      }

      v22 = 0x8000000265F34300;
      v101[0] = v89;
      v46 = [v10 constantValues];
      if (v46)
      {
        v47 = v46;
        [v46 setConstantValue:v101 type:6 atIndex:11];
      }

      v101[0] = v87;
      v48 = [v10 constantValues];
      if (!v48)
      {
        goto LABEL_82;
      }

      v49 = v48;
      [v48 setConstantValue:v101 type:6 atIndex:12];
LABEL_81:

LABEL_82:
      v21 = 0xD000000000000011;
      goto LABEL_113;
    case 0x13:
      v50 = vzip2_s8(*v13.i8, *v13.i8);
      v22 = 0x8000000265F342E0;
      LODWORD(v101[0]) = vmovn_s16(vzip1q_s8(v13, v13)).u32[0];
      v51 = [v10 constantValues];
      if (v51)
      {
        v53 = v51;
        [v51 setConstantValue:v101 type:4 atIndex:24];
      }

      LODWORD(v101[0]) = vuzp1_s8(v50, v52).u32[0];
      v54 = [v10 constantValues];
      if (!v54)
      {
        goto LABEL_92;
      }

      v55 = v54;
      [v54 setConstantValue:v101 type:4 atIndex:25];
      goto LABEL_91;
    case 0x14:
      v98 = *(a1 + 16);
      v90 = vextq_s8(v13, v13, 8uLL).u64[0];
      *&v101[0] = *a1;
      v64 = [v10 constantValues];
      if (v64)
      {
        v65 = v64;
        [v64 setConstantValue:v101 type:5 atIndex:26];
      }

      v22 = 0x8000000265F342C0;
      *&v101[0] = v90;
      v66 = [v10 constantValues];
      if (v66)
      {
        v67 = v66;
        [v66 setConstantValue:v101 type:5 atIndex:27];
      }

      *&v101[0] = v98;
      v68 = [v10 constantValues];
      if (!v68)
      {
        goto LABEL_92;
      }

      v55 = v68;
      [v68 setConstantValue:v101 type:5 atIndex:28];
      goto LABEL_91;
    case 0x15:
      v100 = *(a1 + 16);
      v88 = vextq_s8(v13, v13, 8uLL).u64[0];
      *&v101[0] = *a1;
      v74 = [v10 constantValues];
      if (v74)
      {
        v75 = v74;
        [v74 setConstantValue:v101 type:6 atIndex:29];
      }

      v92 = vextq_s8(v100, v100, 8uLL).u64[0];
      *&v101[0] = v88;
      v76 = [v10 constantValues];
      if (v76)
      {
        v77 = v76;
        [v76 setConstantValue:v101 type:6 atIndex:30];
      }

      v22 = 0x8000000265F342A0;
      *&v101[0] = v100.i64[0];
      v78 = [v10 constantValues];
      if (v78)
      {
        v79 = v78;
        [v78 setConstantValue:v101 type:6 atIndex:31];
      }

      *&v101[0] = v92;
      v80 = [v10 constantValues];
      if (!v80)
      {
        goto LABEL_92;
      }

      v55 = v80;
      [v80 setConstantValue:v101 type:6 atIndex:32];
LABEL_91:

LABEL_92:
      v21 = 0xD000000000000010;
      goto LABEL_113;
    default:
      LODWORD(v101[0]) = v13.i8[0] & 1;
      v38 = [v10 constantValues];
      if (v38)
      {
        v39 = v38;
        [v38 setConstantValue:v101 type:53 atIndex:0];
      }

      v21 = 0x746E6174736E6F63;
      v22 = 0xED00006C6F6F625FLL;
      goto LABEL_113;
  }
}

uint64_t closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(unint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t *a7, unint64_t a8, uint64_t a9, void *a10)
{
  v198 = a8;
  v200 = a7;
  v16 = *a1;
  v17 = type metadata accessor for MetalFunctionDefinitionNode();
  v208 = v17;
  v209 = &protocol witness table for MetalFunctionDefinitionNode;
  DynamicType = v16;

  MetalShaderProgram.topologicalSort(from:)(&DynamicType);
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  }

  v203 = a2;
  v196 = v17;
  v197 = v18;
  v190 = a5;
  v191 = a3;
  v188 = a4;
  v189 = a6;
  v199 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  v20 = MEMORY[0x277D84F90];
  v21 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA14FunctionNodeIDV_So020MTLFunctionStitchingK0_pSayAI_SoAJ_ptGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v193 = v22;
  v194 = v21;
  v218 = v21;
  v219 = v22;
  v192 = v23;
  v220 = v23;
  v227 = v20;
  v24 = *(*v16 + 224);
  v195 = v16;
  v25 = v24();
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So29MTLFunctionStitchingInputNodeCTt0g5Tf4g_n(v20);
  v27 = v25;
  v217 = v26;
  v202 = *(v25 + 16);
  if (v202)
  {
    v28 = 0;
    v29 = (v25 + 48);
    v201 = v25;
    do
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:

        __swift_project_boxed_opaque_existential_1(&v213, v215);
        DynamicType = swift_getDynamicType();
        v207 = v216;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pXpMd, &_s11ShaderGraph17MetalFunctionNode_pXpMR);
        v167 = String.init<A>(describing:)();
        v169 = v168;
        lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
        swift_allocError();
        *v170 = v167;
        *(v170 + 8) = v169;
        *(v170 + 16) = 1;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v213);
        goto LABEL_139;
      }

      v33 = *(v29 - 2);
      v32 = *(v29 - 1);
      v34 = *v29;
      v35 = objc_allocWithZone(MEMORY[0x277CD6E00]);

      v204 = v34;

      v205 = [v35 initWithArgumentIndex_];
      v36 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      DynamicType = v36;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
      v40 = v36[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_131;
      }

      v43 = v38;
      if (v36[3] >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = DynamicType;
          if ((v38 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v26 = DynamicType;
          if ((v43 & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
        if ((v43 & 1) != (v45 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_154:
          v177 = 0;
          v176 = 213;
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v39 = v44;
        v26 = DynamicType;
        if ((v43 & 1) == 0)
        {
LABEL_15:
          v26[(v39 >> 6) + 8] |= 1 << v39;
          v46 = (v26[6] + 16 * v39);
          *v46 = v33;
          v46[1] = v32;
          *(v26[7] + 8 * v39) = v205;
          v47 = v26[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __swift_destroy_boxed_opaque_existential_1Tm(&v213);

            outlined destroy of SGDataTypeStorage(v223);
            outlined destroy of SGDataTypeStorage(v221);

            goto LABEL_139;
          }

          v26[2] = v49;

          goto LABEL_6;
        }
      }

      v30 = v26[7];
      v31 = *(v30 + 8 * v39);
      *(v30 + 8 * v39) = v205;

LABEL_6:
      ++v28;
      v29 += 3;
      v27 = v201;
    }

    while (v202 != v28);
  }

  v217 = v26;

  v208 = v196;
  v209 = &protocol witness table for MetalFunctionDefinitionNode;
  DynamicType = v195;

  MetalShaderProgram.parameterNodes(connectedTo:)(&DynamicType);
  v51 = v199;
  if (v199)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  }

  v52 = v50;
  __swift_destroy_boxed_opaque_existential_1Tm(&DynamicType);
  specialized Sequence.forEach(_:)(v52, &v217);
  v53 = v197;
  v54 = *(v197 + 16);
  v185 = v26;
  v201 = v54;
  if (!v54)
  {

    v56 = MEMORY[0x277D84F90];
    goto LABEL_117;
  }

  v55 = 0;
  v194 = v197 + 32;
  v178 = v52;
  v179 = 0x8000000265F34280;
  v56 = MEMORY[0x277D84F90];
  v52 = v191;
  while (1)
  {
    if (v55 >= *(v53 + 16))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v203 = v55;
    outlined init with copy of MetalFunctionNode(v194 + 40 * v55, &v213);
    outlined init with copy of MetalFunctionNode(&v213, v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    type metadata accessor for MetalFunctionParameterNode();
    if (!swift_dynamicCast() && !swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v213);

LABEL_26:
    v55 = v203 + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v212);
    if (v55 == v201)
    {

      v52 = v178;
LABEL_117:
      if (!(v56 >> 62))
      {
        v150 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_119;
      }

LABEL_149:
      v150 = __CocoaSet.count.getter();
LABEL_119:
      v151 = *(v220 + 16);
      if (v52 >> 62)
      {
        v152 = __CocoaSet.count.getter();
      }

      else
      {
        v152 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v151, v152))
      {
        __break(1u);
      }

      else
      {
        if (v150 != v151 - v152)
        {
          lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
          swift_allocError();
          *v158 = xmmword_265F24220;
          *(v158 + 16) = 6;
          swift_willThrow();
        }

        v26 = a10;
        if (one-time initialization token for debugMode == -1)
        {
          goto LABEL_124;
        }
      }

      swift_once();
LABEL_124:
      swift_beginAccess();
      v153 = static DebugConfig.debugMode;

      v154 = specialized Set.contains(_:)(3, v153);

      v155 = v195;
      if (v154)
      {
        v156 = *(v195 + 48);
        v213 = *(v195 + 40);
        v214 = v156;

        MEMORY[0x266771550](10, 0xE100000000000000);
        MEMORY[0x266771550](v213, v214);

        MEMORY[0x28223BE20](v157);
        v174 = v200;
        v175 = v190;
        v176 = a9;
        specialized Sequence.forEach(_:)(partial apply for closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v173, v56);
        MEMORY[0x266771550](10, 0xE100000000000000);
      }

      v159 = *(v155 + 40);
      v160 = *(v155 + 48);
      v161 = objc_allocWithZone(MEMORY[0x277CD6DD8]);
      v162 = MEMORY[0x266771450](v159, v160);
      type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29MTLFunctionStitchingAttribute_pMd, &_sSo29MTLFunctionStitchingAttribute_pMR);
      v164 = Array._bridgeToObjectiveC()().super.isa;
      v165 = [v161 initWithFunctionName:v162 nodes:isa outputNode:0 attributes:v164];

      v166 = v165;
      MEMORY[0x266771770]();
      if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  type metadata accessor for MetalLiteralValueNode();
  v57 = swift_dynamicCast();
  v186 = v56;
  if (v57)
  {
    v199 = v51;
    v58 = v211;
    v59 = *(*v211 + 192);
    v60 = v59(v221);
    v224[2] = v221[2];
    v224[3] = v221[3];
    v225 = v222;
    v224[0] = v221[0];
    v224[1] = v221[1];
    v56 = *(*v58 + 168);
    v26 = (*v58 + 168);
    v205 = (v56)(v60);
    v226 = v205;
    v61 = *v52;
    if (*(*v52 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(), (v63 & 1) != 0))
    {
      v64 = (*(v61 + 56) + 16 * v62);
      v66 = *v64;
      v65 = v64[1];

      v26 = v185;
    }

    else
    {
      DynamicType = 0;
      v207 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      DynamicType = 0xD000000000000010;
      v207 = v179;
      v52 = v188;
      v210 = *v188;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v74);

      v76 = *v52 + 1;
      if (__OFADD__(*v52, 1))
      {
        goto LABEL_148;
      }

      v77 = v52;
      v66 = DynamicType;
      v65 = v207;
      *v77 = v76;
      v78 = (v59)(v223, v75);
      v79 = (v56)(v78);
      v80 = v199;
      MetalStitchingBackend.constantFunction(for:name:type:library:)(v223, v66, v65, v79, v189);
      v199 = v80;
      if (v80)
      {
        goto LABEL_138;
      }

      outlined destroy of SGDataTypeStorage(v223);
      swift_bridgeObjectRetain_n();
      v81 = swift_unknownObjectRetain();
      specialized OrderedDictionary.subscript.setter(v81, v66, v65);
      outlined init with copy of SGDataTypeStorage(v221, &DynamicType);

      v82 = v191;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      DynamicType = *v82;
      *v82 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v65, v224, v83);
      outlined destroy of SGDataTypeStorage(v221);

      *v82 = DynamicType;
      swift_unknownObjectRelease();
      v26 = v185;
    }

    v84 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
    v85 = MEMORY[0x266771450](v66, v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v86 = Array._bridgeToObjectiveC()().super.isa;
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
    v87 = Array._bridgeToObjectiveC()().super.isa;
    v88 = [v84 initWithName:v85 arguments:v86 controlDependencies:v87];

    v89 = (*(*v58 + 120))();
    v90 = v88;
    specialized OrderedDictionary.subscript.setter(v88, v89);
    v91 = v90;
    MEMORY[0x266771770]();
    if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of SGDataTypeStorage(v221);

    __swift_destroy_boxed_opaque_existential_1Tm(&v213);
    v56 = v227;
    v51 = v199;
    goto LABEL_113;
  }

  type metadata accessor for MetalFunctionCallNode();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_132;
  }

  v67 = v211;
  v56 = v211[5];
  v68 = v211[6];
  v70 = *v200;
  v69 = v200[1];
  v71 = v200[2];

  v72 = specialized OrderedDictionary.subscript.getter(v56, v68, v70, v69, v71);
  v205 = v56;
  v184 = v68;
  if (v72)
  {
    v73 = swift_unknownObjectRelease();
  }

  else
  {
    v92 = v190;
    v93 = MetalStitchingBackend.makeFunction(_:name:)(v189, v56, v68);
    if (v93)
    {
      v94 = v93;

      v95 = v94;
    }

    else
    {
      MEMORY[0x28223BE20](0);
      v174 = v92;
      v175 = v56;
      v176 = v68;
      v97 = specialized Sequence.reduce<A>(into:_:)(v96, partial apply for closure #1 in closure #3 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:), v173, v198);
      if (!v97)
      {
        goto LABEL_144;
      }

      v98 = v97;

      v95 = v98;
    }

    v73 = specialized OrderedDictionary.subscript.setter(v95, v56, v68);
  }

  v199 = v51;
  v99 = (*v67 + 144);
  v182 = *v99;
  v183 = v67;
  v181 = v99;
  v100 = v182(v73);
  v101 = MEMORY[0x277D84F90];
  v210 = MEMORY[0x277D84F90];
  v102 = *(v100 + 16);
  v180 = v100;
  if (!v102)
  {
    v68 = v205;
LABEL_107:

    if (v101 >> 62)
    {
      v137 = __CocoaSet.count.getter();
      v138 = v137;
    }

    else
    {
      v138 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v139 = v183;
    v140 = v184;
    v141 = *(v182(v137) + 16);

    if (v138 != v141)
    {

      lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
      swift_allocError();
      *v171 = v68;
      *(v171 + 8) = v140;
      *(v171 + 16) = 5;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(&v213);
      goto LABEL_139;
    }

    v142 = objc_allocWithZone(MEMORY[0x277CD6DC0]);
    v143 = MEMORY[0x266771450](v68, v140);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v144 = Array._bridgeToObjectiveC()().super.isa;

    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for MTLFunctionStitchingFunctionNode, 0x277CD6DC0);
    v145 = Array._bridgeToObjectiveC()().super.isa;
    v146 = [v142 initWithName:v143 arguments:v144 controlDependencies:v145];

    v147 = (*(*v139 + 120))();
    v148 = v146;
    specialized OrderedDictionary.subscript.setter(v146, v147);
    v149 = v148;
    MEMORY[0x266771770]();
    if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    __swift_destroy_boxed_opaque_existential_1Tm(&v213);
    v56 = v227;
    v51 = v199;
    v26 = v185;
LABEL_113:
    v53 = v197;
    v52 = v191;
    goto LABEL_26;
  }

  v103 = 0;
  v204 = v100 + 32;
  v26 = v218;
  v192 = v220;
  v193 = v219;
  v56 = v219 + 32;
  v104 = v218 + 4;
  v187 = v220 + 32;
  v202 = v102;
  while (1)
  {
    if (v103 >= v102)
    {
      goto LABEL_141;
    }

    v52 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      break;
    }

    v68 = *(v204 + 8 * v103++);
    if (v26)
    {
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v68);
      v105 = Hasher._finalize()();
      v106 = 1 << v26[2];
      v48 = __OFSUB__(v106, 1);
      v107 = v106 - 1;
      if (v48)
      {
        goto LABEL_143;
      }

      v108 = v107 & v105;
      v109 = _HashTable.UnsafeHandle._startIterator(bucket:)(v107 & v105, v26 + 2, (v26 + 4));
      if (v109)
      {
        v112 = v26[2];
        v113 = ~(-1 << v112);
        v114 = v26[3] >> 6;
        v115 = v114 + (v109 ^ v113);
        if (v115 >= v113)
        {
          v116 = ~(-1 << v112);
        }

        else
        {
          v116 = 0;
        }

        v117 = v115 - v116;
        if (*(v56 + 8 * (v115 - v116)) != v68)
        {
          v118 = 0;
          v119 = v26[2] & 0x3FLL;
          v120 = (1 << v119) - 1;
          v121 = __OFADD__(v119 << v119, 64);
          v122 = (v119 << v119) + 126;
          if ((v119 << v119) + 64 >= 1)
          {
            v122 = (v119 << v119) + 63;
          }

          v123 = v122 >> 6;
          do
          {
            if (++v108 == 1 << v119)
            {
              if (v118)
              {
                goto LABEL_154;
              }

              v108 = 0;
              v118 = 1;
            }

            if (v111 >= v119)
            {
              v48 = __OFSUB__(v111, v119);
              v111 -= v119;
              if (v48)
              {
                goto LABEL_135;
              }

              v133 = v110 >> v119;
              v134 = v110 & v120;
              if ((v110 & v120) == 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v126 = (v108 * v119) >> 6;
              if (v111)
              {
                if (v121)
                {
                  __break(1u);
LABEL_141:
                  __break(1u);
                  goto LABEL_142;
                }

                if (v126 + 1 == v123)
                {
                  v126 = 0;
                }

                else
                {
                  ++v126;
                }
              }

              v127 = v119 - v111;
              if (__OFSUB__(v119, v111))
              {
                goto LABEL_136;
              }

              if (v126 == 2 && v119 == 5)
              {
                v129 = 32;
              }

              else
              {
                v129 = 64;
              }

              v48 = __OFSUB__(v129, v127);
              v130 = v129 - v127;
              if (v48)
              {
                goto LABEL_137;
              }

              v131 = v104[v126];
              v132 = (v131 << v111) | v110;
              v133 = v131 >> v127;
              v111 = v130;
              v134 = v132 & v120;
              if ((v132 & v120) == 0)
              {
                goto LABEL_50;
              }
            }

            v124 = (v134 ^ v113) + v114;
            if (v124 >= v113)
            {
              v125 = v113;
            }

            else
            {
              v125 = 0;
            }

            v117 = v124 - v125;
            v110 = v133;
          }

          while (*(v56 + 8 * v117) != v68);
        }

        v68 = v205;
        if ((v117 & 0x8000000000000000) != 0)
        {
          goto LABEL_146;
        }

        goto LABEL_101;
      }

LABEL_50:
      v102 = v202;
LABEL_51:
      v68 = v205;
      if (v52 == v102)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v135 = *(v193 + 16);
      if (!v135)
      {
        goto LABEL_51;
      }

      v117 = 0;
      while (*(v56 + 8 * v117) != v68)
      {
        if (v135 == ++v117)
        {
          goto LABEL_51;
        }
      }

      v68 = v205;
LABEL_101:
      if (v117 >= *(v192 + 16))
      {
        goto LABEL_147;
      }

      v136 = swift_unknownObjectRetain();
      MEMORY[0x266771770](v136);
      if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = v205;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v101 = v210;
      v102 = v202;
      if (v52 == v202)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:

  lazy protocol witness table accessor for type MetalStitchingBackendErrors and conformance MetalStitchingBackendErrors();
  swift_allocError();
  *v172 = v56;
  *(v172 + 8) = v68;
  *(v172 + 16) = 0;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(&v213);
LABEL_139:
  __swift_destroy_boxed_opaque_existential_1Tm(v212);
}

id MetalStitchingBackend.makeFunction(_:name:)(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static DebugConfig.debugMode;

  v14 = specialized Set.contains(_:)(9, v13);

  if (v14)
  {
    v15 = type metadata accessor for MetalStitchingBackend(0);
    (*(v10 + 16))(v12, v3 + *(v15 + 24), v9);
    (*(v6 + 16))(v8, v3 + *(v15 + 28), v5);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    v27 = v5;
    v19 = v18;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v19, v20, "buildMetalFunction", "makeFunction_n", v16, 2u);
    v21 = MEMORY[0x266771450](a2, v28);
    v22 = [v29 newFunctionWithName_];

    v23 = static os_signpost_type_t.end.getter();
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v23, v24, "buildMetalFunction", "makeFunction_n", v16, 2u);

    MEMORY[0x266773120](v16, -1, -1);
    (*(v6 + 8))(v8, v27);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v25 = MEMORY[0x266771450](a2, v28);
    v22 = [v29 newFunctionWithName_];
  }

  return v22;
}

void closure #4 in closure #3 in MetalStitchingBackend.stitchingGraphs(for:augmenting:coreLibrary:additionalLibraries:)(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = &unk_279BBD000;
  v5 = [*a1 name];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = specialized OrderedDictionary.subscript.getter(v6, v8, *a2, a2[1], a2[2]);

  if (v9)
  {
    v10 = MetalStitchingBackend.mtlFunctionHash(_:)(v9);
    if (!v11)
    {
      if (one-time initialization token for logger == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v12 = v10;
    v13 = v11;
    v42 = v9;
    _StringGuts.grow(_:)(18);
    v45 = [v3 hash];
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v43 = v14;
    v44 = v16;
    MEMORY[0x266771550](2128928, 0xE300000000000000);
    v17 = [v3 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v19;

    MEMORY[0x266771550](v18, v9);

    MEMORY[0x266771550](2128928, 0xE300000000000000);
    MEMORY[0x266771550](v12, v13);

    MEMORY[0x266771550](2128928, 0xE300000000000000);
    v20 = [v3 arguments];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MTLFunctionStitchingNode_pMd, &_sSo24MTLFunctionStitchingNode_pMR);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      v22 = __CocoaSet.count.getter();
      v4 = v42;
      if (v22)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v42;
      if (v22)
      {
LABEL_5:
        v45 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
        if ((v22 & 0x8000000000000000) == 0)
        {
          v23 = 0;
          v24 = v45;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x266772030](v23, v21);
            }

            else
            {
              v25 = *(v21 + 8 * v23 + 32);
              swift_unknownObjectRetain();
            }

            v26 = [v25 hash];
            swift_unknownObjectRelease();
            v45 = v24;
            v28 = v24[2];
            v27 = v24[3];
            if (v28 >= v27 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
              v24 = v45;
            }

            ++v23;
            v24[2] = v28 + 1;
            v24[v28 + 4] = v26;
          }

          while (v22 != v23);

          goto LABEL_20;
        }

        __break(1u);
LABEL_23:
        swift_once();
LABEL_15:
        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, logger);
        swift_unknownObjectRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43 = v33;
          *v32 = 136315138;
          v34 = [v9 v4[151]];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v43);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_265D7D000, v30, v31, "Unable to obtain hash for function %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x266773120](v33, -1, -1);
          MEMORY[0x266773120](v32, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    v24 = MEMORY[0x277D84F90];
LABEL_20:
    v39 = MEMORY[0x2667717B0](v24, MEMORY[0x277D83B88]);
    v41 = v40;

    MEMORY[0x266771550](v39, v41);

    MEMORY[0x266771550](10, 0xE100000000000000);
    MEMORY[0x266771550](v43, v44);
    swift_unknownObjectRelease();
  }
}

uint64_t protocol witness for GraphCompilerBackend.programHash.getter in conformance MetalStitchingBackend()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t one-time initialization function for typeToLookupFunctionMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC_SStGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F2A4D0;
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  *(inited + 32) = static MetalDataType.BOOL;
  *(inited + 40) = 0x625F70756B6F6F6CLL;
  *(inited + 48) = 0xEB000000006C6F6FLL;
  v1 = one-time initialization token for int32;

  if (v1 != -1)
  {
    swift_once();
  }

  *(inited + 56) = static MetalDataType.int32;
  *(inited + 64) = 0x695F70756B6F6F6CLL;
  *(inited + 72) = 0xEA0000000000746ELL;
  v2 = one-time initialization token for uint32;

  if (v2 != -1)
  {
    swift_once();
  }

  *(inited + 80) = static MetalDataType.uint32;
  *(inited + 88) = 0x755F70756B6F6F6CLL;
  *(inited + 96) = 0xEB00000000746E69;
  v3 = one-time initialization token for float;

  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 104) = static MetalDataType.float;
  strcpy((inited + 112), "lookup_float");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v4 = one-time initialization token for half;

  if (v4 != -1)
  {
    swift_once();
  }

  *(inited + 128) = static MetalDataType.half;
  *(inited + 136) = 0x685F70756B6F6F6CLL;
  *(inited + 144) = 0xEB00000000666C61;
  v5 = one-time initialization token for float2;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 152) = static MetalDataType.float2;
  strcpy((inited + 160), "lookup_float2");
  *(inited + 174) = -4864;
  v6 = one-time initialization token for float3;

  if (v6 != -1)
  {
    swift_once();
  }

  *(inited + 176) = static MetalDataType.float3;
  strcpy((inited + 184), "lookup_float3");
  *(inited + 198) = -4864;
  v7 = one-time initialization token for float4;

  if (v7 != -1)
  {
    swift_once();
  }

  *(inited + 200) = static MetalDataType.float4;
  strcpy((inited + 208), "lookup_float4");
  *(inited + 222) = -4864;
  v8 = one-time initialization token for int2;

  if (v8 != -1)
  {
    swift_once();
  }

  *(inited + 224) = static MetalDataType.int2;
  *(inited + 232) = 0x695F70756B6F6F6CLL;
  *(inited + 240) = 0xEB0000000032746ELL;
  v9 = one-time initialization token for int3;

  if (v9 != -1)
  {
    swift_once();
  }

  *(inited + 248) = static MetalDataType.int3;
  *(inited + 256) = 0x695F70756B6F6F6CLL;
  *(inited + 264) = 0xEB0000000033746ELL;
  v10 = one-time initialization token for int4;

  if (v10 != -1)
  {
    swift_once();
  }

  *(inited + 272) = static MetalDataType.int4;
  *(inited + 280) = 0x695F70756B6F6F6CLL;
  *(inited + 288) = 0xEB0000000034746ELL;
  v11 = one-time initialization token for half2;

  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 296) = static MetalDataType.half2;
  strcpy((inited + 304), "lookup_half2");
  *(inited + 317) = 0;
  *(inited + 318) = -5120;
  v12 = one-time initialization token for half3;

  if (v12 != -1)
  {
    swift_once();
  }

  *(inited + 320) = static MetalDataType.half3;
  strcpy((inited + 328), "lookup_half3");
  *(inited + 341) = 0;
  *(inited + 342) = -5120;
  v13 = one-time initialization token for half4;

  if (v13 != -1)
  {
    swift_once();
  }

  *(inited + 344) = static MetalDataType.half4;
  strcpy((inited + 352), "lookup_half4");
  *(inited + 365) = 0;
  *(inited + 366) = -5120;
  v14 = one-time initialization token for color3;

  if (v14 != -1)
  {
    swift_once();
  }

  *(inited + 368) = static MetalDataType.color3;
  strcpy((inited + 376), "lookup_color3");
  *(inited + 390) = -4864;
  v15 = one-time initialization token for color4;

  if (v15 != -1)
  {
    swift_once();
  }

  *(inited + 392) = static MetalDataType.color4;
  strcpy((inited + 400), "lookup_color4");
  *(inited + 414) = -4864;
  v16 = one-time initialization token for float2x2;

  if (v16 != -1)
  {
    swift_once();
  }

  *(inited + 416) = static MetalDataType.float2x2;
  *(inited + 424) = 0x665F70756B6F6F6CLL;
  *(inited + 432) = 0xEF32783274616F6CLL;
  v17 = one-time initialization token for float3x3;

  if (v17 != -1)
  {
    swift_once();
  }

  *(inited + 440) = static MetalDataType.float3x3;
  *(inited + 448) = 0x665F70756B6F6F6CLL;
  *(inited + 456) = 0xEF33783374616F6CLL;
  v18 = one-time initialization token for float4x4;

  if (v18 != -1)
  {
    swift_once();
  }

  *(inited + 464) = static MetalDataType.float4x4;
  *(inited + 472) = 0x665F70756B6F6F6CLL;
  *(inited + 480) = 0xEF34783474616F6CLL;
  v19 = one-time initialization token for texture2d_float;

  if (v19 != -1)
  {
    swift_once();
  }

  *(inited + 488) = static MetalDataType.texture2d_float;
  *(inited + 496) = 0xD000000000000015;
  *(inited + 504) = 0x8000000265F34360;
  v20 = one-time initialization token for texture2d_half;

  if (v20 != -1)
  {
    swift_once();
  }

  *(inited + 512) = static MetalDataType.texture2d_half;
  *(inited + 520) = 0xD000000000000014;
  *(inited + 528) = 0x8000000265F34380;
  v21 = one-time initialization token for texture2darray_float;

  if (v21 != -1)
  {
    swift_once();
  }

  *(inited + 536) = static MetalDataType.texture2darray_float;
  *(inited + 544) = 0xD00000000000001ALL;
  *(inited + 552) = 0x8000000265F343A0;
  v22 = one-time initialization token for texture2darray_half;

  if (v22 != -1)
  {
    swift_once();
  }

  *(inited + 560) = static MetalDataType.texture2darray_half;
  *(inited + 568) = 0xD000000000000019;
  *(inited + 576) = 0x8000000265F343C0;
  v23 = one-time initialization token for texture3d_float;

  if (v23 != -1)
  {
    swift_once();
  }

  *(inited + 584) = static MetalDataType.texture3d_float;
  *(inited + 592) = 0xD000000000000015;
  *(inited + 600) = 0x8000000265F343E0;
  v24 = one-time initialization token for texture3d_half;

  if (v24 != -1)
  {
    swift_once();
  }

  *(inited + 608) = static MetalDataType.texture3d_half;
  *(inited + 616) = 0xD000000000000014;
  *(inited + 624) = 0x8000000265F34400;
  v25 = one-time initialization token for texturecube_float;

  if (v25 != -1)
  {
    swift_once();
  }

  *(inited + 632) = static MetalDataType.texturecube_float;
  *(inited + 640) = 0xD000000000000017;
  *(inited + 648) = 0x8000000265F34420;
  v26 = one-time initialization token for texturecube_half;

  if (v26 != -1)
  {
    swift_once();
  }

  *(inited + 656) = static MetalDataType.texturecube_half;
  *(inited + 664) = 0xD000000000000016;
  *(inited + 672) = 0x8000000265F34440;

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph13MetalDataTypeC_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph13MetalDataTypeC_SStMd, &_s11ShaderGraph13MetalDataTypeC_SStMR);
  result = swift_arrayDestroy();
  static MetalStitchingBackend.typeToLookupFunctionMap = v27;
  return result;
}

double static MetalStitchingBackend.typeToLookupFunctionMap.getter()
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static MetalStitchingBackend.typeToLookupFunctionMap.setter(uint64_t a1)
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MetalStitchingBackend.typeToLookupFunctionMap = a1;

  return result;
}

uint64_t (*static MetalStitchingBackend.typeToLookupFunctionMap.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeToLookupFunctionMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR, &type metadata for Input);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11ShaderGraph6OutputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph6OutputVGMR, &type metadata for Output);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySOGMd, &_ss23_ContiguousArrayStorageCySOGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for SGEdge);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for SGNode);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 56);
      if (v7 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5();
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for MetalFunctionDefinitionNode();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
          goto LABEL_115;
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        specialized Array.remove(at:)(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_141;
    }

LABEL_115:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      if (*(v10 + 40) == *(v11 + 40) && *(v10 + 48) == *(v11 + 48))
      {
        v13 = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          if (*(*v14 + 40) == *(v15 + 40) && *(*v14 + 48) == *(v15 + 48))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = v8 + a4;
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v7);
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
          goto LABEL_115;
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        specialized Array.remove(at:)(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 40) == *(*v30 + 40) && *(v28 + 48) == *(*v30 + 48);
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        specialized Set._Variant.remove(_:)(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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
        return;
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
}

{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
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
        return;
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
}