id PhysicsSimulationComponent.init(_:)@<X0>(uint64_t a2@<X8>)
{
  GravityOverride = REPhysicsSimulationComponentGetGravityOverride();
  if (GravityOverride)
  {
    v4 = *GravityOverride;
  }

  else
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v6 = v5;
    swift_beginAccess();
    v7 = *(v6 + 16);

    result = MEMORY[0x1C68FE290](v7);
    if (!result)
    {
      __break(1u);
      return result;
    }

    REPhysicsSimulationServiceGetDefaultGravity();
  }

  v13 = v4;
  KinematicVsStaticFlag = REPhysicsSimulationComponentGetKinematicVsStaticFlag();
  if (REPhysicsSimulationComponentGetKinematicVsKinematicFlag())
  {
    KinematicVsStaticFlag |= 2u;
  }

  REPhysicsSimulationComponentGetSolverIterations();
  v11 = v10;
  result = REPhysicsSimulationComponentGetParentTimebase();
  *&v12 = v11;
  *(&v12 + 1) = HIDWORD(v11);
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = KinematicVsStaticFlag;
  *(a2 + 40) = result;
  return result;
}

void PhysicsSimulationComponent.clock.getter()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if (v1)
  {
    goto LABEL_8;
  }

  if (*(*(specialized static __ServiceLocator.shared.getter() + 160) + 16))
  {

    if (RETimebaseServiceCreateEngineSourceTimebase())
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5[0] = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v2, v3, v5);

  if (v5[0])
  {
LABEL_7:

LABEL_8:
    v4 = v1;
    return;
  }

  __break(1u);
}

void key path getter for PhysicsSimulationComponent.clock : PhysicsSimulationComponent(uint64_t a1@<X0>, CMTimebaseRef *a2@<X8>)
{
  timebaseOut[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v4 = a2;
    if (*(*(specialized static __ServiceLocator.shared.getter() + 160) + 16))
    {

      EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
      if (EngineSourceTimebase)
      {
        v3 = EngineSourceTimebase;
LABEL_8:

        a2 = v4;
        v2 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    timebaseOut[0] = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v6, v7, timebaseOut);

    v3 = timebaseOut[0];
    if (!timebaseOut[0])
    {
      __break(1u);
      return;
    }

    goto LABEL_8;
  }

  v3 = v2;
LABEL_9:
  *a2 = v3;

  v8 = v2;
}

void PhysicsSimulationComponent.clock.setter(const void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CMClockGetTypeID())
  {
    v9[0] = 0;
    v3 = *MEMORY[0x1E695E480];
    type metadata accessor for CMClockRef(0);
    swift_unknownObjectRetain();
    v4 = swift_dynamicCastUnknownClassUnconditional();
    CMTimebaseCreateWithSourceClock(v3, v4, v9);
    swift_unknownObjectRelease();

    v5 = v9[0];
    v6 = *(v1 + 40);
    v7 = v9[0];

    *(v1 + 40) = v5;
  }

  else
  {
    type metadata accessor for CMTimebaseRef(0);
    v8 = swift_dynamicCastUnknownClassUnconditional();

    *(v1 + 40) = v8;
  }
}

void PhysicsSimulationComponent.clock.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 40);
LABEL_9:
    *a1 = v4;
    v8 = v3;
    return;
  }

  if (*(*(specialized static __ServiceLocator.shared.getter() + 160) + 16))
  {

    EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
    if (EngineSourceTimebase)
    {
      v4 = EngineSourceTimebase;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  *(a1 + 8) = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v6, v7, (a1 + 8));

  v4 = *(a1 + 8);
  if (v4)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void PhysicsSimulationComponent.clock.modify(const void **a1, char a2)
{
  if (a2)
  {
    v2 = swift_unknownObjectRetain();
    PhysicsSimulationComponent.clock.setter(v2);

    swift_unknownObjectRelease();
  }

  else
  {
    PhysicsSimulationComponent.clock.setter(*a1);
  }
}

id static PhysicsSimulationComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  GravityOverride = REPhysicsSimulationComponentGetGravityOverride();
  if (GravityOverride)
  {
    v4 = *GravityOverride;
  }

  else
  {
    v5 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE290](*(v5 + 16));
    if (!result)
    {
      __break(1u);
      return result;
    }

    REPhysicsSimulationServiceGetDefaultGravity();
  }

  v11 = v4;
  KinematicVsStaticFlag = REPhysicsSimulationComponentGetKinematicVsStaticFlag();
  if (REPhysicsSimulationComponentGetKinematicVsKinematicFlag())
  {
    KinematicVsStaticFlag |= 2u;
  }

  REPhysicsSimulationComponentGetSolverIterations();
  v9 = v8;
  result = REPhysicsSimulationComponentGetParentTimebase();
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = KinematicVsStaticFlag;
  *(a2 + 40) = result;
  return result;
}

uint64_t PhysicsSimulationComponent.__toCore(_:)(uint64_t *a1)
{
  REPhysicsSimulationComponentSetGravityOverride();
  REPhysicsSimulationComponentSetKinematicFlags();
  REPhysicsSimulationComponentSetParentTimebase();
  REPhysicsSimulationComponentSetSolverIterations();
  return RENetworkMarkComponentDirty();
}

void PhysicsSimulationComponent.customMirror.getter()
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + 32);
  v9 = *(v0 + 5);
  v10 = *v0;
  v19 = v0[1];
  v21 = v10;
  v22 = v19;
  v23 = v8;
  v24 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FD0;
  *(v11 + 32) = 0x79746976617267;
  *(v11 + 40) = 0xE700000000000000;
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v12 = swift_allocObject();
  *(v11 + 48) = v12;
  *(v12 + 16) = v19;
  *(v11 + 80) = 0xD000000000000010;
  *(v11 + 88) = 0x80000001C18F0C00;
  *(v11 + 96) = v8;
  *(v11 + 120) = &type metadata for PhysicsSimulationComponent.CollisionOptions;
  *(v11 + 128) = 0x6B636F6C63;
  *(v11 + 136) = 0xE500000000000000;
  if (v9)
  {
    v13 = v9;
LABEL_9:
    *(v11 + 168) = swift_getObjectType();
    *(v11 + 144) = v13;
    v17 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
    v18 = v9;
    Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
    return;
  }

  if (*(*(specialized static __ServiceLocator.shared.getter() + 160) + 16))
  {

    EngineSourceTimebase = RETimebaseServiceCreateEngineSourceTimebase();
    if (EngineSourceTimebase)
    {
      v13 = EngineSourceTimebase;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  timebaseOut = 0;
  v15 = *MEMORY[0x1E695E480];
  v16 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v15, v16, &timebaseOut);

  v13 = timebaseOut;
  if (timebaseOut)
  {
    goto LABEL_8;
  }

  __break(1u);
}

BOOL specialized static PhysicsSimulationComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if (a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1])
  {
    v5 = vmovn_s32(vceqq_f32(a1[1], a2[1]));
    if (v5.i8[0] & 1) != 0 && (v5.i8[2])
    {
      result = 0;
      if ((v5.i8[4] & 1) != 0 && a1[2].u8[0] == a2[2].u8[0])
      {
        v6 = a1[2].i64[1];
        v7 = a2[2].i64[1];
        result = (v6 | v7) == 0;
        if (v6)
        {
          if (v7)
          {
            type metadata accessor for CMTimebaseRef(0);
            lazy protocol witness table accessor for type CMTimebaseRef and conformance CMTimebaseRef();
            v8 = v7;
            v9 = static _CFObject.== infix(_:_:)();

            return v9 & 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(uint64_t a1)
{
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = MEMORY[0x1C68FE290](*(v1 + 16));
  if (result)
  {
    result = REPhysicsSimulationServiceGetRootSimulationEntity();
    if (result)
    {
      v3 = result;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        return swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
          __break(1u);
        }

        else
        {
          specialized static Entity.entityInfoType(_:)(v3);
          if (v4)
          {
            v5 = (*(v4 + 232))();
            v6 = *(v5 + 16);

            MEMORY[0x1C68F9740](v6, 0);
            *(v5 + 16) = v3;
            MEMORY[0x1C68F9740](v3, v5);

            return v5;
          }

          else
          {
            return makeEntity(for:)(v3);
          }
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions()
{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSimulationComponent.CollisionOptions, &type metadata for PhysicsSimulationComponent.CollisionOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSimulationComponent.CollisionOptions, &type metadata for PhysicsSimulationComponent.CollisionOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSimulationComponent.CollisionOptions, &type metadata for PhysicsSimulationComponent.CollisionOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions;
  if (!lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsSimulationComponent.CollisionOptions, &type metadata for PhysicsSimulationComponent.CollisionOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSimulationComponent.CollisionOptions and conformance PhysicsSimulationComponent.CollisionOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsSimulationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhysicsSimulationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMTimebaseRef and conformance CMTimebaseRef()
{
  result = lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef)
  {
    type metadata accessor for CMTimebaseRef(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CMTimebaseRef, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef and conformance CMTimebaseRef);
  }

  return result;
}

uint64_t USDDecodableContext.identifierForScene(uskNodePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a3;
    v31 = v9;
    v29 = a1;
    v36 = a1;
    v37 = a2;
    v34 = 91;
    v35 = 0xE100000000000000;
    v32 = 0;
    v33 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();

    v13 = MEMORY[0x1E69E6158];
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v37 = v14;
    v34 = 93;
    v35 = 0xE100000000000000;
    v32 = 0;
    v33 = 0xE000000000000000;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v17 = v16;

    v18 = *(v4 + 32);
    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17);
      v21 = v20;

      if (v21)
      {

        (*(v31 + 16))(v12, *(v18 + 56) + *(v31 + 72) * v19, v8);
        v22 = v30;
        (*(v31 + 32))(v30, v12, v8);
        return (*(v31 + 56))(v22, 0, 1, v8);
      }
    }

    else
    {
    }

    v25 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C1887600;
    *(v26 + 56) = v13;
    *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 32) = v29;
    *(v26 + 40) = a2;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v25, &dword_1C1358000, v27, "No identifier found for target path: %s", v28);

    return (*(v31 + 56))(v30, 1, 1, v8);
  }

  else
  {
    v24 = *(v9 + 56);

    return v24(a3, 1, 1, v8, v10);
  }
}

uint64_t USDDecodableContext.identifierForPath(uskNodePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  if (!a2)
  {
    goto LABEL_10;
  }

  v38 = v13;
  v39 = 0;
  v43 = a1;
  v44 = a2;
  v41 = 91;
  v42 = 0xE100000000000000;
  v40 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v44 = v16;
  v41 = 93;
  v42 = 0xE100000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v20 = *(v4 + 24);
  if (!*(v20 + 16))
  {

LABEL_10:
    v36 = type metadata accessor for UUID();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
  v23 = v22;

  v24 = v38;
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = (*(v20 + 56) + 16 * v21);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v4 + 16);

  specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v26, v27, v28, v20);
  v30 = v29;

  if (!v30)
  {
    goto LABEL_10;
  }

  Entity.__interactionIdentifier.getter(v15);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v15, 1, v31);
  outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34 == 1)
  {
    UUID.init()();
    (*(v32 + 56))(v11, 0, 1, v31);
    Entity.__interactionIdentifier.setter(v11);
  }

  Entity.__interactionIdentifier.getter(v24);
  result = v33(v24, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v32 + 32))(a3, v24, v31);
    return (*(v32 + 56))(a3, 0, 1, v31);
  }

  return result;
}

uint64_t __USDExportContext.pathTo(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
  v10[0] = v7;
  outlined init with copy of Any(v10, v11);
  outlined destroy of __USKObjectPathWrapper(v10);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 0;
  }
}

void USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *), uint64_t a5)
{
  v96 = a5;
  v95 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v88 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v94 = &v88 - v21;
  v103 = v5;
  v22 = *v5;
  v23 = MEMORY[0x1C68F3280](a1, a2, v20);
  v24 = [v22 property_];

  if (!v24)
  {
    v72 = 0xD000000000000012;
    v73 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v74 = swift_allocObject();
    v75 = v74;
    *(v74 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v76 = "ng: Unknown action type";
      }

      else
      {
        v76 = "imagesByFullSchemePath";
        v72 = 0xD000000000000013;
      }
    }

    else
    {
      v72 = 0xD000000000000014;
      v76 = "USD trigger loading";
    }

    v77 = v76 | 0x8000000000000000;
    v78 = MEMORY[0x1E69E6158];
    *(v74 + 56) = MEMORY[0x1E69E6158];
    v79 = lazy protocol witness table accessor for type String and conformance String();
    v75[4] = v72;
    v75[5] = v77;
    v75[12] = v78;
    v75[13] = v79;
    v75[8] = v79;
    v75[9] = a1;
    v75[10] = a2;

    v80 = [v22 path];
    v81 = [v80 stringValue];

    if (v81)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = v75 + 14;
      v75[17] = v78;
      v75[18] = v79;
      if (v84)
      {
        *v85 = v82;
LABEL_50:
        v75[15] = v84;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v110 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v73, &dword_1C1358000, v110, "%s: No property named %s for node at path: %s", v88, v89, v90);

        v86 = v110;

        return;
      }
    }

    else
    {
      v85 = v75 + 14;
      v75[17] = v78;
      v75[18] = v79;
    }

    *v85 = 7104878;
    v84 = 0xE300000000000000;
    goto LABEL_50;
  }

  v25 = v24;
  v26 = [v25 objectPathArray];
  v107 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v27;
  if (v27 >> 62)
  {
    v87 = __CocoaSet.count.getter();
    v28 = v27;
    v29 = v87;
    v30 = v101;
    if (v87)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_56:

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v101;
  if (!v29)
  {
    goto LABEL_54;
  }

LABEL_4:
  if (v29 >= 1)
  {
    v89 = v11;
    v31 = 0;
    v32 = v103[1];
    v109 = v28 & 0xC000000000000001;
    v110 = v32;
    v104 = (v17 + 56);
    v93 = (v17 + 32);
    v102 = (v17 + 48);
    v92 = (v17 + 8);
    v106 = xmmword_1C1897FC0;
    v100 = "USD trigger loading";
    v99 = "ng: Unknown action type";
    v98 = "imagesByFullSchemePath";
    v108 = v28;
    v97 = a3;
    while (1)
    {
      if (v109)
      {
        v38 = MEMORY[0x1C68F41F0](v31);
      }

      else
      {
        v38 = *(v28 + 8 * v31 + 32);
      }

      v39 = v38;
      v40 = [v110 objectAtPath_];
      if (!v40)
      {
        goto LABEL_28;
      }

      v41 = v40;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();

      if (!v42)
      {
        goto LABEL_28;
      }

      v43 = [v39 stringValue];
      if (!v43)
      {
        goto LABEL_25;
      }

      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v115 = v45;
      v116 = v47;
      v105 = v47;
      v113 = 91;
      v114 = 0xE100000000000000;
      v111 = 0;
      v112 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v115 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v116 = v48;
      v113 = 93;
      v114 = 0xE100000000000000;
      v111 = 0;
      v112 = 0xE000000000000000;
      v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v51 = v50;

      v52 = v103[3];
      if (!*(v52 + 16))
      {
        break;
      }

      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51);
      v55 = v54;

      if ((v55 & 1) == 0 || (v56 = (*(v52 + 56) + 16 * v53), v57 = *v56, v58 = v56[1], v59 = v103[2], , specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v57, v58, v59, v52), v61 = v60, , !v61))
      {
        LOBYTE(a3) = v97;
        v30 = v101;
LABEL_25:
        (*v104)(v30, 1, 1, v16);
        goto LABEL_26;
      }

      swift_beginAccess();
      LOBYTE(a3) = v97;
      if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        v62 = v91;
        UUID.init(uuid:)();
        v63 = *v104;
        (*v104)(v62, 0, 1, v16);
        outlined destroy of BodyTrackingComponent?(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v63 = *v104;
        v69 = v91;
        (*v104)(v91, 1, 1, v16);
        outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v70 = v89;
        UUID.init()();
        v63(v70, 0, 1, v16);
        Entity.__interactionIdentifier.setter(v70);
      }

      v30 = v101;
      if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
      {
        goto LABEL_58;
      }

      v71 = v90;
      UUID.init(uuid:)();

      (*v93)(v30, v71, v16);
      v63(v30, 0, 1, v16);
LABEL_26:

      if ((*v102)(v30, 1, v16) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
        v64 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v65 = swift_allocObject();
        v66 = v65;
        *(v65 + 16) = v106;
        if (a3)
        {
          if (a3 == 1)
          {
            v33 = 0xD000000000000012;
            v67 = &v118;
          }

          else
          {
            v33 = 0xD000000000000013;
            v67 = &v117;
          }

          v34 = *(v67 - 32);
        }

        else
        {
          v33 = 0xD000000000000014;
          v34 = v100;
        }

        v35 = v34 | 0x8000000000000000;
        *(v65 + 56) = MEMORY[0x1E69E6158];
        *(v65 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v66[4] = v33;
        v66[5] = v35;
        v66[12] = v107;
        v66[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v66[9] = v39;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v36 = v39;
        v37 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v64, &dword_1C1358000, v37, "%s: No target entity identifier found for affected object path: %s", v88, v89);

        goto LABEL_8;
      }

      v68 = v94;
      (*v93)(v94, v30, v16);
      v95(v68);

      (*v92)(v68, v16);
LABEL_8:
      ++v31;
      v28 = v108;
      if (v29 == v31)
      {
        goto LABEL_56;
      }
    }

    LOBYTE(a3) = v97;
    v30 = v101;
    goto LABEL_25;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t __USDExportContext.InstanceMapper.addMapping(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a2, v19);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  swift_dynamicCast();
  v12 = v18;
  outlined init with copy of UUID?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    return outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    swift_beginAccess();
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v11, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v17;
    swift_endAccess();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t __USDExportContext.InstanceMapper.getMapping(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13USKObjectPathCSgMd, &_sSo13USKObjectPathCSgMR);
  a2[3] = result;
  *a2 = v8;
  return result;
}

uint64_t __USDExportContext.InstanceMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t __USDExportContext.instanceMapper.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t __USDExportContext.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __USKSceneWrapper(a1, v7);
  __USDExportContext.init(with:resolver:)(v7, 0, 0, &v8);
  result = outlined destroy of __USKSceneWrapper(a1);
  v5 = v9;
  v6 = v10;
  if (!v9)
  {
    v5 = 0;
  }

  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void __USDExportContext.init(with:resolver:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for __USDExportContext.InstanceMapper();
  v8 = swift_allocObject();
  *(v8 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So13USKObjectPathCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with take of Any(a1, &v12);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  if (swift_dynamicCast())
  {
    v9 = v11;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
    v10 = v11;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);

    a2 = 0;
    a3 = 0;
    v9 = 0;
    v8 = 0;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v9;
  a4[3] = v8;
}

uint64_t __USKNodeWrapper.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a2 - 8) + 32);

  return v6(boxed_opaque_existential_1, a1, a2);
}

double __USDEncoder.exportContext.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2, v3);
  v6 = v5;

  return result;
}

__n128 __USDEncoder.exportContext.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = v1[2];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*v1, v1[1]);

  *v1 = v3;
  v1[1] = v4;
  result = a1[1];
  *(v1 + 1) = result;
  return result;
}

