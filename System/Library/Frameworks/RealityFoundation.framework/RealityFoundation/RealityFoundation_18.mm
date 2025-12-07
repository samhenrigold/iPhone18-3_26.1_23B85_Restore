void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveSelection(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "move by distance";
  }

  else
  {
    v2 = "e";
  }

  *a1 = 0xD000000000000010;
  a1[1] = v2 | 0x8000000000000000;
}

RealityKit::__RKEntityMoveEase_optional __swiftcall __RKEntityMoveEase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEase.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityMoveEase.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 6778732;
    v7 = 0x7265776F70;
    if (v1 != 8)
    {
      v7 = 1701734771;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x746E656E6F707865;
    if (v1 != 5)
    {
      v8 = 0x6574696D726568;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7261656E696CLL;
    v3 = 0x65636E756F62;
    v4 = 0x656C63726963;
    if (v1 != 3)
    {
      v4 = 0x63697473616C65;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1801675106;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveEase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveEase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveEase@<X0>(uint64_t *a1@<X8>)
{
  result = __RKEntityMoveEase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

RealityKit::__RKEntityMoveEaseType_optional __swiftcall __RKEntityMoveEaseType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEaseType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t __RKEntityMoveEaseType.rawValue.getter()
{
  v1 = 0x74756F2065736165;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E692065736165;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityMoveEaseType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74756F2065736165;
  v5 = 0x80000001C18DD6D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001C18DD6D0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E692065736165;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x74756F2065736165;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E692065736165;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityMoveEaseType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance __RKEntityMoveEaseType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityMoveEaseType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityMoveEaseType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x74756F2065736165;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001C18DD6D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E692065736165;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t key path setter for __RKEntityTransformAction.relativeToEntity : __RKEntityTransformAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 192) = v2;
}

double __RKEntityTransformAction.relativeToEntity.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t __RKEntityTransformAction.relativeToEntity.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
}

uint64_t __RKEntityTransformAction.__allocating_init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:)(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, char *a14, char a15)
{
  v23 = *a12;
  v24 = *a13;
  v25 = *a14;
  type metadata accessor for __RKEntityTransformAction();
  v26 = swift_allocObject();
  *(v26 + 192) = 0;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0u;
  *(v26 + 240) = xmmword_1C1887620;
  *(v26 + 256) = 0;
  *(v26 + 264) = 1;
  *(v26 + 272) = 0u;
  *(v26 + 288) = 0u;
  *(v26 + 304) = 0u;
  *(v26 + 320) = 0u;
  *(v26 + 336) = 0u;
  *(v26 + 352) = 0;
  *(v26 + 112) = a5;
  *(v26 + 120) = a6;
  *(v26 + 128) = a7 & 1;
  *(v26 + 144) = a8;
  *(v26 + 152) = a9;
  *(v26 + 160) = a10 & 1;
  *(v26 + 164) = a11;
  *(v26 + 168) = BYTE4(a11) & 1;
  *(v26 + 172) = a1;
  *(v26 + 176) = v23;
  *(v26 + 177) = v24;
  *(v26 + 178) = v25;
  *(v26 + 180) = a2;
  *(v26 + 184) = a3;
  *(v26 + 179) = a15;
  swift_beginAccess();
  *(v26 + 192) = 0;
  return __RKEntityAction.init(targetEntity:)(a4);
}

uint64_t __RKEntityTransformAction.__allocating_init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:relativeToEntity:)(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, char *a14, char a15, uint64_t a16)
{
  v25 = swift_allocObject();
  v26 = *a12;
  v27 = *a13;
  v28 = *a14;
  *(v25 + 192) = 0;
  *(v25 + 208) = 0u;
  *(v25 + 224) = 0u;
  *(v25 + 240) = xmmword_1C1887620;
  *(v25 + 256) = 0;
  *(v25 + 264) = 1;
  *(v25 + 272) = 0u;
  *(v25 + 288) = 0u;
  *(v25 + 304) = 0u;
  *(v25 + 320) = 0u;
  *(v25 + 336) = 0u;
  *(v25 + 352) = 0;
  *(v25 + 112) = a5;
  *(v25 + 120) = a6;
  *(v25 + 128) = a7 & 1;
  *(v25 + 144) = a8;
  *(v25 + 152) = a9;
  *(v25 + 160) = a10 & 1;
  *(v25 + 164) = a11;
  *(v25 + 168) = BYTE4(a11) & 1;
  *(v25 + 172) = a1;
  *(v25 + 176) = v26;
  *(v25 + 177) = v27;
  *(v25 + 178) = v28;
  *(v25 + 180) = a2;
  *(v25 + 184) = a3;
  *(v25 + 179) = a15;
  swift_beginAccess();
  *(v25 + 192) = a16;
  return __RKEntityAction.init(targetEntity:)(a4);
}

uint64_t __RKEntityTransformAction.init(targetEntity:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:relativeToEntity:)(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, char *a14, char a15, uint64_t a16)
{
  v18 = *a12;
  v19 = *a13;
  v20 = *a14;
  *(v16 + 192) = 0;
  *(v16 + 208) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 240) = xmmword_1C1887620;
  *(v16 + 256) = 0;
  *(v16 + 264) = 1;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
  *(v16 + 320) = 0u;
  *(v16 + 336) = 0u;
  *(v16 + 352) = 0;
  *(v16 + 112) = a5;
  *(v16 + 120) = a6;
  *(v16 + 128) = a7 & 1;
  *(v16 + 144) = a8;
  *(v16 + 152) = a9;
  *(v16 + 160) = a10 & 1;
  *(v16 + 164) = a11;
  *(v16 + 168) = BYTE4(a11) & 1;
  *(v16 + 172) = a1;
  *(v16 + 176) = v18;
  *(v16 + 177) = v19;
  *(v16 + 178) = v20;
  *(v16 + 180) = a2;
  *(v16 + 184) = a3;
  *(v16 + 179) = a15;
  swift_beginAccess();
  *(v16 + 192) = a16;
  return __RKEntityAction.init(targetEntity:)(a4);
}

uint64_t __RKEntityTransformAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v217 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v169 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v197 = *(v8 - 1);
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v196 = &v169 - v9;
  v10 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(v2 + 16);
  v216[0].i64[0] = 91;
  v216[0].i64[1] = 0xE100000000000000;
  if (v11)
  {
    v202[0].i64[0] = 0;
    v202[0].i64[1] = 0xE000000000000000;
    v201[0].i64[0] = v11;

    _print_unlocked<A, B>(_:_:)();
    v13 = v202[0].i64[1];
    v12 = v202[0].i64[0];
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1C68F3410](v12, v13);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v14 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v15 = v216[0].u64[1];
  v16 = v216[0].i64[0];
  v17 = *(v2 + 16);
  if (!v17)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  swift_beginAccess();
  if (*(v2 + 104) == 1 && *(v2 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 105) == 1)
    {

LABEL_15:
      v216[0].i64[0] = v16;
      v216[0].i64[1] = v15;
      v23 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v23, v216);
LABEL_16:

LABEL_17:

      return 0;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_15;
  }

  v194 = v7;
  v18 = *(v17 + 16);
  RERigidBodyComponentGetComponentType();
  v195 = v18;
  if (REEntityGetComponentByClass())
  {
    v19 = *(v2 + 172);
    LODWORD(v193) = v19 == 0.0;
    v20 = v10;
    if (v19 == 0.0)
    {
      v21 = v16;
      v216[0].i64[0] = v16;
      v216[0].i64[1] = v15;
      v22 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v22, v216);
      RERigidBodyComponentIncrementVersion();
      LODWORD(v192) = 0;
    }

    else
    {
      MotionType = RERigidBodyComponentGetMotionType();
      if (MotionType == 1)
      {
        v21 = v16;
        LODWORD(v192) = 1;
      }

      else
      {
        LODWORD(v192) = MotionType;
        v21 = v16;
        v216[0].i64[0] = v16;
        v216[0].i64[1] = v15;
        v26 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v26, v216);
        RERigidBodyComponentSetMotionType();
      }
    }

    REMotionStateComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v216[0].i64[0] = v21;
      v216[0].i64[1] = v15;
      v27 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v27, v216);
      REMotionStateComponentSetLinearVelocity();
      REMotionStateComponentSetAngularVelocity();
      RENetworkMarkComponentDirty();
    }

    RENetworkMarkComponentDirty();
    v16 = v21;
    v10 = v20;
  }

  else
  {
    LODWORD(v192) = 0;
    LODWORD(v193) = 1;
  }

  REAnimationComponentGetComponentType();
  v28 = REEntityGetOrAddComponentByClass();
  if (!REEntityGetSceneNullable())
  {
    v216[0].i64[0] = v16;
    v216[0].i64[1] = v15;
    v33 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v33, v216);
LABEL_37:

    return 1;
  }

  if (!RESceneGetECSManagerNullable())
  {
    v216[0].i64[0] = v16;
    v216[0].i64[1] = v15;
    v34 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v34, v216);
    goto LABEL_37;
  }

  ServiceLocator = REECSManagerGetServiceLocator();
  v30 = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (!v30)
  {
    v216[0].i64[0] = v16;
    v216[0].i64[1] = v15;
    v35 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v35, v216);
    goto LABEL_37;
  }

  v186 = v28;
  v187 = v30;
  v31 = *(v2 + 176);
  v189 = "e";
  if (v31)
  {
    v32 = "move by distance";
  }

  else
  {
    v32 = "e";
  }

  v190 = 0x80000001C18DD670;
  v191 = v16;
  if ((v32 | 0x8000000000000000) == 0x80000001C18DD670)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  swift_beginAccess();
  v38 = *(v2 + 192);
  if (v38)
  {

    goto LABEL_44;
  }

LABEL_42:
  v39 = Entity.rcSceneEntity.getter();
  if (!v39)
  {
    v216[0].i64[0] = v191;
    v216[0].i64[1] = v15;
    v65 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v65, v216);
    goto LABEL_16;
  }

  v38 = v39;
