uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x26670FA00](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMd, &_ss11_SetStorageCy9RealityIO6InputsC13PropertyDeltaVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v31 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *&v32 = *v18;
      *(&v32 + 1) = v19;
      lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta();

      v21 = v19;
      v22 = v20;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v3 = v30;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v3 = v30;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v32;
      *(v14 + 16) = v20;
      ++*(v5 + 16);
      v10 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      a4();
      v21 = v20;
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

unint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO15StageDirtyStateCGMR);
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
    for (i = result + 56; v9; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      Hasher.init(_seed:)();
      v16 = *(v15 + 24);

      specialized Set.hash(into:)(v17, v16);
      specialized Set.hash(into:)(v17, *(v15 + 16));
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v15;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_14;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized ActionBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v20[0] = v0;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v20[0] = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v20[0];
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);

  if (String.count.getter() < 1)
  {
    v6 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v6 = RIOPxrTfTokenCreateWithCString();
  }

  v7 = v6;
  type metadata accessor for NamedPropertyDirtyState();
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26198A640;
  *(v12 + 32) = v8;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = v20[0];
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v14 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(v3, v13, 0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_26198A640;
  *(v15 + 32) = v14;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v15);

  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = v20[0];
  swift_allocObject();
  v17 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v16, 0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_26198A9D0;
  *(v18 + 32) = v5;
  *(v18 + 40) = v17;
  v20[0] = v3;

  specialized Sequence.forEach(_:)(v18);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v20[0];
}

uint64_t specialized ActionBuilder.inputDescriptors()()
{
  v7 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;
  v1 = one-time initialization token for OutputIdentifier;

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = static EntityBuilder.OutputIdentifier;
  v2 = *algn_27FEC8E68;
  v37 = v0;
  v38 = static EntityBuilder.OutputIdentifier;
  v39 = *algn_27FEC8E68;
  v40 = specialized closure #3 in ActionBuilder.inputDescriptors();
  v41 = 0;
  v42 = -127;
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)(&v31, &v37);
  outlined consume of InputDescriptor(v31, *(&v31 + 1), v32, v33, v34, v35, v36);
  v31 = xmmword_26198A9E0;
  v32 = 0xD00000000000001FLL;
  v33 = 0x80000002619941F0;
  v34 = specialized closure #4 in ActionBuilder.inputDescriptors();
  v35 = 0;
  v36 = -127;
  specialized Set._Variant.insert(_:)(&v25, &v31);
  outlined consume of InputDescriptor(v25, *(&v25 + 1), v26, v27, v28, v29, v30);
  v25 = xmmword_26198A9F0;
  v26 = v3;
  v27 = v2;
  v28 = specialized closure #5 in ActionBuilder.inputDescriptors();
  v29 = 0;
  v30 = -127;

  specialized Set._Variant.insert(_:)(&v19, &v25);
  outlined consume of InputDescriptor(v19, *(&v19 + 1), v20, v21, v22, v23, v24);
  *&v19 = 0xD000000000000010;
  *(&v19 + 1) = 0x8000000261994560;
  v20 = v3;
  v21 = v2;
  v22 = specialized closure #6 in ActionBuilder.inputDescriptors();
  v23 = 0;
  v24 = -127;
  specialized Set._Variant.insert(_:)(&v13, &v19);
  outlined consume of InputDescriptor(v13, *(&v13 + 1), v14, v15, v16, v17, v18);
  v13 = xmmword_26198AA00;
  v14 = v3;
  v15 = v2;
  v16 = specialized closure #7 in ActionBuilder.inputDescriptors();
  v17 = 0;
  v18 = -127;
  specialized Set._Variant.insert(_:)(&v8, &v13);
  outlined consume of InputDescriptor(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, v11, v12);
  *&v8 = 0xD000000000000011;
  *(&v8 + 1) = 0x8000000261994580;
  v9 = xmmword_26198AA10;
  v10 = specialized closure #8 in ActionBuilder.inputDescriptors();
  v11 = 0;
  v12 = -127;
  specialized Set._Variant.insert(_:)(v5, &v8);
  outlined consume of InputDescriptor(v5[0], v5[1], v5[2], v5[3], v5[4], v5[5], v6);
  return v7;
}

uint64_t specialized ActionBuilder.clear(inputs:)()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v3, v4);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    memset(v4, 0, sizeof(v4));
    Outputs.subscript.setter(v4, 0x736E6F69746341, 0xE700000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void outlined consume of InputDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 <= 3)
  {
    if ((a7 >> 4) <= 1u)
    {
LABEL_10:

LABEL_22:

      return;
    }

    v8 = a5;
    if (v7 != 2 && v7 != 3)
    {
      return;
    }
  }

  else if ((a7 >> 4) <= 5u)
  {
    v8 = a5;
    if (v7 == 4)
    {

      goto LABEL_22;
    }

    if (v7 != 5)
    {
      return;
    }
  }

  else
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
        }

        return;
      }

      goto LABEL_10;
    }

    v8 = a5;
  }
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
  }

  return result;
}

void outlined copy of InputDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 <= 3)
  {
    if ((a7 >> 4) <= 1u)
    {
LABEL_10:

LABEL_22:

      return;
    }

    v9 = a5;
    if (v7 != 2 && v7 != 3)
    {
      return;
    }
  }

  else if ((a7 >> 4) <= 5u)
  {
    v9 = a5;
    if (v7 == 4)
    {

      goto LABEL_22;
    }

    if (v7 != 5)
    {
      return;
    }
  }

  else
  {
    if (v7 != 6)
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
        }

        return;
      }

      goto LABEL_10;
    }

    v9 = a5;
  }

  v8 = v9;
}

unint64_t lazy protocol witness table accessor for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta()
{
  result = lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta;
  if (!lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Inputs.PropertyDelta and conformance Inputs.PropertyDelta);
  }

  return result;
}

uint64_t outlined init with copy of ImportSession.EvaluationFault(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ImportSession.EvaluationFault(uint64_t a1)
{
  v2 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ImportSession.EvaluationFault(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(uint64_t a1)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v1 = RIOPxrUsdPrimCopyAttribute();
    v2 = RIOPxrUsdAttributeCopyValue();
    if (v2)
    {
      v3 = v2;
      RIOPxrVtValueGetFloat3();

      return 0;
    }
  }

  return 0;
}

unint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

LABEL_5:
    v5 = 1;
    return v5 << 32;
  }

  v3 = v2;
  Float = RIOPxrVtValueGetFloat();

  v5 = Float ^ 1;
  return v5 << 32;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    return 2;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

    return 2;
  }

  v3 = v2;
  Bool = RIOPxrVtValueGetBool();

  if (Bool)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    return 0;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  Float2 = RIOPxrVtValueGetFloat2();

  if (Float2)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(uint64_t a1)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v1 = RIOPxrUsdPrimCopyAttribute();
    v2 = RIOPxrUsdAttributeCopyValue();
    if (v2)
    {
      v3 = v2;
      v4 = RIOPxrVtValueCopyString();
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }
  }

  return 0;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    return 0;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  Double = RIOPxrVtValueGetDouble();

  if (Double)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSi_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    return 0;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  Int32 = RIOPxrVtValueGetInt32();

  if (Int32)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

unint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(uint64_t a1)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v1 = RIOPxrUsdPrimCopyAttribute();
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {

LABEL_5:
    v5 = 1;
    return v5 << 32;
  }

  v3 = v2;
  Int32 = RIOPxrVtValueGetInt32();

  v5 = Int32 ^ 1;
  return v5 << 32;
}

uint64_t _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSo10simd_quatfa_Tt1B5(uint64_t a1)
{
  if (RIOPxrUsdPrimHasAttribute())
  {
    v1 = RIOPxrUsdPrimCopyAttribute();
    v2 = RIOPxrUsdAttributeCopyValue();
    if (v2)
    {
      v3 = v2;
      RIOPxrVtValueGetQuatf();

      return 0;
    }
  }

  return 0;
}

void _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySdG_Tt1B5(uint64_t a2@<X8>)
{
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_5;
  }

  v3 = RIOPxrUsdPrimCopyAttribute();
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4)
  {

LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v5 = v4;
  Double3 = RIOPxrVtValueGetDouble3();

  v7 = Double3 ^ 1;
LABEL_6:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

id one-time initialization function for infoID(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static DirectionalLightComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static SpotLightComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ImageBasedLightReceiverBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static AnchoringComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ImageBasedLightBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static VirtualEnvironmentProbeComponentBuilder.infoID);
}

{
  return one-time initialization function for infoID(a1, 0x64693A6F666E69, 0xE700000000000000, "info:id", &static ModelSortGroupComponentBuilder.infoID);
}

id one-time initialization function for realityKitComponentTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightReceiverBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AnchoringComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static VirtualEnvironmentProbeComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ModelSortGroupComponentBuilder.realityKitComponentTypeName = result;
  return result;
}

id one-time initialization function for colorAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x726F6C6F63, 0xE500000000000000, "color", &static DirectionalLightComponentBuilder.colorAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x726F6C6F63, 0xE500000000000000, "color", &static SpotLightComponentBuilder.colorAttributeName);
}

id one-time initialization function for intensityAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x7469736E65746E69, 0xE900000000000079, "intensity", &static DirectionalLightComponentBuilder.intensityAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x7469736E65746E69, 0xE900000000000079, "intensity", &static SpotLightComponentBuilder.intensityAttributeName);
}

id one-time initialization function for realWorldProxyAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.realWorldProxyAttributeName = result;
  return result;
}

id one-time initialization function for shadowStructName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x776F64616853, 0xE600000000000000, "Shadow", &static DirectionalLightComponentBuilder.shadowStructName);
}

{
  return one-time initialization function for infoID(a1, 0x776F64616853, 0xE600000000000000, "Shadow", &static SpotLightComponentBuilder.shadowStructName);
}

id one-time initialization function for shadowEnabledAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x656C62616E457369, 0xE900000000000064, "isEnabled", &static DirectionalLightComponentBuilder.shadowEnabledAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x656C62616E457369, 0xE900000000000064, "isEnabled", &static SpotLightComponentBuilder.shadowEnabledAttributeName);
}

id one-time initialization function for shadowDepthBiasAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x6169426874706564, 0xE900000000000073, "depthBias", &static DirectionalLightComponentBuilder.shadowDepthBiasAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x6169426874706564, 0xE900000000000073, "depthBias", &static SpotLightComponentBuilder.shadowDepthBiasAttributeName);
}

id one-time initialization function for shadowCullModeAttributeName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 0x65646F4D6C6C7563, 0xE800000000000000, "cullMode", &static DirectionalLightComponentBuilder.shadowCullModeAttributeName);
}

{
  return one-time initialization function for infoID(a1, 0x65646F4D6C6C7563, 0xE800000000000000, "cullMode", &static SpotLightComponentBuilder.shadowCullModeAttributeName);
}

id one-time initialization function for infoID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  *a5 = result;
  return result;
}

id one-time initialization function for shadowOrthographicScaleAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static DirectionalLightComponentBuilder.shadowOrthographicScaleAttributeName = result;
  return result;
}

uint64_t closure #1 in DirectionalLightComponentBuilder.run(inputs:)(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentV6ShadowVSgMd, &_s10RealityKit25DirectionalLightComponentV6ShadowVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v119 = &v106 - v5;
  v6 = type metadata accessor for DirectionalLightComponent.Shadow();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v114 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v10 - 8, v11);
  v113 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v12);
  v117 = &v106 - v15;
  v116 = type metadata accessor for DirectionalLightComponent.Shadow.ShadowProjectionType();
  v115 = *(v116 - 8);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v116, v16);
  v112 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v17);
  v118 = (&v106 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentVSgMd, &_s10RealityKit25DirectionalLightComponentVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v121 = &v106 - v23;
  v24 = type metadata accessor for DirectionalLightComponent();
  v123 = *(v24 - 8);
  v124 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v122 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for __EntityRef();
  v120 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = Inputs.prim.getter();
  v32 = RIOPxrUsdObjectCopyName();
  v33 = RIOPxrTfTokenCopyString();
  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v126 = v31;
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_39;
  }

  v36 = RIOPxrUsdPrimCopyAttribute();
  v37 = RIOPxrUsdAttributeCopyValue();
  if (!v37)
  {

LABEL_40:
    DirectionalLightComponentBuilder.clear(inputs:)();
  }

  v111 = a2;
  v109 = v6;
  v38 = v37;
  v39 = RIOPxrVtValueCopyToken();

  if (!v39)
  {
LABEL_39:

    goto LABEL_40;
  }

  v110 = v7;
  v40 = RIOPxrTfTokenCopyString();
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 != 0xD00000000000001BLL || 0x8000000261994620 != v43)
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v111;
    if (v45)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  v44 = v111;
LABEL_12:
  if (one-time initialization token for OutputName != -1)
  {
LABEL_93:
    swift_once();
  }

  Inputs.subscript.getter(&v128, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  v46 = v110;
  if (v129)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {

      v47 = v127;
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        DirectionalLightComponentBuilder.clear(inputs:)();
      }

      v108 = v47;
      Inputs.prim.getter();
      if (one-time initialization token for colorAttributeName != -1)
      {
        swift_once();
      }

      v48 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(static DirectionalLightComponentBuilder.colorAttributeName);
      v50 = v49;
      v52 = v51;

      v53.i64[0] = v48;
      v53.i64[1] = v50;
      if (v52)
      {
        v54 = -1;
      }

      else
      {
        v54 = 0;
      }

      v128 = vbslq_s8(vdupq_n_s32(v54), xmmword_26198AAA0, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      lazy protocol witness table accessor for type Float and conformance Float();
      v55 = SIMD3<>.cgColor.getter();
      Inputs.prim.getter();
      if (one-time initialization token for intensityAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static DirectionalLightComponentBuilder.intensityAttributeName);

      Inputs.prim.getter();
      if (one-time initialization token for realWorldProxyAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(static DirectionalLightComponentBuilder.realWorldProxyAttributeName);

      *(v44 + 17) = 1;
      type metadata accessor for Entity();
      v56 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v129 = v56;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v128);
      v57 = static Entity.__fromCore(_:)();
      (*(v120 + 8))(v30, v27);
      v58 = v55;
      v59 = v122;
      DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)();
      v60 = v123;
      v61 = v124;
      v62 = v121;
      (*(v123 + 16))(v121, v59, v124);
      (*(v60 + 56))(v62, 0, 1, v61);
      v120 = v57;
      v63 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v63(&v128, 0);
      specialized Builder.addComponent<A>(component:)(v59, MEMORY[0x277CDAED0]);
      v64 = Prim.children.getter();
      v30 = v64;
      v107 = v58;
      if (v64 >> 62)
      {
        v65 = __CocoaSet.count.getter();
        if (v65)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {
LABEL_27:
          v35 = 0;
          v44 = v30 & 0xC000000000000001;
          v27 = v30 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v44)
            {
              v66 = MEMORY[0x26670F670](v35, v30);
              v67 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_92;
              }

              v67 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
                goto LABEL_93;
              }
            }

            v125 = v66;
            v68 = RIOPxrUsdObjectCopyName();
            if (one-time initialization token for shadowStructName != -1)
            {
              swift_once();
            }

            v69 = static DirectionalLightComponentBuilder.shadowStructName;
            type metadata accessor for RIOPxrTfTokenRef(0);
            lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
            v70 = v69;
            v71 = static _CFObject.== infix(_:_:)();

            if (v71)
            {
              break;
            }

            ++v35;
            v46 = v110;
            if (v67 == v65)
            {
              goto LABEL_102;
            }
          }

          v46 = v110;
          if (one-time initialization token for shadowEnabledAttributeName != -1)
          {
            swift_once();
          }

          v76 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(static DirectionalLightComponentBuilder.shadowEnabledAttributeName);
          v77 = v109;
          if (v76 == 2 || (v76 & 1) == 0)
          {

            goto LABEL_103;
          }

          if (one-time initialization token for shadowDistanceAttributeName != -1)
          {
            swift_once();
          }

          v78 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static DirectionalLightComponentBuilder.shadowDistanceAttributeName);
          if ((v78 & 0x100000000) != 0)
          {
            v79 = 5.0;
          }

          else
          {
            v79 = *&v78;
          }

          if (one-time initialization token for shadowDepthBiasAttributeName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static DirectionalLightComponentBuilder.shadowDepthBiasAttributeName);
          if (one-time initialization token for shadowZBoundsAttributeName != -1)
          {
            swift_once();
          }

          v80 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5(static DirectionalLightComponentBuilder.shadowZBoundsAttributeName);
          if (v81)
          {
            v82 = -1;
          }

          else
          {
            v82 = 0;
          }

          if (one-time initialization token for shadowOrthographicScaleAttributeName != -1)
          {
            swift_once();
          }

          v83 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(static DirectionalLightComponentBuilder.shadowOrthographicScaleAttributeName);
          if ((v83 & 0x100000000) != 0)
          {
            v84 = 1.0;
          }

          else
          {
            v84 = *&v83;
          }

          if (one-time initialization token for shadowProjectionTypeAttributeName != -1)
          {
            swift_once();
          }

          v85 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(static DirectionalLightComponentBuilder.shadowProjectionTypeAttributeName);
          if (v86)
          {
            if (v85 == 0x6465786946 && v86 == 0xE500000000000000)
            {

LABEL_77:
              v88 = v118;
              *v118 = vbsl_s8(vdup_n_s32(v82), 0x412000003C23D70ALL, v80);
              *v88[1].i32 = v84;
              goto LABEL_79;
            }

            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v87)
            {
              goto LABEL_77;
            }
          }

          *v118->i32 = v79;