__n128 __USDEncoder.init(exportContext:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EntitiesArray = RESceneGetEntitiesArray();
  if (v6)
  {
    v7 = EntitiesArray;
    v8 = v6;
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v6, 0);
    memcpy(v9 + 4, v7, 8 * v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v11 = v9[2];
  while (1)
  {
    if (v11 == v10)
    {
LABEL_12:

      return;
    }

    if (v10 >= v9[2])
    {
      break;
    }

    REEntityGetName();
    if (String.init(cString:)() == a1 && v12 == a2)
    {

      return;
    }

    ++v10;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void specialized USDDecodableContext.childEntityWithName(childEntityName:entity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v6 = ChildCount;
    for (i = 0; v6 != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      if (!REEntityGetChild())
      {
        goto LABEL_13;
      }

      REEntityGetName();
      if (String.init(cString:)() == a1 && v9 == a2)
      {

        return;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return;
      }
    }
  }
}

void specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = 47;
  v51 = 0xE100000000000000;
  v45 = &v50;

  v9 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v44, a1, a2, v8);
  if (*(a4 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000), (v11 & 1) != 0))
  {
    v12 = (*(a4 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
    v50 = v14;
    v51 = v13;
    v48 = 12079;
    v49 = 0xE200000000000000;
    v46 = 47;
    v47 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(v15, v16, *(a3 + 16));
    v18 = v17;
    v19 = 0;
  }

  else
  {
    if (!v9[2])
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v20 = v9[4];
    v21 = v9[5];
    v22 = v9[6];
    v23 = v9[7];

    v24 = MEMORY[0x1C68F3380](v20, v21, v22, v23);
    v26 = v25;

    specialized USDDecodableContext.sceneChildEntityWithName(childEntityName:scene:)(v24, v26, *(a3 + 16));
    v18 = v27;
    v19 = 1;
  }

  v28 = v9[2];
  if ((v28 & ~v19) != 0)
  {
    v29 = &v9[4 * v19 + 7];
    while (v28 != v19)
    {
      if (!v18)
      {

        return;
      }

      if (v19 >= v9[2])
      {
        goto LABEL_22;
      }

      ++v19;
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 1);
      v33 = *v29;

      v34 = MEMORY[0x1C68F3380](v30, v31, v32, v33);
      v36 = v35;

      specialized USDDecodableContext.childEntityWithName(childEntityName:entity:)(v34, v36, v18);
      v18 = v37;

      v29 += 4;
      if (v28 == v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:

  if (v18)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      swift_dynamicCastClassUnconditional();
      return;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_24;
    }

    specialized static Entity.entityInfoType(_:)(v18);
    if (v38)
    {
      v42 = (*(v38 + 232))(v38, v39, v40, v41);
      v43 = *(v42 + 16);

      MEMORY[0x1C68F9740](v43, 0);
      *(v42 + 16) = v18;
      MEMORY[0x1C68F9740](v18, v42);
    }

    else
    {
      makeEntity(for:)(v18);
    }
  }
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v104 = a8;
  v109 = a7;
  v100 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v97 - v20;
  v21 = type metadata accessor for UUID();
  v108 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v97 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v114 = &v97 - v27;
  v28 = MEMORY[0x1C68F3280](a1, a2, v26);
  v29 = [a4 property_];

  if (!v29)
  {
    v81 = 0xD000000000000012;
    v82 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v83 = swift_allocObject();
    v84 = v83;
    *(v83 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v85 = "ng: Unknown action type";
      }

      else
      {
        v85 = "imagesByFullSchemePath";
        v81 = 0xD000000000000013;
      }
    }

    else
    {
      v81 = 0xD000000000000014;
      v85 = "USD trigger loading";
    }

    v86 = v85 | 0x8000000000000000;
    v87 = MEMORY[0x1E69E6158];
    *(v83 + 56) = MEMORY[0x1E69E6158];
    v88 = lazy protocol witness table accessor for type String and conformance String();
    v84[4] = v81;
    v84[5] = v86;
    v84[12] = v87;
    v84[13] = v88;
    v84[8] = v88;
    v84[9] = a1;
    v84[10] = a2;

    v89 = [a4 path];
    v90 = [v89 stringValue];

    if (v90)
    {
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      v94 = v84 + 14;
      v84[17] = v87;
      v84[18] = v88;
      if (v93)
      {
        *v94 = v91;
LABEL_53:
        v84[15] = v93;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v121 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v82, &dword_1C1358000, v121, "%s: No property named %s for node at path: %s", v97, v98, v99);

        v95 = v121;

        return;
      }
    }

    else
    {
      v94 = v84 + 14;
      v84[17] = v87;
      v84[18] = v88;
    }

    *v94 = 7104878;
    v93 = 0xE300000000000000;
    goto LABEL_53;
  }

  v30 = v29;
  v31 = [v30 objectPathArray];
  v119 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  if (v32 >> 62)
  {
    v96 = __CocoaSet.count.getter();
    v33 = v32;
    v34 = v96;
    if (v96)
    {
      goto LABEL_4;
    }

LABEL_57:

LABEL_59:

    return;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_57;
  }

LABEL_4:
  if (v34 >= 1)
  {
    v98 = v18;
    v97 = v15;
    v118 = a3;
    v35 = 0;
    v121 = (v33 & 0xC000000000000001);
    v112 = (v108 + 32);
    v113 = (v108 + 56);
    v111 = (v108 + 48);
    v102 = (v108 + 16);
    v101 = v108 + 8;
    v117 = xmmword_1C1897FC0;
    v107 = "USD trigger loading";
    v106 = "ng: Unknown action type";
    v105 = "imagesByFullSchemePath";
    v36 = v110;
    v120 = v33;
    v103 = a5;
    while (1)
    {
      if (v121)
      {
        v42 = MEMORY[0x1C68F41F0](v35);
      }

      else
      {
        v42 = *(v33 + 8 * v35 + 32);
      }

      v43 = v42;
      v44 = [a5 objectAtPath_];
      if (!v44)
      {
        goto LABEL_28;
      }

      v45 = v44;
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();

      if (!v46)
      {
        goto LABEL_28;
      }

      v47 = [v43 stringValue];
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v126 = v49;
        v127 = v51;
        v116 = v51;
        v124 = 91;
        v125 = 0xE100000000000000;
        v122 = 0;
        v123 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v126 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v127 = v52;
        v124 = 93;
        v125 = 0xE100000000000000;
        v122 = 0;
        v123 = 0xE000000000000000;
        v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v55 = v54;

        v56 = v109;
        if (*(v109 + 16))
        {
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v55);
          v59 = v58;

          if (v59)
          {
            v60 = (*(v56 + 56) + 16 * v57);
            v61 = *v60;
            v62 = v60[1];

            specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v61, v62, v100, v56);
            v64 = v63;

            if (v64)
            {
              swift_beginAccess();
              a5 = v103;
              if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
              {
                v65 = v98;
                UUID.init(uuid:)();
                v66 = *v113;
                (*v113)(v65, 0, 1, v21);
                outlined destroy of BodyTrackingComponent?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v66 = *v113;
                v78 = v98;
                (*v113)(v98, 1, 1, v21);
                outlined destroy of BodyTrackingComponent?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v79 = v97;
                UUID.init()();
                v66(v79, 0, 1, v21);
                Entity.__interactionIdentifier.setter(v79);
              }

              v36 = v110;
              if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
              {
                goto LABEL_61;
              }

              v80 = v99;
              UUID.init(uuid:)();

              (*v112)(v36, v80, v21);
              v66(v36, 0, 1, v21);
              goto LABEL_26;
            }
          }

          a5 = v103;
          v36 = v110;
        }

        else
        {

          a5 = v103;
          v36 = v110;
        }
      }

      (*v113)(v36, 1, 1, v21);
LABEL_26:

      if ((*v111)(v36, 1, v21) != 1)
      {
        v70 = *v112;
        v71 = v114;
        (*v112)(v114, v36, v21);
        (*v102)(v115, v71, v21);
        v72 = v104;
        v73 = *v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          *v104 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
          *v104 = v73;
        }

        v73[2] = v76 + 1;
        v77 = v108;
        v70(v73 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v108 + 72) * v76, v115, v21);

        (*(v77 + 8))(v114, v21);
        goto LABEL_8;
      }

      outlined destroy of BodyTrackingComponent?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
      v67 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v68 = swift_allocObject();
      v69 = v68;
      *(v68 + 16) = v117;
      if (v118)
      {
        if (v118 == 1)
        {
          v37 = 0xD000000000000012;
          v38 = &v129;
        }

        else
        {
          v37 = 0xD000000000000013;
          v38 = &v128;
        }
      }

      else
      {
        v37 = 0xD000000000000014;
        v38 = &v130;
      }

      v39 = *(v38 - 32) | 0x8000000000000000;
      *(v68 + 56) = MEMORY[0x1E69E6158];
      *(v68 + 64) = lazy protocol witness table accessor for type String and conformance String();
      v69[4] = v37;
      v69[5] = v39;
      v69[12] = v119;
      v69[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
      v69[9] = v43;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v40 = v43;
      v41 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v67, &dword_1C1358000, v41, "%s: No target entity identifier found for affected object path: %s", v97, v98);

LABEL_8:
      ++v35;
      v33 = v120;
      if (v34 == v35)
      {
        goto LABEL_59;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v109 = a8;
  v113 = a7;
  v102 = a6;
  v114 = a5;
  v108 = a9;
  v107 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v119 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v99 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v99 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v118 = &v99 - v25;
  v26 = MEMORY[0x1C68F3280](a1, a2, v24);
  v27 = [a4 property_];

  if (!v27)
  {
    v83 = 0xD000000000000012;
    v84 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v85 = swift_allocObject();
    v86 = v85;
    *(v85 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v87 = "ng: Unknown action type";
      }

      else
      {
        v87 = "imagesByFullSchemePath";
        v83 = 0xD000000000000013;
      }
    }

    else
    {
      v83 = 0xD000000000000014;
      v87 = "USD trigger loading";
    }

    v88 = v87 | 0x8000000000000000;
    v89 = MEMORY[0x1E69E6158];
    *(v85 + 56) = MEMORY[0x1E69E6158];
    v90 = lazy protocol witness table accessor for type String and conformance String();
    v86[4] = v83;
    v86[5] = v88;
    v86[12] = v89;
    v86[13] = v90;
    v86[8] = v90;
    v86[9] = a1;
    v86[10] = a2;

    v91 = [a4 path];
    v92 = [v91 stringValue];

    if (v92)
    {
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = v86 + 14;
      v86[17] = v89;
      v86[18] = v90;
      if (v95)
      {
        *v96 = v93;
LABEL_57:
        v86[15] = v95;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v125 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v84, &dword_1C1358000, v125, "%s: No property named %s for node at path: %s", v99, v100, v101);

        v97 = v125;

        return;
      }
    }

    else
    {
      v96 = v86 + 14;
      v86[17] = v89;
      v86[18] = v90;
    }

    *v96 = 7104878;
    v95 = 0xE300000000000000;
    goto LABEL_57;
  }

  v123 = a3;
  v28 = v27;
  v29 = [v28 objectPathArray];
  v122 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v30;
  if (v30 >> 62)
  {
    v98 = __CocoaSet.count.getter();
    v31 = v30;
    v32 = v98;
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v114;
  if (v32)
  {
    if (v32 >= 1)
    {
      v34 = 0;
      v125 = (v31 & 0xC000000000000001);
      v116 = (v21 + 56);
      v105 = (v21 + 32);
      v115 = (v21 + 48);
      v104 = (v21 + 16);
      v103 = (v21 + 8);
      v121 = xmmword_1C1897FC0;
      v35 = MEMORY[0x1E69E6158];
      v112 = "USD trigger loading";
      v111 = "ng: Unknown action type";
      v110 = "imagesByFullSchemePath";
      v124 = v31;
      while (1)
      {
        if (v125)
        {
          v41 = MEMORY[0x1C68F41F0](v34);
        }

        else
        {
          v41 = *(v31 + 8 * v34 + 32);
        }

        v42 = v41;
        v43 = [v33 objectAtPath_];
        if (!v43)
        {
          goto LABEL_29;
        }

        v44 = v43;
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();

        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = [v42 stringValue];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v130 = v48;
          v131 = v50;
          v120 = v50;
          v128 = 91;
          v129 = 0xE100000000000000;
          v126 = 0;
          v127 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v130 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v131 = v51;
          v128 = 93;
          v129 = 0xE100000000000000;
          v126 = 0;
          v127 = 0xE000000000000000;
          v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v54 = v53;

          v55 = v113;
          if (*(v113 + 16))
          {
            v56 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
            v58 = v57;

            if (v58)
            {
              v59 = (*(v55 + 56) + 16 * v56);
              v60 = *v59;
              v61 = v59[1];

              specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v60, v61, v102, v55);
              v63 = v62;

              if (v63)
              {
                swift_beginAccess();
                v33 = v114;
                if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
                {
                  v64 = v101;
                  UUID.init(uuid:)();
                  v65 = *v116;
                  (*v116)(v64, 0, 1, v20);
                  outlined destroy of BodyTrackingComponent?(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v65 = *v116;
                  v80 = v101;
                  (*v116)(v101, 1, 1, v20);
                  outlined destroy of BodyTrackingComponent?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v81 = v99;
                  UUID.init()();
                  v65(v81, 0, 1, v20);
                  Entity.__interactionIdentifier.setter(v81);
                }

                if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
                {
                  goto LABEL_62;
                }

                v82 = v100;
                UUID.init(uuid:)();

                v66 = v117;
                (*v105)(v117, v82, v20);
                v65(v66, 0, 1, v20);
                goto LABEL_27;
              }
            }

            v33 = v114;
          }

          else
          {

            v33 = v114;
          }
        }

        v66 = v117;
        (*v116)(v117, 1, 1, v20);
LABEL_27:

        if ((*v115)(v66, 1, v20) != 1)
        {
          v70 = v118;
          (*v105)(v118, v66, v20);
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
          v72 = *(v71 + 48);
          v73 = *(v71 + 64);
          v74 = v119;
          (*v104)(v119, v70, v20);
          *(v74 + v72) = *v108;
          *(v74 + v73) = MEMORY[0x1E69E7CC0];
          swift_storeEnumTagMultiPayload();
          v75 = v109;
          v76 = *v109;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v75 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
            *v109 = v76;
          }

          v79 = v76[2];
          v78 = v76[3];
          if (v79 >= v78 >> 1)
          {
            v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v76);
            *v109 = v76;
          }

          v76[2] = v79 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v119, v76 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v79, type metadata accessor for __RKEntityTriggerSpecification);

          (*v103)(v118, v20);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        v67 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v68 = swift_allocObject();
        v69 = v68;
        *(v68 + 16) = v121;
        if (v123)
        {
          if (v123 == 1)
          {
            v36 = 0xD000000000000012;
            v37 = &v133;
          }

          else
          {
            v36 = 0xD000000000000013;
            v37 = &v132;
          }
        }

        else
        {
          v36 = 0xD000000000000014;
          v37 = &v134;
        }

        v38 = *(v37 - 32) | 0x8000000000000000;
        *(v68 + 56) = v35;
        *(v68 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v69[4] = v36;
        v69[5] = v38;
        v69[12] = v122;
        v69[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v69[9] = v42;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v39 = v42;
        v40 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v67, &dword_1C1358000, v40, "%s: No target entity identifier found for affected object path: %s", v99, v100);

LABEL_9:
        ++v34;
        v31 = v124;
        if (v32 == v34)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, float a9)
{
  v110 = a8;
  v114 = a7;
  v104 = a6;
  v115 = a5;
  v109 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v120 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v100 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v119 = &v100 - v26;
  v27 = MEMORY[0x1C68F3280](a1, a2, v25);
  v28 = [a4 property_];

  if (!v28)
  {
    v84 = 0xD000000000000012;
    v85 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v86 = swift_allocObject();
    v87 = v86;
    *(v86 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v88 = "ng: Unknown action type";
      }

      else
      {
        v88 = "imagesByFullSchemePath";
        v84 = 0xD000000000000013;
      }
    }

    else
    {
      v84 = 0xD000000000000014;
      v88 = "USD trigger loading";
    }

    v89 = v88 | 0x8000000000000000;
    v90 = MEMORY[0x1E69E6158];
    *(v86 + 56) = MEMORY[0x1E69E6158];
    v91 = lazy protocol witness table accessor for type String and conformance String();
    v87[4] = v84;
    v87[5] = v89;
    v87[12] = v90;
    v87[13] = v91;
    v87[8] = v91;
    v87[9] = a1;
    v87[10] = a2;

    v92 = [a4 path];
    v93 = [v92 stringValue];

    if (v93)
    {
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v87 + 14;
      v87[17] = v90;
      v87[18] = v91;
      if (v96)
      {
        *v97 = v94;
LABEL_57:
        v87[15] = v96;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v126 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v85, &dword_1C1358000, v126, "%s: No property named %s for node at path: %s", v100, v101, v102);

        v98 = v126;

        return;
      }
    }

    else
    {
      v97 = v87 + 14;
      v87[17] = v90;
      v87[18] = v91;
    }

    *v97 = 7104878;
    v96 = 0xE300000000000000;
    goto LABEL_57;
  }

  v124 = a3;
  v29 = v28;
  v30 = [v29 objectPathArray];
  v123 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = v31;
  if (v31 >> 62)
  {
    v99 = __CocoaSet.count.getter();
    v32 = v31;
    v33 = v99;
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v115;
  if (v33)
  {
    if (v33 >= 1)
    {
      v35 = 0;
      v126 = (v32 & 0xC000000000000001);
      v117 = (v22 + 56);
      v107 = (v22 + 32);
      v116 = (v22 + 48);
      v106 = (v22 + 16);
      v105 = (v22 + 8);
      v122 = xmmword_1C1897FC0;
      v36 = MEMORY[0x1E69E6158];
      v113 = "USD trigger loading";
      v112 = "ng: Unknown action type";
      v111 = "imagesByFullSchemePath";
      v125 = v32;
      while (1)
      {
        if (v126)
        {
          v42 = MEMORY[0x1C68F41F0](v35);
        }

        else
        {
          v42 = *(v32 + 8 * v35 + 32);
        }

        v43 = v42;
        v44 = [v34 objectAtPath_];
        if (!v44)
        {
          goto LABEL_29;
        }

        v45 = v44;
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();

        if (!v46)
        {
          goto LABEL_29;
        }

        v47 = [v43 stringValue];
        if (v47)
        {
          v48 = v47;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v131 = v49;
          v132 = v51;
          v121 = v51;
          v129 = 91;
          v130 = 0xE100000000000000;
          v127 = 0;
          v128 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v131 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v132 = v52;
          v129 = 93;
          v130 = 0xE100000000000000;
          v127 = 0;
          v128 = 0xE000000000000000;
          v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v55 = v54;

          v56 = v114;
          if (*(v114 + 16))
          {
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v55);
            v59 = v58;

            if (v59)
            {
              v60 = (*(v56 + 56) + 16 * v57);
              v61 = *v60;
              v62 = v60[1];

              specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v61, v62, v104, v56);
              v64 = v63;

              if (v64)
              {
                swift_beginAccess();
                v34 = v115;
                if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
                {
                  v65 = v103;
                  UUID.init(uuid:)();
                  v66 = *v117;
                  (*v117)(v65, 0, 1, v21);
                  outlined destroy of BodyTrackingComponent?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v66 = *v117;
                  v81 = v103;
                  (*v117)(v103, 1, 1, v21);
                  outlined destroy of BodyTrackingComponent?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v82 = v101;
                  UUID.init()();
                  v66(v82, 0, 1, v21);
                  Entity.__interactionIdentifier.setter(v82);
                }

                if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
                {
                  goto LABEL_62;
                }

                v83 = v102;
                UUID.init(uuid:)();

                v67 = v118;
                (*v107)(v118, v83, v21);
                v66(v67, 0, 1, v21);
                goto LABEL_27;
              }
            }

            v34 = v115;
          }

          else
          {

            v34 = v115;
          }
        }

        v67 = v118;
        (*v117)(v118, 1, 1, v21);
LABEL_27:

        if ((*v116)(v67, 1, v21) != 1)
        {
          v71 = v119;
          (*v107)(v119, v67, v21);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
          v73 = *(v72 + 48);
          v74 = *(v72 + 64);
          v75 = v120;
          (*v106)(v120, v71, v21);
          *(v75 + v73) = a9;
          *(v75 + v74) = 0;
          swift_storeEnumTagMultiPayload();
          v76 = v110;
          v77 = *v110;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v76 = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
            *v110 = v77;
          }

          v80 = v77[2];
          v79 = v77[3];
          if (v80 >= v79 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v77);
            *v110 = v77;
          }

          v77[2] = v80 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v120, v77 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v80, type metadata accessor for __RKEntityTriggerSpecification);

          (*v105)(v119, v21);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        v68 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v69 = swift_allocObject();
        v70 = v69;
        *(v69 + 16) = v122;
        if (v124)
        {
          if (v124 == 1)
          {
            v37 = 0xD000000000000012;
            v38 = &v134;
          }

          else
          {
            v37 = 0xD000000000000013;
            v38 = &v133;
          }
        }

        else
        {
          v37 = 0xD000000000000014;
          v38 = &v135;
        }

        v39 = *(v38 - 32) | 0x8000000000000000;
        *(v69 + 56) = v36;
        *(v69 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v70[4] = v37;
        v70[5] = v39;
        v70[12] = v123;
        v70[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v70[9] = v43;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v40 = v43;
        v41 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v68, &dword_1C1358000, v41, "%s: No target entity identifier found for affected object path: %s", v100, v101);

LABEL_9:
        ++v35;
        v32 = v125;
        if (v33 == v35)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}