LABEL_44:
  v40 = v191;
  v41 = specialized HasHierarchy.parent.getter();
  if (!v41)
  {
    v216[0].i64[0] = v40;
    v216[0].i64[1] = v15;
    v64 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v64, v216);

    goto LABEL_17;
  }

  v42 = v41;

  *v43.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v42, v38);
  v177 = v44;
  v178 = v43;
  v175 = v46;
  v176 = v45;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v174 = v4;
  v183 = static Transform.identity;
  v179 = xmmword_1EBEB2BC0;
  v180 = xmmword_1EBEB2BB0;
  *&v47 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v42, v38);
  v181 = v47;
  v182 = v48;
  v184 = v49;
  v188 = v50;
  specialized simd_float4x4.init(translation:rotation:scale:)(*&v179, v180, v183.f32[0]);
  REMakeSRTFromMatrix();
  v184 = v51;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  *&v181 = v5;
  v52 = static os_log_type_t.debug.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    v168 = v52;
    swift_once();
    v52 = v168;
  }

  v53 = interactionsLoggingEnabled;
  *&v188 = v42;
  v185 = v38;
  if (interactionsLoggingEnabled)
  {
    v183.i64[0] = &v169;
    v54 = v52;
    v216[0].i64[0] = 0;
    v216[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18E2F20);
    v202[0] = v184;
    type metadata accessor for simd_quatf(0);
    _print_unlocked<A, B>(_:_:)();
    v55 = v216[0].u64[1];
    *&v180 = v216[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, interactionsLogger);

    v57 = Logger.logObject.getter();

    if (os_log_type_enabled(v57, v54))
    {
      v58 = swift_slowAlloc();
      *&v179 = v57;
      v59 = v58;
      v216[0].i64[0] = swift_slowAlloc();
      v182.i32[0] = 1;
      v60 = v216[0].i64[0];
      *v59 = 136315394;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v15, v216);
      *(v59 + 12) = 2080;
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v55, v216);

      *(v59 + 14) = v61;
      v40 = v191;
      v62 = v179;
      _os_log_impl(&dword_1C1358000, v179, v54, "%s%s", v59, 0x16u);
      swift_arrayDestroy();
      v63 = v60;
      v53 = v182.i32[0];
      MEMORY[0x1C6902A30](v63, -1, -1);
      MEMORY[0x1C6902A30](v59, -1, -1);
    }

    else
    {
    }

    v42 = v188;
    v38 = v185;
  }

  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v42, v38);
  REMakeSRTFromMatrix();
  v183 = v66;

  v67 = static os_log_type_t.debug.getter();
  if (v53)
  {
    *&v180 = &v169;
    v182.i32[0] = v53;
    v68 = v67;
    v216[0].i64[0] = 0;
    v216[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v216[0].i64[0] = 0xD000000000000011;
    v216[0].i64[1] = 0x80000001C18E2F00;
    v202[0] = v183;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7470]);
    v69 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v69);

    v70 = v216[0].u64[1];
    *&v179 = v216[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, interactionsLogger);

    v72 = Logger.logObject.getter();

    v73 = os_log_type_enabled(v72, v68);
    v40 = v191;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v172 = v72;
      v75 = v74;
      *&v173 = swift_slowAlloc();
      v216[0].i64[0] = v173;
      *v75 = 136315394;
      *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v15, v216);
      *(v75 + 12) = 2080;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v70, v216);

      *(v75 + 14) = v76;
      v40 = v191;
      v77 = v172;
      _os_log_impl(&dword_1C1358000, v172, v68, "%s%s", v75, 0x16u);
      v78 = v173;
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v78, -1, -1);
      MEMORY[0x1C6902A30](v75, -1, -1);
    }

    else
    {
    }

    v53 = v182.i32[0];
  }

  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    v216[0].i64[0] = v40;
    v216[0].i64[1] = v15;
    v84 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v84, v216);

    goto LABEL_17;
  }

  RETransformComponentGetLocalUnanimatedSRT();
  v179 = v80;
  v180 = v79;
  *(v2 + 224) = v80;
  *(v2 + 240) = v79;
  v173 = v81;
  *(v2 + 208) = v81;
  v216[0].i64[0] = v40;
  v216[0].i64[1] = v15;
  static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)();
  if ((*(v2 + 128) & 1) == 0)
  {
    v182 = *(v2 + 112);
    v82 = v189;
    goto LABEL_78;
  }

  v82 = v189;
  if (*(v2 + 176))
  {
    v83 = v190;
  }

  else
  {
    v83 = v189 | 0x8000000000000000;
  }

  if (v190 == v83)
  {
  }

  else
  {
    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v182 = 0u;
    if ((v85 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  *v86.i64 = simd_float4x4.transform(position:)(*(v2 + 208), v178, v177, v176, v175);
  v182 = v86;
LABEL_78:
  if ((*(v2 + 160) & 1) == 0)
  {
    v88 = *(v2 + 144);
    goto LABEL_90;
  }

  if (*(v2 + 176))
  {
    v87 = v190;
  }

  else
  {
    v87 = v82 | 0x8000000000000000;
  }

  if (v190 == v87)
  {
  }

  else
  {
    v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v89 & 1) == 0)
    {
      v88 = static simd_quatf.identity;
      goto LABEL_90;
    }
  }

  v90 = *(v2 + 224);
  v91 = vnegq_f32(v90);
  v92 = vtrn2q_s32(v90, vtrn1q_s32(v90, v91));
  v93 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v90, v91, 8uLL), *v184.f32, 1), vextq_s8(v92, v92, 8uLL), v184.f32[0]);
  v94 = vrev64q_s32(v90);
  v94.i32[0] = v91.i32[1];
  v94.i32[3] = v91.i32[2];
  v95 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v90, v184, 3), v94, v184, 2), v93);
  v96 = vmulq_f32(v95, v95);
  v97 = vadd_f32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
  if (vaddv_f32(v97) == 0.0)
  {
    v88 = *&zmmword_1C1887630[48];
  }

  else
  {
    v98 = vadd_f32(v97, vdup_lane_s32(v97, 1)).u32[0];
    v99 = vrsqrte_f32(v98);
    v100 = vmul_f32(v99, vrsqrts_f32(v98, vmul_f32(v99, v99)));
    v88 = vmulq_n_f32(v95, vmul_f32(v100, vrsqrts_f32(v98, vmul_f32(v100, v100))).f32[0]);
  }

LABEL_90:
  v184 = v88;
  if ((*(v2 + 168) & 1) == 0)
  {
    v102 = (v2 + 164);
    v103 = vld1q_dup_f32(v102);
    v103.i32[3] = 0;
    goto LABEL_97;
  }

  if (*(v2 + 176))
  {
    v101 = v190;
  }

  else
  {
    v101 = v82 | 0x8000000000000000;
  }

  if (v190 != v101)
  {
    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v104)
    {
      goto LABEL_99;
    }

    v103 = xmmword_1C1887620;
LABEL_97:
    v183 = v103;
    goto LABEL_100;
  }

LABEL_99:
  v105 = *(v2 + 240);
  *v106.f32 = vmul_f32(*v183.f32, *v105.f32);
  v106.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v183.f32[2], v105, 2));
  v183 = v106;
LABEL_100:
  v107 = static os_log_type_t.debug.getter();
  if (v53)
  {
    v108 = v107;
    v172 = &v169;
    v216[0].i64[0] = 0;
    v216[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    MEMORY[0x1C68F3410](0x736E61725477656ELL, 0xEF3D6E6F6974616CLL);
    v202[0] = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7470]);
    v109 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v109);

    MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E2EE0);
    v202[0] = v184;
    type metadata accessor for simd_quatf(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0x6C61635377656E20, 0xEA00000000003D65);
    v202[0] = v183;
    v110 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v110);

    v111 = v216[0].u64[1];
    v171 = v216[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    __swift_project_value_buffer(v112, interactionsLogger);

    v113 = Logger.logObject.getter();

    v114 = os_log_type_enabled(v113, v108);
    v115 = v191;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v170 = v113;
      v117 = v116;
      v118 = swift_slowAlloc();
      v216[0].i64[0] = v118;
      *v117 = 136315394;
      *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v15, v216);
      *(v117 + 12) = 2080;
      v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v111, v216);

      *(v117 + 14) = v119;
      v120 = v170;
      _os_log_impl(&dword_1C1358000, v170, v108, "%s%s", v117, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v118, -1, -1);
      MEMORY[0x1C6902A30](v117, -1, -1);
    }

    else
    {
    }

    v82 = v189;
  }

  REMakeSRT();
  v202[0] = v121;
  v202[1] = v122;
  v202[2] = v123;
  if (*(v2 + 176))
  {
    v124 = v190;
  }

  else
  {
    v124 = v82 | 0x8000000000000000;
  }

  if (v190 == v124)
  {
  }

  else
  {
    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v125 & 1) == 0)
    {
      REMakeSRT();
      goto LABEL_115;
    }
  }

  v218.columns[1] = v177;
  v218.columns[0] = v178;
  v218.columns[3] = v175;
  v218.columns[2] = v176;
  __invert_f4(v218);
  REMakeSRTFromMatrix();
LABEL_115:
  v216[0] = v126;
  v216[1] = v127;
  v216[2] = v128;
  specialized static RESRT.* infix(_:_:)(v216, v202, v200);
  v201[0] = v200[0];
  v201[1] = v200[1];
  v201[2] = v200[2];
  if (*(v2 + 172) == 0.0)
  {
    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (RERigidBodyComponentGetRigidBody())
      {
        RERigidBodySleep();
        RENetworkMarkComponentDirty();
      }
    }
  }

  REFromToByAnimationDefaultParameters();
  v129 = *(v2 + 172);
  RESRTInverse();
  v215[0] = v130;
  v215[1] = v131;
  v215[2] = v132;
  RESRTIdentity();
  v199[3] = v133;
  v199[4] = v134;
  v199[5] = v135;
  specialized static RESRT.* infix(_:_:)(v215, v201, v199);
  LOBYTE(v206[0]) = *(v2 + 177);
  LOBYTE(v203) = *(v2 + 178);
  specialized static __RKEntityTransformAction.reEaseFunction(from:type:)(v206, v213);
  if (v214)
  {
    LOBYTE(v210) = 1;
    *(&v210 + 1) = "Transform.transform";
    LOBYTE(v211) = 1;
    *(&v211 + 1) = v129;
    if (REAssetManagerTimelineAssetCreateSRTAnimation())
    {
LABEL_123:
      *&v210 = 5;
      DWORD2(v210) = 4352;
      *&v211 = "SRTFROMTO";
      BYTE8(v211) = 0;
      *(v2 + 256) = REAnimationComponentPlay();
      *(v2 + 264) = 0;
      RERelease();
      if ((REEntityGetSelfEnabled() & 1) == 0)
      {
        MEMORY[0x1C68F9730](*(v17 + 16), 0);
        RENetworkMarkEntityMetadataDirty();
        RERenderOptionsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderOptionsComponentSetVisibilityMode();
        RENetworkMarkComponentDirty();
        MEMORY[0x1C68F9730](*(v17 + 16), 1);
        RENetworkMarkEntityMetadataDirty();
      }

      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      VisibilityMode = RERenderOptionsComponentGetVisibilityMode();
      v24 = 1;
      v137 = 1;
      if (!VisibilityMode)
      {
        v137 = REEntityGetSelfEnabled() ^ 1;
      }

      *(v2 + 352) = v137;
      v138 = *(v2 + 96);
      v139 = *(v2 + 104);
      *(v2 + 96) = 1;
      *(v2 + 104) = 1;
      *&v210 = v138;
      BYTE8(v210) = v139;
      __RKEntityAction.state.didset(&v210);
      v140 = swift_allocObject();
      swift_weakInit();
      v141 = swift_allocObject();
      v142 = v195;
      *(v141 + 16) = v140;
      *(v141 + 24) = v142;
      *(v141 + 32) = v192;
      *(v141 + 36) = v193;
      *(v141 + 40) = v17;
      v143 = *(v2 + 32);
      v144 = *(v2 + 40);
      *(v2 + 32) = partial apply for specialized closure #1 in __RKEntityTransformAction.perform(with:);
      *(v2 + 40) = v141;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v143, v144);

      v195 = type metadata accessor for Entity();
      v209 = &protocol witness table for Entity;
      v208 = *&v195;
      v206[0] = v17;
      v190 = swift_allocObject();
      swift_weakInit();

      Scene.eventService.getter(&v210);
      v145 = *(&v211 + 1);
      v146 = v212;
      __swift_project_boxed_opaque_existential_1(&v210, *(&v211 + 1));
      type metadata accessor for REAnimationHasCompletedEvent(0);
      EventService.publisher<A>(for:on:)(v147, v206, v145, v147, v146);
      v148 = v203;
      v192 = v10;
      v149 = v204;
      v150 = v205;
      __swift_destroy_boxed_opaque_existential_1(&v210);
      *(swift_allocObject() + 16) = 0;
      *&v210 = v148;
      *(&v210 + 1) = v149;
      *&v211 = v150;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
      v193 = protocol conformance descriptor for Scene.CorePublisher<A>;
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
      v151 = v196;
      Publisher.compactMap<A>(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
      v152 = swift_allocObject();
      (*(v197 + 32))(&v152[*(*v152 + *MEMORY[0x1E695BEE8] + 16)], v151, v198);
      *&v210 = v152;
      v153 = swift_allocObject();
      v154 = v190;
      *(v153 + 16) = partial apply for closure #2 in __RKEntityTransformAction.perform(with:);
      *(v153 + 24) = v154;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
      v198 = protocol conformance descriptor for Scene.Publisher<A>;
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
      v155 = Publisher<>.sink(receiveValue:)();

      v197 = type metadata accessor for AnyCancellable();
      *(&v211 + 1) = v197;
      v212 = MEMORY[0x1E695BF08];

      *&v210 = v155;
      outlined destroy of BodyTrackingComponent?(v206, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(&v210, v2 + 272);
      swift_endAccess();
      v209 = &protocol witness table for Entity;
      v208 = *&v195;
      v206[0] = v17;
      v196 = swift_allocObject();
      swift_weakInit();

      Scene.eventService.getter(&v210);
      v156 = *(&v211 + 1);
      v157 = v212;
      __swift_project_boxed_opaque_existential_1(&v210, *(&v211 + 1));
      type metadata accessor for REAnimationHasTerminatedEvent(0);
      EventService.publisher<A>(for:on:)(v158, v206, v156, v158, v157);
      v159 = v203;
      v160 = v204;
      v161 = v205;
      __swift_destroy_boxed_opaque_existential_1(&v210);
      *(swift_allocObject() + 16) = 0;
      *&v210 = v159;
      *(&v210 + 1) = v160;
      *&v211 = v161;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, v193);
      v162 = v194;
      Publisher.compactMap<A>(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
      v163 = swift_allocObject();
      (*(v181 + 32))(&v163[*(*v163 + *MEMORY[0x1E695BEE8] + 16)], v162, v174);
      *&v210 = v163;
      v164 = swift_allocObject();
      v165 = v196;
      *(v164 + 16) = partial apply for closure #3 in __RKEntityTransformAction.perform(with:);
      *(v164 + 24) = v165;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, v198);
      v166 = Publisher<>.sink(receiveValue:)();

      *(&v211 + 1) = v197;
      v212 = MEMORY[0x1E695BF08];

      *&v210 = v166;
      outlined destroy of BodyTrackingComponent?(v206, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(&v210, v2 + 312);
      swift_endAccess();
      *&v210 = v191;
      *(&v210 + 1) = v15;
      v167 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v167, &v210);

      return v24;
    }

    __break(1u);
  }

  v210 = v213[0];
  v211 = v213[1];
  LOBYTE(v206[0]) = 1;
  v206[1] = "Transform.transform";
  v207 = 1;
  v208 = v129;
  result = REAssetManagerTimelineAssetCreateSRTAnimation();
  if (result)
  {
    goto LABEL_123;
  }

  __break(1u);
  return result;
}