LABEL_79:
          v89 = v117;
          (*(v115 + 104))();
          if (one-time initialization token for shadowCullModeAttributeName != -1)
          {
            swift_once();
          }

          v90 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(static DirectionalLightComponentBuilder.shadowCullModeAttributeName);
          if (v91)
          {
            v92 = v90;
            v93 = v91;
            if (v90 == 1801675074 && v91 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v94 = MEMORY[0x277CDB488];
LABEL_86:
              v95 = *v94;
              v96 = type metadata accessor for MaterialParameterTypes.FaceCulling();
              v97 = *(v96 - 8);
              (*(v97 + 104))(v89, v95, v96);
              (*(v97 + 56))(v89, 0, 1, v96);
LABEL_100:
              v100 = v115;
              v101 = v116;
              (*(v115 + 16))(v112, v118, v116);
              outlined init with copy of MaterialParameterTypes.FaceCulling?(v89, v113);
              v102 = v114;
              DirectionalLightComponent.Shadow.init(shadowProjection:depthBias:cullMode:)();
              v103 = v119;
              (*(v46 + 16))(v119, v102, v77);
              (*(v46 + 56))(v103, 0, 1, v77);
              v104 = dispatch thunk of Entity.components.modify();
              Entity.ComponentSet.subscript.setter();
              v104(&v128, 0);
              specialized Builder.addComponent<A>(component:)(v102, MEMORY[0x277CDAEC0]);

              (*(v46 + 8))(v102, v77);
              outlined destroy of Any?(v117, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
              (*(v100 + 8))(v118, v101);
              return (*(v123 + 8))(v122, v124);
            }

            if (v92 == 0x746E6F7246 && v93 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v94 = MEMORY[0x277CDB498];
              goto LABEL_86;
            }

            if (v92 == 1701736270 && v93 == 0xE400000000000000)
            {

LABEL_98:
              v94 = MEMORY[0x277CDB490];
              goto LABEL_86;
            }

            v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v98)
            {
              goto LABEL_98;
            }
          }

          v99 = type metadata accessor for MaterialParameterTypes.FaceCulling();
          (*(*(v99 - 8) + 56))(v89, 1, 1, v99);
          goto LABEL_100;
        }
      }

LABEL_102:

      v77 = v109;
LABEL_103:
      (*(v46 + 56))(v119, 1, 1, v77);
      v105 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v105(&v128, 0);

      return (*(v123 + 8))(v122, v124);
    }
  }

  else
  {
    outlined destroy of Any?(&v128, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for lightComponent != -1)
  {
    swift_once();
  }

  v73 = static OS_os_log.lightComponent;
  v74 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2619891C0;
  *(v75 + 56) = MEMORY[0x277D837D0];
  *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v75 + 32) = v125;
  *(v75 + 40) = v35;
  os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v73, v74, v75);
}

void specialized Builder.addComponent<A>(component:)(uint64_t a1)
{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDB530]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDAE08]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDADF8]);
}

{
  specialized Builder.addComponent<A>(component:)(a1, MEMORY[0x277CDB508]);
}

void specialized Builder.addComponent<A>(component:)(uint64_t a1, void (*a2)(void, float))
{
  v4 = type metadata accessor for __ComponentTypeRef();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0, v7);
  static Component.__coreComponentType.getter();
  type metadata accessor for REComponentType(0);
  __ComponentTypeRef.__as<A>(_:)();
  (*(v5 + 8))(v9, v4);
  if (REComponentClassFromType())
  {
    swift_beginAccess();
    v10 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.CoreReference);
    swift_endAccess();
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v13, &v14);
      type metadata accessor for RIOBuilderRef(0);
      swift_dynamicCast();
      v11 = v12[1];
      RIOBuilderAddComponentByClass();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DirectionalLightComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentV6ShadowVSgMd, &_s10RealityKit25DirectionalLightComponentV6ShadowVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25DirectionalLightComponentVSgMd, &_s10RealityKit25DirectionalLightComponentVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for __EntityRef();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(v21, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v22)
  {
    return outlined destroy of Any?(v21, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy(0);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      type metadata accessor for Entity();
      v15 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v22 = v15;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v21);
      static Entity.__fromCore(_:)();
      (*(v10 + 8))(v13, v9);
      v16 = type metadata accessor for DirectionalLightComponent();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v17(v21, 0);
      v18 = type metadata accessor for DirectionalLightComponent.Shadow();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v19(v21, 0);

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance DirectionalLightComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in DirectionalLightComponentBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of MaterialParameterTypes.FaceCulling?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized DirectionalLightComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v8 = static DirectionalLightComponentBuilder.realityKitComponentTypeName;
  v0 = static DirectionalLightComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

uint64_t specialized DirectionalLightComponentBuilder.inputDescriptors()()
{
  v6 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;
  v1 = one-time initialization token for OutputIdentifier;

  if (v1 != -1)
  {
    swift_once();
  }

  v13 = v0;
  v14 = static EntityBuilder.OutputIdentifier;
  v15 = *algn_27FEC8E68;
  v16 = 0;
  v17 = 0;
  v18 = 112;

  specialized Set._Variant.insert(_:)(&v7, &v13);
  outlined consume of InputDescriptor(v7, *(&v7 + 1), v8, v9, v10, v11, v12);
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v7 = xmmword_26198AAB0;
  v8 = 0xD000000000000020;
  v9 = 0x8000000261994710;
  v10 = v2;
  v11 = 1;
  v12 = 32;
  specialized Set._Variant.insert(_:)(v4, &v7);
  outlined consume of InputDescriptor(v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], v5);
  return v6;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26670F670](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x26670F130](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t one-time initialization function for timeline()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.timeline = result;
  return result;
}

id one-time initialization function for realityKitStruct()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ToolsFoundations.Token.realityKitStruct = result;
  return result;
}

uint64_t closure #1 in TimelineTrackAndActionBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v13 = static TimelineConstants.Timeline.primType;
  v0 = static TimelineConstants.Timeline.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v13);
  v2 = one-time initialization token for primType;

  if (v2 != -1)
  {
    swift_once();
  }

  v13 = static TimelineConstants.Track.primType;
  v3 = static TimelineConstants.Track.primType;
  v4 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v13);
  v5 = one-time initialization token for primType;

  if (v5 != -1)
  {
    swift_once();
  }

  v13 = static TimelineConstants.Action.primType;
  v6 = static TimelineConstants.Action.primType;
  v7 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v13);
  v8 = one-time initialization token for realityKitStruct;

  if (v8 != -1)
  {
    swift_once();
  }

  v13 = static ToolsFoundations.Token.realityKitStruct;
  v9 = static ToolsFoundations.Token.realityKitStruct;
  v10 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB40;
  *(inited + 32) = v1;
  *(inited + 40) = v4;
  *(inited + 48) = v7;
  *(inited + 56) = v10;
  v13 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v13;
}

uint64_t protocol witness for Builder.inputDescriptors() in conformance TimelineTrackAndActionBuilder()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  *(inited + 32) = v1;
  *(inited + 48) = v4;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 56) = v3;
  *(inited + 80) = 112;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  outlined destroy of InputDescriptor(inited + 32);
  return v6;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TimelineTrackAndActionBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TimelineTrackAndActionBuilder);
  outlined destroy of OutputDescriptor(&unk_287410588);
  return v0;
}

uint64_t closure #1 in TimelineBuilder.inputDescriptors()(uint64_t a1, void *a2)
{
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  *(swift_initStackObject() + 16) = PrimIfNeeded;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v33[0] = static ToolsFoundations.Token.targetPathAttributeName;
    v4 = one-time initialization token for pivotEntity;
    v5 = static ToolsFoundations.Token.targetPathAttributeName;
    if (v4 != -1)
    {
      swift_once();
    }

    v33[1] = static ToolsFoundations.Token.pivotEntity;
    v6 = static ToolsFoundations.Token.pivotEntity;
    v7 = Prim.descendants.getter();
    v32 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      v25 = v7;
      v8 = __CocoaSet.count.getter();
      v7 = v25;
      if (!v8)
      {
LABEL_43:
        v24 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_43;
      }
    }

    v27 = PrimIfNeeded;
    v28 = v7;
    v9 = 0;
    v30 = v7 & 0xFFFFFFFFFFFFFF8;
    v31 = v7 & 0xC000000000000001;
    v29 = v8;
LABEL_9:
    if (v31)
    {
      break;
    }

    if (v9 < *(v30 + 16))
    {

      v10 = __OFADD__(v9++, 1);
      if (!v10)
      {
        goto LABEL_12;
      }

LABEL_33:
      __break(1u);
      return MEMORY[0x277D84FA0];
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  MEMORY[0x26670F670](v9, v28);
  v10 = __OFADD__(v9++, 1);
  if (v10)
  {
    goto LABEL_33;
  }

LABEL_12:
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = v33[v11];
    if (RIOPxrUsdPrimHasRelationship())
    {
      v14 = RIOPxrUsdPrimCopyRelationship();
      type metadata accessor for Relationship();
      v15 = swift_allocObject();
      v15[2] = v14;
      v16 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v15, 0);
    }

    else
    {
      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();
      outlined consume of Object.Error(0);

      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);
    v18 = *(v12 + 2);
    PrimIfNeeded = (v18 + v17);
    if (__OFADD__(v18, v17))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && PrimIfNeeded <= *(v12 + 3) >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v18 <= PrimIfNeeded)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v12);
      if (!*(v16 + 16))
      {
LABEL_13:

        if (v17)
        {
          goto LABEL_37;
        }

        goto LABEL_14;
      }
    }

    if ((*(v12 + 3) >> 1) - *(v12 + 2) < v17)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v21 = *(v12 + 2);
      v10 = __OFADD__(v21, v17);
      v22 = v21 + v17;
      if (v10)
      {
        goto LABEL_39;
      }

      *(v12 + 2) = v22;
    }

LABEL_14:
    ++v11;
  }

  while (v11 != 2);

  specialized Array.append<A>(contentsOf:)(v12);
  if (v9 != v29)
  {
    goto LABEL_9;
  }

  v24 = v32;
  PrimIfNeeded = v27;