void specialized USDDecodableContext.entityFromIdentifier(identifier:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v59);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v49 - v14;
  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (v16)
  {
    v17 = AllEntitiesArray;
    v18 = v16;
    v61 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v16, 0);
    memcpy(v61 + 4, v17, 8 * v18);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  v58 = v61[2];
  if (!v58)
  {
LABEL_51:

    return;
  }

  v53 = v9;
  swift_beginAccess();
  v19 = 0;
  v56 = (v3 + 16);
  v57 = (v3 + 56);
  v49 = (v3 + 32);
  v52 = (v3 + 8);
  v55 = (v3 + 48);
  while (v19 < v61[2])
  {
    v20 = v61[v19 + 4];
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v21 = swift_dynamicCastClassUnconditional();
LABEL_38:
      v38 = v21;
      goto LABEL_39;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_53;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v22 & 1) == 0))
    {
      swift_endAccess();
      v23 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypeObjectIdToHandles = v63;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_37;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_37;
    }

    v26 = *Object;
    if (*(Object + 8) || !v26)
    {
    }

    else
    {
      v27 = *v26;
      v28 = String.init(utf8String:)();
      if (v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      v26 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v27 == 42, v30, v31);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v26;
    }

    if (!v26)
    {
      goto LABEL_54;
    }

    v32 = String.init(utf8String:)();
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v35 = MEMORY[0x1C68F3280](v32, v34);

    v36 = NSClassFromString(v35);

    if (!v36 || (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v37 = swift_dynamicCastMetatype()) == 0))
    {
LABEL_37:
      v21 = makeEntity(for:)(v20);
      goto LABEL_38;
    }

    v38 = (*(v37 + 232))();
    v39 = *(v38 + 16);

    MEMORY[0x1C68F9740](v39, 0);
    *(v38 + 16) = v20;
    MEMORY[0x1C68F9740](v20, v38);

LABEL_39:
    if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
    {
      UUID.init(uuid:)();
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = *v57;
    v42 = v62;
    (*v57)(v62, v40, 1, v2);
    (*v56)(v12, v60, v2);
    v41(v12, 0, 1, v2);
    v43 = *(v59 + 48);
    outlined init with copy of UUID?(v42, v6);
    outlined init with copy of UUID?(v12, &v6[v43]);
    v44 = *v55;
    if ((*v55)(v6, 1, v2) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v44(&v6[v43], 1, v2) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_51;
      }

      goto LABEL_7;
    }

    v54 = v38;
    v45 = v62;
    v46 = v53;
    outlined init with copy of UUID?(v6, v53);
    if (v44(&v6[v43], 1, v2) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v52)(v46, v2);
LABEL_7:
      outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      goto LABEL_8;
    }

    v47 = v50;
    (*v49)(v50, &v6[v43], v2);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *v52;
    (*v52)(v47, v2);
    outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v48(v46, v2);
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v51)
    {
      goto LABEL_51;
    }

LABEL_8:
    ++v19;

    if (v58 == v19)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v109 = a8;
  v113 = a7;
  v101 = a6;
  v107 = a9;
  v106 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v117 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v114 = &v97 - v27;
  v28 = MEMORY[0x1C68F3280](a1, a2, v26);
  v29 = [a4 property_];

  if (!v29)
  {
    v82 = 0xD000000000000012;
    v83 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v84 = swift_allocObject();
    v85 = v84;
    *(v84 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v86 = "ng: Unknown action type";
      }

      else
      {
        v86 = "imagesByFullSchemePath";
        v82 = 0xD000000000000013;
      }
    }

    else
    {
      v82 = 0xD000000000000014;
      v86 = "USD trigger loading";
    }

    v87 = v86 | 0x8000000000000000;
    v88 = MEMORY[0x1E69E6158];
    *(v84 + 56) = MEMORY[0x1E69E6158];
    v89 = lazy protocol witness table accessor for type String and conformance String();
    v85[4] = v82;
    v85[5] = v87;
    v85[12] = v88;
    v85[13] = v89;
    v85[8] = v89;
    v85[9] = a1;
    v85[10] = a2;

    v90 = [a4 path];
    v91 = [v90 stringValue];

    if (v91)
    {
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      v95 = v85 + 14;
      v85[17] = v88;
      v85[18] = v89;
      if (v94)
      {
        *v95 = v92;
LABEL_60:
        v85[15] = v94;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v124 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v83, &dword_1C1358000, v124, "%s: No property named %s for node at path: %s", v97, v98, v99);

        v96 = v124;

        return;
      }
    }

    else
    {
      v95 = v85 + 14;
      v85[17] = v88;
      v85[18] = v89;
    }

    *v95 = 7104878;
    v94 = 0xE300000000000000;
    goto LABEL_60;
  }

  v30 = v29;
  v31 = [v30 objectPathArray];
  v121 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v32;
  if (v32 >> 62)
  {
    v34 = __CocoaSet.count.getter();
    v33 = v32;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v114;
  if (v34)
  {
    if (v34 >= 1)
    {
      v120 = a3;
      v36 = 0;
      v124 = (v33 & 0xC000000000000001);
      v116 = (v23 + 56);
      v104 = (v23 + 32);
      v115 = (v23 + 48);
      v103 = (v23 + 16);
      v102 = (v23 + 8);
      v119 = xmmword_1C1897FC0;
      v112 = "USD trigger loading";
      v111 = "ng: Unknown action type";
      v110 = "imagesByFullSchemePath";
      v122 = v34;
      v123 = v33;
      v108 = v21;
      while (1)
      {
        if (v124)
        {
          v43 = MEMORY[0x1C68F41F0](v36);
        }

        else
        {
          v43 = *(v33 + 8 * v36 + 32);
        }

        v44 = v43;
        v45 = [a5 objectAtPath_];
        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = v45;
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();

        if (!v47)
        {
          goto LABEL_29;
        }

        v48 = [v44 stringValue];
        if (v48)
        {
          v49 = a5;
          v50 = v48;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v129 = v51;
          v130 = v53;
          v118 = v53;
          v127 = 91;
          v128 = 0xE100000000000000;
          v125 = 0;
          v126 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v129 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v130 = v54;
          v127 = 93;
          v128 = 0xE100000000000000;
          v125 = 0;
          v126 = 0xE000000000000000;
          v55 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v57 = v56;

          v58 = v113;
          if (*(v113 + 16))
          {
            v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v57);
            v61 = v60;

            if (v61)
            {
              v62 = (*(v58 + 56) + 16 * v59);
              v63 = *v62;
              v64 = v62[1];

              specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v63, v64, v101, v58);
              v66 = v65;

              if (v66)
              {
                swift_beginAccess();
                a5 = v49;
                if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
                {
                  v67 = v100;
                  UUID.init(uuid:)();
                  v68 = *v116;
                  (*v116)(v67, 0, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v68 = *v116;
                  v79 = v100;
                  (*v116)(v100, 1, 1, v22);
                  outlined destroy of BodyTrackingComponent?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v80 = v98;
                  UUID.init()();
                  v68(v80, 0, 1, v22);
                  Entity.__interactionIdentifier.setter(v80);
                }

                v21 = v108;
                if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
                {
                  goto LABEL_65;
                }

                v81 = v99;
                UUID.init(uuid:)();

                (*v104)(v21, v81, v22);
                v68(v21, 0, 1, v22);
                v35 = v114;
                goto LABEL_27;
              }
            }

            a5 = v49;
            v21 = v108;
            v35 = v114;
          }

          else
          {

            a5 = v49;
            v21 = v108;
            v35 = v114;
          }
        }

        (*v116)(v21, 1, 1, v22);
LABEL_27:

        if ((*v115)(v21, 1, v22) != 1)
        {
          (*v104)(v35, v21, v22);
          (*v103)(v117, v35, v22);
          swift_storeEnumTagMultiPayload();
          v72 = v109;
          v73 = *v109;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v72 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
            *v109 = v73;
          }

          v76 = v73[2];
          v75 = v73[3];
          if (v76 >= v75 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
            *v109 = v73;
          }

          v73[2] = v76 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v117, v73 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v76, type metadata accessor for __RKEntityTriggerSpecification);
          specialized USDDecodableContext.entityFromIdentifier(identifier:)(v35, v107);
          if (v77)
          {
            Entity.generateCollisionShapes(recursive:static:)(1, 0);
          }

          else
          {
          }

          v42 = v122;
          v78 = v123;
          (*v102)(v35, v22);
          v33 = v78;
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        v69 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v70 = swift_allocObject();
        v71 = v70;
        *(v70 + 16) = v119;
        if (v120)
        {
          if (v120 == 1)
          {
            v37 = 0xD000000000000012;
            v38 = &v132;
          }

          else
          {
            v37 = 0xD000000000000013;
            v38 = &v131;
          }
        }

        else
        {
          v37 = 0xD000000000000014;
          v38 = &v133;
        }

        v39 = *(v38 - 32) | 0x8000000000000000;
        *(v70 + 56) = MEMORY[0x1E69E6158];
        *(v70 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v71[4] = v37;
        v71[5] = v39;
        v71[12] = v121;
        v71[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v71[9] = v44;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v40 = v44;
        v41 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v69, &dword_1C1358000, v41, "%s: No target entity identifier found for affected object path: %s", v97, v98);

        v42 = v122;
        v33 = v123;
LABEL_9:
        if (v42 == ++v36)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {

LABEL_52:
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLVACSgs5Error_pIegnrzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, __n128 a9)
{
  v126 = a9;
  v111 = a8;
  v115 = a7;
  v104 = a6;
  v116 = a5;
  v110 = type metadata accessor for __RKEntityActionSpecification(0);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v121 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v101 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v100 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v120 = &v100 - v25;
  v26 = MEMORY[0x1C68F3280](a1, a2, v24);
  v27 = [a4 property_];

  if (!v27)
  {
    v84 = 0xD000000000000012;
    v85 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v86 = swift_allocObject();
    v87 = v86;
    *(v86 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v88 = "ng: Unknown action type";
      }

      else
      {
        v88 = "imagesByFullSchemePath";
        v84 = 0xD000000000000013;
      }
    }

    else
    {
      v84 = 0xD000000000000014;
      v88 = "USD trigger loading";
    }

    v89 = v88 | 0x8000000000000000;
    v90 = MEMORY[0x1E69E6158];
    *(v86 + 56) = MEMORY[0x1E69E6158];
    v91 = lazy protocol witness table accessor for type String and conformance String();
    v87[4] = v84;
    v87[5] = v89;
    v87[12] = v90;
    v87[13] = v91;
    v87[8] = v91;
    v87[9] = a1;
    v87[10] = a2;

    v92 = [a4 path];
    v93 = [v92 stringValue];

    if (v93)
    {
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v87 + 14;
      v87[17] = v90;
      v87[18] = v91;
      if (v96)
      {
        *v97 = v94;
LABEL_57:
        v87[15] = v96;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v127 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v85, &dword_1C1358000, v127, "%s: No property named %s for node at path: %s", v100, v101, v102);

        v98 = v127;

        return;
      }
    }

    else
    {
      v97 = v87 + 14;
      v87[17] = v90;
      v87[18] = v91;
    }

    *v97 = 7104878;
    v96 = 0xE300000000000000;
    goto LABEL_57;
  }

  v125 = a3;
  v28 = v27;
  v29 = [v28 objectPathArray];
  v124 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = v30;
  if (v30 >> 62)
  {
    v99 = __CocoaSet.count.getter();
    v31 = v30;
    v32 = v99;
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v116;
  if (v32)
  {
    if (v32 >= 1)
    {
      v34 = 0;
      v127 = (v31 & 0xC000000000000001);
      v118 = (v21 + 56);
      v108 = (v21 + 32);
      v117 = (v21 + 48);
      v107 = (v21 + 16);
      v106 = v126;
      v105 = (v21 + 8);
      v123 = xmmword_1C1897FC0;
      v114 = "USD trigger loading";
      v35 = MEMORY[0x1E69E6158];
      v113 = "ng: Unknown action type";
      v112 = "imagesByFullSchemePath";
      v126.n128_u64[0] = v31;
      while (1)
      {
        if (v127)
        {
          v41 = MEMORY[0x1C68F41F0](v34);
        }

        else
        {
          v41 = *(v31 + 8 * v34 + 32);
        }

        v42 = v41;
        v43 = [v33 objectAtPath_];
        if (!v43)
        {
          goto LABEL_29;
        }

        v44 = v43;
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();

        if (!v45)
        {
          goto LABEL_29;
        }

        v46 = [v42 stringValue];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v132 = v48;
          v133 = v50;
          v122 = v50;
          v130 = 91;
          v131 = 0xE100000000000000;
          v128 = 0;
          v129 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v132 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v133 = v51;
          v130 = 93;
          v131 = 0xE100000000000000;
          v128 = 0;
          v129 = 0xE000000000000000;
          v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v54 = v53;

          v55 = v115;
          if (*(v115 + 16))
          {
            v56 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
            v58 = v57;

            if (v58)
            {
              v59 = (*(v55 + 56) + 16 * v56);
              v60 = *v59;
              v61 = v59[1];

              specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v60, v61, v104, v55);
              v63 = v62;

              if (v63)
              {
                swift_beginAccess();
                v33 = v116;
                if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
                {
                  v64 = v103;
                  UUID.init(uuid:)();
                  v65 = *v118;
                  (*v118)(v64, 0, 1, v20);
                  outlined destroy of BodyTrackingComponent?(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                }

                else
                {
                  v65 = *v118;
                  v81 = v103;
                  (*v118)(v103, 1, 1, v20);
                  outlined destroy of BodyTrackingComponent?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v82 = v101;
                  UUID.init()();
                  v65(v82, 0, 1, v20);
                  Entity.__interactionIdentifier.setter(v82);
                }

                if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
                {
                  goto LABEL_62;
                }

                v83 = v102;
                UUID.init(uuid:)();

                v66 = v119;
                (*v108)(v119, v83, v20);
                v65(v66, 0, 1, v20);
                goto LABEL_27;
              }
            }

            v33 = v116;
          }

          else
          {

            v33 = v116;
          }
        }

        v66 = v119;
        (*v118)(v119, 1, 1, v20);
LABEL_27:

        if ((*v117)(v66, 1, v20) != 1)
        {
          v70 = v120;
          (*v108)(v120, v66, v20);
          v71 = v121;
          (*v107)(v121, v70, v20);
          v72 = type metadata accessor for __RKEntityForceActionArguments(0);
          v73 = v71 + *(v72 + 20);
          v74 = v71 + *(v72 + 24);
          *v73 = 0;
          *(v73 + 8) = 0;
          *(v73 + 16) = 1;
          v75 = v106.n128_u64[1];
          *v74 = v106.n128_u64[0];
          *(v74 + 8) = v75;
          *(v74 + 16) = 0;
          swift_storeEnumTagMultiPayload();
          v76 = v111;
          v77 = *v111;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v76 = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
            *v111 = v77;
          }

          v80 = v77[2];
          v79 = v77[3];
          if (v80 >= v79 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v77);
            *v111 = v77;
          }

          v77[2] = v80 + 1;
          _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(v121, v77 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v80, type metadata accessor for __RKEntityActionSpecification);

          (*v105)(v120, v20);
          goto LABEL_9;
        }

        outlined destroy of BodyTrackingComponent?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
        v67 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v68 = swift_allocObject();
        v69 = v68;
        *(v68 + 16) = v123;
        if (v125)
        {
          if (v125 == 1)
          {
            v36 = 0xD000000000000012;
            v37 = &v135;
          }

          else
          {
            v36 = 0xD000000000000013;
            v37 = &v134;
          }
        }

        else
        {
          v36 = 0xD000000000000014;
          v37 = &v136;
        }

        v38 = *(v37 - 32) | 0x8000000000000000;
        *(v68 + 56) = v35;
        *(v68 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v69[4] = v36;
        v69[5] = v38;
        v69[12] = v124;
        v69[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v69[9] = v42;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v39 = v42;
        v40 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v67, &dword_1C1358000, v40, "%s: No target entity identifier found for affected object path: %s", v100, v101);

LABEL_9:
        ++v34;
        v31 = v126.n128_u64[0];
        if (v32 == v34)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {

LABEL_49:
  }
}

void specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v101 = a8;
  v106 = a7;
  v95 = a6;
  v100 = a10;
  v99 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v91 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v98 = &v91 - v26;
  v27 = MEMORY[0x1C68F3280](a1, a2, v25);
  v28 = [a4 property_];

  if (!v28)
  {
    v76 = 0xD000000000000012;
    v77 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v78 = swift_allocObject();
    v79 = v78;
    *(v78 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v80 = "ng: Unknown action type";
      }

      else
      {
        v80 = "imagesByFullSchemePath";
        v76 = 0xD000000000000013;
      }
    }

    else
    {
      v76 = 0xD000000000000014;
      v80 = "USD trigger loading";
    }

    v81 = v80 | 0x8000000000000000;
    v82 = MEMORY[0x1E69E6158];
    *(v78 + 56) = MEMORY[0x1E69E6158];
    v83 = lazy protocol witness table accessor for type String and conformance String();
    v79[4] = v76;
    v79[5] = v81;
    v79[12] = v82;
    v79[13] = v83;
    v79[8] = v83;
    v79[9] = a1;
    v79[10] = a2;

    v84 = [a4 path];
    v85 = [v84 stringValue];

    if (v85)
    {
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = v79 + 14;
      v79[17] = v82;
      v79[18] = v83;
      if (v88)
      {
        *v89 = v86;
LABEL_50:
        v79[15] = v88;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v115 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v77, &dword_1C1358000, v115, "%s: No property named %s for node at path: %s", v91, v92, v93);

        v90 = v115;

        return;
      }
    }

    else
    {
      v89 = v79 + 14;
      v79[17] = v82;
      v79[18] = v83;
    }

    *v89 = 7104878;
    v88 = 0xE300000000000000;
    goto LABEL_50;
  }

  v29 = v28;
  v30 = [v29 objectPathArray];
  v113 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = v31;
  if (v31 >> 62)
  {
    v33 = __CocoaSet.count.getter();
    v32 = v31;
    v34 = v107;
    if (v33)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_56:

    return;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v107;
  if (!v33)
  {
    goto LABEL_54;
  }

LABEL_4:
  if (v33 >= 1)
  {
    v112 = a3;
    v35 = 0;
    v115 = (v32 & 0xC000000000000001);
    v109 = (v22 + 56);
    v97 = (v22 + 32);
    v108 = (v22 + 48);
    v96 = (v22 + 8);
    v111 = xmmword_1C1897FC0;
    v105 = "USD trigger loading";
    v104 = "ng: Unknown action type";
    v103 = "imagesByFullSchemePath";
    v114 = v32;
    v102 = a5;
    while (1)
    {
      v41 = v33;
      if (v115)
      {
        v42 = MEMORY[0x1C68F41F0](v35);
      }

      else
      {
        v42 = *(v32 + 8 * v35 + 32);
      }

      v43 = v42;
      v44 = [a5 objectAtPath_];
      if (!v44)
      {
        goto LABEL_28;
      }

      v45 = v44;
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();

      if (!v46)
      {
        goto LABEL_28;
      }

      v47 = [v43 stringValue];
      if (!v47)
      {
        goto LABEL_25;
      }

      v48 = v21;
      v49 = v47;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v120 = v50;
      v121 = v52;
      v110 = v52;
      v118 = 91;
      v119 = 0xE100000000000000;
      v116 = 0;
      v117 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v120 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v121 = v53;
      v118 = 93;
      v119 = 0xE100000000000000;
      v116 = 0;
      v117 = 0xE000000000000000;
      v54 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v56 = v55;

      v57 = v106;
      if (!*(v106 + 16))
      {
        break;
      }

      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
      v60 = v59;

      v21 = v48;
      if ((v60 & 1) == 0 || (v61 = (*(v57 + 56) + 16 * v58), v62 = *v61, v63 = v61[1], , specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v62, v63, v95, v57), v65 = v64, , !v65))
      {
        a5 = v102;
        v34 = v107;
LABEL_25:
        (*v109)(v34, 1, 1, v21);
        goto LABEL_26;
      }

      swift_beginAccess();
      a5 = v102;
      if (static __RKEntityUUIDComponent.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
      {
        v66 = v94;
        UUID.init(uuid:)();
        v67 = *v109;
        (*v109)(v66, 0, 1, v48);
        outlined destroy of BodyTrackingComponent?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v67 = *v109;
        v73 = v94;
        (*v109)(v94, 1, 1, v48);
        outlined destroy of BodyTrackingComponent?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v74 = v92;
        UUID.init()();
        v67(v74, 0, 1, v48);
        Entity.__interactionIdentifier.setter(v74);
      }

      v34 = v107;
      if (!static __RKEntityUUIDComponent.registration || !REEntityGetCustomComponent() || !RECustomComponentGetObject())
      {
        goto LABEL_58;
      }

      v75 = v93;
      UUID.init(uuid:)();

      (*v97)(v34, v75, v48);
      v67(v34, 0, 1, v48);
LABEL_26:

      if ((*v108)(v34, 1, v21) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_28:
        v68 = static os_log_type_t.debug.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v69 = swift_allocObject();
        v70 = v69;
        *(v69 + 16) = v111;
        if (v112)
        {
          if (v112 == 1)
          {
            v36 = 0xD000000000000012;
            v71 = &v123;
          }

          else
          {
            v36 = 0xD000000000000013;
            v71 = &v122;
          }

          v37 = *(v71 - 32);
        }

        else
        {
          v36 = 0xD000000000000014;
          v37 = v105;
        }

        v38 = v37 | 0x8000000000000000;
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = lazy protocol witness table accessor for type String and conformance String();
        v70[4] = v36;
        v70[5] = v38;
        v70[12] = v113;
        v70[13] = lazy protocol witness table accessor for type USKObjectPath and conformance NSObject();
        v70[9] = v43;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v39 = v43;
        v40 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v68, &dword_1C1358000, v40, "%s: No target entity identifier found for affected object path: %s", v91, v92);

        goto LABEL_8;
      }

      v72 = v98;
      (*v97)(v98, v34, v21);
      closure #1 in static __RKEntityActionSpecification.generateNotificationActionSpecifications(decodeContext:)(v72, v101, v99, v100);

      (*v96)(v72, v21);
LABEL_8:
      v32 = v114;
      ++v35;
      v33 = v41;
      if (v41 == v35)
      {
        goto LABEL_56;
      }
    }

    a5 = v102;
    v34 = v107;
    v21 = v48;
    goto LABEL_25;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t _s10RealityKit29__RKEntityActionSpecificationOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static SpatialTrackingManager.shared.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static SpatialTrackingManager.shared.setter(void *a1)
{
  swift_beginAccess();
  static SpatialTrackingManager.shared = a1;
}

uint64_t key path setter for static SpatialTrackingManager.shared : SpatialTrackingManager.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static SpatialTrackingManager.shared = v1;
}

uint64_t key path getter for SpatialTrackingManager.rfConfigureCallback : SpatialTrackingManager@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4, v5);
}