uint64_t implicit closure #15 in __RKEntityTransformAction.perform(with:)(_OWORD *a1)
{
  _StringGuts.grow(_:)(62);
  MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E3060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7470]);
  v1 = SIMD.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18E3080);
  type metadata accessor for simd_quatf(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x616E696769726F20, 0xEF3D656C6163536CLL);
  v2 = SIMD.description.getter();
  MEMORY[0x1C68F3410](v2);

  return 0;
}

uint64_t specialized closure #1 in __RKEntityTransformAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v7 + 272, &v10);
    if (*(&v11 + 1))
    {
      outlined init with copy of __REAssetService(&v10, v8);
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v10, v7 + 272);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v7 + 312, &v10);
    if (*(&v11 + 1))
    {
      outlined init with copy of __REAssetService(&v10, v8);
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v10, v7 + 312);
    swift_endAccess();
    swift_beginAccess();
    if (*(v7 + 16))
    {

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v7 + 104) == 1) && *(v7 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v7 + 256) = 0;
      *(v7 + 264) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }

    if (*(v7 + 352) == 1)
    {
      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode() || (REEntityGetSelfEnabled() & 1) == 0)
      {
        if (REEntityGetSelfEnabled())
        {
          MEMORY[0x1C68F9730](*(a4 + 16), 0);
          RENetworkMarkEntityMetadataDirty();
        }
      }
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityTransformAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((*(result + 264) & 1) != 0 || *(v2 + 16) != *(result + 256))
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

uint64_t __RKEntityTransformAction.reversed()()
{
  swift_beginAccess();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 172);
  swift_beginAccess();
  v7 = *(v0 + 192);
  type metadata accessor for __RKEntityTransformAction();
  v8 = swift_allocObject();
  *(v8 + 192) = 0;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = xmmword_1C1887620;
  *(v8 + 256) = 0;
  *(v8 + 264) = 1;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = 0u;
  *(v8 + 336) = 0u;
  *(v8 + 352) = 0;
  *(v8 + 112) = v2;
  *(v8 + 120) = v1;
  *(v8 + 128) = 0;
  *(v8 + 144) = v4;
  *(v8 + 152) = v3;
  *(v8 + 160) = 0;
  *(v8 + 164) = v5;
  *(v8 + 168) = 0;
  *(v8 + 172) = v6;
  *(v8 + 176) = 1;
  *(v8 + 184) = 0;
  *(v8 + 177) = 0;
  swift_beginAccess();
  *(v8 + 192) = v7;

  return __RKEntityAction.init(targetEntity:)(v9);
}

uint64_t __RKEntityTransformAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v18 = *(v1 + 164);
  v19 = *(v1 + 160);
  v7 = *(v1 + 172);
  v16 = *(v1 + 176);
  v17 = *(v1 + 168);
  v15 = *(v1 + 177);
  v20 = *(v1 + 179);
  v8 = *(v1 + 180);
  swift_beginAccess();
  v9 = *(v1 + 192);
  v10 = type metadata accessor for __RKEntityTransformAction();
  v11 = swift_allocObject();
  *(v11 + 192) = 0;
  v12 = (v11 + 192);
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = xmmword_1C1887620;
  *(v11 + 256) = 0;
  *(v11 + 264) = 1;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 0u;
  *(v11 + 304) = 0u;
  *(v11 + 320) = 0u;
  *(v11 + 336) = 0u;
  *(v11 + 352) = 0;
  *(v11 + 112) = v2;
  *(v11 + 120) = v3;
  *(v11 + 128) = v4;
  *(v11 + 144) = v6;
  *(v11 + 152) = v5;
  *(v11 + 160) = v19;
  *(v11 + 164) = v18;
  *(v11 + 168) = v17;
  *(v11 + 172) = v7;
  *(v11 + 176) = v16;
  *(v11 + 177) = v15;
  *(v11 + 180) = v8;
  *(v11 + 179) = v20;
  swift_beginAccess();
  *v12 = v9;

  result = __RKEntityAction.init(targetEntity:)(v13);
  a1[3] = v10;
  *a1 = result;
  return result;
}

uint64_t __RKEntityTransformAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    v7 = *(v1 + 128);
    v8 = *(v1 + 144);
    v9 = *(v1 + 152);
    v18 = *(v1 + 164);
    v19 = *(v1 + 160);
    v10 = *(v1 + 172);
    v16 = *(v1 + 176);
    v17 = *(v1 + 168);
    v15 = *(v1 + 177);
    v20 = *(v1 + 179);
    v11 = *(v1 + 180);
    swift_beginAccess();
    v12 = *(v1 + 192);
    type metadata accessor for __RKEntityTransformAction();
    v13 = swift_allocObject();
    *(v13 + 192) = 0;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 240) = xmmword_1C1887620;
    *(v13 + 256) = 0;
    *(v13 + 264) = 1;
    *(v13 + 272) = 0u;
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
    *(v13 + 320) = 0u;
    *(v13 + 336) = 0u;
    *(v13 + 352) = 0;
    *(v13 + 112) = v5;
    *(v13 + 120) = v6;
    *(v13 + 128) = v7;
    *(v13 + 144) = v8;
    *(v13 + 152) = v9;
    *(v13 + 160) = v19;
    *(v13 + 164) = v18;
    *(v13 + 168) = v17;
    *(v13 + 172) = v10;
    *(v13 + 176) = v16;
    *(v13 + 177) = v15;
    *(v13 + 180) = v11;
    *(v13 + 179) = v20;
    swift_beginAccess();
    *(v13 + 192) = v12;

    return __RKEntityAction.init(targetEntity:)(v14);
  }

  else
  {
    __RKEntityTransformAction.copy(with:)(v22);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityTransformAction.__ivar_destroyer()
{

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityTransformAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityTransformAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

double _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == a2)
    {
      *&result = 1065353216;
      return result;
    }

    v4 = *(a1 + 16);

    if (MEMORY[0x1C69004D0](v4))
    {
      RETransformServiceGetWorldMatrix4x4F();
    }

    else
    {
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v17 = specialized HasHierarchy.parent.getter();
        if (!v17)
        {

          v23 = *zmmword_1C1887630;
          if (a2)
          {
LABEL_12:
            v6 = *(a2 + 16);

            if (MEMORY[0x1C69004D0](v6))
            {
              RETransformServiceGetWorldMatrix4x4F();
            }

            else
            {
              RETransformComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                v12 = specialized HasHierarchy.parent.getter();
                if (!v12)
                {

                  v11 = *zmmword_1C1887630;
                  goto LABEL_25;
                }

                *v13.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v12, 0);
                v21 = v14;
                v22 = v13;
                v19 = v16;
                v20 = v15;

LABEL_17:

                v11.columns[1] = v21;
                v11.columns[0] = v22;
                v11.columns[3] = v19;
                v11.columns[2] = v20;
LABEL_25:
                v24 = __invert_f4(v11);
                *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], v23.f32[0]), v24.columns[1], *v23.f32, 1), v24.columns[2], v23, 2), v24.columns[3], v23, 3).u64[0];
                return result;
              }

              RETransformComponentGetWorldMatrix4x4F();
            }

            v21 = v8;
            v22 = v7;
            v19 = v10;
            v20 = v9;
            goto LABEL_17;
          }

LABEL_24:
          v11 = *zmmword_1C1887630;
          goto LABEL_25;
        }

        *v18.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v17, 0);
        v23 = v18;

LABEL_11:

        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      RETransformComponentGetWorldMatrix4x4F();
    }

    v23 = v5;
    goto LABEL_11;
  }

  *&result = 1065353216;
  v23 = *zmmword_1C1887630;
  if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

_BYTE *specialized static __RKEntityTransformAction.reEaseFunction(from:type:)@<X0>(_BYTE *result@<X0>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (v4 > 4)
  {
    if (*result <= 6u)
    {
      if (v4 == 5)
      {
        RECreateExponentialEase();
      }

      else
      {
        RECreateHermiteEase();
      }
    }

    else if (v4 == 7)
    {
      RECreateLogarithmicEase();
    }

    else if (v4 == 8)
    {
      RECreatePowerEase();
    }

    else
    {
      RECreateSineEase();
    }

    goto LABEL_20;
  }

  if (*result > 1u)
  {
    if (v4 == 2)
    {
      RECreateBounceEase();
    }

    else if (v4 == 3)
    {
      RECreateCircleEase();
    }

    else
    {
      RECreateElasticEase();
    }

    goto LABEL_20;
  }

  if (*result)
  {
    RECreateBackEase();
LABEL_20:
    result = REEasingFunctionSetMode();
    v6 = 0;
    v5 = v8;
    v7 = v9;
    goto LABEL_21;
  }

  v5 = 0uLL;
  v6 = 1;
  v7 = 0uLL;
LABEL_21:
  *a3 = v5;
  *(a3 + 16) = v7;
  *(a3 + 32) = v6;
  return result;
}

__n128 specialized static RESRT.* infix(_:_:)@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v4 = a2[1];
  result = vmulq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  v6 = vnegq_f32(v4);
  v7 = vtrn2q_s32(v4, vtrn1q_s32(v4, v6));
  v8 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v4, v6, 8uLL), *v3.f32, 1), vextq_s8(v7, v7, 8uLL), v3.f32[0]);
  v9 = vrev64q_s32(v4);
  v9.i32[0] = v6.i32[1];
  v9.i32[3] = v6.i32[2];
  v10 = vmlaq_laneq_f32(vmulq_laneq_f32(v4, v3, 3), v9, v3, 2);
  v11 = vmulq_f32(*a1, a2[2]);
  v12 = vmulq_f32(v3, xmmword_1C1899C90);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v11.f32, 1), vextq_s8(v14, v14, 8uLL), v11.f32[0]), v15, v11, 2);
  v17 = vnegq_f32(v16);
  v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
  v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v3.f32, 1), vextq_s8(v18, v18, 8uLL), v3.f32[0]);
  v20 = vrev64q_s32(v16);
  v20.i32[0] = v17.i32[1];
  v20.i32[3] = v17.i32[2];
  v21 = vaddq_f32(a1[2], vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v3, 3), v20, v3, 2), v19));
  v21.i32[3] = 0;
  *a3 = result;
  *(a3 + 16) = vaddq_f32(v10, v8);
  *(a3 + 32) = v21;
  return result;
}

uint64_t static AudioFileGroupResource.load(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](a1, a2);

  _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZAA05Audioh5GroupD0C_AOTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxv26_0B03URLVtKcfu_AA05Audiog5P9D0C_Tt2G5Tf1nnc_n(a3, a4, a5);
  v10 = v9;

  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v12 = type metadata accessor for AudioFileGroupResource();
    *(inited + 32) = v10;
    *(inited + 56) = v12;
    *(inited + 64) = &protocol witness table for AudioFileGroupResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v10;
}