LABEL_44:

  swift_arrayDestroy();
  v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAHGTt0g5Tf4g_n(v24);

  return v26;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = __CocoaSet.count.getter();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationResource] and conformance [A], &_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AnimationResourceCGMd, &_sSay10RealityKit17AnimationResourceCGMR);
        v16 = specialized protocol witness for Collection.subscript.read in conformance [A](v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for AnimationResource();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *TimelineBuilder.createActions(for:inputs:)(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v2 = RIOPxrUsdPrimCopyTypeName();
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v3 = static TimelineConstants.Track.primType;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  v4 = v3;
  v5 = static _CFObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v7 = v6;
  v8 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v6);

  if (v8 != 2 && (v8 & 1) == 0)
  {
    return 0;
  }

  v9 = Prim.children.getter();
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_26:

    v14 = MEMORY[0x277D84F90];
LABEL_27:
    v31 = specialized Sequence.flatMap<A>(_:)(v14);

    return v31;
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_11:
  v38 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v38;
    v35 = v10 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        v15 = MEMORY[0x26670F670](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = static os_log_type_t.info.getter();
      if (one-time initialization token for timeline != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.timeline;
      if (os_log_type_enabled(static OS_os_log.timeline, v16))
      {
        v18 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v37 = v33;
        *v18 = 136315138;
        v19 = RIOPxrUsdObjectCopyPath();
        v20 = v10;
        v21 = RIOPxrSdfPathCopyString();
        v32 = v16;
        v22 = v11;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v14;
        v25 = v24;

        v10 = v20;
        v26 = v23;
        v11 = v22;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v37);
        v14 = v34;

        *(v18 + 4) = v27;
        _os_log_impl(&dword_26187B000, v17, v32, "Start producing an EntityAction for prim at path: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x266713AD0](v33, -1, -1);
        MEMORY[0x266713AD0](v18, -1, -1);
      }

      v28 = TimelineBuilder.createAction(for:inputs:)(v15, a2);

      v38 = v14;
      v30 = *(v14 + 16);
      v29 = *(v14 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v14 = v38;
      }

      ++v13;
      *(v14 + 16) = v30 + 1;
      *(v14 + 8 * v30 + 32) = v28;
    }

    while (v11 != v13);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t TimelineBuilder.timingFunction(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = Prim.children.getter();
  v5 = v4;
  v34 = a2;
  if (v4 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_44:

    v20 = 1;
    v8 = v34;
    goto LABEL_45;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_44;
  }

LABEL_3:
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (v8)
  {
    MEMORY[0x26670F670](v7, v5);
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_33;
    }

LABEL_7:
    v10 = RIOPxrUsdObjectCopyName();
    if (one-time initialization token for timingFunction != -1)
    {
      swift_once();
    }

    v11 = static ToolsFoundations.Token.timingFunction;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v12 = v11;
    a1 = static _CFObject.== infix(_:_:)();

    if (a1)
    {

      if (String.count.getter() < 1)
      {
        v13 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v13 = RIOPxrTfTokenCreateWithCString();
      }

      v14 = v13;
      v8 = v34;
      if (RIOPxrUsdPrimHasAttribute())
      {
        v15 = RIOPxrUsdPrimCopyAttribute();
        v16 = RIOPxrUsdAttributeCopyValue();
        if (!v16)
        {

          goto LABEL_28;
        }

        v17 = v16;
        v5 = RIOPxrVtValueCopyToken();

        if (v5)
        {

          v18 = RIOPxrTfTokenCopyString();
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v19;

          if (v6 == 0x746C7561666564 && a1 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            static AnimationTimingFunction.default.getter();
          }

          else
          {
            if ((v6 != 0x6E4965736165 || a1 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_35;
            }

            static AnimationTimingFunction.easeIn.getter();
          }

LABEL_25:

          v20 = 0;
          goto LABEL_45;
        }
      }

      goto LABEL_28;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_44;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  if (v6 == 0x754F6E4965736165 && a1 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.easeInOut.getter();
    goto LABEL_25;
  }

  if (v6 == 0x74754F65736165 && a1 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.easeOut.getter();
    goto LABEL_25;
  }

  if (v6 == 0x7261656E696CLL && a1 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationTimingFunction.linear.getter();
    goto LABEL_25;
  }

  if (v6 == 0x7A65426369627563 && a1 == 0xEB00000000726569)
  {

LABEL_56:
    if (String.count.getter() < 1)
    {
      v25 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v25 = RIOPxrTfTokenCreateWithCString();
    }

    v26 = v25;
    _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5(v25);

    if (String.count.getter() < 1)
    {
      v27 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v27 = RIOPxrTfTokenCreateWithCString();
    }

    v28 = v27;
    _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD2VySfG_Tt1B5(v27);

    __asm { FMOV            V2.2S, #1.0 }

    static AnimationTimingFunction.cubicBezier(controlPoint1:controlPoint2:)();
    goto LABEL_25;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_56;
  }

LABEL_28:
  v20 = 1;
LABEL_45:
  v21 = type metadata accessor for AnimationTimingFunction();
  v22 = *(*(v21 - 8) + 56);

  return v22(v8, v20, 1, v21);
}

uint64_t TimelineBuilder.transformMode(for:inputs:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v7);
  v63 = &v61 - v11;
  v12 = Prim.children.getter();
  v13 = v12;
  v64 = v9;
  v62 = a2;
  if (v12 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_51:

    goto LABEL_52;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_3:
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  while (v16)
  {
    v17 = MEMORY[0x26670F670](v15, v13);
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_33;
    }

LABEL_7:
    v66 = v17;
    a2 = RIOPxrUsdObjectCopyName();
    if (one-time initialization token for transformMode != -1)
    {
      swift_once();
    }

    v19 = static ToolsFoundations.Token.transformMode;
    type metadata accessor for RIOPxrTfTokenRef(0);
    a1 = v20;
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v21 = v19;
    v22 = static _CFObject.== infix(_:_:)();

    if (v22)
    {

      if (String.count.getter() < 1)
      {
        v23 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v23 = RIOPxrTfTokenCreateWithCString();
      }

      v24 = v23;
      v16 = v64;
      if (!RIOPxrUsdPrimHasAttribute())
      {
LABEL_27:

        goto LABEL_52;
      }

      v25 = RIOPxrUsdPrimCopyAttribute();
      v26 = RIOPxrUsdAttributeCopyValue();
      if (v26)
      {
        v27 = v26;
        v13 = RIOPxrVtValueCopyToken();

        if (v13)
        {

          v28 = RIOPxrTfTokenCopyString();
          a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v29;

          if (a2 == 0x746E65726170 && a1 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v30 = MEMORY[0x277CDB2F8];
          }

          else
          {
            if ((a2 != 0x6C61636F6CLL || a1 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_35;
            }

            v30 = MEMORY[0x277CDB2E8];
          }

          v31 = *v30;
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
          v66 = *(v32 - 8);
          v33 = v65;
          (*(v66 + 104))(v65, v31, v32);
          goto LABEL_26;
        }

        goto LABEL_27;
      }

LABEL_52:
      v48 = v65;
      static FromToByAction.TransformMode.default.getter();
      goto LABEL_53;
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_51;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  if (a2 == 0x65766974616C6572 && a1 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (String.count.getter() < 1)
    {
      v37 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v37 = RIOPxrTfTokenCreateWithCString();
    }

    v38 = v37;
    if (RIOPxrUsdPrimHasRelationship())
    {
      v39 = RIOPxrUsdPrimCopyRelationship();

      type metadata accessor for Relationship();
      v40 = swift_allocObject();
      v40[2] = v39;
      v41 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v40, 0);
      if (*(v41 + 16))
      {
        v42 = *(v41 + 32);

        v67 = v42;
        v43 = v42;
        v44 = v63;
        TimelineBuilder.createBindPath(from:inputs:)(&v67, v62, v63);

        outlined init with copy of TimelineBuilder.BindPathWrapper(v44, v16);
        v52 = type metadata accessor for BindTarget.EntityPath();
        v53 = v44;
        v54 = *(v52 - 8);
        if ((*(v54 + 48))(v16, 1, v52) == 1)
        {
          v55 = v65;
          static ActionEntityResolution.sourceEntity.getter();

          outlined destroy of TimelineBuilder.BindPathWrapper(v53);
        }

        else
        {
          outlined destroy of TimelineBuilder.BindPathWrapper(v53);

          v55 = v65;
          (*(v54 + 32))(v65, v16, v52);
          v56 = *MEMORY[0x277CDB480];
          v57 = type metadata accessor for ActionEntityResolution();
          (*(*(v57 - 8) + 104))(v55, v56, v57);
        }

        v58 = *MEMORY[0x277CDB300];
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
        v60 = *(v59 - 8);
        (*(v60 + 104))(v55, v58, v59);
        return (*(v60 + 56))(v55, 0, 1, v59);
      }
    }

    else
    {

      v67 = 0;
      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();
      outlined consume of Object.Error(v67);
    }

    v45 = v65;
    static FromToByAction.TransformMode.default.getter();

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
    return (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  }

  if (a2 == 0x656E656373 && a1 == 0xE500000000000000)
  {

    goto LABEL_59;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {

LABEL_59:
    v51 = *MEMORY[0x277CDB2F0];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
    v66 = *(v32 - 8);
    v33 = v65;
    (*(v66 + 104))(v65, v51, v32);
LABEL_26:
    v34 = *(v66 + 56);
    v35 = v33;
    v36 = v32;
    goto LABEL_54;
  }

  v48 = v65;
  static FromToByAction.TransformMode.default.getter();

LABEL_53:
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
  v34 = *(*(v49 - 8) + 56);
  v36 = v49;
  v35 = v48;
LABEL_54:

  return v34(v35, 0, 1, v36);
}

uint64_t TimelineBuilder.createBindPath(rootEntity:targetEntity:)@<X0>(void (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v5 = type metadata accessor for BindTarget.EntityPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v9 - 8, v10);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v13, v11);
  v16 = &v51 - v15;
  v18.n128_f32[0] = MEMORY[0x28223BE20](v17, v14);
  v60 = &v51 - v19;
  v21 = MEMORY[0x28223BE20](v20, v18);
  v23 = &v51 - v22;
  v55 = v6;
  v24 = v5;
  v61 = *(v6 + 56);
  v62 = v6 + 56;
  v61(&v51 - v22, 1, 1, v5, v21);
  type metadata accessor for Entity();

  v25 = MEMORY[0x277D84F90];
  v59 = xmmword_2619891C0;
  v53 = a3;
  while (1)
  {

    v26 = HasHierarchy.parent.getter();

    if (v26)
    {
      v63 = v58;
      v64 = v26;
      lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D8]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v27)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = v59;
    *(v28 + 32) = dispatch thunk of Entity.name.getter();
    *(v28 + 40) = v29;
    v30 = *(v25 + 16);
    if (v30)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v30 + 1, 1, v28);
      if (!*(v25 + 16))
      {
        goto LABEL_26;
      }

      v28 = v33;
      if ((*(v33 + 3) >> 1) - *(v33 + 2) < v30)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:

        __break(1u);
        return result;
      }

      swift_arrayInitWithCopy();

      v34 = *(v28 + 16);
      v35 = __OFADD__(v34, v30);
      v36 = v34 + v30;
      if (v35)
      {
        goto LABEL_25;
      }

      *(v28 + 16) = v36;
    }

    else
    {
    }

    v31 = HasHierarchy.parent.getter();
    if (!v31)
    {
      v51 = a2;
      v25 = v28;
      goto LABEL_14;
    }

    v32 = v31;

    a2 = v32;
    v25 = v28;
  }

  v51 = a2;
LABEL_14:
  v54 = v25;
  v37 = *(v25 + 16);
  if (v37)
  {
    v58 = (v55 + 32);
    *&v59 = v55 + 48;
    v56 = (v55 + 8);
    v38 = (v54 + 40);
    do
    {
      v39 = v23;
      v40 = *(v38 - 1);
      v41 = *v38;
      v42 = v39;
      v43 = v60;
      outlined init with copy of BindTarget.EntityPath?(v39, v60);
      if ((*v59)(v43, 1, v24) == 1)
      {

        outlined destroy of Any?(v43, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
        static BindTarget.entity(_:)();
      }

      else
      {
        v44 = v43;
        v45 = v57;
        (*v58)(v57, v44, v24);

        MEMORY[0x26670E920](v40, v41);

        (*v56)(v45, v24);
      }

      v23 = v42;
      outlined destroy of Any?(v42, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
      (v61)(v16, 0, 1, v24);
      outlined init with take of BindTarget.EntityPath?(v16, v42);
      v38 += 2;
      --v37;
    }

    while (v37);
  }

  v46 = v52;
  outlined init with take of BindTarget.EntityPath?(v23, v52);
  v47 = v55;
  if ((*(v55 + 48))(v46, 1, v24) == 1)
  {
    outlined destroy of Any?(v46, &_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
    v48 = 1;
    v49 = v53;
  }

  else
  {
    v49 = v53;
    (*(v47 + 32))(v53, v46, v24);
    v48 = 0;
  }

  return (v61)(v49, v48, 1, v24);
}

void TimelineBuilder.createBindPath(from:inputs:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for __EntityRef();
  v8 = *(v7 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v13, v10);
  MEMORY[0x28223BE20](v15, v14);
  v18 = v38 - v17;
  v19 = *a1;
  if (!*a1)
  {
    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v33 = 0;
LABEL_13:
    swift_willThrow();
    return;
  }

  v39 = a3;
  v40 = v16;
  v20 = *(a2 + 56);
  v21 = v19;
  v42 = v20;
  v43 = v21;
  v22 = RIOBuilderInputsGetImportSession();
  if (!v22)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  swift_beginAccess();
  EntityAtPrimPath = RIOImportSessionGetEntityAtPrimPath();
  if (!EntityAtPrimPath)
  {

    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v34 = v19;
    goto LABEL_13;
  }

  v26 = EntityAtPrimPath;
  v27 = type metadata accessor for Entity();
  v45 = MEMORY[0x277D841D8];
  v44[0] = v26;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v44);
  v38[1] = v27;
  v41 = static Entity.__fromCore(_:)();

  v28 = v8;
  v29 = *(v8 + 8);
  v29(v18, v7);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(v44, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v45)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      v30 = v29;
      (*(v28 + 16))(v12, &v46[OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity], v7);

      v31 = v40;
      (*(v28 + 32))(v40, v12, v7);
      static Entity.__fromCore(_:)();
      v32 = HasHierarchy.parent.getter();

      if (v32)
      {
        TimelineBuilder.createBindPath(rootEntity:targetEntity:)(v32, v41, v39);

        v30(v31, v7);
        return;
      }

      v30(v31, v7);
    }
  }

  else
  {
    outlined destroy of Any?(v44, &_sypSgMd, &_sypSgMR);
  }

  v35 = RIOBuilderInputsCopyPrimPath();
  if (v35)
  {
    v46 = v35;
    SceneDescriptionFoundations.Path.deletingLastPathComponent()(v44);

    v36 = v44[0];
    lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error();
    swift_allocError();
    *v37 = v36;
    swift_willThrow();

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t TimelineBuilder.createAnimationAction(for:inputs:)(uint64_t a1, unint64_t a2)
{
  v112 = a2;
  v3 = type metadata accessor for PlayAnimationAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionEntityResolution();
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8, v10);
  v105 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v11);
  v15 = v94 - v14;
  v16 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v16 - 8, v17);
  v103 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v18);
  v113 = v94 - v21;
  v22 = type metadata accessor for AnimationHandoffType();
  v23 = *(v22 - 8);
  v25.n128_f32[0] = MEMORY[0x28223BE20](v22, v24);
  v104 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v25);
  v29 = v94 - v28;
  v30 = String.count.getter();
  v100 = v15;
  v101 = v9;
  if (v30 < 1)
  {
    v31 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v31 = RIOPxrTfTokenCreateWithCString();
  }

  v32 = v31;
  v102 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(v31);
  v34 = v33;

  if (!v34)
  {
    return 0;
  }

  v107 = v34;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v35 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v36 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v37 = swift_allocObject();
    v37[2] = v36;
    v106 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v37, 0);
  }

  else
  {

    v114[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v114[0]);
    v106 = MEMORY[0x277D84F90];
  }

  v39 = String.count.getter();
  v98 = v3;
  if (v39 < 1)
  {
    v40 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v40 = RIOPxrTfTokenCreateWithCString();
  }

  v41 = v40;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v40);

  if (String.count.getter() < 1)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  v44 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSi_Tt1B5(v42);
  v46 = v45;

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  v48 = String.count.getter();
  v109 = v23;
  v110 = v22;
  v97 = v4;
  v95 = v47;
  if (v48 < 1)
  {
    v49 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v49 = RIOPxrTfTokenCreateWithCString();
  }

  v50 = v49;
  v108 = v29;
  v51 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v49);

  v52 = Prim.children.getter();
  v53 = v52;
  v111 = a1;
  v99 = v8;
  v96 = v7;
  v94[1] = v51;
  if (v52 >> 62)
  {
    v54 = __CocoaSet.count.getter();
    if (v54)
    {
      goto LABEL_25;
    }

LABEL_72:

    v29 = v108;
    static AnimationHandoffType.default.getter();
    v77 = v109;
    v55 = v112;
    v56 = v106;
    goto LABEL_73;
  }

  v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
    goto LABEL_72;
  }

LABEL_25:
  v55 = 0;
  v56 = v53 & 0xC000000000000001;
  while (!v56)
  {
    if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_37;
    }

LABEL_29:
    v29 = RIOPxrUsdObjectCopyName();
    if (String.count.getter() < 1)
    {
      v58 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v58 = RIOPxrTfTokenCreateWithCString();
    }

    v59 = v58;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v60 = static _CFObject.== infix(_:_:)();

    if (v60)
    {
      goto LABEL_38;
    }

    ++v55;
    if (v57 == v54)
    {
      goto LABEL_72;
    }
  }

  MEMORY[0x26670F670](v55, v53);
  v57 = v55 + 1;
  if (!__OFADD__(v55, 1))
  {
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  if (String.count.getter() < 1)
  {
    v61 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v61 = RIOPxrTfTokenCreateWithCString();
  }

  v62 = v61;
  v29 = v108;
  v55 = v112;
  v56 = v106;
  v63 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v61);

  if (String.count.getter() < 1)
  {
    v64 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v64 = RIOPxrTfTokenCreateWithCString();
  }

  v65 = v64;
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  LODWORD(v112) = v63;
  if (!HasAttribute)
  {
    v67 = v65;
LABEL_52:

    goto LABEL_53;
  }

  v67 = RIOPxrUsdPrimCopyAttribute();
  v68 = RIOPxrUsdAttributeCopyValue();
  if (!v68)
  {

    goto LABEL_52;
  }

  v69 = v29;
  v70 = v68;
  v71 = RIOPxrVtValueCopyToken();

  v29 = v69;
  if (!v71)
  {
LABEL_53:
    v75 = 0x8000000261994D60;
    v76 = 0x8000000261994D60 == 0xE700000000000000;
    v73 = 0xD000000000000012;
    goto LABEL_54;
  }

  v72 = RIOPxrTfTokenCopyString();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = v75 == 0xE700000000000000;
  if (v73 == 0x65736F706D6F43 && v75 == 0xE700000000000000)
  {
    goto LABEL_55;
  }