uint64_t key path setter for SpatialTrackingManager.rfConfigureCallback : SpatialTrackingManager(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t SpatialTrackingManager.rfConfigureCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1, *(v0 + 32));
  return v1;
}

uint64_t SpatialTrackingManager.rfConfigureCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

double key path setter for SpatialTrackingManager.currentAnchorCapabilities : SpatialTrackingManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;

  return result;
}

double SpatialTrackingManager.currentAnchorCapabilities.getter()
{
  swift_beginAccess();

  return result;
}

double SpatialTrackingManager.currentAnchorCapabilities.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t key path setter for SpatialTrackingManager.currentConfiguration : SpatialTrackingManager(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of [String : String](a1, v5, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of Any?(v5, v3 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t SpatialTrackingManager.currentConfiguration.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t SpatialTrackingManager.__allocating_init(serviceManager:arkitRunnable:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  SpatialTrackingManager.init(serviceManager:arkitRunnable:)(a1, a2);
  return v4;
}

uint64_t SpatialTrackingManager.init(serviceManager:arkitRunnable:)(void *a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v5 = MEMORY[0x1E69E7CD0];
  *(v3 + 144) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 81) = 0u;
  *(v3 + 40) = a1;
  *(v3 + 48) = v5;
  outlined init with copy of __REAssetService(a2, v3 + 104);
  v6 = swift_allocObject();
  swift_weakInit();
  v8 = *(v3 + 128);
  v7 = *(v3 + 136);
  __swift_project_boxed_opaque_existential_1((v3 + 104), v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = partial apply for closure #1 in SpatialTrackingManager.init(serviceManager:arkitRunnable:);
  v10[4] = v6;
  v11 = *(v7 + 8);
  v12 = a1;

  v11(v12, partial apply for closure #2 in SpatialTrackingManager.init(serviceManager:arkitRunnable:), v10, v8, v7);

  __swift_destroy_boxed_opaque_existential_1(a2);

  return v3;
}

void *closure #1 in SpatialTrackingManager.init(serviceManager:arkitRunnable:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of [String : String]((v2 + 7), &v5, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
    if (v5)
    {
      v7 = v5;
      v8[0] = v6[0];
      *(v8 + 9) = *(v6 + 9);
      v3 = v2[16];
      v4 = v2[17];
      __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
      (*(v4 + 32))(&v7, v3, v4);

      return outlined destroy of SpatialTrackingSession.Configuration(&v7);
    }

    else
    {

      return outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
    }
  }

  return result;
}

uint64_t closure #2 in SpatialTrackingManager.init(serviceManager:arkitRunnable:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_beginAccess();
    if (*(v6 + 16))
    {
      swift_beginAccess();
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);
      *(v6 + 24) = a2;
      *(v6 + 32) = a3;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
    }

    else
    {
      a2(v7);
    }
  }

  return result;
}

uint64_t SpatialTrackingManager.run(spatialTrackingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3[108] = v2;
  v3[107] = a2;
  v3[106] = a1;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

uint64_t SpatialTrackingManager.run(spatialTrackingConfiguration:)()
{
  *(v0 + 872) = type metadata accessor for MainActor();
  *(v0 + 880) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), v2, v1);
}

{
  v1 = *(v0 + 864);

  swift_beginAccess();
  *(v1 + 16) = 1;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  *(v0 + 32) = 0u;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 2;
  v3 = v1[16];
  v4 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v3);
  (*(v4 + 16))(v2, v3, v4);
  v5 = *v2;
  v6 = *(v0 + 368);
  if (*(v6 + 16) <= *(v5 + 16) >> 3)
  {

    specialized Set._subtract<A>(_:)(v6);
    v7 = v5;
  }

  else
  {

    v7 = specialized _NativeSet.subtracting<A>(_:)(v6, v5);
  }

  v8 = *(v0 + 856);
  *(v0 + 24) = v7;
  outlined init with copy of [String : String](v8 + 8, v0 + 544, &_sypSgMd, &_sypSgMR);
  if (*(v0 + 568))
  {
    outlined init with take of Any((v0 + 544), (v0 + 512));
    outlined init with take of Any((v0 + 512), (v0 + 704));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v9 = *(v0 + 840);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0 + 544, &_sypSgMd, &_sypSgMR);
    v9 = MEMORY[0x1E69E7CD0];
  }

  outlined init with copy of [String : String](v0 + 376, v0 + 608, &_sypSgMd, &_sypSgMR);
  if (*(v0 + 632))
  {
    outlined init with take of Any((v0 + 608), (v0 + 576));
    outlined init with take of Any((v0 + 576), (v0 + 672));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    swift_dynamicCast();
    v10 = *(v0 + 832);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v0 + 608, &_sypSgMd, &_sypSgMR);
    v10 = MEMORY[0x1E69E7CD0];
  }

  if (*(v10 + 16) <= *(v9 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(v10);
  }

  else
  {
    v9 = specialized _NativeSet.subtracting<A>(_:)(v10, v9);
  }

  *(v0 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_sShy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
  *(v0 + 640) = v9;
  outlined assign with take of Any?(v0 + 640, v0 + 32, &_sypSgMd, &_sypSgMR);
  v11 = v1[16];
  v12 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v11);
  v15 = (*(v12 + 24) + **(v12 + 24));
  v13 = swift_task_alloc();
  *(v0 + 888) = v13;
  *v13 = v0;
  v13[1] = SpatialTrackingManager.run(spatialTrackingConfiguration:);

  return v15(v0 + 192, v0 + 368, v11, v12);
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  v1 = (v0 + 192);
  if (*(v0 + 192))
  {
    v2 = *(v0 + 240);
    *(v0 + 136) = *(v0 + 224);
    *(v0 + 152) = v2;
    *(v0 + 168) = *(v0 + 256);
    *(v0 + 184) = *(v0 + 272);
    v3 = *(v0 + 208);
    *(v0 + 104) = *v1;
    *(v0 + 120) = v3;
    SpatialTrackingSession.UnavailableCapabilities.union(_:)(v0 + 104, v0 + 280);
    outlined destroy of SpatialTrackingSession.UnavailableCapabilities(v0 + 104);
    outlined assign with take of SpatialTrackingSession.UnavailableCapabilities(v0 + 280, v0 + 16);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v1, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  }

  SpatialTrackingSession.Configuration.removing(unavailableCapabilities:)((v0 + 16), (v0 + 416));
  *(v0 + 896) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), v5, v4);
}

{
  v1 = *(v0 + 864);

  v2 = *(v0 + 416);
  swift_beginAccess();
  *(v1 + 48) = v2;

  outlined init with copy of SpatialTrackingSession.Configuration(v0 + 416, v0 + 464);
  swift_beginAccess();
  outlined assign with take of Any?(v0 + 464, v1 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  swift_endAccess();

  SpatialTrackingManager.configureRFAnchorManagement(with:)(v3, v4);

  *(v1 + 16) = 0;
  swift_beginAccess();
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = *(*(v0 + 864) + 32);

    v5(v7);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.run(spatialTrackingConfiguration:), 0, 0);
}

{
  v1 = SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter();
  outlined destroy of SpatialTrackingSession.Configuration(v0 + 416);
  outlined destroy of SpatialTrackingSession.Configuration(v0 + 368);
  v2 = *(v0 + 848);
  if (v1)
  {
    outlined init with copy of SpatialTrackingSession.UnavailableCapabilities(v0 + 16, v2);
  }

  else
  {
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
  }

  outlined destroy of SpatialTrackingSession.UnavailableCapabilities(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

void SpatialTrackingManager.configureRFAnchorManagement(with:)(uint64_t a1, __n128 a2)
{
  v2 = RFServiceManagerGetAnchorManagementService();
  if (v2)
  {
    v3 = v2;
    RFAnchorManagementSetNeedSpatialTracking();
    RFAnchorManagementSetNeedClientAnchoring();
    specialized Set.contains(_:)();
    RFAnchorManagementSetClientNeedWorldAnchoring();
    specialized Set.contains(_:)();
    RFAnchorManagementSetClientNeedPlaneAnchoring();
    specialized Set.contains(_:)();
    RFAnchorManagementSetClientNeedImageAnchoring();
    specialized Set.contains(_:)();
    RFAnchorManagementSetClientNeedObjectAnchoring();
  }
}

uint64_t SpatialTrackingManager.stop()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = SpatialTrackingManager.stop();

  return v6(v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingManager.stop(), v2, v1);
}

{

  SpatialTrackingManager.configureRFAnchorManagement(with:)(MEMORY[0x1E69E7CD0], v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SpatialTrackingManager.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24), *(v0 + 32));

  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  return v0;
}

uint64_t SpatialTrackingManager.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24), *(v0 + 32));

  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

void SpatialTrackingManager.setTransformResolver(sceneTransformResolver:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned simd_float4x4);
  v3[3] = &block_descriptor_57;
  v2 = _Block_copy(v3);

  RFServiceManagerSetTransformResolver();
  _Block_release(v2);
}

__n128 thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned simd_float4x4)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  *&v4 = v3(a2);
  v6 = v4;

  return v6;
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t dispatch thunk of SpatialTrackingManager.run(spatialTrackingConfiguration:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of SpatialTrackingManager.stop()()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return v4();
}

uint64_t SkeletalPose.jointNames.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {

    return v1;
  }

  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 16))
  {
    result = RESkeletalPoseComponentGetModelSpaceJointCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v3 = result;
      v1 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        v21 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
        v4 = 0;
        v1 = v21;
        do
        {
          RESkeletalPoseComponentGetModelSpaceJointName();
          v5 = String.init(cString:)();
          v22 = v1;
          v8 = *(v1 + 16);
          v7 = *(v1 + 24);
          if (v8 >= v7 >> 1)
          {
            v10 = v5;
            v11 = v6;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
            v6 = v11;
            v5 = v10;
            v1 = v22;
          }

          ++v4;
          *(v1 + 16) = v8 + 1;
          v9 = v1 + 16 * v8;
          *(v9 + 32) = v5;
          *(v9 + 40) = v6;
        }

        while (v3 != v4);
      }

      return v1;
    }

    __break(1u);
  }

  else
  {
    result = RESkeletalPoseComponentGetJointCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v12 = result;
      v1 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        v23 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
        v13 = 0;
        v1 = v23;
        do
        {
          RESkeletalPoseComponentGetJointName();
          v14 = String.init(cString:)();
          v24 = v1;
          v17 = *(v1 + 16);
          v16 = *(v1 + 24);
          if (v17 >= v16 >> 1)
          {
            v19 = v14;
            v20 = v15;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            v15 = v20;
            v14 = v19;
            v1 = v24;
          }

          ++v13;
          *(v1 + 16) = v17 + 1;
          v18 = v1 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
        }

        while (v12 != v13);
      }

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t SkeletalPose.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void SkeletalPose.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void SkeletalPose.jointNames.setter(uint64_t a1)
{
  v2 = v1;
  v4 = SkeletalPose.jointNames.getter();
  v5 = *(v2 + 48);

  v6 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_So5RESRTas12Zip2SequenceVySaySSGSayAFGGTt0g5Tf4g_n(v4, v5);

  *(v2 + 40) = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v30;
    v9 = (a1 + 40);
    do
    {
      if (*(v6 + 16))
      {
        v10 = *(v9 - 1);
        v11 = *v9;

        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        if (v16)
        {
          v17 = (*(v6 + 56) + 48 * v12);
          v13 = *v17;
          v14 = v17[1];
          v15 = v17[2];
        }

        v24 = v15;
        v26 = v14;
        v28 = v13;

        v19 = v24;
        v18 = v26;
        v20 = v28;
      }

      else
      {
        v20 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
      }

      v22 = *(v30 + 16);
      v21 = *(v30 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = v18;
        v29 = v20;
        v25 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v19 = v25;
        v18 = v27;
        v20 = v29;
      }

      *(v30 + 16) = v22 + 1;
      v23 = (v30 + 48 * v22);
      v23[2] = v20;
      v23[3] = v18;
      v23[4] = v19;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 48) = v8;
}

void (*SkeletalPose.jointNames.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = SkeletalPose.jointNames.getter();
  return SkeletalPose.jointNames.modify;
}

void SkeletalPose.jointNames.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    SkeletalPose.jointNames.setter(v2);
  }

  else
  {
    SkeletalPose.jointNames.setter(*a1);
  }
}

double SkeletalPose.jointTransforms.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 48);

  return result;
}

void SkeletalPose.jointTransforms.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
}

void SkeletalPose.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = SkeletalPose.jointNames.getter();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 0;
    v13 = (v7 + 64);
    v14 = (v8 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a1 && *v14 == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v12;
      v13 += 6;
      v14 += 2;
      v11 = v10 == v12;
      if (v10 == v12)
      {
        goto LABEL_9;
      }
    }

    if (v12 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      a2 = *(v13 - 4);
      v9 = *(v13 - 3);
      v7 = *(v13 - 2);
      a1 = *(v13 - 1);
      v16 = v13;
      v13 = *v13;
      v12 = v16[1];
      if (one-time initialization token for identity == -1)
      {
        goto LABEL_12;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_9:

  a2 = 0;
  v9 = 0;
  v7 = 0;
  a1 = 0;
  v13 = 0;
  v12 = 0;
LABEL_12:
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 16) = v7;
  *(a3 + 24) = a1;
  *(a3 + 32) = v13;
  *(a3 + 40) = v12;
  *(a3 + 48) = v11;
}

double key path getter for SkeletalPose.subscript(_:) : SkeletalPose@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  SkeletalPose.subscript.getter(*a1, a1[1], v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

void SkeletalPose.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = SkeletalPose.jointNames.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v7 + 40);
    while (1)
    {
      v12 = *(v11 - 1) == a2 && *v11 == a3;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v9 += 48;
      v11 += 2;
      if (v8 == v10)
      {
        goto LABEL_9;
      }
    }

    if ((a1[3] & 1) == 0)
    {
      v17 = a1[1];
      v18 = *a1;
      v16 = a1[2];
      v13 = *(v3 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 48) = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        *(v3 + 48) = v13;
      }

      if (v10 >= *(v13 + 2))
      {
        __break(1u);
      }

      else
      {
        v15 = &v13[v9];
        *(v15 + 2) = v18;
        *(v15 + 3) = v17;
        *(v15 + 4) = v16;
        *(v3 + 48) = v13;
      }
    }
  }

  else
  {
LABEL_9:
  }
}

void (*SkeletalPose.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xC0uLL);
  }

  *a1 = v7;
  v7[23] = v3;
  v7[15] = a3;
  v7[7] = a2;
  SkeletalPose.subscript.getter(a2, a3, (v7 + 16));
  return SkeletalPose.subscript.modify;
}

void SkeletalPose.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *a1 + 64;
  }

  v6 = *(v2 + 144);
  *v5 = *(v2 + 128);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(v2 + 160);
  *(v5 + 48) = *(v2 + 176);

  SkeletalPose.subscript.setter(v5, v4, v3);

  free(v2);
}

void SkeletalPose.init(id:from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v40;
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v40 + 16);
      v12 = *(v40 + 24);

      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v40 + 16) = v13 + 1;
      v14 = v40 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 18;
      --v7;
    }

    while (v7);
    v15 = *(v6 + 16);
    if (v15)
    {
      v41 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v16 = v41;
      v17 = *(v41 + 16);
      v18 = 48 * v17;
      v19 = (v6 + 160);
      do
      {
        v20 = *(v19 - 2);
        v21 = *(v19 - 1);
        v22 = *v19;
        v23 = *(v41 + 24);
        v24 = v17 + 1;
        if (v17 >= v23 >> 1)
        {
          v35 = *(v19 - 2);
          v32 = *v19;
          v33 = *(v19 - 1);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 1, 1);
          v22 = v32;
          v21 = v33;
          v20 = v35;
        }

        *(v41 + 16) = v24;
        v25 = (v41 + v18);
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v22;
        v18 += 48;
        v19 += 9;
        v17 = v24;
        --v15;
      }

      while (v15);

      v4 = a2;
      v26 = *(v41 + 16);
      if (!v26)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    v4 = a2;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v26 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v26)
  {
LABEL_12:
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_16:
  v28 = (v16 + 64);
  v27 = MEMORY[0x1E69E7CC0];
  do
  {
    v37 = *(v28 - 1);
    v39 = *(v28 - 2);
    v36 = *v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[48 * v30];
    *(v31 + 2) = v39;
    *(v31 + 3) = v37;
    *(v31 + 4) = v36;
    v28 += 3;
    --v26;
  }

  while (v26);
LABEL_13:

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = v4;
  *(a4 + 40) = v8;
  *(a4 + 48) = v27;
}