void *AnimationGroup.group.getter()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  if (!*(*(v0 + 208) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  ChildrenTimelineCount = RETimelineDefinitionGetChildrenTimelineCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ChildrenTimelineCount & ~(ChildrenTimelineCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((ChildrenTimelineCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (ChildrenTimelineCount)
    {
      for (i = 0; i != ChildrenTimelineCount; ++i)
      {
        if (RETimelineDefinitionCreateChildTimelineRef())
        {
          RERetain();
          v5 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __REAssetService(v5 + 120, v27);
          v6 = v28;
          v7 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          (*(v7 + 32))(v6, v7);
          __swift_destroy_boxed_opaque_existential_1(v27);
          TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
          if (TimelineAsset)
          {
            v9 = TimelineAsset;
            RETimelineDefinitionGetName();
            v10 = String.init(cString:)();
            v12 = v11;
            type metadata accessor for AnimationResource();
            v13 = swift_allocObject();
            v13[2] = v9;
            v13[3] = v10;
            v13[4] = v12;
            RERetain();
            REAssetSetSwiftObject();
            RERelease();
            RERelease();
            AnimationResource.definition.getter(&v24);

            outlined init with take of ForceEffectBase(&v24, v27);
            outlined init with copy of __REAssetService(v27, &v24);
            v30 = v1;
            v15 = v1[2];
            v14 = v1[3];
            if (v15 >= v14 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v1);
              v30 = v1;
            }

            __swift_destroy_boxed_opaque_existential_1(v27);
            v16 = v25;
            v17 = v26;
            v18 = __swift_mutable_project_boxed_opaque_existential_1(&v24, v25);
            v19 = MEMORY[0x1EEE9AC00](v18);
            v21 = &v23[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v22 + 16))(v21, v19);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v15, v21, &v30, v16, v17);
            __swift_destroy_boxed_opaque_existential_1(&v24);
          }

          else
          {
            RERelease();
          }

          RERelease();
        }
      }
    }

    return v1;
  }

  __break(1u);
  return result;
}

void (*AnimationGroup.group.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = AnimationGroup.group.getter();
  return AnimationGroup.group.modify;
}

void AnimationGroup.group.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t AnimationGroup.name.getter()
{
  if (v0[21])
  {
    v1 = v0[20];
  }

  else if (*(v0[26] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path getter for AnimationGroup.name : AnimationGroup@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[21];
  if (v4)
  {
    *a2 = a1[20];
    a2[1] = v4;
  }

  else if (*(a1[26] + 16))
  {
    RETimelineDefinitionGetName();
    *a2 = String.init(cString:)();
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

void AnimationGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

void (*AnimationGroup.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[21];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[20];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[26] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return AnimationGroup.name.modify;
}

void AnimationGroup.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 160) = v3;
    *(v4 + 168) = v2;
  }

  else
  {

    *(v4 + 160) = v3;
    *(v4 + 168) = v2;
  }
}

uint64_t AnimationGroup.blendLayer.getter()
{
  if (*(v0 + 200) != 1)
  {
    return *(v0 + 196);
  }

  result = *(*(v0 + 208) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t AnimationGroup.blendLayer.setter(uint64_t result)
{
  *(v1 + 196) = result;
  *(v1 + 200) = 0;
  return result;
}

uint64_t *(*AnimationGroup.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 200) == 1)
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 196);
  }

  *(a1 + 8) = v2;
  return AnimationGroup.blendLayer.modify;
}

uint64_t *AnimationGroup.blendLayer.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 196) = *(result + 2);
  *(v1 + 200) = 0;
  return result;
}

uint64_t AnimationGroup.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 192);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 208) + 16);
    if (v5)
    {
      v8 = *(v1 + 176);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t key path setter for AnimationGroup.bindTarget : AnimationGroup(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 176);
  v6 = *(a2 + 184);
  v7 = *(a1 + 16);
  v8 = *(a2 + 192);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 176) = v3;
  *(a2 + 184) = v4;
  *(a2 + 192) = v7;
  return result;
}

uint64_t AnimationGroup.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 176), *(v1 + 184), *(v1 + 192));
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  return result;
}

uint64_t (*AnimationGroup.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 192);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 208) + 16);
    if (v6)
    {
      v9 = *(v1 + 176);
      v10 = *(v1 + 184);
      v11 = *(v1 + 192);
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v5) = v11;
      v4 = v10;
      v3 = v9;
      v6 = v15[0];
      v7 = v15[1];
      v8 = v16;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return AnimationGroup.bindTarget.modify;
}

uint64_t AnimationGroup.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 176);
  v7 = *(v2 + 184);
  v8 = *(v2 + 192);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 176) = v4;
    *(v2 + 184) = v3;
    *(v2 + 192) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 176), *(v2 + 184), *(v2 + 192));
    *(v2 + 176) = v4;
    *(v2 + 184) = v3;
    *(v2 + 192) = v5;
  }

  return result;
}

uint64_t AnimationGroup.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 202))
  {
    result = *(*(v1 + 208) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 201);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*AnimationGroup.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 202))
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 201);
  }

  *(a1 + 8) = v2;
  return AnimationGroup.fillMode.modify;
}

uint64_t AnimationGroup.additive.getter()
{
  LODWORD(v1) = *(v0 + 203);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 208) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

uint64_t (*AnimationGroup.additive.modify(uint64_t a1))()
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 203);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return AnimationGroup.additive.modify;
}

uint64_t AnimationGroup.trimStart.getter()
{
  if ((*(v0 + 17) & 1) == 0)
  {
    return *(v0 + 8);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for AnimationGroup.trimStart : AnimationGroup@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 17))
  {
    result = *(result[19] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[1];
    v3 = *(result + 16);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 17) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 17))
  {
    if (*(*(v1 + 152) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimStart.modify;
}

uint64_t AnimationGroup.trimStart.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t AnimationGroup.trimEnd.getter()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for AnimationGroup.trimEnd : AnimationGroup@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 33))
  {
    result = *(result[19] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[3];
    v3 = *(result + 32);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 33) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 33))
  {
    if (*(*(v1 + 152) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimEnd.modify;
}

uint64_t AnimationGroup.trimEnd.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AnimationGroup.trimDuration.getter()
{
  if ((*(v0 + 49) & 1) == 0)
  {
    return *(v0 + 40);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t *key path getter for AnimationGroup.trimDuration : AnimationGroup@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 49))
  {
    result = *(result[19] + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = result[5];
    v3 = *(result + 48);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  *(v2 + 49) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 49))
  {
    if (*(*(v1 + 152) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 40);
    v4 = *(v1 + 48);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimDuration.modify;
}

uint64_t AnimationGroup.trimDuration.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

double AnimationGroup.offset.getter()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = 0.0;
  if (*(*(v0 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

void key path getter for AnimationGroup.offset : AnimationGroup(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 64))
  {
    v4 = 0;
    if (*(*(a1 + 152) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 56);
  }

  *a2 = v4;
}

uint64_t (*AnimationGroup.offset.modify(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 64))
  {
    v4 = 0;
    if (*(*(v2 + 152) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 56);
  }

  *a1 = v4;
  return AnimationGroup.offset.modify;
}

void *AnimationGroup.offset.modify(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

double AnimationGroup.delay.getter()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = 0.0;
  if (*(*(v0 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

void key path getter for AnimationGroup.delay : AnimationGroup(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 80))
  {
    v4 = 0;
    if (*(*(a1 + 152) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(a1 + 72);
  }

  *a2 = v4;
}

uint64_t (*AnimationGroup.delay.modify(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 80))
  {
    v4 = 0;
    if (*(*(v2 + 152) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 72);
  }

  *a1 = v4;
  return AnimationGroup.delay.modify;
}

void *AnimationGroup.delay.modify(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

float AnimationGroup.speed.getter(__n128 a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    return *(v1 + 84);
  }

  result = 1.0;
  if (*(*(v1 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t key path getter for AnimationGroup.speed : AnimationGroup@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 88))
  {
    v4 = 1.0;
    if (*(*(result + 152) + 16))
    {
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipSpeed();
        v4 = v5;
      }
    }
  }

  else
  {
    v4 = *(result + 84);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*AnimationGroup.speed.modify(uint64_t a1, double a2))(uint64_t *result)
{
  *a1 = v2;
  if (*(v2 + 88))
  {
    v4 = 1.0;
    if (*(*(v2 + 152) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipSpeed();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 84);
  }

  *(a1 + 8) = v4;
  return AnimationGroup.speed.modify;
}

uint64_t *AnimationGroup.speed.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 84) = *(result + 2);
  *(v1 + 88) = 0;
  return result;
}

uint64_t AnimationGroup.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 89);
  if (result == 4)
  {
    if (!*(*(v2 + 152) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

uint64_t (*AnimationGroup.repeatMode.modify(uint64_t a1, double a2))()
{
  *a1 = v2;
  v3 = *(v2 + 89);
  if (v3 == 4)
  {
    if (*(*(v2 + 152) + 16))
    {
      v4 = a1;
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v3) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v3) = ClipLoopBehavior;
      v6 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v6)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v3) = 0;
  }

LABEL_9:
  *(a1 + 8) = v3;
  return AnimationGroup.repeatMode.modify;
}

double AnimationGroup.duration.getter()
{
  v0 = AnimationGroup.group.getter();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    v3 = 0.0;
    do
    {
      outlined init with copy of __REAssetService(v2, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v6 = (*(v5 + 272))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v8);
      if (v3 <= v6)
      {
        v3 = v6;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return 0.0;
  }

  return v3;
}

double AnimationGroup.init(group:name:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15)
{
  v22 = *a4;
  v23 = *a5;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(a9 + 160) = a2;
  *(a9 + 168) = a3;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0;
  *(a9 + 192) = -1;
  *(a9 + 196) = 0;
  *(a9 + 200) = 0;
  *(a9 + 201) = v23;
  *(a9 + 202) = 0;
  *(a9 + 208) = v24;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(a9 + 16) = a7 & 1;
  *(a9 + 17) = 0;
  *(a9 + 24) = a8;
  *(a9 + 32) = a13 & 1;
  *(a9 + 33) = 0;
  *(a9 + 40) = a14;
  *(a9 + 48) = a15 & 1;
  *(a9 + 49) = 0;
  *(a9 + 56) = a10;
  *(a9 + 64) = 0;
  *(a9 + 72) = a11;
  *(a9 + 80) = 0;
  *(a9 + 84) = a12;
  *(a9 + 88) = 0;
  *(a9 + 89) = v22;
  *(a9 + 96) = 0;
  *(a9 + 104) = a2;
  *(a9 + 112) = a3;
  result = 0.0;
  *(a9 + 120) = xmmword_1C1898800;
  *(a9 + 136) = 0;
  *(a9 + 140) = 0;
  *(a9 + 144) = 0;
  *(a9 + 145) = 0;
  *(a9 + 146) = 0;
  *(a9 + 147) = 0;
  *(a9 + 152) = v25;
  *a9 = a1;
  *(a9 + 8) = a6;
  return result;
}

uint64_t AnimationGroup.init(_:)@<X0>(uint64_t a2@<X8>)
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
      *(a2 + 16) = 0;
      *(a2 + 17) = 1;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 33) = 1;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 49) = 1;
      *(a2 + 56) = 0;
      *(a2 + 64) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 1;
      *(a2 + 84) = 0;
      *(a2 + 88) = 1;
      *(a2 + 89) = 4;
      *(a2 + 96) = v11;
      *(a2 + 104) = v17;
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 112) = v18;
      *(a2 + 136) = -1;
      *(a2 + 140) = 0;
      *(a2 + 144) = v13;
      *(a2 + 145) = 0;
      *(a2 + 146) = v8;
      *(a2 + 147) = v16;
      *(a2 + 152) = v15;
      *(a2 + 160) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 192) = -1;
      *(a2 + 196) = 0x201000100000000;
      *(a2 + 208) = v14;
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

void *AnimationGroup.createResource()()
{
  v1 = *(v0 + 176);
  v75 = *(v0 + 160);
  v76 = v1;
  v77 = *(v0 + 192);
  v78 = *(v0 + 208);
  v2 = *(v0 + 112);
  *&v74[96] = *(v0 + 96);
  *&v74[112] = v2;
  v3 = *(v0 + 144);
  *&v74[128] = *(v0 + 128);
  *&v74[144] = v3;
  v4 = *(v0 + 48);
  *&v74[32] = *(v0 + 32);
  *&v74[48] = v4;
  v5 = *(v0 + 80);
  *&v74[64] = *(v0 + 64);
  *&v74[80] = v5;
  v6 = *(v0 + 16);
  *v74 = *v0;
  *&v74[16] = v6;
  if (*(&v75 + 1))
  {
    goto LABEL_12;
  }

  if (v77 == 255 && BYTE8(v77) == 1 && BYTE10(v77) == 1 && BYTE11(v77) == 2 && !*v74)
  {
    v7 = *(v0 + 120);
    v54 = *(v0 + 104);
    v55 = v7;
    v56 = *(v0 + 136);
    *&v57 = *(v0 + 152);
    v8 = *(v0 + 56);
    v50 = *(v0 + 40);
    v51 = v8;
    v9 = *(v0 + 88);
    v52 = *(v0 + 72);
    v53 = v9;
    v10 = *(v0 + 24);
    v48 = *(v0 + 8);
    v49 = v10;
    outlined init with copy of TimelineClipProperties(&v74[8], &v64);
    if (TimelineClipProperties.isClipped.getter(v11) && (v54 = *&v74[104], v55 = *&v74[120], v56 = *&v74[136], *&v57 = *&v74[152], v50 = *&v74[40], v51 = *&v74[56], v52 = *&v74[72], v53 = *&v74[88], v48 = *&v74[8], v49 = *&v74[24], (TimelineClipProperties.isModified.getter() & 1) != 0))
    {
      v70 = *&v74[104];
      v71 = *&v74[120];
      v72 = *&v74[136];
      v73 = *&v74[152];
      v66 = *&v74[40];
      v67 = *&v74[56];
      v68 = *&v74[72];
      v69 = *&v74[88];
      v64 = *&v74[8];
      v65 = *&v74[24];
      v12 = TimelineClipProperties.createClip()();
      v54 = v70;
      v55 = v71;
      v56 = v72;
      *&v57 = v73;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v53 = v69;
      v48 = v64;
      v49 = v65;
      outlined destroy of TimelineClipProperties(&v48);
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v74[8]);
      return TimelineDefinition.resource.getter();
    }

    return v12;
  }

  if (!*(v78 + 16))
  {
LABEL_12:
    outlined init with copy of TimelineBaseProperties(&v75, &v48);
  }

  else
  {
    outlined init with copy of TimelineBaseProperties(&v75, &v48);
    RETimelineDefinitionGetName();
    String.init(cString:)();
  }

  String.utf8CString.getter();

  TimelineGroup = RETimelineDefinitionCreateTimelineGroup();

  v48 = v75;
  v49 = v76;
  v50 = v77;
  *&v51 = v78;
  v37 = TimelineGroup;
  TimelineBaseProperties.writeProperties(_:)(TimelineGroup);
  v62[0] = v48;
  v62[1] = v49;
  v62[2] = v50;
  v63 = v51;
  outlined destroy of TimelineBaseProperties(v62);
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v14 + 120, &v48);
  v15 = *(&v49 + 1);
  v16 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  (*(v16 + 32))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v58 = v75;
  v59 = v76;
  v60 = v77;
  v61 = v78;
  v54 = *&v74[96];
  v55 = *&v74[112];
  v56 = *&v74[128];
  v57 = *&v74[144];
  v50 = *&v74[32];
  v51 = *&v74[48];
  v52 = *&v74[64];
  v53 = *&v74[80];
  v48 = *v74;
  v49 = *&v74[16];
  result = AnimationGroup.group.getter();
  v18 = result;
  v19 = result[2];
  if (v19)
  {
    v20 = 0;
    v21 = (result + 4);
    while (1)
    {
      if (v20 >= v18[2])
      {
        __break(1u);
        return result;
      }

      outlined init with copy of __REAssetService(v21, &v48);
      outlined init with copy of __REAssetService(&v48, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pMd, &_s17RealityFoundation27AnimationDefinitionInternal_pMR);
      if (!swift_dynamicCast())
      {
        break;
      }

      outlined init with take of ForceEffectBase(&v38, &v64);
      v22 = *(&v65 + 1);
      v23 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      (*(v23 + 8))(v22, v23);
      ++v20;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      RETimelineDefinitionCreateFromTimeline();
      RETimelineDefinitionAddChildTimeline();
      RERelease();

      result = __swift_destroy_boxed_opaque_existential_1(&v48);
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_18;
      }
    }

    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    outlined destroy of AnimationDefinitionInternal?(&v38);
    v26 = static os_log_type_t.error.getter();
    outlined init with copy of __REAssetService(&v48, &v64);
    type metadata accessor for OS_os_log();
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v42 = v29;
      *v28 = 136315138;
      v30 = *(&v65 + 1);
      v31 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      v32 = (*(v31 + 8))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v42);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1C1358000, v27, v26, "Animation group could not create resource for timeline %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);

      v36 = &v48;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v36 = &v64;
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    RERelease();
    return 0;
  }

  else
  {
LABEL_18:

    v54 = *&v74[104];
    v55 = *&v74[120];
    v56 = *&v74[136];
    *&v57 = *&v74[152];
    v50 = *&v74[40];
    v51 = *&v74[56];
    v52 = *&v74[72];
    v53 = *&v74[88];
    v48 = *&v74[8];
    v49 = *&v74[24];
    outlined init with copy of TimelineClipProperties(&v74[8], &v64);
    if (TimelineClipProperties.isClipped.getter(v24))
    {
      v44 = *&v74[40];
      v45 = *&v74[56];
      v46 = *&v74[72];
      v47 = *&v74[88];
      v42 = *&v74[8];
      v43 = *&v74[24];
      v41 = *&v74[152];
      v39 = *&v74[120];
      v40 = *&v74[136];
      v38 = *&v74[104];
      type metadata accessor for TimelineDefinition();
      v25 = swift_allocObject();
      *(v25 + 16) = v37;
      RERetain();

      v50 = v44;
      v51 = v45;
      v52 = v46;
      v48 = v42;
      v49 = v43;
      *&v53 = v47;
      *(&v53 + 1) = v25;
      v54 = v38;
      v55 = v39;
      v56 = v40;
      *&v57 = v41;
      outlined init with copy of TimelineClipProperties(&v48, &v64);
      v12 = *(v25 + 16);
      if (v12)
      {

        closure #1 in TimelineClipProperties.createClip()(&v48, &v64);

        outlined destroy of TimelineClipProperties(&v48);
        v12 = v64;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v48);
      }

      v66 = v44;
      v67 = v45;
      v68 = v46;
      v64 = v42;
      v65 = v43;
      *&v69 = v47;
      *(&v69 + 1) = v25;
      v73 = v41;
      v71 = v39;
      v72 = v40;
      v70 = v38;
      outlined destroy of TimelineClipProperties(&v64);
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v74[8]);
      type metadata accessor for TimelineDefinition();
      *(swift_allocObject() + 16) = v37;
      RERetain();
      v12 = TimelineDefinition.resource.getter();
      swift_setDeallocating();
      RERelease();
      swift_deallocClassInstance();
    }

    RERelease();
  }

  return v12;
}