LABEL_54:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_55:

    static AnimationHandoffType.compose.getter();
    goto LABEL_60;
  }

  if (v73 == 1886352467 && v75 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationHandoffType.stop.getter();
    goto LABEL_60;
  }

  if (v73 == 0x6563616C706552 && v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static AnimationHandoffType.replace(applyToAllLayers:)();
    goto LABEL_60;
  }

  if (v73 == 0xD000000000000012 && 0x8000000261994D80 == v75)
  {

    goto LABEL_69;
  }

LABEL_68:
  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
LABEL_69:
    static AnimationHandoffType.snapshotAndReplace(applyToAllLayers:)();
  }

  else
  {
    static AnimationHandoffType.default.getter();
  }

LABEL_60:

  v77 = v109;
LABEL_73:
  if (String.count.getter() < 1)
  {
    v79 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v79 = RIOPxrTfTokenCreateWithCString();
  }

  v80 = v79;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v79);

  if (*(v56 + 16))
  {
    v81 = *(v56 + 32);
    v82 = v81;
  }

  else
  {
    v81 = 0;
  }

  v83 = v113;

  v114[0] = v81;
  TimelineBuilder.createBindPath(from:inputs:)(v114, v55, v83);
  v84 = v29;

  v85 = v103;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v83, v103);
  v86 = type metadata accessor for BindTarget.EntityPath();
  v87 = *(v86 - 8);
  if ((*(v87 + 48))(v85, 1, v86) == 1)
  {
    v88 = v100;
    static ActionEntityResolution.sourceEntity.getter();
    v89 = v99;
    v90 = v101;
  }

  else
  {
    v88 = v100;
    (*(v87 + 32))(v100, v85, v86);
    v90 = v101;
    v89 = v99;
    (*(v101 + 104))(v88, *MEMORY[0x277CDB480], v99);
  }

  v114[0] = v102;
  v114[1] = v107;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  (*(v90 + 16))(v105, v88, v89);
  v91 = v110;
  (*(v77 + 16))(v104, v84, v110);
  v92 = v96;
  PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)();
  v38 = specialized TimelineBuilder.handleLooping(action:for:)(v92, v111, MEMORY[0x277CDB450], MEMORY[0x277CDB448]);
  (*(v97 + 8))(v92, v98);
  (*(v90 + 8))(v88, v99);
  outlined destroy of TimelineBuilder.BindPathWrapper(v113);
  (*(v77 + 8))(v84, v91);
  return v38;
}

void *TimelineBuilder.createTimelineAction(for:inputs:)(uint64_t a1, void *a2, float a3)
{
  v70 = a2;
  v4 = type metadata accessor for AnimationHandoffType();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayAnimationAction();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionEntityResolution();
  v67 = *(v11 - 8);
  v68 = v11;
  v13.n128_f32[0] = MEMORY[0x28223BE20](v11, v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v13);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15TimelineBuilderC15BindPathWrapperOSgMd, &_s9RealityIO15TimelineBuilderC15BindPathWrapperOSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v69 = *(v23 - 8);
  v25.n128_f32[0] = MEMORY[0x28223BE20](v23, v24);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v25);
  v30 = &v60 - v29;
  if (String.count.getter() < 1)
  {
    v31 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v31 = RIOPxrTfTokenCreateWithCString();
  }

  v32 = v31;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v71[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v71[0]);
    return 0;
  }

  v33 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v34 = swift_allocObject();
  v34[2] = v33;
  v35 = Relationship.targets.getter();
  outlined consume of Result<AnyAttribute, Object.Error>(v34, 0);
  if (!*(v35 + 16))
  {

    return 0;
  }

  v61 = a1;
  v62 = v10;
  v36 = *(v35 + 32);

  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = result;
  HasPrimAtPrimPath = RIOPxrUsdStageHasPrimAtPrimPath();

  if (!HasPrimAtPrimPath)
  {

    return 0;
  }

  v63 = v36;
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v40 = result;
  type metadata accessor for Stage();
  *(swift_initStackObject() + 16) = v40;
  v41 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  inited = swift_initStackObject();
  v60 = PrimIfNeeded;
  *(inited + 16) = PrimIfNeeded;
  v44 = String.count.getter();
  v45 = v62;
  if (v44 < 1)
  {
    v46 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v46 = RIOPxrTfTokenCreateWithCString();
  }

  v47 = v46;
  v48 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v46);

  if (v48 != 2 && (v48 & 1) == 0)
  {

    return 0;
  }

  v71[3] = v63;
  SceneDescriptionFoundations.Path.deletingLastPathComponent()(v71);
  v49 = v71[0];
  TimelineBuilder.createBindPath(from:inputs:)(v71, v70, v22);
  v70 = v49;

  (*(v69 + 56))(v22, 0, 1, v23);
  outlined init with take of TimelineBuilder.BindPathWrapper(v22, v30);
  outlined init with copy of TimelineBuilder.BindPathWrapper(v30, v27);
  v50 = type metadata accessor for BindTarget.EntityPath();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v27, 1, v50) == 1)
  {
    static ActionEntityResolution.sourceEntity.getter();
    v53 = v67;
    v52 = v68;
  }

  else
  {
    (*(v51 + 32))(v18, v27, v50);
    v53 = v67;
    v52 = v68;
    (*(v67 + 104))(v18, *MEMORY[0x277CDB480], v68);
  }

  v54 = v63;
  v55 = RIOPxrSdfPathCopyString();
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v71[0] = v56;
  v71[1] = v58;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  (*(v53 + 16))(v15, v18, v52);
  static AnimationHandoffType.compose.getter();
  PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)();
  v59 = specialized TimelineBuilder.handleLooping(action:for:)(v45, v61, MEMORY[0x277CDB450], MEMORY[0x277CDB448]);

  (*(v65 + 8))(v45, v66);
  (*(v53 + 8))(v18, v52);
  outlined destroy of TimelineBuilder.BindPathWrapper(v30);
  return v59;
}

uint64_t default argument 6 of static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)()
{
  type metadata accessor for AnimationFillMode();
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t TimelineBuilder.createAudioAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for PlayAudioAction();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ActionEntityResolution();
  v49 = *(v7 - 8);
  v50 = v7;
  v9.n128_f32[0] = MEMORY[0x28223BE20](v7, v8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v9);
  v14 = &v45[-v13];
  v15 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v17);
  v22 = &v45[-v21];
  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v24 = v23;
  v25 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(v23);
  v27 = v26;

  if (!v27)
  {
    return 0;
  }

  v28 = String.count.getter();
  v47 = v25;
  v48 = v3;
  if (v28 < 1)
  {
    v29 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v29 = RIOPxrTfTokenCreateWithCString();
  }

  v31 = v29;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v29);

  if (String.count.getter() < 1)
  {
    v32 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v32 = RIOPxrTfTokenCreateWithCString();
  }

  v33 = v32;
  v34 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v32);

  v46 = v34 == 2;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v35 = static ToolsFoundations.Token.targetPathAttributeName;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v53 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v53);
LABEL_19:
    v39 = 0;
    goto LABEL_20;
  }

  v36 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v37 = swift_allocObject();
  v37[2] = v36;
  v38 = Relationship.targets.getter();
  outlined consume of Result<AnyAttribute, Object.Error>(v37, 0);
  if (!*(v38 + 16))
  {

    goto LABEL_19;
  }

  v39 = *(v38 + 32);

LABEL_20:
  v53 = v39;
  TimelineBuilder.createBindPath(from:inputs:)(&v53, v52, v22);
  LODWORD(v52) = v46 | v34;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v22, v19);
  v40 = type metadata accessor for BindTarget.EntityPath();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v19, 1, v40) == 1)
  {
    static ActionEntityResolution.sourceEntity.getter();
    v43 = v49;
    v42 = v50;
  }

  else
  {
    (*(v41 + 32))(v14, v19, v40);
    v43 = v49;
    v42 = v50;
    (*(v49 + 104))(v14, *MEMORY[0x277CDB480], v50);
  }

  (*(v43 + 16))(v11, v14, v42);
  PlayAudioAction.init(targetEntity:audioResourceName:gain:useControlledPlayback:)();
  v44 = specialized TimelineBuilder.handleLooping(action:for:)(v6, a1, MEMORY[0x277CDB390], MEMORY[0x277CDB388]);

  (*(v51 + 8))(v6, v48);
  (*(v43 + 8))(v14, v42);
  outlined destroy of TimelineBuilder.BindPathWrapper(v22);
  return v44;
}

uint64_t TimelineBuilder.createEmphasizeAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v120 = a1;
  v2 = type metadata accessor for AnimationRepeatMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v102 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AnimationFillMode();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v6);
  v101 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v108 = &v101 - v10;
  v11 = type metadata accessor for BindTarget();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v107 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EmphasizeAction();
  v115 = *(v15 - 8);
  v116 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EmphasizeAction.EmphasisAnimationStyle();
  v20 = *(v19 - 8);
  v22.n128_f32[0] = MEMORY[0x28223BE20](v19, v21);
  v112 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v22);
  v119 = &v101 - v25;
  v26 = type metadata accessor for EmphasizeAction.EmphasisMotionType();
  v122 = *(v26 - 8);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v26, v27);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v28);
  v121 = &v101 - v32;
  v33 = String.count.getter();
  v105 = v2;
  if (v33 < 1)
  {
    v34 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v34 = RIOPxrTfTokenCreateWithCString();
  }

  v35 = v34;
  v114 = v3;
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  v109 = v11;
  if (!HasAttribute)
  {
    v37 = v35;
LABEL_12:

    v113 = 0;
LABEL_13:
    v48 = MEMORY[0x277CDB328];
    goto LABEL_14;
  }

  v37 = RIOPxrUsdPrimCopyAttribute();
  v38 = RIOPxrUsdAttributeCopyValue();
  if (!v38)
  {

    goto LABEL_12;
  }

  v110 = v18;
  v39 = v38;
  v40 = RIOPxrVtValueCopyToken();

  if (!v40)
  {
    v113 = 0;
    v18 = v110;
    goto LABEL_13;
  }

  v41 = v12;
  v42 = v40;
  v43 = RIOPxrTfTokenCopyString();
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  v113 = v42;

  v47 = v44;
  v18 = v110;
  if (v44 == 7368560 && v46 == 0xE300000000000000)
  {

    v48 = MEMORY[0x277CDB328];
    v12 = v41;
    goto LABEL_14;
  }

  v12 = v41;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_13;
  }

  if (v47 == 0x6B6E696C62 && v46 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB340];
  }

  else if (v47 == 0x65636E756F62 && v46 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB358];
  }

  else if (v47 == 1885957222 && v46 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB330];
  }

  else if (v47 == 0x74616F6C66 && v46 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB348];
  }

  else if (v47 == 0x656C6767696ALL && v46 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB360];
  }

  else if (v47 == 0x65736C7570 && v46 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v48 = MEMORY[0x277CDB350];
    v18 = v110;
  }

  else
  {
    if (v47 == 1852403827 && v46 == 0xE400000000000000)
    {
    }

    else
    {
      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v100 & 1) == 0)
      {
        v18 = v110;
        goto LABEL_13;
      }
    }

    v48 = MEMORY[0x277CDB338];
    v18 = v110;
  }

LABEL_14:
  (*(v122 + 104))(v121, *v48, v26);
  if (String.count.getter() < 1)
  {
    v49 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v49 = RIOPxrTfTokenCreateWithCString();
  }

  v50 = v49;
  v51 = RIOPxrUsdPrimHasAttribute();
  v117 = v26;
  v118 = v19;
  if (!v51)
  {
    v52 = v50;
LABEL_25:

    v111 = 0;
LABEL_26:
    v64 = v114;
LABEL_27:
    v65 = v12;
    v63 = MEMORY[0x277CDB370];
    goto LABEL_28;
  }

  v52 = RIOPxrUsdPrimCopyAttribute();
  v53 = RIOPxrUsdAttributeCopyValue();
  if (!v53)
  {

    goto LABEL_25;
  }

  v110 = v12;
  v54 = v20;
  v55 = v18;
  v56 = v53;
  v57 = RIOPxrVtValueCopyToken();

  if (!v57)
  {
    v111 = 0;
    v18 = v55;
    v20 = v54;
    v26 = v117;
    v19 = v118;
    v64 = v114;
    v12 = v110;
    goto LABEL_27;
  }

  v58 = v57;
  v59 = RIOPxrTfTokenCopyString();
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  v111 = v58;

  if (v60 == 0x6369736162 && v62 == 0xE500000000000000)
  {

    v63 = MEMORY[0x277CDB370];
    v19 = v118;
    v18 = v55;
LABEL_48:
    v20 = v54;
LABEL_49:
    v26 = v117;
    v64 = v114;
    v65 = v110;
    goto LABEL_28;
  }

  v18 = v55;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v63 = MEMORY[0x277CDB370];
    v19 = v118;
    goto LABEL_48;
  }

  v20 = v54;
  if (v60 == 0x6C756679616C70 && v62 == 0xE700000000000000)
  {

    v63 = MEMORY[0x277CDB378];
    v19 = v118;
    goto LABEL_49;
  }

  v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v26 = v117;
  v19 = v118;
  v12 = v110;
  if (v98)
  {
    v65 = v110;

    v63 = MEMORY[0x277CDB378];
    v64 = v114;
    goto LABEL_28;
  }

  if (v60 != 1684826487 || v62 != 0xE400000000000000)
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v99)
    {
      v65 = v12;
      goto LABEL_68;
    }

    goto LABEL_26;
  }

  v65 = v110;

LABEL_68:
  v63 = MEMORY[0x277CDB368];
  v64 = v114;
LABEL_28:
  v66 = v119;
  (*(v20 + 104))(v119, *v63, v19);
  (*(v122 + 16))(v30, v121, v26);
  (*(v20 + 16))(v112, v66, v19);
  EmphasizeAction.init(motionType:style:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v67 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v67 = RIOPxrTfTokenCreateWithCString();
  }

  v68 = v67;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v67);

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v69 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v120 = v20;
    v110 = v18;
    v70 = v65;
    v71 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v72 = swift_allocObject();
    v72[2] = v71;
    v73 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v72, 0);
    if (*(v73 + 16))
    {
      v74 = *(v73 + 32);
      v75 = v74;
    }

    else
    {
      v74 = 0;
    }

    v80 = v108;
    v81 = v109;

    v82 = v107;
    closure #1 in TimelineBuilder.createEmphasizeAction(for:inputs:)(v74, v106, v107);
    v114 = type metadata accessor for AnimationResource();
    (*(v70 + 2))(v80, v82, v81);
    (*(v70 + 7))(v80, 0, 1, v81);
    v83 = v101;
    static AnimationFillMode.forwards.getter();
    v84 = v102;
    v85 = v105;
    (*(v64 + 104))(v102, *MEMORY[0x277CDB418], v105);
    v95 = v83;
    v96 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v64 + 8))(v84, v85);
    (*(v103 + 8))(v95, v104);
    outlined destroy of Any?(v108, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v70 + 1))(v107, v109);
    (*(v115 + 8))(v110, v116);
    (*(v120 + 8))(v119, v118);
    (*(v122 + 8))(v121, v117);
    return v96;
  }

  else
  {

    v123 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v76 = v123;
    v77 = swift_allocError();
    *v78 = v76;
    v79 = v117;
    v86 = v18;
    v87 = static os_log_type_t.error.getter();
    v88 = v116;
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v89 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_2619891C0;
    v123 = v77;
    v91 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v92 = String.init<A>(describing:)();
    v94 = v93;
    *(v90 + 56) = MEMORY[0x277D837D0];
    *(v90 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v90 + 32) = v92;
    *(v90 + 40) = v94;
    os_log(_:dso:log:_:_:)(v87, &dword_26187B000, v89, "Problem creating EmphasizeAction: %s", v101);

    (*(v115 + 8))(v86, v88);
    (*(v20 + 8))(v119, v118);
    (*(v122 + 8))(v121, v79);
    return 0;
  }
}