void SkeletalPose.init(id:joints:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v42;
    v39 = a3;
    v8 = (a3 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v13 = *(v42 + 16);
      v12 = *(v42 + 24);

      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v42 + 16) = v13 + 1;
      v14 = v42 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 8;
      --v9;
    }

    while (v9);
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v15 = v43;
    v16 = *(v43 + 16);
    v17 = 48 * v16;
    v18 = v39;
    v19 = (v39 + 80);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = *(v43 + 24);
      v24 = v16 + 1;
      if (v16 >= v23 >> 1)
      {
        v26 = v18;
        v37 = *(v19 - 1);
        v40 = *(v19 - 2);
        v35 = *v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v16 + 1, 1);
        v22 = v35;
        v21 = v37;
        v20 = v40;
        v18 = v26;
      }

      *(v43 + 16) = v24;
      v25 = (v43 + v17);
      v25[2] = v20;
      v25[3] = v21;
      v25[4] = v22;
      v17 += 48;
      v19 += 4;
      v16 = v24;
      --v6;
    }

    while (v6);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v7 + 16);
  if (v27 == *(v15 + 16))
  {
    if (v27)
    {
      v28 = (v15 + 64);
      v29 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = *(v28 - 1);
        v41 = *(v28 - 2);
        v36 = *v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[48 * v31];
        *(v32 + 2) = v41;
        *(v32 + 3) = v38;
        *(v32 + 4) = v36;
        v28 += 3;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = a1;
    *(a4 + 32) = a2;
    *(a4 + 40) = v7;
    *(a4 + 48) = v29;
  }

  else
  {
    __break(1u);
  }
}

double protocol witness for Identifiable.id.getter in conformance SkeletalPose@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t getEnumTagSinglePayload for SkeletalPose(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SkeletalPose(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CustomMaterialResource.deinit()
{
  swift_beginAccess();
  REAssetSetSwiftObject();
  RERelease();
  return v0;
}

uint64_t CustomMaterialResource.__deallocating_deinit()
{
  swift_beginAccess();
  REAssetSetSwiftObject();
  RERelease();
  return swift_deallocClassInstance();
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSf_Tt1g5@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v14 = swift_allocObject();
            *(v14 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = v3;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v15;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v14;
      *(a2 + 212) = 0;
      *(a2 + 208) = 0;
      *(a2 + 213) = 1;
      *(a2 + 220) = 0;
      *(a2 + 216) = 0;
      *(a2 + 221) = 1;
      *(a2 + 228) = 0;
      *(a2 + 224) = 0;
      *(a2 + 229) = 1;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a2 + 276) = 10;
      *(a2 + 280) = 0;
      *(a2 + 288) = 514;
      *(a2 + 290) = 2;
      *(a2 + 296) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSd_Tt1g5Tm@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v14 = swift_allocObject();
            *(v14 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = v3;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v15;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v14;
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      *(a2 + 217) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 233) = 1;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 249) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 1;
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a2 + 292) = 10;
      *(a2 + 296) = 0;
      *(a2 + 304) = 514;
      *(a2 + 306) = 2;
      *(a2 + 312) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCs5SIMD3VySfG_Tt1g5Tm@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v15 = swift_allocObject();
            *(v15 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v15 = swift_allocObject();
            *(v15 + 16) = 0;
          }

          v16 = 2;
          v14 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = swift_allocObject();
      v15 = v3;
      *(v14 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v14;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 208) = 0;
      *(a2 + 216) = 0;
      *(a2 + 200) = v15;
      *(a2 + 224) = 0;
      *(a2 + 225) = 1;
      *(a2 + 240) = 0;
      *(a2 + 248) = 0;
      *(a2 + 256) = 0;
      *(a2 + 257) = 1;
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a2 + 289) = 1;
      *(a2 + 296) = 0;
      *(a2 + 304) = 1;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 340) = 10;
      *(a2 + 344) = 0;
      *(a2 + 352) = 514;
      *(a2 + 354) = 2;
      *(a2 + 360) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAE9TransformV_Tt1g5@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v14 = swift_allocObject();
            *(v14 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = v3;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v15;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v14;
      *(a2 + 256) = 0;
      *(a2 + 224) = 0u;
      *(a2 + 240) = 0u;
      *(a2 + 208) = 0u;
      *(a2 + 257) = 1;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 304) = 0u;
      *(a2 + 320) = 0;
      *(a2 + 321) = 1;
      *(a2 + 336) = 0u;
      *(a2 + 352) = 0u;
      *(a2 + 368) = 0u;
      *(a2 + 384) = 0;
      *(a2 + 385) = 1;
      *(a2 + 392) = 0;
      *(a2 + 400) = 1;
      *(a2 + 432) = 0;
      *(a2 + 416) = 0;
      *(a2 + 424) = 0;
      *(a2 + 436) = 10;
      *(a2 + 440) = 0;
      *(a2 + 448) = 514;
      *(a2 + 450) = 2;
      *(a2 + 456) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAA15JointTransformsV_Tt1g5@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v14 = swift_allocObject();
            *(v14 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = v3;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v15;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v14;
      *(a2 + 208) = vdupq_n_s64(1uLL);
      *(a2 + 224) = xmmword_1C1887610;
      *(a2 + 240) = 1;
      *(a2 + 256) = 0;
      *(a2 + 264) = 0;
      *(a2 + 272) = 0;
      *(a2 + 276) = 10;
      *(a2 + 280) = 0;
      *(a2 + 288) = 514;
      *(a2 + 290) = 2;
      *(a2 + 296) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnimationResource.__allocating_init(_:name:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  AnimationResource.init(_:name:)(a1, a2, a3);
  return v6;
}

uint64_t AnimationResource.definition.getter@<X0>(uint64_t *a1@<X8>)
{
  result = REAssetHandleAssetType();
  if (result == 5 || result == 11 && (result = REAnimationSceneAssetGetRootTimeline()) != 0)
  {
    RETimelineDefinitionCreateFromTimeline();
    switch(RETimelineDefinitionGetTimelineType())
    {
      case 2u:
        a1[3] = &type metadata for AnimationView;
        a1[4] = &protocol witness table for AnimationView;
        v3 = swift_allocObject();
        *a1 = v3;

        AnimationView.init(_:)(v3 + 16);
        goto LABEL_35;
      case 3u:
        a1[3] = &type metadata for AnimationGroup;
        a1[4] = &protocol witness table for AnimationGroup;
        v6 = swift_allocObject();
        *a1 = v6;

        AnimationGroup.init(_:)(v6 + 16);
        goto LABEL_35;
      case 4u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySfGMd, &_s17RealityFoundation17FromToByAnimationVySfGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v5 = swift_allocObject();
        *a1 = v5;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSf_Tt1g5(v5 + 16);
        goto LABEL_35;
      case 5u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySdGMd, &_s17RealityFoundation17FromToByAnimationVySdGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_27;
      case 6u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
LABEL_27:
        v8 = swift_allocObject();
        *a1 = v8;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCSd_Tt1g5Tm(v8 + 16);
        goto LABEL_35;
      case 7u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_22;
      case 8u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        goto LABEL_22;
      case 9u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
LABEL_22:
        v7 = swift_allocObject();
        *a1 = v7;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCs5SIMD3VySfG_Tt1g5Tm(v7 + 16);
        goto LABEL_35;
      case 0xAu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v10 = swift_allocObject();
        *a1 = v10;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAE9TransformV_Tt1g5(v10 + 16);
        goto LABEL_35;
      case 0xBu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for FromToByAnimation<A>;
        v9 = swift_allocObject();
        *a1 = v9;

        _s17RealityFoundation17FromToByAnimationVyACyxG0A3Kit0F8ResourceCcfCAA15JointTransformsV_Tt1g5(v9 + 16);
        goto LABEL_35;
      case 0xCu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xDu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xEu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0xFu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x10u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x12u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
        goto LABEL_32;
      case 0x13u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for SampledAnimation<A>;
LABEL_32:
        v11 = swift_allocObject();
        *a1 = v11;

        _s17RealityFoundation16SampledAnimationVyACyxG0A3Kit0D8ResourceCcfCSf_Tt1g5Tm(v11 + 16);
        goto LABEL_35;
      case 0x14u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x15u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x16u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x17u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x18u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x19u:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x1Au:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
        goto LABEL_34;
      case 0x1Bu:
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        a1[4] = &protocol witness table for BlendTreeAnimation<A>;
LABEL_34:
        v12 = swift_allocObject();
        *a1 = v12;

        _s17RealityFoundation18BlendTreeAnimationVyACyxG0A3Kit0E8ResourceCcfCSf_Tt1g5Tm(v12 + 16);
        goto LABEL_35;
      case 0x1Cu:
        a1[3] = &type metadata for OrbitAnimation;
        a1[4] = &protocol witness table for OrbitAnimation;
        v4 = swift_allocObject();
        *a1 = v4;

        OrbitAnimation.init(_:)(v4 + 16);
        goto LABEL_35;
      case 0x1Du:
        AnimationResource.eventTimelineDefinition.getter(&v15);
        if (v16)
        {
          outlined init with take of ForceEffectBase(&v15, a1);
        }

        else
        {
          a1[3] = &type metadata for AnyActionAnimation;
          a1[4] = &protocol witness table for AnyActionAnimation;
          v14 = swift_allocObject();
          *a1 = v14;

          AnyActionAnimation.init(_:)(v14 + 16);
        }

        return RERelease();
      default:
        a1[3] = &type metadata for InvalidAnimationDefinition;
        a1[4] = &protocol witness table for InvalidAnimationDefinition;
        v13 = swift_allocObject();
        *a1 = v13;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0xE000000000000000;
        *(v13 + 32) = 0;
        *(v13 + 36) = 0;
        *(v13 + 40) = xmmword_1C1898800;
        *(v13 + 56) = 0;
        *(v13 + 64) = 0;
        *(v13 + 72) = 1;
        *(v13 + 80) = 0;
        *(v13 + 88) = 1;
        *(v13 + 96) = 0;
        *(v13 + 104) = 1;
        *(v13 + 112) = 0;
        *(v13 + 120) = 0;
        *(v13 + 125) = 0;
LABEL_35:

        result = RERelease();
        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s17RealityFoundation18BlendTreeAnimationVyACyxG0A3Kit0E8ResourceCcfCSf_Tt1g5Tm@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0;
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          *(a2 + 56) = 0;
          *(a2 + 64) = 256;
          *(a2 + 72) = 0;
          *(a2 + 80) = 256;
          *(a2 + 88) = 0;
          *(a2 + 96) = 256;
          *(a2 + 104) = 0;
          *(a2 + 112) = 1;
          *(a2 + 120) = 0;
          *(a2 + 128) = 1;
          *(a2 + 132) = 0;
          *(a2 + 136) = 1025;
          *(a2 + 144) = 0u;
          *(a2 + 160) = 0u;
          *(a2 + 176) = 0;
          *(a2 + 184) = -1;
          *(a2 + 188) = 0;
          *(a2 + 192) = 1;
          *(a2 + 193) = 256;
          *(a2 + 195) = 2;
          *(a2 + 200) = v3;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v9 = ClipSourceRef;
            v10 = swift_allocObject();
            *(v10 + 16) = v9;
            RERetain();
            RERelease();
          }

          else
          {
            v10 = swift_allocObject();
            *(v10 + 16) = 0;
          }

LABEL_16:

          *a2 = 0u;
          *(a2 + 16) = 0u;
          *(a2 + 32) = -1;
          *(a2 + 36) = 0x201000100000000;
          *(a2 + 48) = v10;
          return result;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v11 = String.init(cString:)();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v3;
      *(a2 + 152) = v11;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v13;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = 0;
      *(a2 + 194) = 0;
      v10 = v3;
      *(a2 + 200) = v14;
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation16SampledAnimationVyACyxG0A3Kit0D8ResourceCcfCSf_Tt1g5Tm@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v11 = swift_allocObject();
            *(v11 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v12 = 0;
          }

          else
          {
            v11 = swift_allocObject();
            v17 = 0;
            v18 = 0;
            v12 = 0;
            *(v11 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v14 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v13;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v8 = 0;
      v14 = 0;
      v12 = v3;
      v11 = v3;
LABEL_17:

      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = -1;
      *(a2 + 36) = 0x201000100000000;
      *(a2 + 48) = v11;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v12;
      *(a2 + 152) = v17;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v18;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = v14;
      *(a2 + 193) = 0;
      *(a2 + 194) = v8;
      *(a2 + 195) = v16;
      *(a2 + 200) = v15;
      *(a2 + 208) = 2;
      *(a2 + 212) = 0;
      *(a2 + 216) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 248) = 0;
      *(a2 + 256) = 1;
      *(a2 + 264) = 0;
      *(a2 + 272) = 514;
      *(a2 + 274) = 2;
      *(a2 + 280) = 0;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnimationResource.timelineAsset()()
{
  v1 = *(v0 + 16);
  v2 = REAssetHandleAssetType();
  if (v2 == 11)
  {
    return REAnimationSceneAssetGetRootTimeline();
  }

  if (v2 == 5)
  {
    return v1;
  }

  return 0;
}

uint64_t AnimationResource.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *AnimationResource.init(_:name:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3[2] = a1;
  if (!a3)
  {
    if (REAssetHandleAssetType() == 11)
    {
      REAnimationSceneAssetGetRootTimeline();
    }

    if (REAnimationAssetGetName())
    {
      v4 = String.init(cString:)();
      a3 = v5;
      a2 = v4;
    }

    else
    {
      a2 = 0;
      a3 = 0xE000000000000000;
    }
  }

  v3[3] = a2;
  v3[4] = a3;
  RERetain();
  REAssetSetSwiftObject();
  return v3;
}

uint64_t AnimationResource.deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return v0;
}

uint64_t AnimationResource.__deallocating_deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for actionHandlerCreators()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionHandlerCreators = result;
  return result;
}

unint64_t one-time initialization function for actionHandlers()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSV_17RealityFoundation21ActionHandlerProtocol_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionHandlers = result;
  return result;
}

unint64_t one-time initialization function for actionSubscriptions()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionSubscriptions = result;
  return result;
}

unint64_t one-time initialization function for actionTypeMap()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_pXpTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.actionTypeMap = result;
  return result;
}

unint64_t one-time initialization function for codableActionTypeMap()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AnimationResource.codableActionTypeMap = result;
  return result;
}

Swift::Int AnimationRepeatMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t AnimationResource.repeat(duration:)(double a1)
{
  v2 = v1;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v17);
  v5 = v18.i64[1];
  v6 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18.i64[1]);
  (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = REAssetHandleAssetType();
  if (v7 != 5 && (v7 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = vdupq_n_s64(0x7FF8000000000000uLL);
  v19 = 0;
  v20 = 0;
  v21 = a1;
  v22 = 0x13F800000;
  TimelineClip = REAssetManagerTimelineAssetCreateTimelineClipEx();
  if (!TimelineClip)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = TimelineClip;
  if (REAssetHandleAssetType() == 11)
  {
    v10 = REAnimationSceneAssetCreateWithTimeline();
    v12 = *(v2 + 24);
    v11 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v13 = swift_allocObject();

    AnimationResource.init(_:name:)(v10, v12, v11);
    RERelease();
  }

  else
  {
    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v13 = swift_allocObject();

    AnimationResource.init(_:name:)(v9, v15, v14);
  }

  RERelease();
  return v13;
}

uint64_t AnimationResource.repeat(count:)(uint64_t a1)
{
  v2 = v1;
  v4 = REAssetHandleAssetType();
  if (v4 != 5 && (v4 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  REAnimationAssetGetTotalDuration();
  v6 = v5;
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v7 + 120, v20);
  v8 = v21.i64[1];
  v9 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21.i64[1]);
  (*(v9 + 32))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v10 = REAssetHandleAssetType();
  if (v10 != 5 && (v10 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    goto LABEL_13;
  }

  v20[0] = 0;
  v20[1] = 0;
  v21 = vdupq_n_s64(0x7FF8000000000000uLL);
  v22 = 0;
  v23 = 0;
  v24 = v6 * a1;
  v25 = 0x13F800000;
  TimelineClip = REAssetManagerTimelineAssetCreateTimelineClipEx();
  if (!TimelineClip)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = TimelineClip;
  if (REAssetHandleAssetType() == 11)
  {
    v13 = REAnimationSceneAssetCreateWithTimeline();
    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v16 = swift_allocObject();

    AnimationResource.init(_:name:)(v13, v15, v14);
    RERelease();
  }

  else
  {
    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    type metadata accessor for AnimationResource();
    v16 = swift_allocObject();

    AnimationResource.init(_:name:)(v12, v18, v17);
  }

  RERelease();
  return v16;
}

uint64_t static AnimationResource.group(with:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10), 0, MEMORY[0x1E69E7CC0]);
    result = *(v2 + 16);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = 0;
LABEL_15:
    v40 = &type metadata for AnimationGroup;
    v41 = &protocol witness table for AnimationGroup;
    v22 = swift_allocObject();
    v39[0] = v22;
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v36[0]) = 0;
    HIBYTE(v35) = 0;
    type metadata accessor for TimelineDefinition();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = v36[0];
    v25 = HIBYTE(v35);
    *(v22 + 176) = xmmword_1C18D6F70;
    *(v22 + 192) = 0;
    *(v22 + 200) = 0;
    *(v22 + 208) = -1;
    *(v22 + 212) = 0;
    *(v22 + 216) = v24;
    *(v22 + 217) = v5;
    *(v22 + 218) = v25;
    *(v22 + 224) = v23;
    outlined consume of BindTarget?(0, 0, 0xFFu);
    LOBYTE(v36[0]) = 0;
    HIBYTE(v35) = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = v36[0];
    v28 = HIBYTE(v35);
    LOBYTE(v36[0]) = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    *(v22 + 32) = 1;
    *(v22 + 40) = 0;
    *(v22 + 48) = 1;
    *(v22 + 56) = 0;
    *(v22 + 64) = 1;
    *(v22 + 72) = 0;
    *(v22 + 80) = 0;
    *(v22 + 88) = 0;
    *(v22 + 96) = 0;
    *(v22 + 100) = 1065353216;
    *(v22 + 104) = 0;
    *(v22 + 112) = xmmword_1C18D6F80;
    *(v22 + 128) = xmmword_1C18D6F90;
    *(v22 + 144) = 0xE000000000000000;
    *(v22 + 152) = 0;
    *(v22 + 155) = BYTE2(v36[0]);
    *(v22 + 153) = v36[0];
    *(v22 + 156) = 0;
    *(v22 + 160) = v27;
    *(v22 + 162) = v28;
    *(v22 + 168) = v26;
    *(v22 + 16) = v3;
    *(v22 + 24) = 0;
    v29 = specialized static AnimationResource.generate(with:)(v39);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v29;
  }

  v1 = a1;
  v21 = __CocoaSet.count.getter();
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0, MEMORY[0x1E69E7CC0]);
  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1;
    v31 = v1 & 0xC000000000000001;
    v32 = v1;
    do
    {
      v8 = result;
      if (v31)
      {
        MEMORY[0x1C68F41F0](v6, v7);
      }

      else
      {
      }

      AnimationResource.definition.getter(v39);
      v9 = v40;
      v10 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (v10[7])(v36, v9, v10);
      v11 = v36[0];
      outlined init with copy of __REAssetService(v39, v36);
      v42 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v3);

        v42 = v3;
      }

      else
      {
      }

      ++v6;
      v5 |= v11;
      v14 = v37;
      v15 = v38;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v17 = MEMORY[0x1EEE9AC00](v16);
      v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, v19, &v42, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v39);
      result = v8;
      v7 = v32;
    }

    while (v8 != v6);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static AnimationResource.sequence(with:)(unint64_t a1)
{
  v4 = v2;
  v5 = a1;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 > 0)
    {
      goto LABEL_3;
    }

LABEL_51:
    v31 = 0x80000001C18F0E20;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v67 = 0xD000000000000033;
    *(v67 + 8) = 0x80000001C18F0E20;
    *(v67 + 16) = 0;
    swift_willThrow();
    return v31;
  }

LABEL_50:
  v6 = __CocoaSet.count.getter();
  if (v6 <= 0)
  {
    goto LABEL_51;
  }

LABEL_3:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, MEMORY[0x1E69E7CC0]);
  v73 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68F41F0](0, v5);
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      __break(1u);
      goto LABEL_55;
    }
  }

  v9 = REAssetHandleAssetType();
  if (v9 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_10:
      REAnimationAssetGetTotalDuration();
      v3 = v12;
      if (v73)
      {
        MEMORY[0x1C68F41F0](0, v5);
      }

      else
      {
      }

      AnimationResource.definition.getter(v92);

      v95[0] = v7;
      v1 = v7[2];
      v8 = v7[3];
      v68 = v4;
      if (v1 < v8 >> 1)
      {
        v72 = v7;
        goto LABEL_15;
      }

LABEL_55:
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v1 + 1, 1, v7);
      v95[0] = v72;