void (*AnimationGroup.group_.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return AnimationGroup.group.modify;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnimationGroup()
{
  if (v0[21])
  {
    v1 = v0[20];
  }

  else if (*(v0[26] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void protocol witness for AnimationDefinition.name.setter in conformance AnimationGroup(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance AnimationGroup(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnimationGroup.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnimationGroup()
{
  if (*(v0 + 200) != 1)
  {
    return *(v0 + 196);
  }

  result = *(*(v0 + 208) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnimationGroup(uint64_t result)
{
  *(v1 + 196) = result;
  *(v1 + 200) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnimationGroup@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 202))
  {
    result = *(*(v1 + 208) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 201);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnimationGroup(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 176), *(v1 + 184), *(v1 + 192));
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance AnimationGroup()
{
  if ((*(v0 + 17) & 1) == 0)
  {
    return *(v0 + 8);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 17) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance AnimationGroup()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    return *(v0 + 24);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 33) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance AnimationGroup()
{
  if ((*(v0 + 49) & 1) == 0)
  {
    return *(v0 + 40);
  }

  result = *(*(v0 + 152) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  *(v2 + 49) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.offset.getter in conformance AnimationGroup()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = 0.0;
  if (*(*(v0 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance AnimationGroup(double **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.offset.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.delay.getter in conformance AnimationGroup()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = 0.0;
  if (*(*(v0 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance AnimationGroup(double **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.delay.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

float protocol witness for AnimationDefinition.speed.getter in conformance AnimationGroup(__n128 a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    return *(v1 + 84);
  }

  result = 1.0;
  if (*(*(v1 + 152) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.speed.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.repeatMode.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void *protocol witness for AnimationDefinitionInternal.generate() in conformance AnimationGroup()
{
  result = AnimationGroup.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of AnimationDefinitionInternal?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pSgMd, &_s17RealityFoundation27AnimationDefinitionInternal_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AudioBufferResource.Configuration.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.Configuration.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void AudioBufferResource.Configuration.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.Configuration.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AudioBufferResource.Configuration.mixGroupName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void AudioBufferResource.Configuration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t AudioBufferResource.Configuration.layoutTagOverride.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t AudioBufferResource.Configuration.init(shouldLoop:shouldRandomizeStartTime:normalization:calibration:mixGroupName:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = *(a4 + 8);
  *a7 = result;
  *(a7 + 1) = a2;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = 0;
  *(a7 + 60) = 1;
  return result;
}

void AudioBufferResource.Configuration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 60);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  if (v4 == 255)
  {
    Hasher._combine(_:)(0);
    if (v6 == 255)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v4)
    {
      if (v4 != 1)
      {
        MEMORY[0x1C68F4C10](0);
        if (v6 == 255)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    MEMORY[0x1C68F4C10](v10);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1C68F4C50](v11);
    if (v6 == 255)
    {
LABEL_19:
      Hasher._combine(_:)(0);
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  Hasher._combine(_:)(1u);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1C68F4C10]((v6 & 1) != 0);
  MEMORY[0x1C68F4C50](v12);
  if (!v7)
  {
LABEL_20:
    Hasher._combine(_:)(0);
    if (!v9)
    {
      goto LABEL_21;
    }

LABEL_17:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_16:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v8);
}

Swift::Int AudioBufferResource.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioBufferResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioBufferResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL specialized static AudioBufferResource.Configuration.== infix(_:_:)(double *a1, double *a2)
{
  v2 = 0;
  if (*a1 != *a2 || ((*(a1 + 1) ^ *(a2 + 1)) & 1) != 0)
  {
    return v2;
  }

  v2 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 14);
  v10 = *(a1 + 60);
  v11 = *(a2 + 16);
  v12 = a2[3];
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  v16 = *(a2 + 14);
  v17 = *(a2 + 60);
  if (v2 == 255)
  {
    if (v11 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 255)
    {
      return 0;
    }

    v18 = a1[1];
    v19 = a2[1];
    if (v2)
    {
      if (v2 != 1)
      {
        v2 = 0;
        if (v11 != 2 || v19 != 0.0)
        {
          return v2;
        }

        goto LABEL_16;
      }

      v2 = 0;
      if (v11 != 1)
      {
        return v2;
      }
    }

    else if (v11)
    {
      return v2;
    }

    if (v18 != v19)
    {
      return v2;
    }
  }

LABEL_16:
  if (v6 == 255)
  {
    if (v13 != 255)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v13 == 255)
  {
    return 0;
  }

  v2 = 0;
  if (v6)
  {
    if ((v13 & 1) == 0)
    {
      return v2;
    }
  }

  else if (v13)
  {
    return v2;
  }

  if (v5 == v12)
  {
LABEL_25:
    if (v8)
    {
      if (!v15 || (v7 != v14 || v8 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    if ((v10 & 1) == 0)
    {
      if (v9 == v16)
      {
        v20 = v17;
      }

      else
      {
        v20 = 1;
      }

      return (v20 & 1) == 0;
    }

    return (v17 & 1) != 0;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioBufferResource.Configuration, &type metadata for AudioBufferResource.Configuration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration);
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioBufferResource.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 61))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for AudioBufferResource.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t RERenderFrameSettings.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v59 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 123, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a4 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a6 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a7);
  v34 = vtrn2q_s32(a7, vtrn1q_s32(a7, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a7);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a7, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v102 = a3;
  v5 = type metadata accessor for UUID();
  v109 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v107 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = v95 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v103 = v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v112 = v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v95 - v20;
  v22 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v108 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v111 = (v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v95 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v95 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v95 - v31;
  outlined init with copy of __RKEntityInteractionSpecification(a1, v95 - v31, type metadata accessor for __RKEntityTriggerSpecification);
  v100 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v113 = a2;
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 8)
    {
      v34 = *v32;
      v35 = *(*v32 + 16);
      if (v35)
      {
        v36 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v112 = *v32;
        v37 = v34 + v36;
        v38 = *(v108 + 72);

        v39 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of __RKEntityInteractionSpecification(v37, v29, type metadata accessor for __RKEntityTriggerSpecification);
          v40 = v113;

          specialized __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v29, v40, v26);
          outlined destroy of __RKEntityInteractionSpecification(v29, type metadata accessor for __RKEntityTriggerSpecification);
          outlined init with copy of __RKEntityInteractionSpecification(v26, v111, type metadata accessor for __RKEntityTriggerSpecification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
          }

          v42 = v39[2];
          v41 = v39[3];
          if (v42 >= v41 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
          }

          outlined destroy of __RKEntityInteractionSpecification(v26, type metadata accessor for __RKEntityTriggerSpecification);
          v39[2] = v42 + 1;
          outlined init with take of __RKEntityInteractionSpecification(v111, v39 + v36 + v42 * v38, type metadata accessor for __RKEntityTriggerSpecification);
          v37 += v38;
          --v35;
        }

        while (v35);
      }

      else
      {

        v39 = MEMORY[0x1E69E7CC0];
      }

      *v102 = v39;
LABEL_43:
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_16;
  }

  v106 = v15;
  v98 = v18;
  v43 = v109;
  if (EnumCaseMultiPayload > 2)
  {
    outlined destroy of __RKEntityInteractionSpecification(v32, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_16:
    outlined init with copy of __RKEntityInteractionSpecification(a1, v102, type metadata accessor for __RKEntityTriggerSpecification);
  }

  v44 = v21;
  if (!EnumCaseMultiPayload)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v46 = *&v32[*(v45 + 48)];
    v47 = v32[*(v45 + 64)];
    (*(v43 + 32))(v44, v32, v5);
    v48 = *(v45 + 48);
    v49 = *(v45 + 64);
    swift_beginAccess();
    v50 = v102;
    static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v44, (v113 + 16), v102);
    swift_endAccess();
    (*(v43 + 8))(v44, v5);
    *(v50 + v48) = v46;
    *(v50 + v49) = v47;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v109 + 32))(v21, v32, v5);
    swift_beginAccess();
    static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v21, (a2 + 16), v102);
    swift_endAccess();
    (*(v43 + 8))(v21, v5);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
  v52 = *&v32[*(v51 + 48)];
  v53 = *&v32[*(v51 + 64)];
  v54 = v98;
  v104 = *(v43 + 32);
  v105 = v43 + 32;
  v104(v98, v32, v5);
  swift_beginAccess();

  static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v54, (a2 + 16), v102);
  swift_endAccess();
  v55 = *(v52 + 16);
  if (!v55)
  {

    (*(v43 + 8))(v54, v5);
    v56 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v92 = *(v51 + 64);
    v93 = v102;
    *(v102 + *(v51 + 48)) = v56;
    *(v93 + v92) = v53;
    goto LABEL_43;
  }

  v96 = v53;
  v97 = v51;
  v115 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
  v56 = v115;
  v58 = *(v43 + 16);
  v57 = v43 + 16;
  v111 = v58;
  v59 = (*(v57 + 64) + 32) & ~*(v57 + 64);
  v95[1] = v52;
  v101 = v59;
  v60 = v52 + v59;
  v108 = *(v57 + 56);
  v99 = (v57 + 24);
  v61 = (v57 - 8);
  v109 = v57;
  v62 = v103;
  while (1)
  {
    v63 = v112;
    v111(v112, v60, v5);
    swift_beginAccess();
    v64 = *(a2 + 16);
    if (!*(v64 + 16))
    {
      break;
    }

    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
    if ((v66 & 1) == 0)
    {
      break;
    }

    v111(v62, *(v64 + 56) + v65 * v108, v5);
    v67 = v106;
    v104(v106, v62, v5);
LABEL_35:
    swift_endAccess();
    v88 = *v61;
    (*v61)(v112, v5);
    v115 = v56;
    v90 = *(v56 + 16);
    v89 = *(v56 + 24);
    if (v90 >= v89 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
      v67 = v106;
      v56 = v115;
    }

    *(v56 + 16) = v90 + 1;
    v91 = v108;
    v104((v56 + v101 + v90 * v108), v67, v5);
    v60 += v91;
    --v55;
    a2 = v113;
    if (!v55)
    {
      v88(v98, v5);

      v51 = v97;
      v53 = v96;
      goto LABEL_40;
    }
  }

  v68 = v106;
  UUID.init()();
  v69 = v110;
  v70 = v63;
  v71 = v111;
  v111(v110, v70, v5);
  v71(v107, v68, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(a2 + 16);
  v73 = v114;
  v74 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
  v76 = v73[2];
  v77 = (v75 & 1) == 0;
  v78 = __OFADD__(v76, v77);
  v79 = v76 + v77;
  if (!v78)
  {
    v80 = v75;
    if (v73[3] >= v79)
    {
      v62 = v103;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = v74;
        specialized _NativeDictionary.copy()();
        v74 = v84;
        a2 = v113;
        v82 = v114;
        if (v80)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, isUniquelyReferenced_nonNull_native);
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v110);
      v62 = v103;
      if ((v80 & 1) != (v81 & 1))
      {
        goto LABEL_47;
      }
    }

    v82 = v114;
    if (v80)
    {
LABEL_30:
      (*v99)(v82[7] + v74 * v108, v107, v5);
      v83 = v110;
LABEL_34:
      (*v61)(v83, v5);
      *(a2 + 16) = v82;
      v67 = v106;
      goto LABEL_35;
    }

LABEL_32:
    v82[(v74 >> 6) + 8] |= 1 << v74;
    v85 = v74 * v108;
    v83 = v110;
    v111((v82[6] + v74 * v108), v110, v5);
    v104((v82[7] + v85), v107, v5);
    v86 = v82[2];
    v78 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v78)
    {
      goto LABEL_46;
    }

    v82[2] = v87;
    a2 = v113;
    goto LABEL_34;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v79 = a2;
  v80 = a1;
  v77 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v15 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  outlined init with copy of __RKEntityInteractionSpecification(v4, &v66 - v24, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 8)
    {
      v69 = v15;
      v27 = *v25;
      v28 = *(*v25 + 16);
      if (v28)
      {
        v29 = v76;
        v30 = *(v75 + 80);
        v74 = *v25;
        v78 = (v30 + 32) & ~v30;
        v31 = v27 + v78;
        v32 = *(v75 + 72);
        v33 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of __RKEntityInteractionSpecification(v31, v22, type metadata accessor for __RKEntityTriggerSpecification);
          __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v80, v79, v19);
          outlined destroy of __RKEntityInteractionSpecification(v22, type metadata accessor for __RKEntityTriggerSpecification);
          outlined init with copy of __RKEntityInteractionSpecification(v19, v29, type metadata accessor for __RKEntityTriggerSpecification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
          }

          v35 = v33[2];
          v34 = v33[3];
          if (v35 >= v34 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
          }

          outlined destroy of __RKEntityInteractionSpecification(v19, type metadata accessor for __RKEntityTriggerSpecification);
          v33[2] = v35 + 1;
          outlined init with take of __RKEntityInteractionSpecification(v29, v33 + v78 + v35 * v32, type metadata accessor for __RKEntityTriggerSpecification);
          v31 += v32;
          --v28;
        }

        while (v28);
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      *v77 = v33;
      return swift_storeEnumTagMultiPayload();
    }

    return outlined init with copy of __RKEntityInteractionSpecification(v4, v77, type metadata accessor for __RKEntityTriggerSpecification);
  }

  v70 = v11;
  v78 = v14;
  if (EnumCaseMultiPayload > 2)
  {
    outlined destroy of __RKEntityInteractionSpecification(v25, type metadata accessor for __RKEntityTriggerSpecification);
    return outlined init with copy of __RKEntityInteractionSpecification(v4, v77, type metadata accessor for __RKEntityTriggerSpecification);
  }

  if (EnumCaseMultiPayload)
  {
    v36 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v78;
      (*(v6 + 32))(v78, v25, v5);
      v80(v37);
      (*(v6 + 8))(v37, v5);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v47 = *&v25[*(v46 + 48)];
      v68 = *&v25[*(v46 + 64)];
      v48 = v70;
      v49 = v25;
      v50 = v47;
      v74 = *(v6 + 32);
      v75 = v6 + 32;
      v74(v70, v49, v36);
      v51 = v77;
      v80(v48);
      v52 = *(v50 + 16);
      if (v52)
      {
        v67 = v46;
        v69 = v15;
        v81 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
        v53 = v81;
        v55 = *(v6 + 16);
        v54 = v6 + 16;
        v56 = *(v54 + 64);
        v66 = v50;
        v72 = (v56 + 32) & ~v56;
        v73 = v55;
        v57 = v50 + v72;
        v71 = *(v54 + 56);
        v76 = (v54 - 8);
        v58 = v78;
        v59 = v8;
        do
        {
          v60 = v54;
          v73(v58, v57, v36);
          v80(v58);
          v58 = v78;
          v61 = *v76;
          (*v76)(v78, v36);
          v81 = v53;
          v63 = *(v53 + 16);
          v62 = *(v53 + 24);
          if (v63 >= v62 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
            v58 = v78;
            v53 = v81;
          }

          *(v53 + 16) = v63 + 1;
          v64 = v71;
          v74((v53 + v72 + v63 * v71), v59, v36);
          v57 += v64;
          --v52;
          v54 = v60;
        }

        while (v52);
        v61(v70, v36);

        v51 = v77;
        v46 = v67;
      }

      else
      {

        (*(v6 + 8))(v48, v36);
        v53 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v46 + 64);
      *(v51 + *(v46 + 48)) = v53;
      *(v51 + v65) = v68;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v40 = *&v25[*(v39 + 48)];
    v41 = v25[*(v39 + 64)];
    v42 = v78;
    (*(v6 + 32))(v78, v25, v5);
    v43 = *(v39 + 48);
    v44 = *(v39 + 64);
    v45 = v77;
    v80(v42);
    (*(v6 + 8))(v42, v5);
    *(v45 + v43) = v40;
    *(v45 + v44) = v41;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v186 = a5;
  v182 = a3;
  v183 = a4;
  v184 = a1;
  v185 = a2;
  v5 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v176 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v174 = &v147 - v8;
  v9 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v147 - v12;
  v13 = type metadata accessor for __RKEntitySpinActionArguments(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v169 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v147 - v16;
  v171 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v147 - v19;
  v20 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v167 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v147 - v23;
  v24 = type metadata accessor for UUID();
  v180 = *(v24 - 8);
  v181 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v179 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v163 = &v147 - v28;
  v29 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v162 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v161 = &v147 - v32;
  v33 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v160 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v159 = &v147 - v36;
  v37 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v158 = &v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v157 = &v147 - v40;
  v41 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v156 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v155 = &v147 - v44;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  MEMORY[0x1EEE9AC00](started - 8);
  v154 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v153 = &v147 - v48;
  v49 = type metadata accessor for __RKEntityShowActionArguments(0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v152 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v178 = &v147 - v52;
  v53 = type metadata accessor for __RKEntityForceActionArguments(0);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v151 = &v147 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v150 = &v147 - v56;
  v57 = type metadata accessor for __RKEntityHideActionArguments(0);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v149 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v177 = &v147 - v60;
  v61 = type metadata accessor for __RKEntityFadeActionArguments(0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v148 = &v147 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v147 = &v147 - v64;
  v65 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v67 = &v147 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v147 - v69;
  v71 = type metadata accessor for __RKEntityCustomActionArguments(0);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v73 = &v147 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v147 - v75;
  v77 = type metadata accessor for __RKChangeSceneActionArguments(0);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v79 = &v147 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v147 - v81;
  v83 = type metadata accessor for __RKEntityAudioActionArguments(0);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v85 = &v147 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v147 - v87;
  v89 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v147 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(v187, v91, type metadata accessor for __RKEntityActionSpecification);
  v187 = v89;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with take of __RKEntityInteractionSpecification(v91, v82, type metadata accessor for __RKChangeSceneActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v82, v184, type metadata accessor for __RKChangeSceneActionArguments, &protocol witness table for __RKChangeSceneActionArguments, type metadata accessor for __RKChangeSceneActionArguments, v79);
      outlined destroy of __RKEntityInteractionSpecification(v82, type metadata accessor for __RKChangeSceneActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v79, v186, type metadata accessor for __RKChangeSceneActionArguments);
      break;
    case 2u:
      outlined init with take of __RKEntityInteractionSpecification(v91, v76, type metadata accessor for __RKEntityCustomActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v76, v184, type metadata accessor for __RKEntityCustomActionArguments, &protocol witness table for __RKEntityCustomActionArguments, type metadata accessor for __RKEntityCustomActionArguments, v73);
      outlined destroy of __RKEntityInteractionSpecification(v76, type metadata accessor for __RKEntityCustomActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v73, v186, type metadata accessor for __RKEntityCustomActionArguments);
      break;
    case 3u:
      outlined init with take of __RKEntityInteractionSpecification(v91, v70, type metadata accessor for __RKEntityEmphasisActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v70, v184, type metadata accessor for __RKEntityEmphasisActionArguments, &protocol witness table for __RKEntityEmphasisActionArguments, type metadata accessor for __RKEntityEmphasisActionArguments, v67);
      outlined destroy of __RKEntityInteractionSpecification(v70, type metadata accessor for __RKEntityEmphasisActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v67, v186, type metadata accessor for __RKEntityEmphasisActionArguments);
      break;
    case 4u:
      v103 = v147;
      outlined init with take of __RKEntityInteractionSpecification(v91, v147, type metadata accessor for __RKEntityFadeActionArguments);
      v104 = v148;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v103, v184, type metadata accessor for __RKEntityFadeActionArguments, &protocol witness table for __RKEntityFadeActionArguments, type metadata accessor for __RKEntityFadeActionArguments, v148);
      outlined destroy of __RKEntityInteractionSpecification(v103, type metadata accessor for __RKEntityFadeActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v104, v186, type metadata accessor for __RKEntityFadeActionArguments);
      break;
    case 5u:
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(*(v91 + 1), v91[8], v184, v194, *v91);
      v117 = DWORD1(v194[0]);
      v118 = BYTE8(v194[0]);
      v119 = v186;
      *v186 = v194[0];
      v119[1] = v117;
      *(v119 + 8) = v118;
      break;
    case 6u:
      v124 = *(v91 + 1);
      v194[0] = *v91;
      v194[1] = v124;
      v195 = *(v91 + 16);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v194, v184, v185, v182, v183, v188);
      outlined destroy of __RKEntityActionGroupArguments(v194);
      v125 = v189;
      v126 = v190;
      v127 = v191;
      v128 = v192;
      v129 = v193;
      v130 = v186;
      *v186 = v188[0];
      *(v130 + 1) = v125;
      *(v130 + 16) = v126;
      *(v130 + 3) = v127;
      *(v130 + 32) = v128;
      *(v130 + 33) = v129;
      break;
    case 7u:
      v110 = v91;
      v111 = v177;
      outlined init with take of __RKEntityInteractionSpecification(v110, v177, type metadata accessor for __RKEntityHideActionArguments);
      v112 = v149;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v111, v184, type metadata accessor for __RKEntityHideActionArguments, &protocol witness table for __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, v149);
      outlined destroy of __RKEntityInteractionSpecification(v111, type metadata accessor for __RKEntityHideActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v112, v186, type metadata accessor for __RKEntityHideActionArguments);
      break;
    case 8u:
      v142 = v150;
      outlined init with take of __RKEntityInteractionSpecification(v91, v150, type metadata accessor for __RKEntityForceActionArguments);
      v143 = v151;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v142, v184, type metadata accessor for __RKEntityForceActionArguments, &protocol witness table for __RKEntityForceActionArguments, type metadata accessor for __RKEntityForceActionArguments, v151);
      outlined destroy of __RKEntityInteractionSpecification(v142, type metadata accessor for __RKEntityForceActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v143, v186, type metadata accessor for __RKEntityForceActionArguments);
      break;
    case 9u:
      v107 = v91;
      v108 = v178;
      outlined init with take of __RKEntityInteractionSpecification(v107, v178, type metadata accessor for __RKEntityShowActionArguments);
      v109 = v152;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v108, v184, type metadata accessor for __RKEntityShowActionArguments, &protocol witness table for __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, v152);
      outlined destroy of __RKEntityInteractionSpecification(v108, type metadata accessor for __RKEntityShowActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v109, v186, type metadata accessor for __RKEntityShowActionArguments);
      break;
    case 0xAu:
      v140 = v153;
      outlined init with take of __RKEntityInteractionSpecification(v91, v153, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v141 = v154;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v140, v184, v154);
      outlined destroy of __RKEntityInteractionSpecification(v140, type metadata accessor for __RKEntityStartAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v141, v186, type metadata accessor for __RKEntityStartAnimateActionArguments);
      break;
    case 0xBu:
      v101 = v155;
      outlined init with take of __RKEntityInteractionSpecification(v91, v155, type metadata accessor for __RKEntityStopAnimateActionArguments);
      v102 = v156;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v101, v184, type metadata accessor for __RKEntityStopAnimateActionArguments, &protocol witness table for __RKEntityStopAnimateActionArguments, type metadata accessor for __RKEntityStopAnimateActionArguments, v156);
      outlined destroy of __RKEntityInteractionSpecification(v101, type metadata accessor for __RKEntityStopAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v102, v186, type metadata accessor for __RKEntityStopAnimateActionArguments);
      break;
    case 0xCu:
      v105 = v157;
      outlined init with take of __RKEntityInteractionSpecification(v91, v157, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      v106 = v158;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v105, v184, type metadata accessor for __RKEntityToggleAnimateActionArguments, &protocol witness table for __RKEntityToggleAnimateActionArguments, type metadata accessor for __RKEntityToggleAnimateActionArguments, v158);
      outlined destroy of __RKEntityInteractionSpecification(v105, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v106, v186, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      break;
    case 0xDu:
      v122 = v159;
      outlined init with take of __RKEntityInteractionSpecification(v91, v159, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v123 = v160;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v122, v184, type metadata accessor for __RKEntityToggleVisibilityActionArguments, &protocol witness table for __RKEntityToggleVisibilityActionArguments, type metadata accessor for __RKEntityToggleVisibilityActionArguments, v160);
      outlined destroy of __RKEntityInteractionSpecification(v122, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v123, v186, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      break;
    case 0xEu:
      v99 = v161;
      outlined init with take of __RKEntityInteractionSpecification(v91, v161, type metadata accessor for __RKEntityTransformActionArguments);
      v100 = v162;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v99, v184, v185, v162);
      outlined destroy of __RKEntityInteractionSpecification(v99, type metadata accessor for __RKEntityTransformActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v100, v186, type metadata accessor for __RKEntityTransformActionArguments);
      break;
    case 0xFu:
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v184, v194, *v91);
      *v186 = v194[0];
      break;
    case 0x10u:
      v92 = v163;
      outlined init with take of __RKEntityInteractionSpecification(v91, v163, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v93 = v165;
      outlined init with copy of __RKEntityInteractionSpecification(v92, v165, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v94 = v179;
      v95 = v184;
      v184(v93);
      v96 = v181;
      v97 = *(v180 + 40);
      v97(v93, v94, v181);
      v98 = *(v164 + 20);
      v95(&v93[v98]);
      outlined destroy of __RKEntityInteractionSpecification(v92, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v97(&v93[v98], v94, v96);
      outlined init with take of __RKEntityInteractionSpecification(v93, v186, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      break;
    case 0x11u:
      v113 = v166;
      outlined init with take of __RKEntityInteractionSpecification(v91, v166, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      v114 = v167;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v113, v184, type metadata accessor for __RKEntityLookAtCameraActionArguments, &protocol witness table for __RKEntityLookAtCameraActionArguments, type metadata accessor for __RKEntityLookAtCameraActionArguments, v167);
      outlined destroy of __RKEntityInteractionSpecification(v113, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v114, v186, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      break;
    case 0x12u:
      v131 = v172;
      outlined init with take of __RKEntityInteractionSpecification(v91, v172, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v132 = v175;
      outlined init with copy of __RKEntityInteractionSpecification(v131, v175, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v133 = v179;
      v134 = v184;
      v184(v132);
      (*(v180 + 40))(v132, v133, v181);
      v135 = v171;
      v136 = *(v171 + 24);
      v137 = v177;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(&v132[v136], v134, type metadata accessor for __RKEntityHideActionArguments, &protocol witness table for __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, v177);
      _s10RealityKit29__RKEntityHideActionArgumentsVWOdTm_0(v137, &v132[v136], type metadata accessor for __RKEntityHideActionArguments);
      v138 = *(v135 + 28);
      v139 = v178;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(&v132[v138], v134, type metadata accessor for __RKEntityShowActionArguments, &protocol witness table for __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, v178);
      outlined destroy of __RKEntityInteractionSpecification(v131, type metadata accessor for __RKEntitySwapEntityActionArguments);
      _s10RealityKit29__RKEntityHideActionArgumentsVWOdTm_0(v139, &v132[v138], type metadata accessor for __RKEntityShowActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v132, v186, type metadata accessor for __RKEntitySwapEntityActionArguments);
      break;
    case 0x13u:
      v144 = v168;
      outlined init with take of __RKEntityInteractionSpecification(v91, v168, type metadata accessor for __RKEntitySpinActionArguments);
      v145 = v169;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v144, v184, type metadata accessor for __RKEntitySpinActionArguments, &protocol witness table for __RKEntitySpinActionArguments, type metadata accessor for __RKEntitySpinActionArguments, v169);
      outlined destroy of __RKEntityInteractionSpecification(v144, type metadata accessor for __RKEntitySpinActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v145, v186, type metadata accessor for __RKEntitySpinActionArguments);
      break;
    case 0x14u:
      v115 = v170;
      outlined init with take of __RKEntityInteractionSpecification(v91, v170, type metadata accessor for __RKEntitySetOpacityActionArguments);
      v116 = v173;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v115, v184, type metadata accessor for __RKEntitySetOpacityActionArguments, &protocol witness table for __RKEntitySetOpacityActionArguments, type metadata accessor for __RKEntitySetOpacityActionArguments, v173);
      outlined destroy of __RKEntityInteractionSpecification(v115, type metadata accessor for __RKEntitySetOpacityActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v116, v186, type metadata accessor for __RKEntitySetOpacityActionArguments);
      break;
    case 0x15u:
      v120 = v174;
      outlined init with take of __RKEntityInteractionSpecification(v91, v174, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v121 = v176;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v120, v184, v176);
      outlined destroy of __RKEntityInteractionSpecification(v120, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v121, v186, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      break;
    default:
      outlined init with take of __RKEntityInteractionSpecification(v91, v88, type metadata accessor for __RKEntityAudioActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v88, v184, type metadata accessor for __RKEntityAudioActionArguments, &protocol witness table for __RKEntityAudioActionArguments, type metadata accessor for __RKEntityAudioActionArguments, v85);
      outlined destroy of __RKEntityInteractionSpecification(v88, type metadata accessor for __RKEntityAudioActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v85, v186, type metadata accessor for __RKEntityAudioActionArguments);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t (*a3)(void, __n128)@<X5>, uint64_t a4@<X6>, uint64_t (*a5)(void)@<X7>, uint64_t a6@<X8>)
{
  v23 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24[-v17 - 8];
  v27 = a3(0, v16);
  v28 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  outlined init with copy of __RKEntityInteractionSpecification(a1, boxed_opaque_existential_1, a5);
  outlined init with copy of __REAssetService(v26, v25);
  v20 = __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v12 + 16))(v14, v20, v11);
  a2(v14);
  (*(v12 + 8))(v14, v11);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
  (*(v12 + 40))(v21, v18, v11);
  outlined init with copy of __REAssetService(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v25);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(int a1@<W0>, char a2@<W1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-2] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24[-2] - v15;
  *v24 = a5;
  v24[1] = a1;
  v25 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&v26, v29);
    outlined init with copy of __REAssetService(v29, &v26);
    v23 = a4;
    v17 = a3;
    v18 = v30;
    v19 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v19 + 8))(v18, v19);
    v17(v13);
    (*(v11 + 8))(v13, v10);
    v20 = *(&v27 + 1);
    v21 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v21 + 16))(v16, v20, v21);
    outlined init with copy of __REAssetService(&v26, v24);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v26);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    result = outlined destroy of BodyTrackingComponent?(&v26, &_s10RealityKit26__RKSpecificationHasTarget_pSgMd, &_s10RealityKit26__RKSpecificationHasTarget_pSgMR);
    *a4 = a5;
    *(a4 + 4) = a1;
    *(a4 + 8) = a2 & 1;
  }

  return result;
}

void specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v8 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-v13];
  v15 = *(a1 + 8);
  v16 = *v12;
  v40 = *v12;
  v17 = *(v12 + 16);
  v18 = *(v12 + 24);
  v19 = *(v12 + 32);
  v39 = v19;
  v20 = *(v12 + 33);
  v21 = *(v15 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v29 = *(v12 + 33);
    v30 = v18;
    v31 = v17;
    v32 = v12;
    v33 = a6;
    outlined init with copy of __RKEntityActionGroupArguments(v12, v38);
    v38[0] = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v22 = v38[0];
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v15 + v23;
    v25 = *(v8 + 72);
    do
    {
      outlined init with copy of __RKEntityInteractionSpecification(v24, v10, type metadata accessor for __RKEntityActionSpecification);
      __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v34, v35, v36, v37, v14);
      outlined destroy of __RKEntityInteractionSpecification(v10, type metadata accessor for __RKEntityActionSpecification);
      v38[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v22 = v38[0];
      }

      *(v22 + 16) = v27 + 1;
      outlined init with take of __RKEntityInteractionSpecification(v14, v22 + v23 + v27 * v25, type metadata accessor for __RKEntityActionSpecification);
      v24 += v25;
      --v21;
    }

    while (v21);
    outlined destroy of __RKEntityActionGroupArguments(v32);
    v16 = v40;
    v19 = v39;
    a6 = v33;
    LOBYTE(v17) = v31;
    v18 = v30;
    v20 = v29;
  }

  *a6 = v16 & 1;
  *(a6 + 8) = v22;
  *(a6 + 16) = v17;
  *(a6 + 24) = v18;
  *(a6 + 32) = v19 & 1;
  *(a6 + 33) = v20;
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  outlined init with copy of __RKEntityInteractionSpecification(a1, a3, type metadata accessor for __RKEntityStartAnimateActionArguments);
  a2(a3);
  (*(v13 + 40))(a3, v18, v12);
  v19 = *(type metadata accessor for __RKEntityStartAnimateActionArguments(0) + 56);
  outlined init with copy of UUID?(&a3[v19], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v13 + 32))(v15, v11, v12);
  a2(v15);
  (*(v13 + 8))(v15, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  return outlined assign with take of UUID?(v8, &a3[v19]);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v23 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(a1, a3, type metadata accessor for __RKEntityPlayTimelineActionArguments);
  a2(a3);
  v14 = *(v11 + 40);
  v14(a3, v13, v10);
  v15 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v16 = *(v15 + 20);
  v24 = a2;
  a2(&a3[v16]);
  v17 = &a3[v16];
  v18 = v26;
  v14(v17, v13, v10);
  v19 = v25;
  v20 = *(v15 + 28);
  outlined init with copy of UUID?(&a3[v20], v18);
  v21 = 1;
  if ((*(v11 + 48))(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v18, v10);
    v24(v13);
    (*(v11 + 8))(v13, v10);
    v21 = 0;
  }

  (*(v11 + 56))(v19, v21, 1, v10);
  return outlined assign with take of UUID?(v19, &a3[v20]);
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30[1] = a3;
  v31 = a2;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30[0] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v20 = type metadata accessor for __RKEntityTransformActionArguments(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(a1, v22, type metadata accessor for __RKEntityTransformActionArguments);
  v23 = *(v20 + 60);
  outlined init with copy of UUID?(&v22[v23], v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of __RKEntityInteractionSpecification(v22, type metadata accessor for __RKEntityTransformActionArguments);
    v36 = v20;
    v37 = &protocol witness table for __RKEntityTransformActionArguments;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    outlined init with copy of __RKEntityInteractionSpecification(a1, boxed_opaque_existential_1, type metadata accessor for __RKEntityTransformActionArguments);
    outlined init with copy of __REAssetService(v35, v34);
    v25 = __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v11 + 16))(v13, v25, v10);
    v31(v13);
    (*(v11 + 8))(v13, v10);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
    (*(v11 + 40))(v26, v16, v10);
    outlined init with copy of __REAssetService(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v34);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    (*(v11 + 32))(v19, v9, v10);
    v28 = v31;
    v31(v22);
    (*(v11 + 40))(v22, v16, v10);
    v29 = v30[0];
    v28(v19);
    (*(v11 + 8))(v19, v10);
    (*(v11 + 56))(v29, 0, 1, v10);
    outlined assign with take of UUID?(v29, &v22[v23]);
    outlined init with copy of __RKEntityInteractionSpecification(v22, v32, type metadata accessor for __RKEntityTransformActionArguments);
    return outlined destroy of __RKEntityInteractionSpecification(v22, type metadata accessor for __RKEntityTransformActionArguments);
  }
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(void (*a1)(char *)@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-2] - v11;
  v20[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&v21, v24);
    outlined init with copy of __REAssetService(v24, &v21);
    v13 = v25;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v15 = *(v14 + 8);
    v19 = a2;
    v15(v13, v14);
    a1(v9);
    (*(v7 + 8))(v9, v6);
    v16 = *(&v22 + 1);
    v17 = v23;
    __swift_mutable_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    (*(v17 + 16))(v12, v16, v17);
    outlined init with copy of __REAssetService(&v21, v20);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v21);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    result = outlined destroy of BodyTrackingComponent?(&v21, &_s10RealityKit26__RKSpecificationHasTarget_pSgMd, &_s10RealityKit26__RKSpecificationHasTarget_pSgMR);
    *a2 = a3;
  }

  return result;
}