void closure #1 in TimelineBuilder.createEmphasizeAction(for:inputs:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BindTarget.EntityPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v14);
  v19 = &v22 - v18;
  v23 = a1;
  TimelineBuilder.createBindPath(from:inputs:)(&v23, a2, &v22 - v18);
  if (!v3)
  {
    outlined init with copy of TimelineBuilder.BindPathWrapper(v19, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      outlined destroy of TimelineBuilder.BindPathWrapper(v19);
      v20 = *MEMORY[0x277CDB230];
      v21 = type metadata accessor for BindTarget();
      (*(*(v21 - 8) + 104))(a3, v20, v21);
    }

    else
    {
      (*(v8 + 32))(v11, v16, v7);
      BindTarget.EntityPath.transform.getter();
      (*(v8 + 8))(v11, v7);
      outlined destroy of TimelineBuilder.BindPathWrapper(v19);
    }
  }
}

uint64_t TimelineBuilder.createImpulseAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v2 = type metadata accessor for AnimationFillMode();
  v91 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AnimationRepeatMode();
  v90 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v5);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v85 = &v83 - v9;
  v88 = type metadata accessor for ImpulseAction();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v10);
  v84 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BindTarget.EntityPath();
  v93 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BindTarget();
  v97 = *(v16 - 8);
  v98 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v94 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActionEntityResolution();
  v95 = *(v19 - 8);
  v96 = v19;
  v21.n128_f32[0] = MEMORY[0x28223BE20](v19, v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v21);
  v101 = &v83 - v25;
  v26 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v26 - 8, v27);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v28);
  v34 = &v83 - v33;
  MEMORY[0x28223BE20](v35, v32);
  v102 = &v83 - v36;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  v37 = String.count.getter();
  v92 = v2;
  if (v37 < 1)
  {
    v38 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v38 = RIOPxrTfTokenCreateWithCString();
  }

  v39 = v38;
  v40 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(v38);
  v42 = v41;
  v44 = v43;

  if (v44)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createImpulseAction(for:inputs:));
  }

  else
  {
    *&v45 = v40;
    *(&v45 + 1) = v42;
  }

  v83 = v45;
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v46 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v47 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v48 = swift_allocObject();
    v48[2] = v47;
    v49 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v48, 0);
    if (*(v49 + 16))
    {
      v50 = *(v49 + 32);
      v51 = v50;
    }

    else
    {
      v50 = 0;
    }

    v55 = v102;

    v103 = v50;
    TimelineBuilder.createBindPath(from:inputs:)(&v103, v100, v55);
    outlined init with copy of TimelineBuilder.BindPathWrapper(v55, v34);
    v56 = v93;
    v57 = *(v93 + 48);
    if (v57(v34, 1, v12) == 1)
    {
      static ActionEntityResolution.sourceEntity.getter();
      v59 = v95;
      v58 = v96;
    }

    else
    {
      v60 = *(v56 + 32);
      v61 = v101;
      v60(v101, v34, v12);
      v59 = v95;
      v62 = v61;
      v58 = v96;
      (*(v95 + 104))(v62, *MEMORY[0x277CDB480], v96);
    }

    outlined init with copy of TimelineBuilder.BindPathWrapper(v102, v30);
    if (v57(v30, 1, v12) == 1)
    {
      v64 = v97;
      v63 = v98;
      v65 = v94;
      (*(v97 + 104))(v94, *MEMORY[0x277CDB230], v98);
    }

    else
    {
      v66 = v93;
      (*(v93 + 32))(v15, v30, v12);
      v65 = v94;
      BindTarget.EntityPath.transform.getter();
      (*(v66 + 8))(v15, v12);
      v64 = v97;
      v63 = v98;
    }

    (*(v59 + 16))(v23, v101, v58);
    v67 = v84;
    ImpulseAction.init(targetEntity:linearImpulse:)();
    v100 = type metadata accessor for AnimationResource();
    v68 = v85;
    (*(v64 + 16))(v85, v65, v63);
    (*(v64 + 56))(v68, 0, 1, v63);
    v69 = v90;
    v70 = v87;
    (*(v90 + 104))(v87, *MEMORY[0x277CDB418], v99);
    v103 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
    v71 = v89;
    v72 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v80 = v88;
    v81 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v91 + 8))(v71, v72);
    (*(v69 + 8))(v70, v99);
    outlined destroy of Any?(v68, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v86 + 8))(v67, v80);
    (*(v97 + 8))(v94, v98);
    (*(v95 + 8))(v101, v96);
    outlined destroy of TimelineBuilder.BindPathWrapper(v102);
    return v81;
  }

  else
  {

    v103 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v52 = v103;
    v53 = swift_allocError();
    *v54 = v52;
    v73 = static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v74 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_2619891C0;
    v103 = v53;
    v76 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v77 = String.init<A>(describing:)();
    v79 = v78;
    *(v75 + 56) = MEMORY[0x277D837D0];
    *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    os_log(_:dso:log:_:_:)(v73, &dword_26187B000, v74, "Problem creating ImpulseAction: %s", v83);

    return 0;
  }
}

uint64_t TimelineBuilder.createLookAtTransition(for:attributeName:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v30 = &v30 - v5;
  v6 = type metadata accessor for AnimationTimingFunction();
  v7 = *(v6 - 8);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v9);
  v31 = &v30 - v13;
  v14 = Prim.children.getter();
  v15 = v14;
  v34 = v11;
  v35 = a2;
  v32 = v7;
  v33 = v6;
  if (v14 >> 62)
  {
LABEL_22:
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_23:

    static AnimationTimingFunction.default.getter();
    return BillboardAction.Transition.init(duration:timingFunction:)();
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_3:
  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x26670F670](v17, v15);
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v20 = RIOPxrUsdObjectCopyName();
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
    v21 = static _CFObject.== infix(_:_:)();

    if (v21)
    {
      goto LABEL_13;
    }

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_23;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = *(v15 + 8 * v17 + 32);

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  if (String.count.getter() < 1)
  {
    v22 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v22 = RIOPxrTfTokenCreateWithCString();
  }

  v23 = v22;
  v25 = v32;
  v24 = v33;
  v26 = v30;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(v22);

  TimelineBuilder.timingFunction(for:)(v18, v26);
  v27 = *(v25 + 48);
  if (v27(v26, 1, v24) == 1)
  {
    v28 = v31;
    static AnimationTimingFunction.default.getter();
    if (v27(v26, 1, v24) != 1)
    {
      outlined destroy of Any?(v26, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    v28 = v31;
    (*(v25 + 32))(v31, v26, v24);
  }

  (*(v25 + 16))(v34, v28, v24);
  BillboardAction.Transition.init(duration:timingFunction:)();

  return (*(v25 + 8))(v28, v24);
}

uint64_t TimelineBuilder.createLookAtAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v81 = type metadata accessor for AnimationRepeatMode();
  v88 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v2);
  v87 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnimationFillMode();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v85 = &v74 - v9;
  v78 = type metadata accessor for BindTarget.EntityPath();
  v10 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v11);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BindTarget();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v82 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v18);
  v92 = &v74 - v22;
  v23 = type metadata accessor for BillboardAction();
  v90 = *(v23 - 8);
  v91 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v93 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BillboardAction.Transition();
  v27 = *(v26 - 8);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v26, v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.n128_f32[0] = MEMORY[0x28223BE20](v32, v29);
  v35 = &v74 - v34;
  v37.n128_f32[0] = MEMORY[0x28223BE20](v36, v33);
  v39 = &v74 - v38;
  MEMORY[0x28223BE20](v40, v37);
  v94 = &v74 - v41;
  if (String.count.getter() < 1)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  v95 = v42;
  TimelineBuilder.createLookAtTransition(for:attributeName:)(v94);

  if (String.count.getter() < 1)
  {
    v44 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v44 = RIOPxrTfTokenCreateWithCString();
  }

  v45 = v44;
  v95 = v44;
  TimelineBuilder.createLookAtTransition(for:attributeName:)(v39);

  v46 = *(v27 + 16);
  v46(v35, v94, v26);
  v46(v31, v39, v26);
  BillboardAction.init(transitionIn:transitionOut:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v47 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v47 = RIOPxrTfTokenCreateWithCString();
  }

  v48 = v47;
  v49 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v47);

  if ((v49 & 0x100000000) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v51 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v52 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v53 = swift_allocObject();
    v53[2] = v52;
    v54 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v53, 0);
    if (*(v54 + 16))
    {
      v55 = *(v54 + 32);

      goto LABEL_21;
    }
  }

  else
  {

    v95 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v95);
  }

  v55 = 0;
LABEL_21:
  v56 = v10;
  v95 = v55;
  v57 = v92;
  TimelineBuilder.createBindPath(from:inputs:)(&v95, v89, v92);
  LODWORD(v89) = v50;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v57, v20);
  v58 = *(v10 + 48);
  v59 = v78;
  v60 = v58(v20, 1, v78);
  v76 = v39;
  v75 = v26;
  if (v60 == 1)
  {
    v62 = v82;
    v61 = v83;
    v63 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277CDB220], v84);
  }

  else
  {
    v64 = v77;
    (*(v56 + 32))(v77, v20, v59);
    v62 = v82;
    BindTarget.EntityPath.billboardBlendFactor.getter();
    (*(v56 + 8))(v64, v59);
    v61 = v83;
    v63 = v84;
  }

  type metadata accessor for AnimationResource();
  v65 = v85;
  (*(v61 + 16))(v85, v62, v63);
  (*(v61 + 56))(v65, 0, 1, v63);
  static AnimationFillMode.forwards.getter();
  v66 = v81;
  (*(v88 + 104))(v87, *MEMORY[0x277CDB418], v81);
  v67 = v91;
  v68 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

  v69 = v79;
  v70 = v76;
  v71 = v75;
  (*(v88 + 8))(v87, v66);
  (*(v69 + 8))(v86, v80);
  outlined destroy of Any?(v85, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v83 + 8))(v82, v84);
  outlined destroy of TimelineBuilder.BindPathWrapper(v92);
  (*(v90 + 8))(v93, v67);
  v72 = *(v27 + 8);
  v72(v70, v71);
  v72(v94, v71);
  return v68;
}

uint64_t TimelineBuilder.createOrbitAction(for:inputs:)(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v150 = a2;
  v2 = type metadata accessor for AnimationRepeatMode();
  v131 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for AnimationFillMode();
  v130 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v6);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v137 = &v123 - v11;
  v12 = type metadata accessor for BindTarget.EntityPath();
  v143 = *(v12 - 8);
  v144 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v128 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for BindTarget();
  v15 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v16);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrbitEntityAction();
  v142 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ActionEntityResolution();
  v149 = *(v147 - 8);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v147, v22);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v23);
  v148 = &v123 - v27;
  v28 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v30.n128_f32[0] = MEMORY[0x28223BE20](v28 - 8, v29);
  v129 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.n128_f32[0] = MEMORY[0x28223BE20](v32, v30);
  v138 = &v123 - v34;
  v36.n128_f32[0] = MEMORY[0x28223BE20](v35, v33);
  v38 = &v123 - v37;
  MEMORY[0x28223BE20](v39, v36);
  v151 = &v123 - v40;
  v41 = String.count.getter();
  v145 = v18;
  if (v41 < 1)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(v42);

  v44 = String.count.getter();
  v133 = v5;
  v139 = v15;
  if (v44 < 1)
  {
    v45 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v45 = RIOPxrTfTokenCreateWithCString();
  }

  v46 = v45;
  v47 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(v45);
  v49 = v48;
  v51 = v50;

  if (v51)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createOrbitAction(for:inputs:));
  }

  else
  {
    v52.i64[0] = v47;
    v52.i64[1] = v49;
  }

  v141 = v52;
  if (String.count.getter() < 1)
  {
    v53 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v53 = RIOPxrTfTokenCreateWithCString();
  }

  v54 = v53;
  v140 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v53);

  if (String.count.getter() < 1)
  {
    v55 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v55 = RIOPxrTfTokenCreateWithCString();
  }

  v56 = v55;
  v132 = v8;
  v146 = v21;
  if (RIOPxrUsdPrimHasAttribute())
  {
    v57 = RIOPxrUsdPrimCopyAttribute();
    v58 = RIOPxrUsdAttributeCopyValue();
    if (v58)
    {
      v59 = v58;
      v60 = RIOPxrVtValueCopyToken();

      if (v60)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v57 = v56;
  }

LABEL_23:
  if (String.count.getter() < 1)
  {
    v61 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v61 = RIOPxrTfTokenCreateWithCString();
  }

  v60 = v61;
LABEL_27:
  if (String.count.getter() < 1)
  {
    v62 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v62 = RIOPxrTfTokenCreateWithCString();
  }

  v63 = v62;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  static _CFObject.== infix(_:_:)();

  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v64 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v64 = RIOPxrTfTokenCreateWithCString();
  }

  v65 = v64;
  v66 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v64);

  if ((v66 & 0x100000000) != 0)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  if (one-time initialization token for pivotEntity != -1)
  {
    swift_once();
  }

  v68 = static ToolsFoundations.Token.pivotEntity;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v127 = v67;
    v69 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v70 = swift_allocObject();
    v70[2] = v69;
    v71 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v70, 0);
    if (*(v71 + 16))
    {
      v72 = *(v71 + 32);
      v73 = v72;
    }

    else
    {
      v72 = 0;
    }

    v77 = v150;

    v152 = v72;
    v78 = v151;
    TimelineBuilder.createBindPath(from:inputs:)(&v152, v77, v151);
    v126 = v2;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v78, v38);
    v80 = v143;
    v79 = v144;
    v81 = *(v143 + 48);
    v125 = v143 + 48;
    v124 = v81;
    if (v81(v38, 1, v144) == 1)
    {
      v82 = v148;
      static ActionEntityResolution.sourceEntity.getter();
      v83 = v147;
      v84 = v149;
    }

    else
    {
      v85 = *(v80 + 32);
      v82 = v148;
      v85(v148, v38, v79);
      v84 = v149;
      v83 = v147;
      (*(v149 + 104))(v82, *MEMORY[0x277CDB480], v147);
    }

    (*(v84 + 16))(v25, v82, v83);
    v86 = v146;
    OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:isOrientedToPath:isAdditive:)();
    if (one-time initialization token for targetPathAttributeName != -1)
    {
      swift_once();
    }

    v87 = static ToolsFoundations.Token.targetPathAttributeName;
    if (RIOPxrUsdPrimHasRelationship())
    {
      v88 = RIOPxrUsdPrimCopyRelationship();

      v89 = swift_allocObject();
      v89[2] = v88;
      v90 = Relationship.targets.getter();
      outlined consume of Result<AnyAttribute, Object.Error>(v89, 0);
      if (*(v90 + 16))
      {
        v91 = *(v90 + 32);
        v92 = v91;
      }

      else
      {
        v91 = 0;
      }

      v95 = v139;

      v152 = v91;
      v96 = v138;
      TimelineBuilder.createBindPath(from:inputs:)(&v152, v150, v138);
      v105 = v129;
      outlined init with copy of TimelineBuilder.BindPathWrapper(v96, v129);
      v106 = v144;
      if (v124(v105, 1, v144) == 1)
      {
        v107 = v135;
        v108 = v136;
        (*(v95 + 104))(v135, *MEMORY[0x277CDB230], v136);
        v109 = v132;
        v110 = v137;
      }

      else
      {
        v111 = v143;
        v112 = v128;
        (*(v143 + 32))(v128, v105, v106);
        v107 = v135;
        BindTarget.EntityPath.transform.getter();
        (*(v111 + 8))(v112, v106);
        v109 = v132;
        v110 = v137;
        v108 = v136;
      }

      v150 = type metadata accessor for AnimationResource();
      (*(v95 + 16))(v110, v107, v108);
      v113 = *(v95 + 56);
      v139 = v95 + 56;
      v113(v110, 0, 1, v108);
      static AnimationFillMode.forwards.getter();
      v114 = v131 + 104;
      v115 = v133;
      (*(v131 + 104))(v133, *MEMORY[0x277CDB418], v126);
      v116 = v109;
      v117 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
      v118 = (v114 - 96);
      v119 = (v130 + 8);
      v120 = (v139 - 48);
      v121 = (v142 + 8);
      v150 = (v149 + 8);
      v122 = v117;

      (*v118)(v115, v126);
      (*v119)(v116, v134);
      outlined destroy of Any?(v137, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
      (*v120)(v135, v136);
      outlined destroy of TimelineBuilder.BindPathWrapper(v138);
      (*v121)(v146, v145);
      (*v150)(v148, v147);
      outlined destroy of TimelineBuilder.BindPathWrapper(v151);
      return v122;
    }

    v152 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v93 = v152;
    v75 = swift_allocError();
    *v94 = v93;

    (*(v142 + 8))(v86, v145);
    (*(v149 + 8))(v148, v83);
    outlined destroy of TimelineBuilder.BindPathWrapper(v151);
  }

  else
  {

    v152 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v74 = v152;
    v75 = swift_allocError();
    *v76 = v74;
  }

  v97 = static os_log_type_t.error.getter();
  if (one-time initialization token for timeline != -1)
  {
    swift_once();
  }

  v98 = static OS_os_log.timeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_2619891C0;
  v152 = v75;
  v100 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v101 = String.init<A>(describing:)();
  v103 = v102;
  *(v99 + 56) = MEMORY[0x277D837D0];
  *(v99 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v99 + 32) = v101;
  *(v99 + 40) = v103;
  os_log(_:dso:log:_:_:)(v97, &dword_26187B000, v98, "Problem creating OrbitEntityAction: %s", v123);

  return 0;
}