LABEL_15:
      v4 = v93;
      v13 = v94;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
      v15 = MEMORY[0x1EEE9AC00](v14);
      v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v1, v17, v95, v4, v13);
      __swift_destroy_boxed_opaque_existential_1(v92);
      if (v6 != 1)
      {
        v69 = v5 & 0xFFFFFFFFFFFFFF8;
        v71 = 1 - v6;
        v40 = 0.0;
        v41 = 5;
        v70 = xmmword_1C1898800;
        while ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v73)
          {
            MEMORY[0x1C68F41F0](v41 - 4, v5);
          }

          else
          {
            if ((v41 - 4) >= *(v69 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }
          }

          v42 = REAssetHandleAssetType();
          if (v42 == 11)
          {
            v43 = REAnimationSceneAssetGetRootTimeline();

            if (!v43)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v42 != 5)
            {

              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }
          }

          REAnimationAssetGetTotalDuration();
          v45 = v44;
          if (v73)
          {
            MEMORY[0x1C68F41F0](v41 - 4, v5);
          }

          else
          {
          }

          AnimationResource.definition.getter(v88);

          v92[0] = 0;
          v92[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          strcpy(v92, "sequence-anim(");
          HIBYTE(v92[1]) = -18;
          v85[0] = v41 - 4;
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1C68F3410](v46);

          MEMORY[0x1C68F3410](41, 0xE100000000000000);
          v48 = v92[0];
          v47 = v92[1];
          if (v73)
          {
            MEMORY[0x1C68F41F0](v41 - 4, v5);
          }

          else
          {
          }

          v40 = v40 + v3;
          AnimationResource.definition.getter(v85);

          v49 = v86;
          v50 = v87;
          __swift_project_boxed_opaque_existential_1(v85, v86);
          (*(v50 + 56))(&v83 + 9, v49, v50);
          v93 = &type metadata for AnimationView;
          v94 = &protocol witness table for AnimationView;
          v51 = swift_allocObject();
          v92[0] = v51;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          v74[0] = 0;
          v91 = 0;
          type metadata accessor for TimelineDefinition();
          v52 = swift_allocObject();
          *(v52 + 16) = 0;
          v53 = v74[0];
          v54 = v91;
          v74[0] = 0;
          v91 = 0;
          v90 = 0;
          v89 = 0;
          v74[48] = 0;
          *&v75 = 0;
          WORD4(v75) = 1;
          *&v76 = 0;
          WORD4(v76) = 1;
          *&v77 = 0;
          WORD4(v77) = 1;
          *&v78 = 0;
          BYTE8(v78) = 0;
          *&v79 = v40;
          BYTE8(v79) = 0;
          HIDWORD(v79) = 1065353216;
          LOWORD(v80) = 0;
          *(&v80 + 1) = 0;
          *&v81 = v48;
          *(&v81 + 1) = v47;
          v82 = v70;
          LOBYTE(v83) = 0;
          DWORD1(v83) = 0;
          BYTE8(v83) = v53;
          WORD5(v83) = v54;
          v84 = v52;
          outlined init with copy of __REAssetService(v88, v74);
          AnimationView.source.setter(v74);
          __swift_destroy_boxed_opaque_existential_1(v88);
          v55 = v82;
          v56 = v83;
          v57 = v80;
          *(v51 + 112) = v81;
          *(v51 + 128) = v55;
          *(v51 + 144) = v56;
          *(v51 + 160) = v84;
          v58 = v78;
          *(v51 + 48) = v77;
          *(v51 + 64) = v58;
          *(v51 + 80) = v79;
          *(v51 + 96) = v57;
          v59 = v76;
          *(v51 + 16) = v75;
          *(v51 + 32) = v59;
          __swift_destroy_boxed_opaque_existential_1(v85);
          v95[0] = v72;
          v1 = v72[2];
          v60 = v72[3];
          if (v1 >= v60 >> 1)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v1 + 1, 1, v72);
            v95[0] = v72;
          }

          v4 = v93;
          v61 = v94;
          v62 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
          v63 = MEMORY[0x1EEE9AC00](v62);
          v65 = &v68 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v66 + 16))(v65, v63);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v1, v65, v95, v4, v61);
          __swift_destroy_boxed_opaque_existential_1(v92);
          ++v41;
          v3 = v45;
          if (v71 + v41 == 5)
          {
            break;
          }
        }
      }

      v19 = v72;
      if (v72[2])
      {
        v5 = (v72 + 4);
        outlined init with copy of __REAssetService((v72 + 4), v92);
        v20 = v93;
        v21 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        (v21[7])(v88, v20, v21);
        LODWORD(v1) = LOBYTE(v88[0]);
        __swift_destroy_boxed_opaque_existential_1(v92);
        if (one-time initialization token for backwards == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_18:
      if ((static AnimationFillMode.backwards & ~v1) != 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = static AnimationFillMode.backwards;
      }

      v23 = v19[2];
      if (v23)
      {
        outlined init with copy of __REAssetService(v5 + 40 * v23 - 40, v92);
        v24 = v93;
        v25 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v26 = v25[7];

        v26(v88, v24, v25);
        LODWORD(v1) = LOBYTE(v88[0]);
        if (one-time initialization token for forwards == -1)
        {
LABEL_23:
          v27 = static AnimationFillMode.forwards;
          __swift_destroy_boxed_opaque_existential_1(v92);
          if ((v27 & ~v1) != 0)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27;
          }

          v29 = v28 | v22;
          v93 = &type metadata for AnimationGroup;
          v94 = &protocol witness table for AnimationGroup;
          v30 = swift_allocObject();
          v92[0] = v30;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          LOBYTE(v85[0]) = 0;
          v74[0] = 0;
          v31 = type metadata accessor for TimelineDefinition();
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          v33 = v85[0];
          v34 = v74[0];
          *(v30 + 176) = xmmword_1C18D6FA0;
          *(v30 + 192) = 0;
          *(v30 + 200) = 0;
          *(v30 + 208) = -1;
          *(v30 + 212) = 0;
          *(v30 + 216) = v33;
          *(v30 + 217) = v29;
          *(v30 + 218) = v34;
          *(v30 + 224) = v32;
          outlined consume of BindTarget?(0, 0, 0xFFu);
          LOBYTE(v85[0]) = 0;
          v74[0] = 0;
          v35 = swift_allocObject();
          *(v35 + 16) = 0;
          v36 = v85[0];
          v37 = v74[0];
          LOBYTE(v85[0]) = 0;
          v74[0] = 0;
          v91 = 0;
          v90 = 0;
          v89 = 0;
          *(v30 + 32) = 1;
          *(v30 + 40) = 0;
          *(v30 + 48) = 1;
          *(v30 + 56) = 0;
          *(v30 + 64) = 1;
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          *(v30 + 100) = 1065353216;
          *(v30 + 104) = 0;
          *(v30 + 112) = xmmword_1C18D6FB0;
          *(v30 + 128) = xmmword_1C18D6FC0;
          *(v30 + 144) = 0xE000000000000000;
          *(v30 + 152) = 0;
          *(v30 + 155) = BYTE2(v88[0]);
          *(v30 + 153) = v88[0];
          *(v30 + 156) = 0;
          *(v30 + 160) = v36;
          *(v30 + 162) = v37;
          *(v30 + 168) = v35;
          *(v30 + 16) = v19;
          *(v30 + 24) = 0;
          v38 = v68;
          v39 = specialized static AnimationResource.generate(with:)(v92);
          if (!v38)
          {
            v31 = v39;
          }

          __swift_destroy_boxed_opaque_existential_1(v92);

          return v31;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_23;
    }
  }

  else
  {
    if (v9 == 5)
    {

      goto LABEL_10;
    }

LABEL_62:

    __break(1u);
  }

  __break(1u);
  return result;
}

void AnimationResource.store(in:)(uint64_t a1)
{
  v1 = REAssetHandleAssetType();
  if (v1 == 5 || v1 == 11 && REAnimationSceneAssetGetRootTimeline())
  {
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    swift_unownedRetainStrong();

    ServiceLocator = REEngineGetServiceLocator();
    if (MEMORY[0x1C68FE1F0](ServiceLocator))
    {
      REAnimationLibraryComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (REAnimationLibraryComponentGetAnimationLibraryAsset())
      {
        if (!REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset())
        {
          v3 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log();
          v4 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v3, &dword_1C1358000, v4, "Could not create AnimationLibraryDefinition from animation library asset", 72, 2, MEMORY[0x1E69E7CC0]);

          return;
        }
      }

      else
      {
        REAnimationLibraryDefinitionCreate();
      }

      REAnimationLibraryDefinitionAddEntryAsset();
      if (REAnimationLibraryDefinitionCreateAnimationLibraryAsset())
      {
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
      }

      else
      {
        v6 = static os_log_type_t.error.getter();
        type metadata accessor for OS_os_log();
        v7 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v7, "Could not create the new animation library asset", 48, 2, MEMORY[0x1E69E7CC0]);
      }

      RERelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v5, &dword_1C1358000, v8, "Could not get the AnimationResource's timeline asset", 52, 2, MEMORY[0x1E69E7CC0]);
  }
}

void AnimationResource.eventTimelineDefinition.getter(uint64_t a1@<X8>)
{
  v33 = 1;
  v32 = 1;
  type metadata accessor for TimelineDefinition();
  inited = swift_initStackObject();

  v3 = REAssetHandleAssetType();
  if (v3 != 5 && (v3 != 11 || !REAnimationSceneAssetGetRootTimeline()))
  {
    __break(1u);
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = RETimelineDefinitionCreateFromTimeline();

  *(inited + 16) = v4;
  memset(v22, 0, sizeof(v22));
  v23 = -1;
  v24 = v34;
  v25 = v35;
  v26 = 0;
  v27 = v33;
  v28 = 0;
  v29 = v32;
  v30 = 2;
  v31 = inited;
  if (!v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0uLL;
    *(a1 + 16) = 0uLL;
    goto LABEL_17;
  }

  if (!RETimelineDefinitionEventTimelineGetEventTypeName())
  {
    goto LABEL_19;
  }

  v5 = String.init(cString:)();
  v7 = v6;
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      swift_endAccess();

      *(a1 + 24) = type metadata accessor for ActionAnimation(0, v12, v13, v14);
      *(a1 + 32) = &protocol witness table for ActionAnimation<A>;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      static EntityAction.makeActionAnimation(_:)(v12, v13, boxed_opaque_existential_1);
LABEL_17:
      outlined destroy of TimelineBaseProperties(v22);
      return;
    }
  }

  swift_endAccess();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x1C68F3410](0xD000000000000040, 0x80000001C18F0FA0);
  MEMORY[0x1C68F3410](v5, v7);

  MEMORY[0x1C68F3410](39, 0xE100000000000000);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static AnimationLogger.logger);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v21);
    _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1C6902A30](v20, -1, -1);
    MEMORY[0x1C6902A30](v19, -1, -1);
  }

  outlined destroy of TimelineBaseProperties(v22);

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t objectdestroy_8Tm()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  if (*(v0 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  }

  return MEMORY[0x1EEE6BDD0](v0, 264, 7);
}

uint64_t objectdestroy_32Tm_0()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t objectdestroy_59Tm()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 384, 15);
}

uint64_t objectdestroy_68Tm()
{

  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v1);
  }

  v2 = *(v0 + 200);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 184), *(v0 + 192), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 336, 15);
}

uint64_t static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t a8, double a9, double a10, double a11, float a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19)
{
  v63 = a8;
  v67 = a5;
  v55 = a1;
  v61 = a14;
  v62 = a2;
  v59 = a3;
  v60 = a16;
  v57 = a15;
  v58 = a17;
  v26 = *(a18 - 8);
  v56 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v50 - v31;
  v33 = *(a4 + 8);
  v51 = *a4;
  v50 = v33;
  v53 = *a6;
  v52 = *a7;
  v34 = fmax(a9, 0.0333333333);
  if (a9 <= 0.0)
  {
    a9 = v34;
  }

  v35 = *(a4 + 16);
  v36 = type metadata accessor for ActionEventDefinition(255, a18, a19, v30);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v37 = static Array._adoptStorage(_:count:)();
  v39 = v38;
  (*(*(AssociatedTypeWitness - 8) + 56))(v32, 1, 1, AssociatedTypeWitness);
  ActionEventDefinition.init(startTime:duration:parameter:)(v32, a18, a19, v39, 0.0, a9, v40);
  v41 = _finalizeUninitializedArray<A>(_:)(v37, v36);
  v42 = v54;
  (*(v26 + 16))(v54, v55, a18);
  v43 = v51;
  v44 = v50;
  v64[0] = v51;
  v64[1] = v50;
  v65 = v35;
  v69 = v53;
  v68 = v52;
  v66[3] = type metadata accessor for ActionAnimation(0, a18, a19, v45);
  v66[4] = &protocol witness table for ActionAnimation<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v47 = v59;

  outlined copy of BindTarget?(v43, v44, v35);
  ActionAnimation.init(for:events:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(v42, v41, v62, v47, v64, v67, &v69, &v68, boxed_opaque_existential_1, a10, a11, a12, v63, v56 & 1, v61, v57 & 1, v60, v58 & 1, a18, a19);
  v48 = specialized static AnimationResource.generate(with:)(v66);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v48;
}

uint64_t specialized static AnimationResource.generate(with:)(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pMd, &_s17RealityFoundation27AnimationDefinitionInternal_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v6, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    outlined destroy of AnimationDefinitionInternal?(v6);
    v3 = 0x80000001C18DE2F0;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v4 = 0xD00000000000001CLL;
    *(v4 + 8) = 0x80000001C18DE2F0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type AnimationRepeatMode and conformance AnimationRepeatMode()
{
  result = lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode;
  if (!lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationRepeatMode, &type metadata for AnimationRepeatMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationRepeatMode and conformance AnimationRepeatMode);
  }

  return result;
}

Swift::Void __swiftcall Scene.setSession(_:)(ARSession a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  outlined assign with take of WeakSessionAR(v2, v1 + 64);
  swift_endAccess();
}

uint64_t __RKStartTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t __RKStartTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

BOOL __RKStartTrigger.matches(with:)(uint64_t a1)
{
  type metadata accessor for __RKStartTrigger();
  if (swift_dynamicCastClass() && *(v1 + 19) != 1)
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
LABEL_21:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v6, v4);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v8 = *(v4 + 8 * v6 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v9 = __RKStartTrigger.matches(with:)(v8);

    ++v6;
  }

  while ((v9 & 1) == 0);

  return v7;
}

uint64_t static MeshResource.fromCore(_:)(uint64_t a1)
{
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v3;
}

uint64_t __MeshCompileOptions.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = REMeshCompileOptionsCreate();
  return v0;
}

uint64_t MeshResource.expectedMaterialCount.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    MaxMaterialIndex = REMeshAssetGetMaxMaterialIndex();
    v3 = __OFADD__(MaxMaterialIndex, 1);
    result = MaxMaterialIndex + 1;
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

double MeshResource.bounds.getter()
{
  if (!*(v0 + 16))
  {
    return 1.40444843e306;
  }

  REEntityComputeLocalBoundingBox();
  return result;
}

uint64_t MeshResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v2;
}

uint64_t MeshResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v1;
}

uint64_t MeshResource.deinit()
{
  if (*(v0 + 16))
  {
    REAssetSetSwiftObject();
    RERelease();
  }

  return v0;
}

uint64_t static MeshResource.__load(named:in:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v6 + 32))(v5, v6);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  __swift_destroy_boxed_opaque_existential_1(v15);
  if (!AssetHandle)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = 1;
    return swift_willThrow();
  }

  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v14 = swift_allocObject();
  *(v14 + 16) = AssetHandle;
  RERetain();
  REAssetSetSwiftObject();
  return v14;
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)(float a1, float a2)
{
  v4 = fminf(a2, a1 * 0.5);
  REGeomBuildBoxDefaultOptions();
  LODWORD(v14) = v9;
  WORD2(v14) = v10;
  v5 = v11;
  if (a2 > 0.0)
  {
    v5 = 16;
  }

  WORD3(v14) = v5;
  *(&v14 + 1) = __PAIR64__(LODWORD(a1), LODWORD(v4));
  v15 = a1;
  v16 = a1;
  v17 = v12;
  v18 = 1;
  v19 = v13;
  v6 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v14, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v6;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v6;
}

{
  *(v2 + 76) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v5 = a1;
  v10 = fminf(a5, fminf(a2, fminf(a3, fminf(a2, a4))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  LODWORD(v20) = v15;
  WORD2(v20) = v16;
  v11 = v17;
  if (a5 > 0.0)
  {
    v11 = 16;
  }

  WORD3(v20) = v11;
  *(&v20 + 1) = __PAIR64__(LODWORD(a2), LODWORD(v10));
  v21 = a3;
  v22 = a4;
  v23 = v18;
  v24 = v5 ^ 1;
  v25 = v19;
  v12 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v20, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v12;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v12;
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)(__n128 a1, float a2)
{
  v3 = fminf(a2, fminf(a1.n128_f32[0], fminf(a1.n128_f32[1], fminf(a1.n128_f32[0], a1.n128_f32[2]))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  v14 = v9;
  v15 = v10;
  v4 = v11;
  if (a2 > 0.0)
  {
    v4 = 16;
  }

  v16 = v4;
  v17 = v3;
  v18 = a1.n128_u64[0];
  v19 = a1.n128_u32[2];
  v20 = v12;
  v21 = 1;
  v22 = v13;
  v5 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5(&v14, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v5;
}

{
  v2[5].n128_f32[3] = a2;
  v2[1] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)()
{
  v2 = *(v0 + 76);
  v1 = *(v0 + 80);
  v3 = fminf(v1, v2 * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 48) = v8;
  *(v0 + 52) = v9;
  v4 = v10;
  if (v1 > 0.0)
  {
    v4 = 16;
  }

  *(v0 + 54) = v4;
  *(v0 + 56) = v3;
  *(v0 + 60) = v2;
  *(v0 + 64) = v2;
  *(v0 + 68) = v2;
  *(v0 + 72) = v11;
  *(v0 + 74) = 1;
  *(v0 + 75) = v12;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), v6, v5);
}

{

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 48), 0);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = static MeshResource.generateBox(size:cornerRadius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = static MeshResource.generate(from:);
  }

  else
  {
    v2 = static MeshResource.generateBox(size:cornerRadius:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

{
  v1 = *(v0 + 92);
  v7 = *(v0 + 16);
  v2 = fminf(v1, fminf(*&v7, fminf(*(&v7 + 1), fminf(*&v7, *(&v7 + 2)))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 64) = v8;
  *(v0 + 68) = v9;
  v3 = v10;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 70) = v3;
  *(v0 + 72) = v2;
  *(v0 + 76) = v7;
  *(v0 + 84) = DWORD2(v7);
  *(v0 + 88) = v11;
  *(v0 + 90) = 1;
  *(v0 + 91) = v12;
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(size:cornerRadius:), v5, v4);
}

{

  *(v0 + 40) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 64), 0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = static MeshResource.generateBox(size:cornerRadius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = static MeshResource.generateBox(size:cornerRadius:);
  }

  else
  {
    v2 = static MeshResource.generateBox(size:cornerRadius:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:)(char a1, float a2, float a3, float a4, float a5)
{
  *(v5 + 92) = a1;
  *(v5 + 84) = a4;
  *(v5 + 88) = a5;
  *(v5 + 76) = a2;
  *(v5 + 80) = a3;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:), 0, 0);
}

uint64_t static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:)()
{
  v1 = *(v0 + 92);
  v3 = *(v0 + 84);
  v2 = *(v0 + 88);
  v5 = *(v0 + 76);
  v4 = *(v0 + 80);
  v6 = fminf(v2, fminf(v5, fminf(v4, fminf(v5, v3))) * 0.5);
  REGeomBuildBoxDefaultOptions();
  *(v0 + 48) = v11;
  *(v0 + 52) = v12;
  v7 = v13;
  if (v2 > 0.0)
  {
    v7 = 16;
  }

  *(v0 + 54) = v7;
  *(v0 + 56) = v6;
  *(v0 + 60) = v5;
  *(v0 + 64) = v4;
  *(v0 + 68) = v3;
  *(v0 + 72) = v14;
  *(v0 + 74) = (v1 & 1) == 0;
  *(v0 + 75) = v15;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:), v9, v8);
}