uint64_t Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v47 = a1;
  v48 = a2;
  v46 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v37 - v8);
  v10 = swift_allocObject();
  *(v10 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SayAC34__RKEntityInteractionSpecificationVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = v10 + 16;
  gatherInteractionSpecifications #1 (from:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(v4, v10);
  v37[1] = v10;
  specialized enumerateCore #1 (entity:recursive:block:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(v4, 1, v10);
  swift_beginAccess();
  v12 = *v11;
  v13 = *v11 + 64;
  v14 = 1 << *(*v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*v11 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  v39 = v13;
  v40 = v12;
  v38 = v17;
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      while (1)
      {
        v21 = (v20 << 9) | (8 * __clz(__rbit64(v16)));
        v22 = *(*(v12 + 56) + v21);
        v23 = *(v22 + 16);
        v45 = *(*(v12 + 48) + v21);
        if (v23)
        {
          v43 = v20;
          v44 = v16;
          v52 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
          v24 = v52;
          v25 = *(v41 + 80);
          v42 = v22;
          v51 = (v25 + 32) & ~v25;
          v26 = v22 + v51;
          v27 = *(v41 + 72);
          do
          {
            outlined init with copy of __RKEntityInteractionSpecification(v26, v6, type metadata accessor for __RKEntityInteractionSpecification);
            v29 = v47;
            v28 = v48;
            __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v47, v48, v9);
            v30 = v46;
            __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v29, v28, v49, v50, (v9 + *(v46 + 20)));
            v31 = &v6[*(v30 + 24)];
            v33 = *v31;
            v32 = *(v31 + 1);

            outlined destroy of __RKEntityInteractionSpecification(v6, type metadata accessor for __RKEntityInteractionSpecification);
            v34 = (v9 + *(v30 + 24));
            *v34 = v33;
            v34[1] = v32;
            v52 = v24;
            v36 = *(v24 + 16);
            v35 = *(v24 + 24);
            if (v36 >= v35 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v24 = v52;
            }

            *(v24 + 16) = v36 + 1;
            outlined init with take of __RKEntityInteractionSpecification(v9, v24 + v51 + v36 * v27, type metadata accessor for __RKEntityInteractionSpecification);
            v26 += v27;
            --v23;
          }

          while (v23);

          v13 = v39;
          v12 = v40;
          v17 = v38;
          v20 = v43;
          v16 = v44;
        }

        else
        {

          v24 = MEMORY[0x1E69E7CC0];
        }

        v16 &= v16 - 1;
        swift_beginAccess();
        if (!static __RKEntityInteractionsComponent.registration)
        {

          goto LABEL_6;
        }

        if (!*(v24 + 16))
        {
          break;
        }

        if (!REEntityGetCustomComponent() && !REEntityAddComponentByClass())
        {

          goto LABEL_6;
        }

        if (RECustomComponentGetObject())
        {
          __RKEntityInteractionsComponent.specifications.setter(v24);
        }

        else
        {
        }

        v19 = v20;
        if (!v16)
        {
          goto LABEL_8;
        }

LABEL_7:
        v20 = v19;
      }

      if (REEntityGetCustomComponent())
      {
        REEntityRemoveComponentByClass();
      }