uint64_t TimelineBuilder.createSpinAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = type metadata accessor for AnimationRepeatMode();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AnimationFillMode();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v6);
  v96 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v95 = &v88 - v10;
  v11 = type metadata accessor for BindTarget.EntityPath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v88 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BindTarget();
  v105 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v104 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v20);
  v25 = &v88 - v24;
  v103 = type metadata accessor for SpinAction();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v26);
  v107 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v88 - v30;
  v32 = type metadata accessor for AnimationTimingFunction();
  v33 = *(v32 - 8);
  v35.n128_f32[0] = MEMORY[0x28223BE20](v32, v34);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v35);
  v108 = &v88 - v39;
  v40 = String.count.getter();
  v102 = v25;
  v91 = v11;
  v90 = v12;
  v89 = v22;
  if (v40 < 1)
  {
    v41 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v41 = RIOPxrTfTokenCreateWithCString();
  }

  v42 = v41;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(v41);

  if (String.count.getter() < 1)
  {
    v43 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v43 = RIOPxrTfTokenCreateWithCString();
  }

  v44 = v43;
  v45 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5(v43);
  v47 = v46;
  v49 = v48;

  if (v49)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TimelineBuilder.createSpinAction(for:inputs:));
  }

  else
  {
    v50.i64[0] = v45;
    v50.i64[1] = v47;
  }

  v106 = v50;
  TimelineBuilder.timingFunction(for:)(a1, v31);
  v51 = *(v33 + 48);
  if (v51(v31, 1, v32) == 1)
  {
    static AnimationTimingFunction.default.getter();
    if (v51(v31, 1, v32) != 1)
    {
      outlined destroy of Any?(v31, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    (*(v33 + 32))(v108, v31, v32);
  }

  v52 = String.count.getter();
  v94 = v15;
  if (v52 < 1)
  {
    v53 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v53 = RIOPxrTfTokenCreateWithCString();
  }

  v54 = v53;
  if (RIOPxrUsdPrimHasAttribute())
  {
    v55 = RIOPxrUsdPrimCopyAttribute();
    v56 = RIOPxrUsdAttributeCopyValue();
    if (v56)
    {
      v57 = v56;
      v58 = RIOPxrVtValueCopyToken();

      if (v58)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v55 = v54;
  }

LABEL_24:
  if (String.count.getter() < 1)
  {
    v59 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v59 = RIOPxrTfTokenCreateWithCString();
  }

  v58 = v59;
LABEL_28:
  if (String.count.getter() < 1)
  {
    v60 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v60 = RIOPxrTfTokenCreateWithCString();
  }

  v61 = v60;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  v62 = static _CFObject.== infix(_:_:)();

  if (v62)
  {
    v63.i32[3] = 0;
    v63.i64[0] = vsubq_f32(0, v106).u64[0];
    v63.f32[2] = 0.0 - v106.f32[2];
    v106 = v63;
  }

  v64 = v104;
  (*(v33 + 16))(v37, v108, v32);
  SpinAction.init(revolutions:localAxis:timingFunction:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v65 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v65 = RIOPxrTfTokenCreateWithCString();
  }

  v66 = v65;
  v67 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v65);

  if ((v67 & 0x100000000) != 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = v67;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v69 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v70 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v71 = swift_allocObject();
    v71[2] = v70;
    v72 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v71, 0);
    if (*(v72 + 16))
    {
      v73 = *(v72 + 32);

      goto LABEL_47;
    }
  }

  else
  {

    v109 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v109);
  }

  v73 = 0;
LABEL_47:
  v74 = v105;
  v109 = v73;
  v75 = v102;
  TimelineBuilder.createBindPath(from:inputs:)(&v109, v100, v102);
  LODWORD(v100) = v68;
  v106.i64[0] = v32;
  v76 = v64;
  v77 = v89;
  outlined init with copy of TimelineBuilder.BindPathWrapper(v75, v89);
  v78 = v90;
  v79 = v91;
  if ((*(v90 + 48))(v77, 1, v91) == 1)
  {
    v80 = v94;
    (*(v74 + 104))(v76, *MEMORY[0x277CDB230], v94);
  }

  else
  {
    v81 = v88;
    (*(v78 + 32))(v88, v77, v79);
    BindTarget.EntityPath.transform.getter();
    (*(v78 + 8))(v81, v79);
    v80 = v94;
  }

  type metadata accessor for AnimationResource();
  v82 = v95;
  (*(v74 + 16))(v95, v76, v80);
  (*(v74 + 56))(v82, 0, 1, v80);
  static AnimationFillMode.forwards.getter();
  (*(v98 + 104))(v97, *MEMORY[0x277CDB418], v99);
  v83 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v84 = v106.i64[0];
  v85 = v83;

  v86 = v102;
  (*(v98 + 8))(v97, v99);
  (*(v92 + 8))(v96, v93);
  outlined destroy of Any?(v95, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v105 + 8))(v104, v94);
  outlined destroy of TimelineBuilder.BindPathWrapper(v86);
  (*(v101 + 8))(v107, v103);
  (*(v33 + 8))(v108, v84);
  return v85;
}

uint64_t TimelineBuilder.createEnableAction(for:inputs:enabled:)(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v65) = a3;
  v4 = type metadata accessor for AnimationFillMode();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AnimationRepeatMode();
  v66 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v61 - v11;
  v69 = type metadata accessor for SetEntityEnabledAction();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ActionEntityResolution();
  v16 = *(v73 - 8);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v73, v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v18);
  v23 = &v61 - v22;
  v24 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v26.n128_f32[0] = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v26);
  v31 = &v61 - v30;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v32 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v33 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v34 = swift_allocObject();
    v34[2] = v33;
    v35 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v34, 0);
    if (*(v35 + 16))
    {
      v36 = *(v35 + 32);
      v37 = v36;
    }

    else
    {
      v36 = 0;
    }

    v75 = v36;
    TimelineBuilder.createBindPath(from:inputs:)(&v75, a2, v31);

    outlined init with copy of TimelineBuilder.BindPathWrapper(v31, v28);
    v41 = type metadata accessor for BindTarget.EntityPath();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v28, 1, v41) == 1)
    {
      static ActionEntityResolution.sourceEntity.getter();
      v43 = v73;
    }

    else
    {
      (*(v42 + 32))(v23, v28, v41);
      v43 = v73;
      (*(v16 + 104))(v23, *MEMORY[0x277CDB480], v73);
    }

    v64 = v16;
    (*(v16 + 16))(v20, v23, v43);
    SetEntityEnabledAction.init(targetEntity:isEnabled:)();
    v63 = type metadata accessor for AnimationResource();
    v44 = type metadata accessor for BindTarget();
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    v45 = *MEMORY[0x277CDB418];
    v46 = v66;
    v47 = *(v66 + 104);
    v65 = v15;
    v48 = v68;
    v47(v68, v45, v74);
    v75 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
    v49 = v72;
    v50 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v62 = v12;
    v58 = v69;
    v59 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
    (*(v71 + 8))(v50, v49);
    (*(v46 + 8))(v48, v74);
    outlined destroy of Any?(v62, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v67 + 8))(v65, v58);
    (*(v64 + 8))(v23, v73);
    outlined destroy of TimelineBuilder.BindPathWrapper(v31);
    return v59;
  }

  else
  {

    v75 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v38 = v75;
    v39 = swift_allocError();
    *v40 = v38;
    v51 = static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_2619891C0;
    v75 = v39;
    v54 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v55 = String.init<A>(describing:)();
    v57 = v56;
    *(v53 + 56) = MEMORY[0x277D837D0];
    *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v53 + 32) = v55;
    *(v53 + 40) = v57;
    os_log(_:dso:log:_:_:)(v51, &dword_26187B000, v52, "Problem creating SetEntityEnabledAction: %s", v61);

    return 0;
  }
}

uint64_t TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionEntityResolution();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v12 = static ToolsFoundations.Token.targetPathAttributeName;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v13 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v14 = swift_allocObject();
    v14[2] = v13;
    v15 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v14, 0);
    if (*(v15 + 16))
    {
      v16 = *(v15 + 32);
      v17 = v16;
    }

    else
    {
      v16 = 0;
    }

    v34 = v16;
    TimelineBuilder.createBindPath(from:inputs:)(&v34, a2, v11);
    static ActionEntityResolution.sourceEntity.getter();
    v28 = specialized TimelineBuilder.startTimeAndDuration(for:)();
    v29 = Prim.children.getter();
    MEMORY[0x28223BE20](v29, v30);
    *(&v33 - 4) = v7;
    *(&v33 - 3) = 0x3FA1111111111111;
    *(&v33 - 2) = v28;
    v31 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:), (&v33 - 6), v29);

    outlined destroy of TimelineBuilder.BindPathWrapper(v11);
    (*(v4 + 8))(v7, v3);
    return v31;
  }

  else
  {

    v34 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v18 = v34;
    v19 = swift_allocError();
    *v20 = v18;
    v21 = static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2619891C0;
    v34 = v19;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    os_log(_:dso:log:_:_:)(v21, &dword_26187B000, v22, "Problem creating SetEntityPropertyAction: %s", v33);

    return MEMORY[0x277D84F90];
  }
}

void closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a2;
  v6 = type metadata accessor for AnimationFillMode();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AnimationRepeatMode();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v9);
  v59 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v54 - v13;
  v15 = type metadata accessor for ActionEntityResolution();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v57 = *(v20 - 8);
  v58 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v54 - v22;
  if (String.count.getter() < 1)
  {
    v24 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v24 = RIOPxrTfTokenCreateWithCString();
  }

  v25 = v24;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v55 = a3;
    v26 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v27 = swift_allocObject();
    v27[2] = v26;
    v28 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v27, 0);
    if (*(v28 + 16))
    {
      v29 = *(v28 + 32);

      v30 = RIOPxrSdfPathCopyString();
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54[0] = v32;
      v54[1] = v31;

      if (String.count.getter() < 1)
      {
        v33 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v33 = RIOPxrTfTokenCreateWithCString();
      }

      v35 = v33;
      v36 = v64;
      if (RIOPxrUsdPrimHasRelationship())
      {
        v37 = RIOPxrUsdPrimCopyRelationship();

        v38 = swift_allocObject();
        v38[2] = v37;
        v39 = Relationship.targets.getter();
        outlined consume of Result<AnyAttribute, Object.Error>(v38, 0);
        if (*(v39 + 16))
        {
          v40 = *(v39 + 32);

          v41 = RIOPxrSdfPathCopyString();
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {

          v42 = 0;
          v44 = 0xE000000000000000;
        }

        v36 = v64;
      }

      else
      {

        v65 = 0;
        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(v65);
        v42 = 0;
        v44 = 0xE000000000000000;
      }

      (*(v16 + 16))(v19, v56, v15);
      v65 = v42;
      v66 = v44;
      SetEntityPropertyAction.init(targetEntity:key:value:)();
      v64 = type metadata accessor for AnimationResource();
      v45 = type metadata accessor for BindTarget();
      (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
      v46 = v59;
      v47 = v61;
      (*(v36 + 104))(v59, *MEMORY[0x277CDB418], v61);
      v65 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
      v48 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
      v49 = v63;
      v50 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR, MEMORY[0x277CDB520]);
      v51 = v58;
      v52 = v67;
      v53 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
      if (v52)
      {

        (*(v62 + 8))(v50, v49);
        (*(v48 + 8))(v46, v47);
        outlined destroy of Any?(v14, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
        (*(v57 + 8))(v23, v51);
        v34 = 0;
      }

      else
      {
        v34 = v53;
        (*(v62 + 8))(v50, v49);
        (*(v48 + 8))(v46, v47);
        outlined destroy of Any?(v14, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
        (*(v57 + 8))(v23, v51);
      }

      a3 = v55;
    }

    else
    {

      v34 = 0;
      a3 = v55;
    }
  }

  else
  {

    v65 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v65);
    v34 = 0;
  }

  *a3 = v34;
}