{
  v1 = *(v0 + 92);

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA15BoxMeshResourceC_Tt2g5((v0 + 48), v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);
  }

  else
  {
    v2 = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t static MeshResource.generateBoxWithRoundedCorners(width:height:depth:majorRadius:minorRadius:splitFaces:)(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a1;
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  v13 = v20;
  if (a3 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  v15 = v14 * 0.5;
  if (v15 >= a5)
  {
    v15 = a5;
  }

  if (a4 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 * 0.5;
  if ((v16 * 0.5) >= a6)
  {
    v17 = a6;
  }

  v12.f32[0] = fmaxf(v15, v17);
  v19 = vbsl_s8(vdup_lane_s32(vcgt_f32(v12, 0), 0), 0x10000200020002, v19);
  if (v12.f32[0] > 0.0)
  {
    v13 = 12;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v6 ^ 1;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA33BoxWithRoundedCornersMeshResourceC_Tt2g5(&v19, v6);
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)(float a1, float a2, float a3)
{
  return static MeshResource.generatePlane(width:height:cornerRadius:)(4, a1, a2, a3);
}

{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generatePlane(width:depth:cornerRadius:)(float a1, float a2, float a3)
{
  return static MeshResource.generatePlane(width:height:cornerRadius:)(2, a1, a2, a3);
}

{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:depth:cornerRadius:), 0, 0);
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)(int a1, float a2, float a3, float a4)
{
  REGeomBuildPlaneDefaultOptions();
  v8 = WORD2(v12);
  if (a4 > 0.0)
  {
    v8 = 16;
  }

  WORD2(v12) = v8;
  *(&v12 + 1) = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v13 = a4;
  v14 = a1;
  v9 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v12, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v9;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v9;
}

uint64_t static MeshResource.generatePlane(width:height:cornerRadius:)()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 76);
  REGeomBuildPlaneDefaultOptions();
  v3 = v8;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 48) = v7;
  *(v0 + 52) = v3;
  *(v0 + 54) = v9;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 68) = v10;
  *(v0 + 72) = 4;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), v5, v4);
}

{

  *(v0 + 24) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5((v0 + 48), 0);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = static MeshResource.generateBox(width:height:depth:cornerRadius:splitFaces:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

uint64_t static MeshResource.generatePlane(width:depth:cornerRadius:)()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 76);
  REGeomBuildPlaneDefaultOptions();
  v3 = v8;
  if (v1 > 0.0)
  {
    v3 = 16;
  }

  *(v0 + 48) = v7;
  *(v0 + 52) = v3;
  *(v0 + 54) = v9;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 68) = v10;
  *(v0 + 72) = 2;
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generatePlane(width:height:cornerRadius:), v5, v4);
}

void *static MeshResource.__generatePlane(width:widthSegmentCount:depth:depthSegmentCount:cornerRadius:cornerSegmentCount:addUVs:addNormals:)(unint64_t a1, unint64_t a2, unint64_t a3, char a4, char a5, float a6, float a7, float a8)
{
  result = REGeomBuildPlaneDefaultOptions();
  if (a1 >> 16)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >> 16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >> 16)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a8 <= 0.0)
  {
    v17 = a3;
  }

  else
  {
    v17 = 16;
  }

  LOWORD(v18) = a1;
  WORD1(v18) = a2;
  WORD2(v18) = v17;
  *(&v18 + 1) = __PAIR64__(LODWORD(a7), LODWORD(a6));
  v19 = a8;
  v20 = a4 & 1;
  v21 = a5 & 1;
  v22 = 2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v18, 0);
}

uint64_t static MeshResource.__generateOccluderPlane(width:depth:cornerRadius:)(float a1, float a2, float a3)
{
  REGeomBuildPlaneDefaultOptions();
  v6 = WORD2(v8);
  if (a3 > 0.0)
  {
    v6 = 16;
  }

  WORD2(v8) = v6;
  *(&v8 + 1) = __PAIR64__(LODWORD(a2), LODWORD(a1));
  v9 = a3;
  v10 = 2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA17PlaneMeshResourceC_Tt2g5(&v8, 0);
}