LABEL_6:

      v19 = v20;
      if (!v16)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double gatherInteractionSpecifications #1 (from:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
  {
    v5 = *(Object + 16);
    if (v5)
    {

      if (!*(v5 + 16))
      {
        goto LABEL_10;
      }

LABEL_8:
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a1, isUniquelyReferenced_nonNull_native);

      *(a2 + 16) = v8;
      swift_endAccess();
      return result;
    }

    v5 = __RKEntityInteractionsComponent.decodedJSON()();
    if (*(v5 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_8;
    }
  }

LABEL_10:

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV22SoundReductionMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV22SoundReductionMaterialVGMR, &type metadata for AcousticModelComponent.SoundReductionMaterial);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18ScatteringMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18ScatteringMaterialVGMR, &type metadata for AcousticModelComponent.ScatteringMaterial);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18AbsorptionMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18AbsorptionMaterialVGMR, &type metadata for AcousticModelComponent.AbsorptionMaterial);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation11IKComponentV6SolverC2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation11IKComponentV6SolverC2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo28REMeshAttributeDescriptorRefaGMd, &_ss23_ContiguousArrayStorageCySo28REMeshAttributeDescriptorRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit14__DownsamplingV6FactorVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit14__DownsamplingV6FactorVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySVGMd, &_ss23_ContiguousArrayStorageCySVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointV2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointV2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintV2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintV2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo27REMeshInstanceDefinitionRefaGMd, &_ss23_ContiguousArrayStorageCySo27REMeshInstanceDefinitionRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo24REMeshModelDefinitionRefaGMd, &_ss23_ContiguousArrayStorageCySo24REMeshModelDefinitionRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit10__AssetRefVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit10__AssetRefVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySpys4Int8VGSgGMd, &_ss23_ContiguousArrayStorageCySpys4Int8VGSgGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVSgGMR, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, type metadata accessor for __RKEntityInteractionSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays6UInt64VGGMd, &_ss23_ContiguousArrayStorageCySays6UInt64VGGMR, &_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, type metadata accessor for __RKEntityActionSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMR, type metadata accessor for __SceneResourceCache.ImportedScene);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_AC4DateVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_AC4DateVtGMR, &_s10Foundation3URLV_AA4DateVtMd, &_s10Foundation3URLV_AA4DateVtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy6CoreOC21PhotogrammetrySessionC7RequestOGMd, &_ss23_ContiguousArrayStorageCy6CoreOC21PhotogrammetrySessionC7RequestOGMR, MEMORY[0x1EEE865D8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMR, &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, type metadata accessor for __RKEntityTriggerSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMR, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMR, type metadata accessor for __SceneImportOperation.__ImportedScene);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13AudioMixGroupVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13AudioMixGroupVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18RESystemDependencyaGMd, &_ss23_ContiguousArrayStorageCySo18RESystemDependencyaGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V4size_Si6offsettGMd, &_ss23_ContiguousArrayStorageCys6UInt64V4size_Si6offsettGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19MTLTextureLevelInfoVGMd, &_ss23_ContiguousArrayStorageCySo19MTLTextureLevelInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 104 * v8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23SceneResourceLoadResultVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23SceneResourceLoadResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21PhotogrammetrySessionC10PointCloudV0H0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21PhotogrammetrySessionC10PointCloudV0H0VGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMd, &_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12geom_bbox_2daGMd, &_ss23_ContiguousArrayStorageCySo12geom_bbox_2daGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 520);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[520 * v8])
    {
      memmove(v12, v13, 520 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13CurveExtruderV10ShapePointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13CurveExtruderV10ShapePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13ComponentInfoVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13ComponentInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 48 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSutGMd, &_ss23_ContiguousArrayStorageCySS_SSSutGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SSSutMd, &_sSS_SSSutMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_ypyptGMd, &_ss23_ContiguousArrayStorageCyyp_ypyptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_ypyptMd, &_syp_ypyptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGAF07RESceneH0CtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGAF07RESceneH0CtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGAD07RESceneE0CtMd, &_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGAD07RESceneE0CtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation7WeakRefVy0D3Kit6EntityCACE14LoadStatisticsC8ObserverCGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation7WeakRefVy0D3Kit6EntityCACE14LoadStatisticsC8ObserverCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}