uint64_t TimelineBuilder.createFromToByTransformAction(toOrBy:for:inputs:)(int a1, uint64_t a2, void *a3)
{
  v115 = a3;
  v114 = a1;
  v4 = type metadata accessor for AnimationRepeatMode();
  v118 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v100 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AnimationFillMode();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v7);
  v117 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v99 = &v95 - v11;
  v98 = type metadata accessor for BindTarget.EntityPath();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v12);
  v95 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for BindTarget();
  v108 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v14);
  v104 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v16 - 8, v17);
  v107 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v18);
  v109 = &v95 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v95 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GMR);
  v113 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v106 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v95 - v31;
  v33 = type metadata accessor for AnimationTimingFunction();
  v34 = *(v33 - 8);
  v36.n128_f32[0] = MEMORY[0x28223BE20](v33, v35);
  v38 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v36);
  v41 = &v95 - v40;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v116 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v42);
  v119 = &v95 - v43;
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  v44 = String.count.getter();
  v103 = v4;
  if (v44 < 1)
  {
    v45 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v45 = RIOPxrTfTokenCreateWithCString();
  }

  v46 = v45;
  v47 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v45);

  if ((v47 & 0x100000000) != 0)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  v96 = v48;
  v110 = specialized TimelineBuilder.transform(for:)();
  v111 = v49;
  v112 = v50;
  TimelineBuilder.timingFunction(for:)(a2, v32);
  v51 = *(v34 + 48);
  if (v51(v32, 1, v33) == 1)
  {
    static AnimationTimingFunction.default.getter();
    v52 = v51(v32, 1, v33);
    v53 = v113;
    if (v52 != 1)
    {
      outlined destroy of Any?(v32, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }

    if (v114)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(v34 + 32))(v41, v32, v33);
    v53 = v113;
    if (v114)
    {
LABEL_11:
      (*(v34 + 16))(v38, v41, v33);
      v54 = v119;
      FromToByAction<>.init(by:timing:isAdditive:)();
      v55 = v117;
      goto LABEL_18;
    }
  }

  TimelineBuilder.transformMode(for:inputs:)(a2, v115, v25);
  v56 = *(v53 + 48);
  if (v56(v25, 1, v26) == 1)
  {
    static FromToByAction.TransformMode.default.getter();
    v57 = v56(v25, 1, v26);
    v55 = v117;
    if (v57 != 1)
    {
      outlined destroy of Any?(v25, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMd, &_s17RealityFoundation14FromToByActionV13TransformModeOy0A3Kit0G0V_GSgMR);
    }
  }

  else
  {
    (*(v53 + 32))(v106, v25, v26);
    v55 = v117;
  }

  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v125 = 1;
  (*(v34 + 16))(v38, v41, v33);
  v54 = v119;
  FromToByAction<>.init(from:to:mode:timing:isAdditive:)();
LABEL_18:
  (*(v34 + 8))(v41, v33);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v58 = static ToolsFoundations.Token.targetPathAttributeName;
  HasRelationship = RIOPxrUsdPrimHasRelationship();
  v60 = v118;
  v61 = v120;
  if (HasRelationship)
  {
    v62 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v63 = swift_allocObject();
    v63[2] = v62;
    v64 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v63, 0);
    if (*(v64 + 16))
    {
      v65 = *(v64 + 32);
      v66 = v65;
    }

    else
    {
      v65 = 0;
    }

    v70 = v108;
    v71 = v107;

    v121 = v65;
    v72 = v109;
    TimelineBuilder.createBindPath(from:inputs:)(&v121, v115, v109);
    v73 = v55;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v72, v71);
    v74 = v97;
    v75 = v98;
    if ((*(v97 + 48))(v71, 1, v98) == 1)
    {
      v76 = v104;
      v77 = v105;
      (*(v70 + 104))(v104, *MEMORY[0x277CDB230], v105);
      v78 = v99;
    }

    else
    {
      v79 = v71;
      v80 = v95;
      (*(v74 + 32))(v95, v79, v75);
      v76 = v104;
      BindTarget.EntityPath.transform.getter();
      (*(v74 + 8))(v80, v75);
      v78 = v99;
      v77 = v105;
    }

    type metadata accessor for AnimationResource();
    (*(v70 + 16))(v78, v76, v77);
    (*(v70 + 56))(v78, 0, 1, v77);
    static AnimationFillMode.forwards.getter();
    v81 = v100;
    v82 = v103;
    (*(v60 + 104))(v100, *MEMORY[0x277CDB418], v103);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR, MEMORY[0x277CDB308]);
    v83 = v81;
    v84 = v119;
    v92 = v83;
    v93 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v60 + 8))(v92, v82);
    (*(v101 + 8))(v73, v102);
    outlined destroy of Any?(v78, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v70 + 8))(v104, v105);
    outlined destroy of TimelineBuilder.BindPathWrapper(v109);
    (*(v116 + 8))(v84, v120);
    return v93;
  }

  else
  {

    v121 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v67 = v121;
    v68 = swift_allocError();
    *v69 = v67;
    v85 = static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2619891C0;
    v121 = v68;
    v88 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v89 = String.init<A>(describing:)();
    v91 = v90;
    *(v87 + 56) = MEMORY[0x277D837D0];
    *(v87 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v87 + 32) = v89;
    *(v87 + 40) = v91;
    os_log(_:dso:log:_:_:)(v85, &dword_26187B000, v86, "Problem creating FromToByAction: %s", v95);

    (*(v116 + 8))(v54, v61);
    return 0;
  }
}

uint64_t TimelineBuilder.createShowOrHideAction(showOrHide:for:inputs:)(char a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v5 = type metadata accessor for AnimationRepeatMode();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v88 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AnimationFillMode();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v8);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v86 = &v76 - v12;
  v78 = type metadata accessor for BindTarget.EntityPath();
  v89 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v13);
  v77 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BindTarget();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimelineBuilder.BindPathWrapper(0);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v20);
  v91 = &v76 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v25);
  v95 = &v76 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v76 - v29;
  v31 = type metadata accessor for AnimationTimingFunction();
  v32 = *(v31 - 8);
  v34.n128_f32[0] = MEMORY[0x28223BE20](v31, v33);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v34);
  v39 = &v76 - v38;
  TimelineBuilder.timingFunction(for:)(a2, v30);
  v40 = *(v32 + 48);
  if (v40(v30, 1, v31) == 1)
  {
    static AnimationTimingFunction.default.getter();
    if (v40(v30, 1, v31) != 1)
    {
      outlined destroy of Any?(v30, &_s10RealityKit23AnimationTimingFunctionVSgMd, &_s10RealityKit23AnimationTimingFunctionVSgMR);
    }
  }

  else
  {
    (*(v32 + 32))(v39, v30, v31);
  }

  LODWORD(v96) = 0;
  BYTE4(v96) = 1;
  v41 = 0.0;
  if ((a1 & 1) == 0)
  {
    v41 = 1.0;
  }

  v97[0] = v41;
  (*(v32 + 16))(v36, v39, v31);
  FromToByAction.init(from:to:timing:isAdditive:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() <= 0)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  v44 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(v42);

  if ((v44 & 0x100000000) != 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  if (one-time initialization token for targetPathAttributeName != -1)
  {
    swift_once();
  }

  v46 = static ToolsFoundations.Token.targetPathAttributeName;
  HasRelationship = RIOPxrUsdPrimHasRelationship();
  v93 = v39;
  if (HasRelationship)
  {
    v48 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v49 = swift_allocObject();
    v49[2] = v48;
    v50 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v49, 0);
    if (*(v50 + 16))
    {
      v51 = *(v50 + 32);
      v52 = v51;
    }

    else
    {
      v51 = 0;
    }

    v56 = v92;
    v57 = v89;

    v96 = v51;
    v58 = v91;
    TimelineBuilder.createBindPath(from:inputs:)(&v96, v90, v91);
    LODWORD(v92) = v45;
    outlined init with copy of TimelineBuilder.BindPathWrapper(v58, v22);
    v68 = v78;
    if ((*(v57 + 48))(v22, 1, v78) == 1)
    {
      v70 = v83;
      v69 = v84;
      v71 = v85;
      (*(v84 + 104))(v83, *MEMORY[0x277CDB228], v85);
    }

    else
    {
      v72 = v77;
      (*(v57 + 32))(v77, v22, v68);
      v70 = v83;
      BindTarget.EntityPath.opacity.getter();
      (*(v57 + 8))(v72, v68);
      v69 = v84;
      v71 = v85;
    }

    v90 = type metadata accessor for AnimationResource();
    v73 = v86;
    (*(v69 + 16))(v86, v70, v71);
    (*(v69 + 56))(v73, 0, 1, v71);
    static AnimationFillMode.forwards.getter();
    v75 = v81;
    v74 = v82;
    (*(v81 + 104))(v88, *MEMORY[0x277CDB418], v82);
    lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR, MEMORY[0x277CDB308]);
    v66 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();

    (*(v75 + 8))(v88, v74);
    (*(v79 + 8))(v87, v80);
    outlined destroy of Any?(v86, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
    (*(v84 + 8))(v83, v85);
    outlined destroy of TimelineBuilder.BindPathWrapper(v91);
  }

  else
  {

    v96 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v53 = v96;
    v54 = swift_allocError();
    *v55 = v53;
    v56 = v92;
    v59 = static os_log_type_t.error.getter();
    if (one-time initialization token for timeline != -1)
    {
      swift_once();
    }

    v60 = static OS_os_log.timeline;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_2619891C0;
    v96 = v54;
    v62 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v63 = String.init<A>(describing:)();
    v65 = v64;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v61 + 32) = v63;
    *(v61 + 40) = v65;
    os_log(_:dso:log:_:_:)(v59, &dword_26187B000, v60, "Problem creating Show or Hide action: %s", v76);

    v66 = 0;
  }

  (*(v94 + 8))(v95, v56);
  (*(v32 + 8))(v93, v31);
  return v66;
}

uint64_t TimelineBuilder.createAction(for:inputs:)(unint64_t a1, void (**a2)(char *, uint64_t))
{
  v4 = RIOPxrUsdPrimCopyTypeName();
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v5 = static TimelineConstants.Action.primType;
  type metadata accessor for RIOPxrTfTokenRef(0);
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  v6 = v5;
  v7 = static _CFObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
  v9 = v8;
  v10 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(v8);
  v12 = v11;

  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  if (String.count.getter() < 1)
  {
    v13 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v13 = RIOPxrTfTokenCreateWithCString();
  }

  v14 = v13;
  v15 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v13);

  if (v15 != 2 && (v15 & 1) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x6F6974616D696E61 && v12 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createAnimationAction(for:inputs:)(a1, a2);
    if (v16)
    {
LABEL_17:
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_26198A640;
      *(result + 32) = v17;
      return result;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x6F69647561 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createAudioAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x7A69736168706D65 && v12 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createEmphasizeAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x656C62616E65 && v12 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v19 = a1;
    v20 = a2;
    v21 = 1;
    goto LABEL_34;
  }

  if (v10 == 0x656C6261736964 && v12 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v19 = a1;
    v20 = a2;
    v21 = 0;
LABEL_34:
    v16 = TimelineBuilder.createEnableAction(for:inputs:enabled:)(v19, v20, v21);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x65736C75706D69 && v12 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createImpulseAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x74416B6F6F6CLL && v12 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createLookAtAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x746962726FLL && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createOrbitAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 1852403827 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createSpinAction(for:inputs:)(a1, a2);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x6163696669746F6ELL && v12 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = specialized TimelineBuilder.createNotificationAction(for:inputs:)(a1);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if (v10 == 0x656E696C656D6974 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = TimelineBuilder.createTimelineAction(for:inputs:)(a1, a2, v22);
    if (v16)
    {
      goto LABEL_17;
    }

    return MEMORY[0x277D84F90];
  }

  if ((v10 != 0xD000000000000010 || 0x8000000261994990 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v10 == 0x6F5465766F6DLL && v12 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = 0;
      goto LABEL_78;
    }

    if (v10 == 0x794265766F6DLL && v12 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = 1;
LABEL_78:
      v16 = TimelineBuilder.createFromToByTransformAction(toOrBy:for:inputs:)(v23, a1, a2);
      if (v16)
      {
        goto LABEL_17;
      }

      return MEMORY[0x277D84F90];
    }

    if (v10 == 2003789939 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v24 = 0;
      goto LABEL_88;
    }

    if (v10 == 1701079400 && v12 == 0xE400000000000000)
    {

LABEL_94:
      v24 = 1;
LABEL_88:
      v16 = TimelineBuilder.createShowOrHideAction(showOrHide:for:inputs:)(v24, a1, a2);
      if (v16)
      {
        goto LABEL_17;
      }

      return MEMORY[0x277D84F90];
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_94;
    }

    return MEMORY[0x277D84F90];
  }

  return TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(a1, a2);
}

uint64_t closure #1 in TimelineBuilder.run(inputs:)(unint64_t a1, void *a2)
{
  v180 = type metadata accessor for AnimationFillMode();
  MEMORY[0x28223BE20](v180, v4);
  v182 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for AnimationRepeatMode();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v6);
  v181 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v170 - v10;
  v183 = type metadata accessor for Entity.ComponentSet();
  v187 = *(v183 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v183, v12);
  v176 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v13);
  v17 = &v170 - v16;
  v186 = type metadata accessor for AnimationLibraryComponent();
  v185 = *(v186 - 8);
  v19.n128_f32[0] = MEMORY[0x28223BE20](v186, v18);
  v177 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v19);
  v184 = &v170 - v22;
  v23 = Inputs.prim.getter();

  v27 = RIOPxrUsdObjectCopyName();
  v24 = RIOPxrTfTokenCopyString();
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v189 = v26;

  LODWORD(v27) = static os_log_type_t.info.getter();
  if (one-time initialization token for timeline != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v28 = static OS_os_log.timeline;
    if (os_log_type_enabled(static OS_os_log.timeline, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v198 = v30;
      *v29 = 136315138;
      v31 = RIOPxrUsdObjectCopyPath();
      v193 = a2;
      v194 = a1;
      v32 = v31;
      v33 = v25;
      v34 = v23;
      v35 = RIOPxrSdfPathCopyString();
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v196) = v27;
      v37 = v28;
      v38 = v17;
      v39 = v36;
      v197 = v11;
      v41 = v40;

      v23 = v34;
      v25 = v33;
      v42 = v39;
      v17 = v38;
      v28 = v37;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v198);
      v11 = v197;

      *(v29 + 4) = v43;
      a2 = v193;
      a1 = v194;
      _os_log_impl(&dword_26187B000, v37, v196, "Begin TimelineBuilder for prim at path: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x266713AD0](v30, -1, -1);
      MEMORY[0x266713AD0](v29, -1, -1);
    }

    if (Prim.parent.getter())
    {
      if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
      {

        LODWORD(v197) = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v46 = v25;
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_26198A8E0;
        v48 = RIOPxrUsdObjectCopyPath();
        v49 = v28;
        v50 = RIOPxrSdfPathCopyString();
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = MEMORY[0x277D837D0];
        *(v47 + 56) = MEMORY[0x277D837D0];
        v55 = lazy protocol witness table accessor for type String and conformance String();
        *(v47 + 64) = v55;
        *(v47 + 32) = v51;
        *(v47 + 40) = v53;

        *(v47 + 96) = v54;
        *(v47 + 104) = v55;
        v56 = v189;
        *(v47 + 72) = v46;
        *(v47 + 80) = v56;
        os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v49, v197, v47);
      }
    }

    if (one-time initialization token for OutputName != -1)
    {
      swift_once();
    }

    Inputs.subscript.getter(&v198, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
    if (!v199)
    {

      outlined destroy of Any?(&v198, &_sypSgMd, &_sypSgMR);
      goto LABEL_18;
    }

    type metadata accessor for EntityProxy(0);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_18:
      v58 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2619891C0;
      *(v59 + 56) = MEMORY[0x277D837D0];
      *(v59 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v60 = v189;
      *(v59 + 32) = v25;
      *(v59 + 40) = v60;
      os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v28, v58, v59);
    }

    v44 = v201;
    if (String.count.getter() < 1)
    {
      v45 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v45 = RIOPxrTfTokenCreateWithCString();
    }

    v61 = v45;
    v62 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(v45);

    if (v62 != 2 && (v62 & 1) == 0)
    {

      specialized TimelineBuilder.clear(inputs:)();
    }

    type metadata accessor for Entity();
    v172 = v44;
    v175 = static Entity.__fromCore(_:)();
    dispatch thunk of Entity.components.getter();
    v63 = v186;
    Entity.ComponentSet.subscript.getter();
    v64 = *(v187 + 8);
    v187 += 8;
    v171 = v64;
    v64(v17, v183);
    v65 = v185;
    v66 = *(v185 + 48);
    if (v66(v11, 1, v63) == 1)
    {
      v67 = v184;
      AnimationLibraryComponent.init()();
      if (v66(v11, 1, v63) != 1)
      {
        outlined destroy of Any?(v11, &_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
      }
    }

    else
    {
      v68 = *(v65 + 32);
      v67 = v184;
      v68(v184, v11, v63);
    }

    specialized Builder.addComponent<A>(component:)(v67);
    v69 = Prim.children.getter();
    v11 = v69;
    v173 = v23;
    v23 = (v69 & 0xFFFFFFFFFFFFFF8);
    v25 = v69 >> 62 ? __CocoaSet.count.getter() : *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = 0;
    v174 = 0;
    v197 = v11 & 0xC000000000000001;
    *&v70 = 136315138;
    v190 = v70;
    v188 = MEMORY[0x277D84F90];
    v191 = v28;
    v192 = v25;
    v193 = a2;
    v194 = a1;
    if (!v25)
    {
      break;
    }

    while (1)
    {
      if (v197)
      {
        v76 = MEMORY[0x26670F670](v27, v11);
        v77 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        goto LABEL_41;
      }

      if (v27 >= v23[2])
      {
        goto LABEL_114;
      }

      v76 = *(v11 + 8 * v27 + 32);

      v77 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

LABEL_41:
      v196 = v77;
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v17))
      {
        v78 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&v198 = v195;
        *v78 = v190;
        v79 = v23;
        v80 = v11;
        v81 = RIOPxrUsdObjectCopyPath();
        v82 = RIOPxrSdfPathCopyString();
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v11 = v80;
        v23 = v79;

        v28 = v191;
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v198);
        a2 = v193;

        *(v78 + 4) = v86;
        v25 = v192;
        _os_log_impl(&dword_26187B000, v28, v17, "Start producing a Track for prim at path: %s", v78, 0xCu);
        v87 = v195;
        __swift_destroy_boxed_opaque_existential_0(v195);
        v88 = v87;
        a1 = v194;
        MEMORY[0x266713AD0](v88, -1, -1);
        MEMORY[0x266713AD0](v78, -1, -1);
      }

      v75 = TimelineBuilder.createActions(for:inputs:)(v76, a1);

      ++v27;
      if (v75)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v188[2] + 1, 1, v188);
        }

        v90 = v188[2];
        v89 = v188[3];
        if (v90 >= v89 >> 1)
        {
          v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v188);
        }

        v91 = v188;
        v188[2] = v90 + 1;
        v91[v90 + 4] = v75;
        v27 = v196;
        v25 = v192;
        if (v192 == v196)
        {
          goto LABEL_29;
        }
      }

      else if (v25 == v27)
      {
        goto LABEL_29;
      }
    }

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
    swift_once();
  }