uint64_t static MeshResource.generateSphere(radius:)(float a1)
{
  REGeomBuildSphereDefaultOptions();
  v3 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(0x40u, v2 & 0x10101, 0, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v3;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v3;
}

{
  *(v1 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

uint64_t static MeshResource.generateSphere(radius:segmentCount:)(uint64_t a1, float a2)
{
  v2 = a1;
  REGeomBuildSphereDefaultOptions();
  v5 = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(v2, v4 & 0x10101, 0, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = type metadata accessor for MeshResource();
  *(inited + 64) = &protocol witness table for MeshResource;
  *(inited + 32) = v5;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v5;
}

uint64_t static MeshResource.generateSphere(radius:)()
{
  REGeomBuildSphereDefaultOptions();
  v0[2] = v1;
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

{

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);

  *(v0 + 56) = _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA18SphereMeshResourceC_Tt2g5(0x40u, v1 & 0x10101, 0, v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = static MeshResource.generateSphere(radius:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[7];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static MeshResource.generateSphere(radius:)(__n128 a1)
{
  *(v1 + 40) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

{
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generateSphere(radius:), v3, v2);
}

uint64_t static MeshResource.generateCapsule(height:radius:)(float a1, float a2)
{
  REGeomBuildCapsuleDefaultOptions();
  if (v10)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | v9 & 1;
  if (v11)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA19CapsuleMeshResourceC_Tt2g5((v8 << 16) | 0x40, v5 | v6, 0, a2, a1);
}

uint64_t static MeshResource.generateBox(size:majorCornerRadius:minorCornerRadius:)(int8x16_t a1, float a2, float a3)
{
  REGeomBuildBoxWithRoundedCornersDefaultOptions();
  v3 = v14;
  v4 = vext_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL), 4uLL);
  v5 = vmul_f32(vbsl_s8(vcgt_f32(*a1.i8, v4), v4, *a1.i8), 0x3F0000003F000000);
  v6 = vcgt_f32(__PAIR64__(LODWORD(a3), LODWORD(a2)), v5);
  v7 = vbsl_s8(v6, v5, __PAIR64__(LODWORD(a3), LODWORD(a2)));
  *v6.i32 = fmaxf(*v7.i32, *&v7.i32[1]);
  v8 = vbsl_s8(vdup_lane_s32(vcgt_f32(v6, 0), 0), 0x10000200020002, v13);
  if (*v6.i32 > 0.0)
  {
    v3 = 12;
  }

  v13 = v8;
  v14 = v3;
  v15 = v7;
  v17 = a1.i32[2];
  v16 = a1.i64[0];
  v18 = 1;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA33BoxWithRoundedCornersMeshResourceC_Tt2g5(&v13, 0);
}

uint64_t static MeshResource.generateCone(height:radius:)(float a1, float a2)
{
  v4 = REGeomBuildConeDefaultOptions() & 0xFFFF0000 | 0x40;

  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA16ConeMeshResourceC_Tt2g5(v4, v5 & 0x1010101, 0, a1, a2);
}

uint64_t static MeshResource.generateCylinder(height:radius:)(float a1, float a2)
{
  REGeomBuildCylinderDefaultOptions();
  v5 = 64;
  v6 = a1;
  v7 = a2;
  v8 = a2;
  return _s17RealityFoundation22PrimitiveComponentTypePAAE7options11splitMeshesx7OptionsQz_SbtcfCAA20CylinderMeshResourceC_Tt2g5(&v5, 0);
}

double MeshDescriptor.init(convexPolyhedronShape:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (RECollisionShapeGetType() == 5)
  {
    PositionCount = REConvexPolyhedronShapeGetPositionCount();
    MeshTriangleIndices = REConvexPolyhedronShapeExtractMeshTriangleIndices();
    if ((PositionCount & 0x8000000000000000) == 0)
    {
      v6 = MeshTriangleIndices;
      if (PositionCount)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = PositionCount;
        bzero((v7 + 32), 16 * PositionCount);
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
        if ((MeshTriangleIndices & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (v6)
          {
            PositionCount = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(PositionCount + 16) = v6;
            bzero((PositionCount + 32), 2 * v6);
            goto LABEL_10;
          }

LABEL_9:
          PositionCount = MEMORY[0x1E69E7CC0];
LABEL_10:
          REConvexPolyhedronShapeExtractPositions();
          REConvexPolyhedronShapeExtractMeshTriangleIndices();
          a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          LOBYTE(v37[0]) = 0;
          _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v7, v39);
          v8 = one-time initialization token for positions;
          v31[2] = v7;

          if (v8 == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_11:
  v9 = static MeshBuffers.positions;
  v10 = word_1EBEAD0B8;
  v11 = HIBYTE(word_1EBEAD0B8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v36 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v34 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MeshBuffer<SIMD3<Float>>(v39, v37);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  outlined init with take of BindableDataInternal(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = a1;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  v31[1] = v31;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = v17[4];
  v20 = v17[6];
  v37[5] = v17[5];
  v38[0] = v20;
  *(v38 + 9) = *(v17 + 105);
  v21 = v17[1];
  v37[0] = *v17;
  v37[1] = v21;
  v22 = v17[3];
  v37[2] = v17[2];
  v37[3] = v22;
  v37[4] = v19;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v9, *(&v9 + 1), v12 | v10, isUniquelyReferenced_nonNull_native, &v32, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR, &unk_1F4126888);

  outlined destroy of BodyTrackingComponent?(v39, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v23 = v32;
  v24 = *(PositionCount + 16);
  if (v24)
  {
    *&v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v34;
    v26 = *(v34 + 16);
    v27 = 32;
    do
    {
      v28 = *(PositionCount + v27);
      *&v34 = v25;
      v29 = *(v25 + 24);
      if (v26 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v26 + 1, 1);
        v25 = v34;
      }

      *(v25 + 16) = v26 + 1;
      *(v25 + 4 * v26 + 32) = v28;
      v27 += 2;
      ++v26;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v23;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v25;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  return result;
}

void MeshDescriptor.init(staticMeshShape:)(uint64_t a2@<X8>)
{
  if (RECollisionShapeGetType() == 12)
  {
    RECollisionMeshShapeGetMesh();
    VertexCount = RECollisionMeshGetVertexCount();
    IndexCount = RECollisionMeshGetIndexCount();
    if ((VertexCount & 0x8000000000000000) == 0)
    {
      v5 = IndexCount;
      if (VertexCount)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = VertexCount;
        bzero((v6 + 32), 16 * VertexCount);
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
        if ((IndexCount & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (v5)
          {
            VertexCount = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(VertexCount + 16) = v5;
            bzero((VertexCount + 32), 4 * v5);
            goto LABEL_10;
          }

LABEL_9:
          VertexCount = MEMORY[0x1E69E7CC0];
LABEL_10:
          RECollisionMeshExtractVertexPositions();
          RECollisionMeshExtractIndices();
          v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v14[0] = 0;
          *a2 = 0;
          *(a2 + 8) = 0xE000000000000000;
          *(a2 + 16) = v7;
          *(a2 + 24) = 0;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          *(a2 + 56) = -1;
          *(a2 + 64) = 0u;
          *(a2 + 80) = 0u;
          *(a2 + 96) = 0;
          _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v6, v14);
          if (one-time initialization token for positions == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_11:
  v8 = static MeshBuffers.positions;
  v9 = word_1EBEAD0B8;
  v10 = HIBYTE(word_1EBEAD0B8);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v13[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v13[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of MeshBuffer<SIMD3<Float>>(v14, v12);
  if (v10)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  specialized Dictionary.subscript.setter(v13, v8, *(&v8 + 1), v11 | v9);
  outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  outlined consume of MeshDescriptor.Primitives?(*(a2 + 40), *(a2 + 48), *(a2 + 56));
  *(a2 + 40) = VertexCount;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
}

BOOL REPoseF.isIdentity.getter(float32x2_t a1, float a2, float32x4_t a3)
{
  if (sqrtf((a2 * a2) + vaddv_f32(vmul_f32(a1, a1))) > 0.00001)
  {
    return 0;
  }

  v4 = vmulq_f32(a3, a3);
  v5 = atan2f(sqrtf(v4.f32[2] + vaddv_f32(*v4.f32)), a3.f32[3]);
  return fabsf(v5 + v5) <= 0.00001;
}

void MeshResource.Contents.offsetBy(pose:)(uint64_t a1@<X8>, float32x2_t a2@<D0>, float a3@<S1>, float32x4_t a4@<Q2>)
{
  v7 = a1;
  v8 = v4[1];
  v9 = v4[2];
  v366 = *v4;
  v367 = v8;
  v298 = v8;
  v299 = v9;
  v368 = v9;
  v297 = v366;
  v10 = *(v366.i64[0] + 16);
  if (!v10)
  {
    goto LABEL_130;
  }

  v272 = a1;
  v274 = v366.i64[0] + 32;
  v11 = vmulq_f32(a4, xmmword_1C1899C90);
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15 = vrev64q_s32(v11);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  v290 = v15;
  v291 = v14;
  v288 = vextq_s8(v11, v12, 8uLL);
  v289 = vdupq_lane_s32(*a4.f32, 0);
  v284 = (v347 + 5);
  v292 = a4;
  v287 = vdupq_laneq_s32(a4, 2);
  v273 = v366.i64[0];
  swift_bridgeObjectRetain_n();

  v16 = 0;
  while (1)
  {
    if (v16 >= v10)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v280 = v16;
    v18 = (v274 + 48 * v16);
    v19 = *v18;
    v278 = v18[1];
    v279 = v19;
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];

    v24 = *(v20 + 16);
    v276 = v22;

    v275 = v23;

    v277 = v21;

    if (v24)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v261 = v279;

    *&v352 = v261;
    *(&v352 + 1) = v278;
    *&v353 = v20;
    *(&v353 + 1) = v277;
    *&v354 = v276;
    *(&v354 + 1) = v275;
    v262 = *(v26 + 2);
    if (v262)
    {
      v263 = v262 - 1;
      for (i = 32; ; i += 64)
      {
        v266 = *&v26[i + 16];
        v265 = *&v26[i + 32];
        v267 = *&v26[i + 41];
        v370[0] = *&v26[i];
        v370[1] = v266;
        *(v371 + 9) = v267;
        v371[0] = v265;
        v268 = *(&v370[0] + 1);
        v269 = v266;
        outlined init with copy of MeshResource.Part(v370, v358);
        specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v370, v268, v269, v358);
        outlined destroy of MeshResource.Part(v370);
        v359[0] = *v358;
        v359[1] = *&v358[16];
        v359[2] = *&v358[32];
        *(&v359[2] + 9) = *&v358[41];
        outlined destroy of BodyTrackingComponent?(v359, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMR);
        if (!v263)
        {
          break;
        }

        --v263;
      }
    }

    v17 = v280 + 1;
    v369[0] = v352;
    v369[1] = v353;
    v369[2] = v354;
    specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v369, v352, *(&v352 + 1), v359);
    outlined destroy of MeshResource.Model(v369);
    outlined consume of MeshResource.Model?(*&v359[0], *(&v359[0] + 1), *&v359[1], *(&v359[1] + 1), *&v359[2], *(&v359[2] + 1));
    v16 = v17;
    v10 = *(v273 + 16);
    if (v17 == v10)
    {
      v297 = v366;
      v298 = v367;
      v299 = v368;
      v7 = v272;
      goto LABEL_131;
    }
  }

  v25 = 0;
  v286 = v20 + 32;
  v26 = MEMORY[0x1E69E7CC0];
  v285 = v20;
  while (1)
  {
    v294 = v25;
    v27 = v286 + (v25 << 6);
    v29 = *(v27 + 16);
    v28 = *(v27 + 32);
    v30 = *(v27 + 41);
    v364[0] = *v27;
    *(v365 + 9) = v30;
    v364[1] = v29;
    v365[0] = v28;
    v31 = *&v364[0];
    v360 = *(v27 + 8);
    v361 = *(v27 + 24);
    v362 = *(v27 + 40);
    v363 = *(v27 + 56);
    outlined init with copy of MeshResource.Part(v364, v359);
    outlined init with copy of MeshResource.Part(v364, v359);
    if (one-time initialization token for positions != -1)
    {
      swift_once();
    }

    v32 = *(v31 + 16);
    v299.i64[0] = v31;
    if (v32 && (!HIBYTE(word_1EBEAD0B8) ? (v33 = 0) : (v33 = 256), v34 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v33 | word_1EBEAD0B8), (v35 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v31 + 56) + 40 * v34, &v352);
      outlined init with take of BindableDataInternal(&v352, v358);
      v36 = *&v358[24];
      v37 = *&v358[32];
      __swift_project_boxed_opaque_existential_1(v358, *&v358[24]);
      v38 = *(v37 + 56);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v38(v359, v39, v36, v37);
      v40 = __swift_destroy_boxed_opaque_existential_1(v358);
      v41 = *&v359[0];
      if (*&v359[0])
      {
        *&v358[8] = *(v359 + 8);
        *&v358[65] = *(&v359[4] + 1);
        *&v358[56] = *(&v359[3] + 8);
        *&v358[40] = *(&v359[2] + 8);
        *&v358[24] = *(&v359[1] + 8);
        goto LABEL_18;
      }
    }

    else
    {
      memset(v359, 0, 81);
    }

    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v40 = swift_allocObject();
    *(v40 + 16) = v43;
    *&v358[8] = v42;
    *&v358[16] = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
    *&v358[24] = v44;
    *&v358[32] = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
    *&v358[40] = v45;
    *&v358[48] = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
    *&v358[56] = v40;
    strcpy(&v358[64], "\t");
    *&v358[72] = 0;
    v358[80] = 0;
    v41 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
LABEL_18:
    *v358 = v41;
    v390[2] = *&v358[32];
    v390[3] = *&v358[48];
    v390[4] = *&v358[64];
    v391 = v358[80];
    v390[0] = *v358;
    v390[1] = *&v358[16];
    v46 = (v41)(v40);
    if (!v46)
    {
      v46 = specialized _copySequenceToContiguousArray<A>(_:)(v390);
    }

    v7 = v46;
    outlined destroy of BodyTrackingComponent?(v358, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    v47 = *(v7 + 16);
    v297.i64[0] = v26;
    if (v47)
    {
      break;
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v65 = static MeshBuffers.positions;
    LODWORD(v296) = word_1EBEAD0B8;
    v295.i32[0] = HIBYTE(word_1EBEAD0B8);
    v66 = *(v49 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = v49;
    v68 = swift_allocObject();
    *(v68 + 16) = v49;
    v69 = swift_allocObject();
    *(v69 + 16) = v49;
    v70 = swift_allocObject();
    *(v70 + 16) = v49;
    *&v352 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
    *(&v352 + 1) = v67;
    *&v353 = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
    *(&v353 + 1) = v68;
    *&v354 = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
    *(&v354 + 1) = v69;
    *&v355 = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
    *(&v355 + 1) = v70;
    LOWORD(v356) = 9;
    *(&v356 + 1) = v66;
    v357 = 0;
    v298.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
    v350 = v298.i64[0];
    v351 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v71 = swift_allocObject();
    *&v349 = v71;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    outlined init with copy of MeshBuffer<SIMD3<Float>>(&v352, &v341);
    if (one-time initialization token for triangleIndices != -1)
    {
      swift_once();
    }

    if (v65 == static MeshBuffers.Identifier.triangleIndices)
    {
      v72 = 2;
    }

    else
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v72 = v357;
      if (v73)
      {
        v72 = 2;
      }
    }

    v74 = *(&v356 + 1);
    v75 = v356;
    v76 = BYTE1(v356);
    v77 = v353;
    v78 = v284;
    *v284 = v352;
    v78[1] = v77;
    *(v78 + 80) = v357;
    v79 = v356;
    v78[3] = v355;
    v78[4] = v79;
    v78[2] = v354;
    *(v71 + 16) = v65;
    *(v71 + 32) = v296;
    v80 = v295.i32[0];
    *(v71 + 33) = v295.i8[0];
    *(v71 + 40) = v74;
    *(v71 + 48) = v72;
    *(v71 + 49) = v75;
    *(v71 + 50) = v76;
    v81 = v347[0];
    *(v71 + 67) = v347[1];
    *(v71 + 51) = v81;
    v82 = v347[2];
    v83 = v347[3];
    v84 = *v348;
    *(v71 + 129) = *&v348[14];
    *(v71 + 115) = v84;
    *(v71 + 99) = v83;
    *(v71 + 83) = v82;
    outlined init with take of BindableDataInternal(&v349, &v341);
    v85 = v299.i64[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v323 = v85;
    v87 = __swift_mutable_project_boxed_opaque_existential_1(&v341, *(&v342 + 1));
    v293 = &v271;
    v88 = MEMORY[0x1EEE9AC00](v87);
    v90 = (&v271 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v91 + 16))(v90, v88);
    *(&v336 + 1) = v298.i64[0];
    *&v337 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v92 = swift_allocObject();
    *&v335 = v92;
    v93 = v90[5];
    v92[5] = v90[4];
    v92[6] = v93;
    v92[7] = v90[6];
    *(v92 + 121) = *(v90 + 105);
    v94 = v90[1];
    v92[1] = *v90;
    v92[2] = v94;
    v95 = v90[3];
    if (v80)
    {
      v96 = 256;
    }

    else
    {
      v96 = 0;
    }

    v92[3] = v90[2];
    v92[4] = v95;
    v98 = specialized __RawDictionaryStorage.find<A>(_:)(v65, *(&v65 + 1), v96 | v65);
    v99 = *(v85 + 16);
    v100 = (v97 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v102 = v97;
    if (*(v85 + 24) >= v101)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v105 = v323;
        if (v97)
        {
          goto LABEL_44;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v105 = v323;
        if (v102)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v101, isUniquelyReferenced_nonNull_native);
      v103 = specialized __RawDictionaryStorage.find<A>(_:)(v65, *(&v65 + 1), v96 | v296);
      if ((v102 & 1) != (v104 & 1))
      {
        goto LABEL_137;
      }

      v98 = v103;
      v105 = v323;
      if (v102)
      {
LABEL_44:
        v106 = (v105[7] + 40 * v98);
        __swift_destroy_boxed_opaque_existential_1(v106);
        outlined init with take of BindableDataInternal(&v335, v106);

        outlined destroy of BodyTrackingComponent?(&v352, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        goto LABEL_48;
      }
    }

    v107 = __swift_mutable_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
    v108 = MEMORY[0x1EEE9AC00](v107);
    v110 = (&v271 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v111 + 16))(v110, v108);
    *(&v330 + 1) = v298.i64[0];
    *&v331 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v112 = swift_allocObject();
    *&v329 = v112;
    v113 = v110[3];
    v112[3] = v110[2];
    v112[4] = v113;
    v114 = v110[1];
    v112[1] = *v110;
    v112[2] = v114;
    *(v112 + 121) = *(v110 + 105);
    v115 = v110[6];
    v112[6] = v110[5];
    v112[7] = v115;
    v112[5] = v110[4];
    v105[(v98 >> 6) + 8] |= 1 << v98;
    v116 = v105[6] + 24 * v98;
    *v116 = v65;
    *(v116 + 16) = v296;
    *(v116 + 17) = v295.i8[0];
    outlined init with take of BindableDataInternal(&v329, v105[7] + 40 * v98);
    v117 = v105[2];
    v118 = __OFADD__(v117, 1);
    v119 = v117 + 1;
    if (v118)
    {
      goto LABEL_135;
    }

    v105[2] = v119;
    __swift_destroy_boxed_opaque_existential_1(&v335);
    outlined destroy of BodyTrackingComponent?(&v352, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
LABEL_48:
    v120 = __swift_destroy_boxed_opaque_existential_1(&v341);
    v26 = v297.i64[0];
    v121 = v299.i64[0];
    if (one-time initialization token for normals == -1)
    {
      if (!*(v299.i64[0] + 16))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v120 = swift_once();
      if (!*(v121 + 16))
      {
        goto LABEL_56;
      }
    }

    if (HIBYTE(word_1EBEAD0D0))
    {
      v122 = 256;
    }

    else
    {
      v122 = 0;
    }

    v120 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.normals, *algn_1EBEAD0C8, v122 | word_1EBEAD0D0);
    if ((v123 & 1) == 0)
    {
LABEL_56:
      v346 = 0;
      v344 = 0u;
      v345 = 0u;
      v342 = 0u;
      v343 = 0u;
      v341 = 0u;
      goto LABEL_57;
    }

    outlined init with copy of __REAssetService(*(v121 + 56) + 40 * v120, &v329);
    outlined init with take of BindableDataInternal(&v329, &v335);
    v124 = *(&v336 + 1);
    v125 = v337;
    __swift_project_boxed_opaque_existential_1(&v335, *(&v336 + 1));
    v126 = *(v125 + 56);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v128 = v124;
    v121 = v299.i64[0];
    v126(&v341, v127, v128, v125);
    v120 = __swift_destroy_boxed_opaque_existential_1(&v335);
LABEL_57:
    v337 = v343;
    v338 = v344;
    v339 = v345;
    v340 = v346;
    v335 = v341;
    v336 = v342;
    if (v341)
    {
      v388[0] = v335;
      v388[3] = v344;
      v388[4] = v345;
      v389 = v346;
      v388[1] = v342;
      v388[2] = v343;
      v129 = (v335)(v120);
      if (!v129)
      {
        v129 = specialized _copySequenceToContiguousArray<A>(_:)(v388);
      }

      v130 = v129;
      v296 = v105;
      outlined destroy of BodyTrackingComponent?(&v335, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v131 = v130[2];
      if (v131)
      {
        *&v329 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131, 0);
        v132 = v329;
        v133 = *(v329 + 16);
        v134 = 4;
        v136 = v291;
        v135 = v292;
        v138 = v289;
        v137 = v290;
        v140 = v287;
        v139 = v288;
        v141 = v281;
        do
        {
          v142 = *&v130[v134];
          *&v329 = v132;
          v143 = *(v132 + 24);
          if (v133 >= v143 >> 1)
          {
            v281 = v141;
            v295 = v142;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v133 + 1, 1);
            v142 = v295;
            v141.i32[3] = v281.i32[3];
            v140 = v287;
            v139 = v288;
            v138 = v289;
            v137 = v290;
            v136 = v291;
            v135 = v292;
            v132 = v329;
          }

          v144 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v139, *v142.f32, 1), v136, v142.f32[0]), v137, v142, 2);
          v145 = vnegq_f32(v144);
          v146 = vtrn2q_s32(v144, vtrn1q_s32(v144, v145));
          v147 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v144, v145, 8uLL), *v135.f32, 1), vextq_s8(v146, v146, 8uLL), v138);
          v148 = vrev64q_s32(v144);
          v148.i32[0] = v145.i32[1];
          v148.i32[3] = v145.i32[2];
          v149 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v144, v135, 3), v148, v140), v147);
          v149.i32[3] = v141.i32[3];
          *(v132 + 16) = v133 + 1;
          *(v132 + 16 * v133 + 32) = v149;
          v134 += 2;
          ++v133;
          v141 = v149;
          --v131;
        }

        while (v131);
        v295 = v149;

        v281 = v295;
      }

      else
      {

        v132 = MEMORY[0x1E69E7CC0];
      }

      v151 = static MeshBuffers.normals;
      v150 = *algn_1EBEAD0C8;
      v152 = word_1EBEAD0D0;
      v153 = HIBYTE(word_1EBEAD0D0);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v132, &v329);
      v386[2] = v331;
      v386[3] = v332;
      v386[4] = v333;
      v387 = v334;
      v386[0] = v329;
      v386[1] = v330;
      *(&v318 + 1) = v298.i64[0];
      *&v319 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v317 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v386, &v323);
      if (v153)
      {
        v154 = 256;
      }

      else
      {
        v154 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v317, &v323);
      v155 = v296;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      *&v311 = v155;
      v157 = __swift_mutable_project_boxed_opaque_existential_1(&v323, *(&v324 + 1));
      v158 = MEMORY[0x1EEE9AC00](v157);
      v160 = (&v271 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v161 + 16))(v160, v158);
      v162 = v160[5];
      v384[4] = v160[4];
      v384[5] = v162;
      v385[0] = v160[6];
      *(v385 + 9) = *(v160 + 105);
      v163 = v160[1];
      v384[0] = *v160;
      v384[1] = v163;
      v164 = v160[3];
      v384[2] = v160[2];
      v384[3] = v164;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v384, v151, v150, v154 | v152, v156, &v311, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR, &unk_1F4126888);

      outlined destroy of BodyTrackingComponent?(v386, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      v120 = __swift_destroy_boxed_opaque_existential_1(&v323);
      v105 = v311;
      v26 = v297.i64[0];
      v121 = v299.i64[0];
    }

    if (one-time initialization token for tangents != -1)
    {
      v120 = swift_once();
    }

    if (*(v121 + 16) && (!HIBYTE(word_1EBEAD0E8) ? (v165 = 0) : (v165 = 256), v120 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.tangents, unk_1EBEAD0E0, v165 | word_1EBEAD0E8), (v166 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v121 + 56) + 40 * v120, &v317);
      outlined init with take of BindableDataInternal(&v317, &v323);
      v167 = *(&v324 + 1);
      v168 = v325;
      __swift_project_boxed_opaque_existential_1(&v323, *(&v324 + 1));
      v169 = *(v168 + 56);
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v171 = v167;
      v121 = v299.i64[0];
      v169(&v329, v170, v171, v168);
      v120 = __swift_destroy_boxed_opaque_existential_1(&v323);
    }

    else
    {
      v334 = 0;
      v332 = 0u;
      v333 = 0u;
      v330 = 0u;
      v331 = 0u;
      v329 = 0u;
    }

    v325 = v331;
    v326 = v332;
    v327 = v333;
    v328 = v334;
    v323 = v329;
    v324 = v330;
    if (v329)
    {
      v382[0] = v323;
      v382[3] = v332;
      v382[4] = v333;
      v383 = v334;
      v382[1] = v330;
      v382[2] = v331;
      v172 = (v323)(v120);
      if (!v172)
      {
        v172 = specialized _copySequenceToContiguousArray<A>(_:)(v382);
      }

      v173 = v172;
      v296 = v105;
      outlined destroy of BodyTrackingComponent?(&v323, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v174 = v173[2];
      if (v174)
      {
        *&v317 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174, 0);
        v175 = v317;
        v176 = *(v317 + 16);
        v177 = 4;
        v179 = v291;
        v178 = v292;
        v181 = v289;
        v180 = v290;
        v183 = v287;
        v182 = v288;
        v184 = v283;
        do
        {
          v185 = *&v173[v177];
          *&v317 = v175;
          v186 = *(v175 + 24);
          if (v176 >= v186 >> 1)
          {
            v283 = v184;
            v295 = v185;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v186 > 1), v176 + 1, 1);
            v185 = v295;
            v184.i32[3] = v283.i32[3];
            v183 = v287;
            v182 = v288;
            v181 = v289;
            v180 = v290;
            v179 = v291;
            v178 = v292;
            v175 = v317;
          }

          v187 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v182, *v185.f32, 1), v179, v185.f32[0]), v180, v185, 2);
          v188 = vnegq_f32(v187);
          v189 = vtrn2q_s32(v187, vtrn1q_s32(v187, v188));
          v190 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v187, v188, 8uLL), *v178.f32, 1), vextq_s8(v189, v189, 8uLL), v181);
          v191 = vrev64q_s32(v187);
          v191.i32[0] = v188.i32[1];
          v191.i32[3] = v188.i32[2];
          v192 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v187, v178, 3), v191, v183), v190);
          v192.i32[3] = v184.i32[3];
          *(v175 + 16) = v176 + 1;
          *(v175 + 16 * v176 + 32) = v192;
          v177 += 2;
          ++v176;
          v184 = v192;
          --v174;
        }

        while (v174);
        v295 = v192;

        v283 = v295;
      }

      else
      {

        v175 = MEMORY[0x1E69E7CC0];
      }

      v194 = static MeshBuffers.tangents;
      v193 = unk_1EBEAD0E0;
      v195 = word_1EBEAD0E8;
      v196 = HIBYTE(word_1EBEAD0E8);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v175, &v317);
      v380[2] = v319;
      v380[3] = v320;
      v380[4] = v321;
      v381 = v322;
      v380[0] = v317;
      v380[1] = v318;
      *(&v306 + 1) = v298.i64[0];
      *&v307 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v305 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v380, &v311);
      if (v196)
      {
        v197 = 256;
      }

      else
      {
        v197 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v305, &v311);
      v198 = v296;
      v199 = swift_isUniquelyReferenced_nonNull_native();
      v301[0] = v198;
      v200 = __swift_mutable_project_boxed_opaque_existential_1(&v311, *(&v312 + 1));
      v201 = MEMORY[0x1EEE9AC00](v200);
      v203 = (&v271 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v204 + 16))(v203, v201);
      v205 = v203[5];
      v378[4] = v203[4];
      v378[5] = v205;
      v379[0] = v203[6];
      *(v379 + 9) = *(v203 + 105);
      v206 = v203[1];
      v378[0] = *v203;
      v378[1] = v206;
      v207 = v203[3];
      v378[2] = v203[2];
      v378[3] = v207;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v378, v194, v193, v197 | v195, v199, v301, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR, &unk_1F4126888);

      outlined destroy of BodyTrackingComponent?(v380, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v311);
      v105 = v301[0];
      v26 = v297.i64[0];
      v121 = v299.i64[0];
    }

    if (one-time initialization token for bitangents != -1)
    {
      swift_once();
    }

    if (*(v121 + 16) && (!HIBYTE(word_1EBEAD100) ? (v208 = 0) : (v208 = 256), v209 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.bitangents, *algn_1EBEAD0F8, v208 | word_1EBEAD100), (v210 & 1) != 0))
    {
      outlined init with copy of __REAssetService(*(v121 + 56) + 40 * v209, &v305);
      outlined init with take of BindableDataInternal(&v305, &v311);
      v211 = *(&v312 + 1);
      v212 = v313;
      __swift_project_boxed_opaque_existential_1(&v311, *(&v312 + 1));
      v213 = *(v212 + 56);
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v213(&v317, v214, v211, v212);
      __swift_destroy_boxed_opaque_existential_1(&v311);
      v215 = outlined destroy of MeshResource.Part(v364);
    }

    else
    {
      v215 = outlined destroy of MeshResource.Part(v364);
      v317 = 0u;
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v321 = 0u;
      v322 = 0;
    }

    v313 = v319;
    v314 = v320;
    v315 = v321;
    v316 = v322;
    v311 = v317;
    v312 = v318;
    if (v317)
    {
      v376[0] = v311;
      v376[3] = v320;
      v376[4] = v321;
      v377 = v322;
      v376[1] = v318;
      v376[2] = v319;
      v216 = (v311)(v215);
      if (!v216)
      {
        v216 = specialized _copySequenceToContiguousArray<A>(_:)(v376);
      }

      v217 = v216;
      v218 = v105;
      outlined destroy of BodyTrackingComponent?(&v311, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
      v219 = v217[2];
      if (v219)
      {
        *&v305 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v219, 0);
        v220 = v305;
        v221 = *(v305 + 16);
        v222 = 4;
        v224 = v291;
        v223 = v292;
        v226 = v289;
        v225 = v290;
        v228 = v287;
        v227 = v288;
        v229 = v282;
        do
        {
          v230 = *&v217[v222];
          *&v305 = v220;
          v231 = *(v220 + 24);
          if (v221 >= v231 >> 1)
          {
            v282 = v229;
            v299 = v230;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v231 > 1), v221 + 1, 1);
            v230 = v299;
            v229.i32[3] = v282.i32[3];
            v228 = v287;
            v227 = v288;
            v226 = v289;
            v225 = v290;
            v224 = v291;
            v223 = v292;
            v220 = v305;
          }

          v232 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v227, *v230.f32, 1), v224, v230.f32[0]), v225, v230, 2);
          v233 = vnegq_f32(v232);
          v234 = vtrn2q_s32(v232, vtrn1q_s32(v232, v233));
          v235 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v232, v233, 8uLL), *v223.f32, 1), vextq_s8(v234, v234, 8uLL), v226);
          v236 = vrev64q_s32(v232);
          v236.i32[0] = v233.i32[1];
          v236.i32[3] = v233.i32[2];
          v237 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v232, v223, 3), v236, v228), v235);
          v237.i32[3] = v229.i32[3];
          *(v220 + 16) = v221 + 1;
          *(v220 + 16 * v221 + 32) = v237;
          v222 += 2;
          ++v221;
          v229 = v237;
          --v219;
        }

        while (v219);
        v299 = v237;

        v282 = v299;
      }

      else
      {

        v220 = MEMORY[0x1E69E7CC0];
      }

      v239 = static MeshBuffers.bitangents;
      v238 = *algn_1EBEAD0F8;
      v240 = word_1EBEAD100;
      v241 = HIBYTE(word_1EBEAD100);
      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v220, &v305);
      v374[2] = v307;
      v374[3] = v308;
      v374[4] = v309;
      v375 = v310;
      v374[0] = v305;
      v374[1] = v306;
      v303 = v298.i64[0];
      v304 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v302 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of MeshBuffer<SIMD3<Float>>(v374, v301);
      if (v241)
      {
        v242 = 256;
      }

      else
      {
        v242 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v302, v301);
      v243 = swift_isUniquelyReferenced_nonNull_native();
      v300 = v218;
      v244 = __swift_mutable_project_boxed_opaque_existential_1(v301, v301[3]);
      v245 = MEMORY[0x1EEE9AC00](v244);
      v247 = (&v271 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v248 + 16))(v247, v245);
      v249 = v247[5];
      v372[4] = v247[4];
      v372[5] = v249;
      v373[0] = v247[6];
      *(v373 + 9) = *(v247 + 105);
      v250 = v247[1];
      v372[0] = *v247;
      v372[1] = v250;
      v251 = v247[3];
      v372[2] = v247[2];
      v372[3] = v251;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v372, v239, v238, v242 | v240, v243, &v300, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR, &unk_1F4126888);

      outlined destroy of BodyTrackingComponent?(v374, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(v301);
      v105 = v300;
      v26 = v297.i64[0];
    }

    v305 = v360;
    v306 = v361;
    v307 = v362;
    LOBYTE(v308) = v363;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    }

    v253 = *(v26 + 2);
    v252 = *(v26 + 3);
    v254 = v294;
    if (v253 >= v252 >> 1)
    {
      v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v253 + 1, 1, v26);
      v254 = v294;
      v26 = v260;
    }

    v25 = v254 + 1;
    *(v26 + 2) = v253 + 1;
    v255 = &v26[64 * v253];
    *(v255 + 4) = v105;
    v256 = v305;
    v257 = v306;
    v258 = v307;
    v255[88] = v308;
    *(v255 + 72) = v258;
    *(v255 + 56) = v257;
    *(v255 + 40) = v256;
    v20 = v285;
    v259 = *(v285 + 16);
    if (v25 == v259)
    {
      goto LABEL_125;
    }

    if (v25 >= v259)
    {
      goto LABEL_134;
    }
  }

  *&v352 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
  v48 = 0;
  v49 = v352;
  v51 = v291;
  v50 = v292;
  v53 = v289;
  v52 = v290;
  v55 = v287;
  v54 = v288;
  while (v48 < *(v7 + 16))
  {
    v56 = *(v7 + 16 * v48 + 32);
    *&v352 = v49;
    v58 = *(v49 + 16);
    v57 = *(v49 + 24);
    if (v58 >= v57 >> 1)
    {
      v298 = v56;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
      v56 = v298;
      v55 = v287;
      v54 = v288;
      v53 = v289;
      v52 = v290;
      v51 = v291;
      v50 = v292;
      v49 = v352;
    }

    ++v48;
    v59 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v54, *v56.f32, 1), v51, v56.f32[0]), v52, v56, 2);
    v60 = vnegq_f32(v59);
    v61 = vtrn2q_s32(v59, vtrn1q_s32(v59, v60));
    v62 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v59, v60, 8uLL), *v50.f32, 1), vextq_s8(v61, v61, 8uLL), v53);
    v63 = vrev64q_s32(v59);
    v63.i32[0] = v60.i32[1];
    v63.i32[3] = v60.i32[2];
    v64 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v59, v50, 3), v63, v55), v62);
    *v60.i8 = vadd_f32(*v64.f32, a2);
    *&v60.i32[2] = v64.f32[2] + a3;
    v60.i32[3] = 0;
    *(v49 + 16) = v58 + 1;
    *(v49 + 16 * v58 + 32) = v60;
    if (v47 == v48)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_130:
  swift_bridgeObjectRetain_n();

LABEL_131:

  v270 = v298;
  *v7 = v297;
  *(v7 + 16) = v270;
  *(v7 + 32) = v299;
}