LABEL_29:

  a2 = v188;
  v27 = v188[2];
  if (v27)
  {
    *&v198 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v71 = 0;
    v17 = v198;
    v25 = a2 + 4;
    do
    {
      if (v71 >= a2[2])
      {
        goto LABEL_118;
      }

      v72 = v25[v71];
      *&v198 = v17;
      a1 = *(v17 + 2);
      v73 = *(v17 + 3);
      v23 = (a1 + 1);

      if (a1 >= v73 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), a1 + 1, 1);
        v17 = v198;
      }

      v74 = &v17[16 * a1];
      *(v74 + 4) = v72;
      *(v74 + 5) = v71;
      *(v17 + 2) = v23;
      ++v71;
    }

    while (v27 != v71);
    v92 = MEMORY[0x277D84F90];
LABEL_53:
    v93 = 0;
    v195 = v23;
    v196 = v17 + 32;
    v11 = v92;
    v194 = v17;
    while (2)
    {
      if (v93 >= *(v17 + 2))
      {
        goto LABEL_115;
      }

      v197 = v93;
      v94 = &v196[16 * v93];
      v27 = *v94;
      v23 = v94[1];
      if (*v94 >> 62)
      {
        a1 = __CocoaSet.count.getter();
        if (!a1)
        {
          goto LABEL_72;
        }

LABEL_59:
        *&v198 = v92;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_120;
        }

        v95 = v198;
        if ((v27 & 0xC000000000000001) != 0)
        {
          v96 = 0;
          do
          {
            v97 = MEMORY[0x26670F670](v96, v27);
            *&v198 = v95;
            v99 = *(v95 + 16);
            v98 = *(v95 + 24);
            if (v99 >= v98 >> 1)
            {
              v101 = v97;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
              v97 = v101;
              v92 = MEMORY[0x277D84F90];
              v95 = v198;
            }

            ++v96;
            *(v95 + 16) = v99 + 1;
            v100 = v95 + 16 * v99;
            *(v100 + 32) = v97;
            *(v100 + 40) = v23;
          }

          while (a1 != v96);

          v17 = v194;
        }

        else
        {
          v193 = v11;
          v102 = *(v198 + 16);
          v103 = 16 * v102;
          v104 = 32;
          do
          {
            v105 = *(v27 + v104);
            *&v198 = v95;
            v106 = *(v95 + 24);

            if (v102 >= v106 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v102 + 1, 1);
              v95 = v198;
            }

            *(v95 + 16) = v102 + 1;
            v107 = v95 + v103;
            *(v107 + 32) = v105;
            *(v107 + 40) = v23;
            v103 += 16;
            v104 += 8;
            ++v102;
            --a1;
          }

          while (a1);

          v92 = MEMORY[0x277D84F90];
          a2 = v188;
          v11 = v193;
          v17 = v194;
        }
      }

      else
      {
        a1 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a1)
        {
          goto LABEL_59;
        }

LABEL_72:
        v95 = v92;
      }

      v27 = *(v95 + 16);
      v25 = *(v11 + 16);
      v108 = v25 + v27;
      v23 = v195;
      if (__OFADD__(v25, v27))
      {
        goto LABEL_116;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v108 <= *(v11 + 24) >> 1)
      {
        if (!*(v95 + 16))
        {
LABEL_54:

          if (v27)
          {
            goto LABEL_117;
          }

LABEL_55:
          v93 = v197 + 1;
          if ((v197 + 1) == v23)
          {
            goto LABEL_86;
          }

          continue;
        }
      }

      else
      {
        if (v25 <= v108)
        {
          v110 = v25 + v27;
        }

        else
        {
          v110 = v25;
        }

        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v110, 1, v11);
        if (!*(v95 + 16))
        {
          goto LABEL_54;
        }
      }

      break;
    }

    v111 = *(v11 + 16);
    if ((*(v11 + 24) >> 1) - v111 < v27)
    {
      goto LABEL_121;
    }

    v25 = (v11 + 16 * v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
    swift_arrayInitWithCopy();

    if (v27)
    {
      v112 = *(v11 + 16);
      v113 = __OFADD__(v112, v27);
      v114 = v112 + v27;
      if (v113)
      {
        goto LABEL_122;
      }

      *(v11 + 16) = v114;
    }

    goto LABEL_55;
  }

  v92 = MEMORY[0x277D84F90];
  v23 = *(MEMORY[0x277D84F90] + 16);
  v17 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v23)
  {
    goto LABEL_53;
  }

LABEL_86:

  *&v198 = v11;

  v25 = v174;
  specialized MutableCollection<>.sort(by:)(&v198);
  if (v25)
  {
    goto LABEL_126;
  }

  v27 = v198;
  v115 = *(v198 + 16);
  if (v115)
  {
    v17 = v11;
    *&v198 = v92;
    specialized ContiguousArray.reserveCapacity(_:)();
    a2 = 0;
    v11 = 32;
    while (a2 < *(v27 + 16))
    {
      a2 = (a2 + 1);
      a1 = *(v27 + v11);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = *(v198 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 16;
      if (v115 == a2)
      {

        v116 = v198;
        if (v198 >> 62)
        {
          goto LABEL_101;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_119;
  }

  v116 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_101:
    v117 = __CocoaSet.count.getter();
    if (!v117)
    {
      goto LABEL_108;
    }
  }

  else
  {
LABEL_92:
    v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v117)
    {
      goto LABEL_108;
    }
  }

  v201 = v92;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117 & ~(v117 >> 63), 0);
  if (v117 < 0)
  {
    __break(1u);
LABEL_126:

    __break(1u);
    return result;
  }

  v118 = v201;
  if ((v116 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v117; ++i)
    {
      MEMORY[0x26670F670](i, v116);
      AnimationResource.definition.getter();
      swift_unknownObjectRelease();
      v201 = v118;
      v121 = *(v118 + 16);
      v120 = *(v118 + 24);
      if (v121 >= v120 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
        v118 = v201;
      }

      *(v118 + 16) = v121 + 1;
      outlined init with take of AnimationDefinition(&v198, v118 + 40 * v121 + 32);
    }
  }

  else
  {
    v122 = 32;
    do
    {

      AnimationResource.definition.getter();

      v201 = v118;
      v124 = *(v118 + 16);
      v123 = *(v118 + 24);
      if (v124 >= v123 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1);
        v118 = v201;
      }

      *(v118 + 16) = v124 + 1;
      outlined init with take of AnimationDefinition(&v198, v118 + 40 * v124 + 32);
      v122 += 8;
      --v117;
    }

    while (v117);
  }

LABEL_108:

  type metadata accessor for AnimationResource();
  (*(v178 + 104))(v181, *MEMORY[0x277CDB418], v179);
  v201 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8], MEMORY[0x277CDB3F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v199 = type metadata accessor for AnimationGroup();
  v200 = MEMORY[0x277CDB248];
  __swift_allocate_boxed_opaque_existential_1(&v198);
  AnimationGroup.init(group:name:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v125 = static AnimationResource.generate(with:)();
  __swift_destroy_boxed_opaque_existential_0(&v198);
  v126 = RIOPxrUsdObjectCopyPath();
  v127 = RIOPxrSdfPathCopyString();
  v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v130 = v129;

  specialized TimelineBuilder.printDebug(_:key:)(v125, v128, v130);

  v131 = RIOPxrUsdObjectCopyPath();
  v132 = RIOPxrSdfPathCopyString();
  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;

  v136 = v184;
  v137 = AnimationLibraryComponent.animations.modify();
  MEMORY[0x26670ECE0](v125, v133, v135);
  v137(&v198, 0);
  v138 = RIOPxrUsdObjectCopyPath();

  v139 = RIOPxrSdfPathCopyString();
  v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v142 = v141;

  *&v198 = v140;
  *(&v198 + 1) = v142;

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619947E0);

  v143 = v198;
  v144 = AnimationResource.repeat(duration:)();
  v145 = AnimationLibraryComponent.animations.modify();
  MEMORY[0x26670ECE0](v144, v143, *(&v143 + 1));
  v145(&v198, 0);
  v146 = v176;
  dispatch thunk of Entity.components.getter();
  v147 = v186;
  Entity.ComponentSet.set<A>(_:)();
  v171(v146, v183);
  v148 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_2619891C0;
  (*(v185 + 16))(v177, v136, v147);
  v150 = String.init<A>(describing:)();
  v152 = v151;
  *(v149 + 56) = MEMORY[0x277D837D0];
  *(v149 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v149 + 32) = v150;
  *(v149 + 40) = v152;
  v153 = v191;
  os_log(_:dso:log:_:_:)(v148, &dword_26187B000, v191, "%s", v170);

  v154 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *&v198 = v156;
    *v155 = v190;
    Entity.entityPath.getter();
    v157 = MEMORY[0x26670F180]();
    v159 = v158;

    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v198);

    *(v155 + 4) = v160;
    _os_log_impl(&dword_26187B000, v153, v154, "Storing onto entity with path: %s", v155, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v156);
    MEMORY[0x266713AD0](v156, -1, -1);
    MEMORY[0x266713AD0](v155, -1, -1);
  }

  v161 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v153, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v198 = v163;
    *v162 = v190;
    v164 = RIOPxrUsdObjectCopyPath();
    v165 = RIOPxrSdfPathCopyString();
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v168 = v167;

    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v168, &v198);

    *(v162 + 4) = v169;
    _os_log_impl(&dword_26187B000, v153, v161, "End TimelineBuilder for prim at path: %s", v162, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v163);
    MEMORY[0x266713AD0](v163, -1, -1);
    MEMORY[0x266713AD0](v162, -1, -1);
  }

  return (*(v185 + 8))(v184, v186);
}

BOOL closure #4 in closure #1 in TimelineBuilder.run(inputs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  dispatch thunk of AnimationDefinition.duration.getter();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(v13);
  AnimationResource.definition.getter();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  dispatch thunk of AnimationDefinition.duration.getter();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = 1;
  if (v5 >= v7)
  {
    if (v5 != v7)
    {
      return 0;
    }

    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of AnimationDefinition.delay.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v13);
    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of AnimationDefinition.delay.getter();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (v9 >= v11 && (v9 != v11 || v2 >= v3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t Entity.entityPath.getter()
{
  type metadata accessor for Entity();
  if (HasHierarchy.parent.getter())
  {
    v0 = Entity.entityPath.getter();
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = dispatch thunk of Entity.name.getter();
  *(inited + 40) = v2;
  specialized Array.append<A>(contentsOf:)(inited);
  return v0;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TimelineBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TimelineBuilder);
  outlined destroy of OutputDescriptor(&unk_287410688);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance TimelineBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in TimelineBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for primType()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static TimelineConstants.Timeline.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static TimelineConstants.Action.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static MeshSortingConstants.MeshSortingGroup.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFile.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.AudioFileGroup.primType = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static AudioConstants.MixGroup.primType = result;
  return result;
}

id static TimelineConstants.Timeline.primType.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ImportSession.EvaluationFault(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO4HalfVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO4HalfVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO5StageC16MissingReferenceVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO5StageC16MissingReferenceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2Vys5Int32VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vys5Int32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatfaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatfaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10simd_quatdaGMd, &_ss23_ContiguousArrayStorageCySo10simd_quatdaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double2x2aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double2x2aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double3x3aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double3x3aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14simd_double4x4aGMd, &_ss23_ContiguousArrayStorageCySo14simd_double4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v52 = a2;
  v53 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_31:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_32:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26670F080](0xD00000000000001BLL, 0x8000000261994A30);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v14 = v19;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v24 = (v23[6] + 16 * v14);
  *v24 = v8;
  v24[1] = v9;
  v25 = (v23[7] + 16 * v14);
  *v25 = v10;
  v25[1] = v11;
  v26 = v23[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23[2] = v28;
  v29 = v52;
  v30 = v53[2];
  if (v30 != 1)
  {
    v31 = v53 + 7;
    v32 = v52 + 7;
    v33 = 1;
    while (v33 < v30)
    {
      v34 = v29[2];
      if (v33 == v34)
      {
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        goto LABEL_30;
      }

      v36 = *(v31 - 1);
      v35 = *v31;
      v37 = *(v32 - 1);
      v38 = *v32;
      v39 = *a4;

      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v35);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v27 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v27)
      {
        goto LABEL_27;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, 1);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v35);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v45)
      {
        goto LABEL_10;
      }

      v47 = *a4;
      *(*a4 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = (v47[6] + 16 * v40);
      *v48 = v36;
      v48[1] = v35;
      v49 = (v47[7] + 16 * v40);
      *v49 = v37;
      v49[1] = v38;
      v50 = v47[2];
      v27 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      ++v33;
      v47[2] = v51;
      v29 = v52;
      v30 = v53[2];
      v31 += 2;
      v32 += 2;
      if (v33 == v30)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}